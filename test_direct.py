from random import randint
from copy import deepcopy

from WayLookup import DUTWayLookup
from model_waylookup import *
from driver_waylookup import *

if __name__ == "__main__":
    model = WaylookupModel()
    driver = WaylookupDriver(DUTWayLookup())
    driver.flush()

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
    driver.write(entry_data1, GpfData())
    model.write(entry_data1, GpfData())
    assert driver.dut.WayLookup_writePtr_value.value == model.write_ptr.value
    assert driver.dut.WayLookup_writePtr_flag.value == model.write_ptr.flag
    # 读取
    _, data_driver, _, _ = driver.read()
    _, data_model, _, _ = model.read()
    assert driver.dut.WayLookup_readPtr_value.value == model.read_ptr.value
    assert driver.dut.WayLookup_readPtr_flag.value == model.read_ptr.flag
    # 数据是否相同
    assert data_driver == data_model
    print("✅Passed: Basic write-read")

    # 队列为空不能读
    success_driver, _, _, _ = driver.read()
    success_model, _, _, _ = model.read()
    assert not success_driver
    assert not success_model
    print("✅Passed: Read disable when empty")
    
    # 队列已满不能写
    for _ in range(32):
        success_driver = driver.write(entry_data2, GpfData())
        success_model = model.write(entry_data2, GpfData())
        assert success_driver == success_model
        assert driver.dut.WayLookup_writePtr_value.value == model.write_ptr.value
        assert driver.dut.WayLookup_writePtr_flag.value == model.write_ptr.flag
    success_driver = driver.write(entry_data1, GpfData())
    success_model = model.write(entry_data1, GpfData())
    assert not success_driver
    assert not success_model
    print("✅Passed: Write disable when full")

    # flush
    driver.flush()
    model.flush()
    assert driver.dut.WayLookup_readPtr_value.value == 0
    assert driver.dut.WayLookup_readPtr_flag.value == 0
    assert driver.dut.WayLookup_writePtr_value.value == 0
    assert driver.dut.WayLookup_writePtr_flag.value == 0
    assert driver.dut.WayLookup_gpf_entry_valid.value == 0
    assert driver.dut.WayLookup_gpf_entry_bits_gpaddr.value == 0
    print("✅Passed: Flush")

    # 写入GPF信息
    driver.write(entry_data_gpf, gpf_data)
    model.write(entry_data_gpf, gpf_data)
    assert driver.dut.WayLookup_gpf_entry_valid.value
    assert driver.dut.WayLookup_gpf_entry_bits_gpaddr.value == 123
    print("✅Passed: write with itlb exception")

    # 有GPF不可继续写
    success_driver = driver.write(entry_data1, GpfData())
    success_model = model.write(entry_data1, GpfData)
    assert not success_driver
    assert not success_model
    print("✅Passed: write disabled when gpf valid")

    # 读出Gpf信息
    success_driver, data_driver, gpf_driver, gpf_data_driver = driver.read()
    success_model, data_model, gpf_model, gpf_data_model = model.read()
    assert success_driver
    assert success_model
    assert data_driver == entry_data_gpf
    assert data_model == entry_data_gpf
    assert gpf_driver
    assert gpf_model
    assert gpf_data_driver == gpf_data
    assert gpf_data_model == gpf_data
    assert not driver.dut.WayLookup_gpf_entry_valid.value 
    print("✅Passed: read gpf data")

    # Bypass读
    success_driver, data_driver, gpf_driver, gpf_data_driver = driver.bypass(entry_data_gpf, gpf_data)
    success_model, data_model, gpf_model, gpf_data_model = model.bypass(entry_data_gpf, gpf_data)
    assert data_driver == entry_data_gpf
    assert data_model == entry_data_gpf
    assert gpf_driver
    assert gpf_model
    assert gpf_data_driver == gpf_data
    assert gpf_data_model == gpf_data
    assert not driver.dut.WayLookup_gpf_entry_valid.value     # bypass时不设置gpf_valid
    print("✅Passed: Bypass read")

    # 更新操作
    # 命中更新
    driver.flush()
    model.flush()
    success_driver = driver.write(deepcopy(entry_data1), GpfData())
    success_model = model.write(deepcopy(entry_data1), GpfData())
    assert success_driver
    assert success_model
    driver.update(update_data_hit)
    model.update(update_data_hit)
    _, data_driver, _, _ = driver.read()
    _, data_model, _, _ = model.read()
    assert data_driver == data_model
    assert data_driver.waymask_0 == update_data_hit.waymask
    assert data_driver.meta_codes_0 == bin(entry_data1.ptag_0).count("1") % 2
    print("✅Passed: Update not hit")

    # 未命中更新
    success_driver = driver.write(deepcopy(entry_data1), GpfData())
    success_model = model.write(deepcopy(entry_data1), GpfData())
    assert success_driver
    assert success_model
    driver.update(update_data_not_hit)
    model.update(update_data_not_hit)
    _, data_driver, _, _ = driver.read()
    _, data_model, _, _ = model.read()
    assert data_driver == data_model
    assert data_driver.waymask_0 == 0
    print("✅Passed: Update not hit")

    # 其它情况
    success_driver = driver.write(deepcopy(entry_data1), GpfData())
    success_model = model.write(deepcopy(entry_data1), GpfData())
    assert success_driver
    assert success_model
    driver.update(update_data_none)
    model.update(update_data_none)
    _, data_driver, _, _ = driver.read()
    _, data_model, _, _ = model.read()
    assert data_driver == data_model
    assert data_driver == entry_data1
    print("✅Passed: Update (nothing happened)")

