from dataclasses import dataclass
from typing import Optional, Tuple

def _get_41_6(data):
    return (data >> 6) & ((1 << 36) - 1)

# 指针数据
@dataclass(eq=True)
class PtrData:
    value: int = 0
    flag: int = 0

# Entry数据
@dataclass(eq=True)
class EntryData:
    vSetIdx_0: int = 0
    vSetIdx_1: int = 0
    waymask_0: int = 0
    waymask_1: int = 0
    ptag_0: int = 0
    ptag_1: int = 0
    itlb_exception_0: int = 0
    itlb_exception_1: int = 0
    itlb_pbmt_0: int = 0
    itlb_pbmt_1: int = 0
    meta_codes_0: int = 0
    meta_codes_1: int = 0

# GPF数据
@dataclass(eq=True)
class GpfData:
    gpaddr: int = 0
    isForVSnonLeafPTE: int = 0

# Update数据
@dataclass()
class UpdateData:
    blkPaddr: int = 0
    vSetIdx: int = 0
    waymask: int = 0
    corrupt: int = 0


# Waylookup的功能模型
class WaylookupModel:
    def __init__(self, depth=32):
        self.depth = depth
        # 指针信息
        self.read_ptr = PtrData()
        self.write_ptr = PtrData()
        self.gpf_ptr = PtrData()

        # Entries 环形队列
        self.entries = [EntryData() for _ in range(self.depth)]

        # 队列空/满
        self.empty
        self.full

        # gpf数据
        self.gpf_data = GpfData()
        self._gpf_valid = False
        self.gpf_hit

    def read(self, bypass: bool=False, bypass_data: Optional[EntryData]=None) -> Tuple[bool, Optional[EntryData], bool, Optional[GpfData]]:
        """Waylookup读入数据
        bool: 读是否成功
        EntryData: 读到的数据
        bool: 是否gpf_hit
        GpfData: GPF数据
        """
        # 无法在不Bypass的情况下读取空队列
        if self.empty and not bypass:
            return False, None, False, None
        # 如果Bypass就先写，注意不触发gpf
        if bypass:
            # Bypass只在队列为空时可用
            if not self.empty:
                raise IndexError("Use bypass read while pipeline is not empty.")
            self.write(bypass_data, gpf_en=False)
        # 读数据
        data: EntryData = self.entries[self.read_ptr.value]
        # 是否GPF_hit
        gpf_hit = self.gpf_hit
        if gpf_hit:
            gpf_data = self.gpf_data
            self._gpf_valid = False
        else:
            gpf_data = None
        # 更新读指针
        self.read_ptr.value += 1
        if (self.read_ptr.value >= self.depth):
            self.read_ptr.value = 0
            self.read_ptr.flag ^= 1
        # 返回数据
        return True, data, gpf_hit, gpf_data
        

    def write(self, data: EntryData, gpf_data: GpfData ,gpf_en: bool=True) -> bool:
        """Waylookup写入数据"""
        # 如果队列满了则拒绝写
        if self.full:
            return False
        # 错误情况：gpf_en为False但gpf_valid有效（即错误的bypass读）
        if (self._gpf_valid and not gpf_en):
            raise RuntimeError("Impossible to do bypass read when gpf is enable.")
        # 如果GPF_Valid有效则拒绝写
        if self._gpf_valid:
            return False
        # 写数据
        self.entries[self.write_ptr.value] = data
        # 检查gpf
        if (gpf_en and (data.itlb_exception_0 or data.itlb_exception_1)):
            self._gpf_valid = True
            self.gpf_data = gpf_data
            self.gpf_ptr = self.write_ptr
        # 更新写指针
        self.write_ptr.value += 1
        if (self.write_ptr.value >= self.depth):
            self.write_ptr.value = 0
            self.write_ptr.flag ^= 1
        return True
    
    def update(self, update_data: UpdateData) -> bool:
        hit = False
        for i in range(self.depth):
            data = self.entries[i]
            # 对第0行
            vset_same = data.vSetIdx_0 == update_data.vSetIdx
            ptag_same = data.ptag_0 == _get_41_6(update_data.blkPaddr)
            way_same = data.waymask_0 == update_data.waymask
            # 命中更新
            if (vset_same and ptag_same):
                data.waymask_0 = update_data.waymask
                data.meta_codes_0 = update_data.corrupt
                hit = True
            # 非命中更新
            elif (vset_same and way_same):
                data.waymask_0 = 0
                hit = True

            # 对第1行
            vset_same = data.vSetIdx_1 == update_data.vSetIdx
            ptag_same = data.ptag_1 == _get_41_6(update_data.blkPaddr)
            way_same = data.waymask_1 == update_data.waymask
            # 命中更新
            if (vset_same and ptag_same):
                data.waymask_1 = update_data.waymask
                data.meta_codes_1 = update_data.corrupt
                hit = True
            # 非命中更新
            elif (vset_same and way_same):
                data.waymask_1 = 0
                hit = True
        return hit
            

    @property
    def empty(self) -> bool:
        """队列是否空"""
        return (self.read_ptr == self.write_ptr)
    @property
    def full(self) -> bool:
        """队列是否满"""
        return (self.read_ptr.value == self.write_ptr.value and self.read_ptr.flag != self.write_ptr.flag)
    @property
    def gpf_hit(self) -> bool:
        """读取是否包含gpf信息"""
        return (self.read_ptr == self.gpf_ptr and self._gpf_valid)
