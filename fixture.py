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

from coverpoint import *

@toffee_test.fixture
async def waylookup_env(toffee_request: toffee_test.ToffeeRequest):
    dut = toffee_request.create_dut(DUTWayLookup)
    dut.InitClock("clock")
    toffee.start_clock(dut)

    # Create env
    env = WaylookupEnv(dut)

    toffee_request.add_cov_groups([
        get_cover_group_ptr(env.bundle),
        get_cover_group_update(env.bundle),
        get_cover_group_read(env.bundle),
        get_cover_group_write(env.bundle),
    ])

    # Cover group flush
    cover_group_flush = get_cover_group_flush(env.bundle)
    async def flush_sequence():
        while True:
            await toffee.Value(env.bundle.flush, 0)
            await toffee.Value(env.bundle.flush, 1)
            await toffee.ClockCycles(env.bundle, 1)
            cover_group_flush.sample()
    toffee.create_task(flush_sequence())

    yield env
    toffee_request.cov_groups.extend([
        cover_group_flush,
    ])

