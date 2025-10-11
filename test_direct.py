from copy import deepcopy
import toffee_test, toffee

from WayLookup import DUTWayLookup
from model import WaylookupModel
from bundle import WaylookupBundle
from agent import WaylookupAgent
from env import WaylookupEnv
from data_model import *

from fixture import waylookup_env

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
update_data_hit.waymask = entry_data1.waymask_0+1
update_data_hit.corrupt = 0

update_data_not_hit = UpdateData()
update_data_not_hit.vSetIdx = entry_data1.vSetIdx_0
update_data_not_hit.blkPaddr = entry_data1.ptag_0+222
update_data_not_hit.waymask = entry_data1.waymask_0
update_data_not_hit.corrupt = 0

update_data_none = UpdateData()
update_data_none.vSetIdx = 7
update_data_none.blkPaddr = 0
update_data_none.waymask = 2
update_data_none.corrupt = 0

# flush
# 读相关
@toffee_test.testcase
async def test_flush(waylookup_env: WaylookupEnv):
    agent = waylookup_env.agent
    await agent.reset()
    await agent.flush()

# 读相关
@toffee_test.testcase
async def test_read_normal(waylookup_env: WaylookupEnv):
    agent = waylookup_env.agent
    await agent.reset()
    await agent.flush()
    await agent.write(deepcopy(entry_data1), GpfData())
    await agent.read()

@toffee_test.testcase
async def test_read_empty(waylookup_env: WaylookupEnv):
    agent = waylookup_env.agent
    await agent.reset()
    await agent.flush()
    await agent.read()

@toffee_test.testcase
async def test_read_bypass(waylookup_env: WaylookupEnv):
    agent = waylookup_env.agent
    await agent.reset()
    await agent.flush()
    await agent.bypass(deepcopy(entry_data2), deepcopy(gpf_data))

@toffee_test.testcase
async def test_read_gpf(waylookup_env: WaylookupEnv):
    agent = waylookup_env.agent
    await agent.reset()
    await agent.flush()
    await agent.write(deepcopy(entry_data_gpf), deepcopy(gpf_data))
    await agent.read()


# 写相关
@toffee_test.testcase
async def test_write_normal(waylookup_env: WaylookupEnv):
    agent = waylookup_env.agent
    await agent.reset()
    await agent.flush()
    await agent.write(deepcopy(entry_data1), GpfData())
    await agent.read()

@toffee_test.testcase
async def test_write_full(waylookup_env: WaylookupEnv):
    agent = waylookup_env.agent
    await agent.reset()
    await agent.flush()
    for _ in range(32):
        await agent.write(deepcopy(entry_data2), GpfData())
    await agent.write(deepcopy(entry_data1), GpfData())

@toffee_test.testcase
async def test_write_gpf_valid(waylookup_env: WaylookupEnv):
    agent = waylookup_env.agent
    await agent.reset()
    await agent.flush()
    await agent.write(deepcopy(entry_data_gpf), deepcopy(gpf_data))
    await agent.write(deepcopy(entry_data1), GpfData())

@toffee_test.testcase
async def test_write_gpf_bypass(waylookup_env: WaylookupEnv):
    agent = waylookup_env.agent
    await agent.reset()
    await agent.flush()
    await agent.bypass(deepcopy(entry_data_gpf), deepcopy(gpf_data))

@toffee_test.testcase
async def test_write_gpf_not_bypass(waylookup_env: WaylookupEnv):
    agent = waylookup_env.agent
    await agent.reset()
    await agent.flush()
    await agent.write(deepcopy(entry_data_gpf), deepcopy(gpf_data))


# 指针回环
@toffee_test.testcase
async def test_ptr_roll(waylookup_env: WaylookupEnv):
    agent = waylookup_env.agent
    await agent.reset()
    await agent.flush()
    for _ in range(32 + 3):
        await agent.write(deepcopy(entry_data2), GpfData())
        await agent.read()

# 更新
@toffee_test.testcase
async def test_update_hit(waylookup_env: WaylookupEnv):
    agent = waylookup_env.agent
    await agent.reset()
    await agent.flush()
    await agent.write(deepcopy(entry_data1), GpfData())
    await agent.update(update_data_hit)
    await agent.read()

@toffee_test.testcase
async def test_update_miss(waylookup_env: WaylookupEnv):
    agent = waylookup_env.agent
    await agent.reset()
    await agent.flush()
    await agent.write(deepcopy(entry_data1), GpfData())
    await agent.update(update_data_not_hit)
    await agent.read()

@toffee_test.testcase
async def test_update_no(waylookup_env: WaylookupEnv):
    agent = waylookup_env.agent
    await agent.reset()
    await agent.flush()
    await agent.write(deepcopy(entry_data1), GpfData())
    await agent.update(update_data_none)
    await agent.read()
