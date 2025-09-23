from WayLookup import DUTWayLookup
from model_waylookup import *

from typing import Tuple, Optional


class WaylookupDriver():
    def __init__(self, dut: DUTWayLookup):
        self.dut = dut
        self.dut.InitClock("clock")

        self.flush()
    
    def flush(self):
        # 拉低所有握手端口
        self.dut.io_read_ready.value = 0
        self.dut.io_write_valid.value = 0
        self.dut.io_update_valid.value = 0
        # flush
        self.dut.io_flush.value = 1
        self.dut.Step()
        self.dut.io_flush.value = 0
        self.dut.Step()

    
    def read(self) -> Tuple[bool, Optional[EntryData], bool, Optional[GpfData]]:
        # 读取信号
        self.dut.Step(5)
        entry_data = EntryData()
        entry_data.vSetIdx_0 = self.dut.io_read_bits_entry_vSetIdx_0.value
        entry_data.vSetIdx_1 = self.dut.io_read_bits_entry_vSetIdx_1.value
        entry_data.waymask_0 = self.dut.io_read_bits_entry_waymask_0.value
        entry_data.waymask_1 = self.dut.io_read_bits_entry_waymask_1.value
        entry_data.ptag_0 = self.dut.io_read_bits_entry_ptag_0.value
        entry_data.ptag_1 = self.dut.io_read_bits_entry_ptag_1.value
        entry_data.itlb_exception_0 = self.dut.io_read_bits_entry_itlb_exception_0.value
        entry_data.itlb_exception_1 = self.dut.io_read_bits_entry_itlb_exception_1.value
        entry_data.itlb_pbmt_0 = self.dut.io_read_bits_entry_itlb_pbmt_0.value
        entry_data.itlb_pbmt_1 = self.dut.io_read_bits_entry_itlb_pbmt_1.value
        entry_data.meta_codes_0 = self.dut.io_read_bits_entry_meta_codes_0.value
        entry_data.meta_codes_1 = self.dut.io_read_bits_entry_meta_codes_1.value
        # GPF数据
        has_gpf = self.dut.io_read_bits_entry_itlb_exception_0.value == 2 or self.dut.io_read_bits_entry_itlb_exception_1.value == 2
        if has_gpf:
            gpf_data = GpfData()
            gpf_data.gpaddr = self.dut.io_read_bits_gpf_gpaddr.value
            gpf_data.isForVSnonLeafPTE = self.dut.io_read_bits_gpf_isForVSnonLeafPTE.value
        else:
            gpf_data = None
        # 执行真正的读操作
        self.dut.io_read_ready.value = 1
        self.dut.Step()
        # 尝试等待valid
        _wait_cnt = 0
        success = False
        while _wait_cnt < 5:
            if (self.dut.io_read_valid.value):
                success = True
                break
            _wait_cnt += 1
            self.dut.Step()
        # 读失败不返回数据
        self.dut.io_read_ready.value = 0
        self.dut.Step()
        if not success: return False, None, False, None
        return True, entry_data, has_gpf, gpf_data
    

    def write(self, data: EntryData, gpf_data: GpfData) -> bool:
        # 写入信号
        self.dut.io_write_valid.value = 1
        self.dut.io_write_bits_entry_vSetIdx_0.value = data.vSetIdx_0
        self.dut.io_write_bits_entry_vSetIdx_1.value = data.vSetIdx_1
        self.dut.io_write_bits_entry_waymask_0.value = data.waymask_0
        self.dut.io_write_bits_entry_waymask_1.value = data.waymask_1
        self.dut.io_write_bits_entry_ptag_0.value = data.ptag_0
        self.dut.io_write_bits_entry_ptag_1.value = data.ptag_1
        self.dut.io_write_bits_entry_itlb_exception_0.value = data.itlb_exception_0
        self.dut.io_write_bits_entry_itlb_exception_1.value = data.itlb_exception_1
        self.dut.io_write_bits_entry_itlb_pbmt_0.value = data.itlb_pbmt_0
        self.dut.io_write_bits_entry_itlb_pbmt_1.value = data.itlb_pbmt_1
        self.dut.io_write_bits_entry_meta_codes_0.value = data.meta_codes_0
        self.dut.io_write_bits_entry_meta_codes_1.value = data.meta_codes_1
        self.dut.io_write_bits_gpf_gpaddr.value = gpf_data.gpaddr
        self.dut.io_write_bits_gpf_isForVSnonLeafPTE.value = gpf_data.isForVSnonLeafPTE
        self.dut.Step()
        # 尝试等待ready
        _wait_cnt = 0
        success = False
        while _wait_cnt < 5:
            if (self.dut.io_write_ready.value):
                success = True
                break
            _wait_cnt += 1
            self.dut.Step()
        self.dut.io_write_valid.value = 0
        self.dut.Step(5)
        # 返回是否成功
        if not success: return False
        else: return True

    
    def update(self, update_data: UpdateData):
        self.dut.io_update_bits_blkPaddr.value = update_data.blkPaddr
        self.dut.io_update_bits_corrupt.value = update_data.corrupt
        self.dut.io_update_bits_vSetIdx.value = update_data.vSetIdx
        self.dut.io_update_bits_waymask.value = update_data.waymask
        self.dut.io_update_valid.value = 1
        self.dut.Step()
        self.dut.io_update_valid.value = 0
        self.dut.Step()
    
    def bypass(self, data: EntryData, gpf_data: GpfData) -> Tuple[bool, Optional[EntryData], bool, Optional[GpfData]]:
        # 写入信号
        self.dut.io_write_valid.value = 1
        self.dut.io_write_bits_entry_vSetIdx_0.value = data.vSetIdx_0
        self.dut.io_write_bits_entry_vSetIdx_1.value = data.vSetIdx_1
        self.dut.io_write_bits_entry_waymask_0.value = data.waymask_0
        self.dut.io_write_bits_entry_waymask_1.value = data.waymask_1
        self.dut.io_write_bits_entry_ptag_0.value = data.ptag_0
        self.dut.io_write_bits_entry_ptag_1.value = data.ptag_1
        self.dut.io_write_bits_entry_itlb_exception_0.value = data.itlb_exception_0
        self.dut.io_write_bits_entry_itlb_exception_1.value = data.itlb_exception_1
        self.dut.io_write_bits_entry_itlb_pbmt_0.value = data.itlb_pbmt_0
        self.dut.io_write_bits_entry_itlb_pbmt_1.value = data.itlb_pbmt_1
        self.dut.io_write_bits_entry_meta_codes_0.value = data.meta_codes_0
        self.dut.io_write_bits_entry_meta_codes_1.value = data.meta_codes_1
        self.dut.io_write_bits_gpf_gpaddr.value = gpf_data.gpaddr
        self.dut.io_write_bits_gpf_isForVSnonLeafPTE.value = gpf_data.isForVSnonLeafPTE
        # 读使能进入bypass
        self.dut.io_read_ready.value = 1
        self.dut.Step()
        self.dut.io_read_ready.value = 0
        self.dut.io_write_valid.value = 0
        # 读取信号
        entry_data = EntryData()
        entry_data.vSetIdx_0 = self.dut.io_read_bits_entry_vSetIdx_0.value
        entry_data.vSetIdx_1 = self.dut.io_read_bits_entry_vSetIdx_1.value
        entry_data.waymask_0 = self.dut.io_read_bits_entry_waymask_0.value
        entry_data.waymask_1 = self.dut.io_read_bits_entry_waymask_1.value
        entry_data.ptag_0 = self.dut.io_read_bits_entry_ptag_0.value
        entry_data.ptag_1 = self.dut.io_read_bits_entry_ptag_1.value
        entry_data.itlb_exception_0 = self.dut.io_read_bits_entry_itlb_exception_0.value
        entry_data.itlb_exception_1 = self.dut.io_read_bits_entry_itlb_exception_1.value
        entry_data.itlb_pbmt_0 = self.dut.io_read_bits_entry_itlb_pbmt_0.value
        entry_data.itlb_pbmt_1 = self.dut.io_read_bits_entry_itlb_pbmt_1.value
        entry_data.meta_codes_0 = self.dut.io_read_bits_entry_meta_codes_0.value
        entry_data.meta_codes_1 = self.dut.io_read_bits_entry_meta_codes_1.value
        # 读取GPF
        has_gpf = self.dut.io_read_bits_entry_itlb_exception_0.value == 2 or self.dut.io_read_bits_entry_itlb_exception_1.value == 2
        gpf_data = GpfData()
        if has_gpf:
            gpf_data.gpaddr = self.dut.io_read_bits_gpf_gpaddr.value
            gpf_data.isForVSnonLeafPTE = self.dut.io_read_bits_gpf_isForVSnonLeafPTE.value
        self.dut.Step()
        return True, entry_data, has_gpf, gpf_data


if __name__ == "__main__":
    dut = DUTWayLookup()
    driver = WaylookupDriver(dut)
    driver.flush()
