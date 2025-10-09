from toffee.env import Env
import toffee
import toffee_test

from WayLookup import DUTWayLookup
from bundle import WaylookupBundle, bundle_dict
from agent import WaylookupAgent
from model import WaylookupModel

class WaylookupEnv(Env):
    def __init__(self, dut):
        super().__init__()
        self.dut = dut
        self.bundle = WaylookupBundle.from_dict(bundle_dict).bind(dut)
        self.agent = WaylookupAgent(self.bundle)
        self.bundle.set_all(0)

if __name__ == "__main__":
    from data_model import *
    async def test_job():
        dut = DUTWayLookup()
        dut.InitClock("clock")
        toffee.start_clock(dut)
        env = WaylookupEnv(dut)
        env.attach(WaylookupModel())

        await env.agent.reset()
        await env.agent.write(EntryData(), GpfData())
        a, b, c, d = await env.agent.read()
        print(a, b, c, d)
        await env.agent.update(UpdateData())
        await env.agent.flush()
    toffee.run(test_job())
