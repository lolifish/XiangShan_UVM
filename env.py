from toffee.env import Env
import toffee
from WayLookup import DUTWayLookup
from bundle import WaylookupBundle, bundle_dict
from agent import WaylookupAgent

import asyncio

class WaylookupEnv(Env):
    def __init__(self, dut):
        super().__init__()
        self.dut = dut
        self.bundle = WaylookupBundle.from_dict(bundle_dict).bind(dut)
        self.agent = WaylookupAgent(self.bundle)
        self.bundle.set_all(0)


if __name__ == "__main__":
    from model import WaylookupModel

    async def test_job():
        dut = DUTWayLookup()
        dut.InitClock("clock")
        toffee.start_clock(dut)
        env = WaylookupEnv(dut)
        env.attach(WaylookupModel())
        await env.agent.reset()
        a, b, c, d = await env.agent.read()
        print(a, b, c, d)

    toffee.run(test_job())
