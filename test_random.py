from random import randint, choice
from copy import deepcopy

from WayLookup import DUTWayLookup
from model_waylookup import *
from driver_waylookup import *

def random_data():
    data = EntryData()
    data.vSetIdx_0 = randint(0, 255)
    data.vSetIdx_1 = randint(0, 255)
    data.waymask_0 = randint(0, 15)
    data.waymask_1 = randint(0, 15)
    data.ptag_0 = randint(0, 68719476735)
    data.ptag_1 = randint(0, 68719476735)
    data.itlb_pbmt_0 = randint(0, 3)
    data.itlb_pbmt_1 = randint(0, 3)
    data.meta_codes_0 = randint(0, 1)
    data.meta_codes_1 = randint(0, 1)
    # 随机出现gpf
    random_gpf_number = randint(1, 100)
    if random_gpf_number == 1:
        data.itlb_exception_0 = 2
    elif random_gpf_number == 2:
        data.itlb_exception_1 = 2
    else:
        data.itlb_exception_0 = randint(0, 1)
        data.itlb_exception_1 = randint(0, 1)
    gpf = GpfData()
    gpf.gpaddr = randint(1, 1000)
    gpf.isForVSnonLeafPTE = randint(0, 1)

    return data, gpf

def random_update_data(model: WaylookupModel):
    a = randint(1, 10)
    entry = choice(model.entries)
    data = UpdateData()
    # 命中
    if a==1:
        data.blkPaddr = entry.ptag_0 << 6
        data.vSetIdx = entry.vSetIdx_0
        data.waymask = randint(0, 15)
        data.corrupt = randint(0, 1)
    elif a==2:
        data.blkPaddr = entry.ptag_1 << 6
        data.vSetIdx = entry.vSetIdx_1
        data.waymask = randint(0, 15)
        data.corrupt = randint(0, 1)
    # waymask命中
    elif a==3:
        data.blkPaddr = randint(0, 68719476735) << 6
        data.vSetIdx = entry.vSetIdx_0
        data.waymask = entry.waymask_0
        data.corrupt = randint(0, 1)
        print("waymask", data)
    elif a==4:
        data.blkPaddr = randint(0, 68719476735) << 6
        data.vSetIdx = entry.vSetIdx_1
        data.waymask = entry.waymask_1
        data.corrupt = randint(0, 1)
    # 纯随机
    else:
        data.blkPaddr = randint(100, 500) << 6
        data.vSetIdx = randint(0, 255)
        data.waymask = randint(0, 15)
        data.corrupt = randint(0, 1)
    return data

if __name__ == "__main__":
    model = WaylookupModel()
    driver = WaylookupDriver(DUTWayLookup())

    model.flush()
    driver.flush()

    # 随机执行1M次
    data_num = 0
    for i in range(1000000):
        random_number = randint(1, 10000)
        # 写入数据
        if random_number <= 3600:
            data, gpf = random_data()
            
            model_s = model.write(deepcopy(data), deepcopy(gpf))
            driver_s = driver.write(deepcopy(data), deepcopy(gpf))
            assert model_s == driver_s
            if model_s:
                data_num += 1
            print(f"[{i}] Write (gpf={model._gpf_valid}), num={data_num}")
        # 读取数据
        elif random_number <= 7000:
            # 检查下是不是empty，如果是则bypass读
            if model.empty:
                data, gpf = random_data()
                print(f"[{i}] Bypass read, num={data_num}")
                model_s, model_data, model_gpf, model_gpf_data = model.bypass(deepcopy(data), deepcopy(gpf))
                driver_s, driver_data, driver_gpf, driver_gpf_data = driver.bypass(deepcopy(data), deepcopy(gpf))
                assert model_s == driver_s
                assert model_data == driver_data
                assert model_gpf == driver_gpf
                if model_data.itlb_exception_0 == 2 or model_data.itlb_exception_1 ==2:
                    assert model_gpf_data == driver_gpf_data
            else:
                data_num -= 1
                print(f"[{i}] Read, num={data_num}")
                model_s, model_data, model_gpf, model_gpf_data =  model.read()
                driver_s, driver_data, driver_gpf, driver_gpf_data = driver.read()
                assert model_s == driver_s
                assert model_data == driver_data
                assert model_gpf == driver_gpf
                if model_data.itlb_exception_0 == 2 or model_data.itlb_exception_1 ==2:
                    assert model_gpf_data == driver_gpf_data
        
        # 更新数据
        elif random_number <= 9999:
            data = random_update_data(model)
            model.update(deepcopy(data))
            driver.update(deepcopy(data))
            print(f"[{i}] Update")

        else:
            if randint(0, 5) != 0:
                driver.flush()
                model.flush()
                print(f"[{i}] Flush")
                data_num = 0
            else:
                driver.reset()
                model.reset()
                print(f"[{i}] Reset")
                data_num = 0
        