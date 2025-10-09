from random import randint, choice
from copy import deepcopy
import asyncio

import toffee_test, toffee
import toffee.funcov as fc
from toffee_test.reporter import set_func_coverage
from toffee_test.reporter import set_line_coverage

from WayLookup import DUTWayLookup
from model import WaylookupModel
from bundle import WaylookupBundle
from agent import WaylookupAgent
from env import WaylookupEnv
from data_model import *


# 随机数据生成函数
def random_data():
    data = EntryData()
    data.vSetIdx_0 = randint(0, 255)
    data.vSetIdx_1 = randint(0, 255)
    data.waymask_0 = randint(0, 15)
    data.waymask_1 = randint(0, 15)
    data.ptag_0 = randint(0, 68719476735)
    data.ptag_1 = randint(0, 68719476735)
    data.itlb_pbmt_0 = randint(0, 3)
    data.itlb_pbmt_1 = randint(0, 3)
    data.meta_codes_0 = randint(0, 1)
    data.meta_codes_1 = randint(0, 1)
    # 随机出现gpf
    random_gpf_number = randint(1, 100)
    if random_gpf_number == 1:
        data.itlb_exception_0 = 2
    elif random_gpf_number == 2:
        data.itlb_exception_1 = 2
    else:
        data.itlb_exception_0 = randint(0, 1)
        data.itlb_exception_1 = randint(0, 1)
    gpf = GpfData()
    gpf.gpaddr = randint(1, 1000)
    gpf.isForVSnonLeafPTE = randint(0, 1)
    return data, gpf
def random_update_data(model: WaylookupModel):
    a = randint(1, 6)
    entry = choice(model.entries)
    data = UpdateData()
    # 命中
    if a==1:
        data.blkPaddr = entry.ptag_0 << 6
        data.vSetIdx = entry.vSetIdx_0
        data.waymask = randint(0, 15)
        data.corrupt = randint(0, 1)
    elif a==2:
        data.blkPaddr = entry.ptag_1 << 6
        data.vSetIdx = entry.vSetIdx_1
        data.waymask = randint(0, 15)
        data.corrupt = randint(0, 1)
    # waymask命中
    elif a==3:
        data.blkPaddr = randint(0, 68719476735) << 6
        data.vSetIdx = entry.vSetIdx_0
        data.waymask = entry.waymask_0
        data.corrupt = randint(0, 1)
        toffee.info("waymask", data)
    elif a==4:
        data.blkPaddr = randint(0, 68719476735) << 6
        data.vSetIdx = entry.vSetIdx_1
        data.waymask = entry.waymask_1
        data.corrupt = randint(0, 1)
    # 纯随机
    else:
        data.blkPaddr = randint(100, 500) << 6
        data.vSetIdx = randint(0, 255)
        data.waymask = randint(0, 15)
        data.corrupt = randint(0, 1)
    return data

# 功能点
g = fc.CovGroup("CovGroup_Waylookup")
def init_function_coverage(g, dut: DUTWayLookup):
    # Flush
    g.add_watch_point(
        dut.io_flush, 
        {"flush": lambda x: x.value==1}, 
        name="flush"
    )
    # Ptr的满和空
    g.add_watch_point(
        dut,
        {
            "Entries empty": lambda x: x.WayLookup_readPtr_value.value==x.WayLookup_writePtr_value.value and x.WayLookup_readPtr_flag.value==x.WayLookup_writePtr_flag.value,
            "Entries full": lambda x: x.WayLookup_readPtr_value.value==x.WayLookup_writePtr_value.value and x.WayLookup_readPtr_flag.value!=x.WayLookup_writePtr_flag.value,
        }, name="ptr"
    )
    # Gpf hit
    g.add_watch_point(
        dut.WayLookup_gpf_hit, {
            "gpf not hit": lambda x: x.value == 0,
            "gpf hit": lambda x: x.value ==1,
        }, name="gpf"
    )
    # Update
    g.add_watch_point(
        dut, {
            "update hit": lambda x: x.WayLookup_vset_same.value and x.WayLookup_ptag_same.value,
            "update miss": lambda x: (x.WayLookup_vset_same.value),
            "update ignore": lambda x: (not x.WayLookup_vset_same.value) and (not x.WayLookup_ptag_same.value)
        }, name="update"
    )


@toffee_test.fixture
async def waylookup_env(request: toffee_test.ToffeeRequest):
    dut = DUTWayLookup()
    dut.InitClock("clock")
    init_function_coverage(g, dut)
    dut.StepRis(lambda x: g.sample())
    toffee.start_clock(dut)

    waylookup_env = WaylookupEnv(dut)
    waylookup_env.dut.reset.value = 1
    waylookup_env.dut.Step(10)
    waylookup_env.dut.reset.value = 0
    waylookup_env.dut.Step(10)
    yield waylookup_env
    waylookup_env.dut.Finish()
    set_line_coverage(request, "VWayLookup_coverage.dat")
    set_func_coverage(request, g)
    

@toffee_test.testcase
async def test_random(waylookup_env: WaylookupEnv):
    toffee.info("start")
    model = WaylookupModel()
    agent = waylookup_env.agent
    await agent.reset()
    await agent.flush()
    # 随机执行1M次
    data_num = 0
    for i in range(1000000):
        random_number = randint(1, 10000)

        # 写入数据
        if random_number <= 3650:
            data, gpf = random_data()
            s = await agent.write(deepcopy(data), deepcopy(gpf))
            model.write(deepcopy(data), deepcopy(gpf))
            if s:
                data_num += 1
            toffee.info(f"[{i}] Write (num={data_num})")

        # 读取数据
        elif random_number <= 7000:
            # 检查下是不是empty，如果是则bypass读
            if model.empty:
                data, gpf = random_data()
                toffee.info(f"[{i}] Bypass read, num={data_num}")
                await agent.bypass(deepcopy(data), deepcopy(gpf))
                model.bypass(deepcopy(data), deepcopy(gpf))
            else:
                data_num -= 1
                toffee.info(f"[{i}] Read, num={data_num}")
                await agent.read()
                model.read()
        
        # 更新数据
        elif random_number <= 9995:
            data = random_update_data(model)
            await agent.update(deepcopy(data))
            model.update(deepcopy(data))
            toffee.info(f"[{i}] Update")

        else:
            if randint(1, 5) != 1:
                await agent.flush()
                model.flush()
                toffee.info(f"[{i}] Flush")
                data_num = 0
            else:
                await agent.reset()
                model.reset()
                toffee.info(f"[{i}] Reset")
                data_num = 0
        