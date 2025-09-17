from WayLookup import DUTWayLookup
dut = DUTWayLookup()

dut.InitClock("clock")
dut.io_flush.value = 0
dut.Step()
dut.io_flush.value = 1
dut.Step()
dut.io_flush.value = 0
dut.Step()

assert dut.WayLookup_readPtr_value.value == 0
assert dut.WayLookup_readPtr_flag.value == False
assert dut.WayLookup_writePtr_value.value == 0
assert dut.WayLookup_writePtr_flag.value == False
assert dut.WayLookup_gpf_entry_valid.value == False
assert dut.WayLookup_gpf_entry_bits_gpaddr.value == 0
