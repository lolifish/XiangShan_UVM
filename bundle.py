from toffee import Bundle, Signals

class WaylookupBundle(Bundle):
    # 基本控制信号
    flush, reset = Signals(2)
    read_ready, read_valid = Signals(2)
    write_ready, write_valid = Signals(2)
    update_valid = Signals(1)

    # write / read entry 数据
    write_vSetIdx_0, write_vSetIdx_1 = Signals(2)
    write_waymask_0, write_waymask_1 = Signals(2)
    write_ptag_0, write_ptag_1 = Signals(2)
    write_itlb_exception_0, write_itlb_exception_1 = Signals(2)
    write_itlb_pbmt_0, write_itlb_pbmt_1 = Signals(2)
    write_meta_codes_0, write_meta_codes_1 = Signals(2)

    read_vSetIdx_0, read_vSetIdx_1 = Signals(2)
    read_waymask_0, read_waymask_1 = Signals(2)
    read_ptag_0, read_ptag_1 = Signals(2)
    read_itlb_exception_0, read_itlb_exception_1 = Signals(2)
    read_itlb_pbmt_0, read_itlb_pbmt_1 = Signals(2)
    read_meta_codes_0, read_meta_codes_1 = Signals(2)

    # GPF 相关
    write_gpf_gpaddr, write_gpf_isForVSnonLeafPTE = Signals(2)
    read_gpf_gpaddr, read_gpf_isForVSnonLeafPTE = Signals(2)

    # update 相关
    blkPaddr, corrupt, vSetIdx, waymask = Signals(4)

    # 读写指针相关
    readPtr_value, readPtr_flag, writePtr_value, writePtr_flag = Signals(4)


bundle_dict = {
    # io信号
    # 基本控制
    "flush": "io_flush",
    "reset": "reset",
    "read_ready": "io_read_ready",
    "read_valid": "io_read_valid",
    "write_ready": "io_write_ready",
    "write_valid": "io_write_valid",
    "update_valid": "io_update_valid",
    # 读/写 entry
    "write_vSetIdx_0": "io_write_bits_entry_vSetIdx_0",
    "write_vSetIdx_1": "io_write_bits_entry_vSetIdx_1",
    "write_waymask_0": "io_write_bits_entry_waymask_0",
    "write_waymask_1": "io_write_bits_entry_waymask_1",
    "write_ptag_0": "io_write_bits_entry_ptag_0",
    "write_ptag_1": "io_write_bits_entry_ptag_1",
    "write_itlb_exception_0": "io_write_bits_entry_itlb_exception_0",
    "write_itlb_exception_1": "io_write_bits_entry_itlb_exception_1",
    "write_itlb_pbmt_0": "io_write_bits_entry_itlb_pbmt_0",
    "write_itlb_pbmt_1": "io_write_bits_entry_itlb_pbmt_1",
    "write_meta_codes_0": "io_write_bits_entry_meta_codes_0",
    "write_meta_codes_1": "io_write_bits_entry_meta_codes_1",
    # 读通路
    "read_vSetIdx_0": "io_read_bits_entry_vSetIdx_0",
    "read_vSetIdx_1": "io_read_bits_entry_vSetIdx_1",
    "read_waymask_0": "io_read_bits_entry_waymask_0",
    "read_waymask_1": "io_read_bits_entry_waymask_1",
    "read_ptag_0": "io_read_bits_entry_ptag_0",
    "read_ptag_1": "io_read_bits_entry_ptag_1",
    "read_itlb_exception_0": "io_read_bits_entry_itlb_exception_0",
    "read_itlb_exception_1": "io_read_bits_entry_itlb_exception_1",
    "read_itlb_pbmt_0": "io_read_bits_entry_itlb_pbmt_0",
    "read_itlb_pbmt_1": "io_read_bits_entry_itlb_pbmt_1",
    "read_meta_codes_0": "io_read_bits_entry_meta_codes_0",
    "read_meta_codes_1": "io_read_bits_entry_meta_codes_1",
    # GPF
    "write_gpf_gpaddr": "io_write_bits_gpf_gpaddr",
    "write_gpf_isForVSnonLeafPTE": "io_write_bits_gpf_isForVSnonLeafPTE",
    "read_gpf_gpaddr": "io_read_bits_gpf_gpaddr",
    "read_gpf_isForVSnonLeafPTE": "io_read_bits_gpf_isForVSnonLeafPTE",
    # update
    "blkPaddr": "io_update_bits_blkPaddr",
    "corrupt": "io_update_bits_corrupt",
    "vSetIdx": "io_update_bits_vSetIdx",
    "waymask": "io_update_bits_waymask",

    # 内部信号
    "readPtr_value": "WayLookup_readPtr_value",
    "readPtr_flag": "WayLookup_readPtr_flag",
    "writePtr_value": "WayLookup_writePtr_value",
    "writePtr_flag": "WayLookup_writePtr_flag",
}

if __name__ == "__main__":
    from WayLookup import DUTWayLookup

    dut = DUTWayLookup()
    bundle = WaylookupBundle.from_dict(bundle_dict)

    bundle.bind(dut)
