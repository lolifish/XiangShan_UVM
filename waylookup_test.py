import asyncio
import random
from WayLookup import DUTWayLookup

class PointerUpdateModel:
    def __init__(self, depth=32):
        self.depth = depth
        self.readPtr_value = 0
        self.readPtr_flag = 0
        self.writePtr_value = 0
        self.writePtr_flag = 0
    
    def read(self):
        self.readPtr_value += 1
        if (self.readPtr_value >= self.depth):
            self.readPtr_value = 0
            self.readPtr_flag ^= 1

    def write(self):
        self.writePtr_value += 1
        if (self.writePtr_value >= self.depth):
            self.writePtr_value = 0
            self.writePtr_flag ^= 1

class PointerUpdateDriver:
    def __init__(self, dut: DUTWayLookup, model: PointerUpdateModel):
        self.dut = dut
        self.model = model
    
    def flush(self):
        self.dut.io_flush.value = 0
        self.dut.Step()
        self.dut.io_flush.value = 1
        self.dut.Step()
        self.dut.io_flush.value = 0
        self.dut.Step()
    
    def write(self):
        self.model.write()

        self.dut.io_write_valid.value = 1
        self.dut.Step(1)
        
        while not self.dut.io_write_ready.value: self.dut.Step(1)
        self.dut.io_write_valid.value = 0
        self.dut.Step(3)

        assert self.model.writePtr_value == self.dut.WayLookup_writePtr_value.value, f"❌Expected {self.model.writePtr_value}, got {self.dut.WayLookup_writePtr_value.value}"
        assert self.model.writePtr_flag == self.dut.WayLookup_writePtr_flag.value, f"❌Expected {self.model.writePtr_flag}, got {self.dut.WayLookup_writePtr_flag.value}"
        print(f"✅Pass: write Ptr_value={self.model.writePtr_value}, flag={self.model.writePtr_flag}")
    
    def read(self):
        self.model.read()

        self.dut.io_read_ready.value = 1
        self.dut.Step(1)

        while not self.dut.io_read_valid.value: self.dut.Step(1)
        self.dut.io_read_ready.value = 0
        self.dut.Step(3)

        assert self.model.readPtr_value == self.dut.WayLookup_readPtr_value.value, f"❌Expected {self.model.readPtr_value}, got {self.dut.WayLookup_readPtr_value.value}"
        assert self.model.readPtr_flag == self.dut.WayLookup_readPtr_flag.value, f"❌Expected {self.model.readPtr_flag}, got {self.dut.WayLookup_readPtr_flag.value}"
        print(f"✅Pass: read Ptr_value={self.model.readPtr_value}, flag={self.model.readPtr_flag}")


    def run(self):
        self.flush()

        read_cnt = 0
        write_cnt = 0

        # 执行100遍随机过程
        for i in range(100):
            step = random.randint(1, 20)    # 连续读/写的次数

            print(f"{i+1}: step={step} Write begin")
            for write_i in range(step):
                self.write()
            print(f"✅{i+1}: step={step} Write pass\n")

            print(f"{i+1}: step={step} Read begin")
            for read_i in range(step):
                self.read()
            print(f"✅{i+1}: step={step} Read pass\n")
        
        print("✅All Pass")
        

if __name__ == "__main__":
    dut = DUTWayLookup()
    dut.InitClock("clock")

    model = PointerUpdateModel()
    driver = PointerUpdateDriver(dut, model)
    driver.run()
    dut.Finish()
