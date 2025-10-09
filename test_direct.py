from copy import deepcopy
import toffee_test, toffee
from toffee_test.reporter import set_line_coverage

from WayLookup import DUTWayLookup
from model import WaylookupModel
from bundle import WaylookupBundle
from agent import WaylookupAgent
from env import WaylookupEnv
from data_model import *

from fixture import waylookup_env

@toffee_test.testcase
async def test_direct(waylookup_env: WaylookupEnv):
    agent = waylookup_env.agent
    await agent.reset()

    entry_data1 = EntryData()
    entry_data1.vSetIdx_0 = 11
    entry_data1.waymask_0 = 5
    entry_data1.ptag_0 = 11
    entry_data2 = EntryData()
    entry_data2.vSetIdx_1 = 13
    entry_data2.waymask_1 = 2
    entry_data2.ptag_1 = 22

    gpf_data = GpfData()
    gpf_data.gpaddr = 123
    gpf_data.isForVSnonLeafPTE = 1
    entry_data_gpf = EntryData()
    entry_data_gpf.itlb_exception_0 = 2
    entry_data_gpf.vSetIdx_0 = 25

    update_data_hit = UpdateData()
    update_data_hit.vSetIdx = entry_data1.vSetIdx_0
    update_data_hit.blkPaddr = entry_data1.ptag_0 << 6
    update_data_hit.waymask = 3
    update_data_hit.corrupt = 0

    update_data_not_hit = UpdateData()
    update_data_not_hit.vSetIdx = entry_data1.vSetIdx_0
    update_data_not_hit.blkPaddr = 0
    update_data_not_hit.waymask = entry_data1.waymask_0
    update_data_not_hit.corrupt = 0

    update_data_none = UpdateData()
    update_data_none.vSetIdx = 7
    update_data_none.blkPaddr = 0
    update_data_none.waymask = 2
    update_data_none.corrupt = 0

    # 测试普通读写
    # 写入
    await agent.write(entry_data1, GpfData())
    # 读取
    _, data, _, _ = await agent.read()
    # 数据是否相同
    assert data == entry_data1
    toffee.info("✅Passed: Basic write-read")

    # 队列为空不能读
    success, _, _, _ = await agent.read()
    assert not success
    toffee.info("✅Passed: Read disable when empty")
    
    # 队列已满不能写
    for _ in range(32):
        success = await agent.write(entry_data2, GpfData())
        assert success
    success = await agent.write(entry_data1, GpfData())
    assert not success
    toffee.info("✅Passed: Write disable when full")

    # flush
    await agent.flush()
    print("✅Passed: Flush")

    # 写入GPF信息
    await agent.write(entry_data_gpf, gpf_data)
    print("✅Passed: write with itlb exception")
    # 有GPF不可继续写
    success = await agent.write(entry_data1, GpfData())
    assert not success
    print("✅Passed: write disabled when gpf valid")

    # 读出Gpf信息
    success_driver, data_driver, gpf_driver, gpf_data_driver = await agent.read()
    assert success_driver
    assert data_driver == entry_data_gpf
    assert gpf_driver
    assert gpf_data_driver == gpf_data
    print("✅Passed: read gpf data")

    # Bypass读
    success_driver, data_driver, gpf_driver, gpf_data_driver = await agent.bypass(entry_data_gpf, gpf_data)
    assert data_driver == entry_data_gpf
    assert gpf_driver
    assert gpf_data_driver == gpf_data
    print("✅Passed: Bypass read")

    # 更新操作
    # 命中更新
    await agent.flush()
    success_driver = await agent.write(deepcopy(entry_data1), GpfData())
    assert success_driver
    await agent.update(update_data_hit)
    _, data_driver, _, _ = await agent.read()
    assert data_driver.waymask_0 == update_data_hit.waymask
    assert data_driver.meta_codes_0 == bin(entry_data1.ptag_0).count("1") % 2
    print("✅Passed: Update hit")

    # 未命中更新
    success_driver = await agent.write(deepcopy(entry_data1), GpfData())
    assert success_driver
    await agent.update(update_data_not_hit)
    _, data_driver, _, _ = await agent.read()
    assert data_driver.waymask_0 == 0
    print("✅Passed: Update not hit")

    # 其它情况
    success_driver = await agent.write(deepcopy(entry_data1), GpfData())
    assert success_driver
    await agent.update(update_data_none)
    _, data_driver, _, _ = await agent.read()
    assert data_driver == entry_data1
    print("✅Passed: Update (nothing happened)")
