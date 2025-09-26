from random import randint
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
    data.ptag_0 = randint(100, 500)    # 可能的取值太多了，稍微缩小一下，否则update命中不了
    data.ptag_1 = randint(100, 500)
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

if __name__ == "__main__":
    model = WaylookupModel()
    driver = WaylookupDriver(DUTWayLookup())

    model.flush()
    driver.flush()

    # 随机执行1M次
    data_num = 0
    for i in range(1000000):
        random_number = randint(1, 100)
        # 写入数据
        if random_number <= 27 or i < 10:
            data, gpf = random_data()
            
            model_s = model.write(deepcopy(data), deepcopy(gpf))
            driver_s = driver.write(deepcopy(data), deepcopy(gpf))
            assert model_s == driver_s
            if model_s:
                data_num += 1
            print(f"[{i}] Write (gpf={model._gpf_valid}), num={data_num}")
        # 读取数据
        elif random_number <= 50:
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
        elif random_number <= 100:
            data = UpdateData()
            data.blkPaddr = randint(100, 500)
            data.vSetIdx = randint(0, 255)
            data.waymask = randint(0, 15)
            data.corrupt = randint(0, 1)
            model.update(data)
            driver.update(data)
            print(f"[{i}] Update")
        
