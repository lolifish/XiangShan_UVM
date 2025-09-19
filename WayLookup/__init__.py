#coding=utf8

try:
    from . import xspcomm as xsp
except Exception as e:
    import xspcomm as xsp

if __package__ or "." in __name__:
    from .libUT_WayLookup import *
else:
    from libUT_WayLookup import *


class DUTWayLookup(object):

    # initialize
    def __init__(self, *args, **kwargs):
        self.dut = DutUnifiedBase(*args)
        self.xclock = xsp.XClock(self.dut.pxcStep, self.dut.pSelf)
        self.xport  = xsp.XPort()
        self.xclock.Add(self.xport)
        self.event = self.xclock.getEvent()
        self.internal_signals = {}
        self.xcfg = xsp.XSignalCFG(self.dut.GetXSignalCFGPath(), self.dut.GetXSignalCFGBasePtr())

        # set output files
        if kwargs.get("waveform_filename"):
            self.dut.SetWaveform(kwargs.get("waveform_filename"))
        if kwargs.get("coverage_filename"):
            self.dut.SetCoverage(kwargs.get("coverage_filename"))

        # all Pins
        self.clock = xsp.XPin(xsp.XData(0, xsp.XData.In), self.event)
        self.reset = xsp.XPin(xsp.XData(0, xsp.XData.In), self.event)
        self.io_flush = xsp.XPin(xsp.XData(0, xsp.XData.In), self.event)
        self.io_read_ready = xsp.XPin(xsp.XData(0, xsp.XData.In), self.event)
        self.io_read_valid = xsp.XPin(xsp.XData(0, xsp.XData.Out), self.event)
        self.io_read_bits_entry_vSetIdx_0 = xsp.XPin(xsp.XData(8, xsp.XData.Out), self.event)
        self.io_read_bits_entry_vSetIdx_1 = xsp.XPin(xsp.XData(8, xsp.XData.Out), self.event)
        self.io_read_bits_entry_waymask_0 = xsp.XPin(xsp.XData(4, xsp.XData.Out), self.event)
        self.io_read_bits_entry_waymask_1 = xsp.XPin(xsp.XData(4, xsp.XData.Out), self.event)
        self.io_read_bits_entry_ptag_0 = xsp.XPin(xsp.XData(36, xsp.XData.Out), self.event)
        self.io_read_bits_entry_ptag_1 = xsp.XPin(xsp.XData(36, xsp.XData.Out), self.event)
        self.io_read_bits_entry_itlb_exception_0 = xsp.XPin(xsp.XData(2, xsp.XData.Out), self.event)
        self.io_read_bits_entry_itlb_exception_1 = xsp.XPin(xsp.XData(2, xsp.XData.Out), self.event)
        self.io_read_bits_entry_itlb_pbmt_0 = xsp.XPin(xsp.XData(2, xsp.XData.Out), self.event)
        self.io_read_bits_entry_itlb_pbmt_1 = xsp.XPin(xsp.XData(2, xsp.XData.Out), self.event)
        self.io_read_bits_entry_meta_codes_0 = xsp.XPin(xsp.XData(0, xsp.XData.Out), self.event)
        self.io_read_bits_entry_meta_codes_1 = xsp.XPin(xsp.XData(0, xsp.XData.Out), self.event)
        self.io_read_bits_gpf_gpaddr = xsp.XPin(xsp.XData(56, xsp.XData.Out), self.event)
        self.io_read_bits_gpf_isForVSnonLeafPTE = xsp.XPin(xsp.XData(0, xsp.XData.Out), self.event)
        self.io_write_ready = xsp.XPin(xsp.XData(0, xsp.XData.Out), self.event)
        self.io_write_valid = xsp.XPin(xsp.XData(0, xsp.XData.In), self.event)
        self.io_write_bits_entry_vSetIdx_0 = xsp.XPin(xsp.XData(8, xsp.XData.In), self.event)
        self.io_write_bits_entry_vSetIdx_1 = xsp.XPin(xsp.XData(8, xsp.XData.In), self.event)
        self.io_write_bits_entry_waymask_0 = xsp.XPin(xsp.XData(4, xsp.XData.In), self.event)
        self.io_write_bits_entry_waymask_1 = xsp.XPin(xsp.XData(4, xsp.XData.In), self.event)
        self.io_write_bits_entry_ptag_0 = xsp.XPin(xsp.XData(36, xsp.XData.In), self.event)
        self.io_write_bits_entry_ptag_1 = xsp.XPin(xsp.XData(36, xsp.XData.In), self.event)
        self.io_write_bits_entry_itlb_exception_0 = xsp.XPin(xsp.XData(2, xsp.XData.In), self.event)
        self.io_write_bits_entry_itlb_exception_1 = xsp.XPin(xsp.XData(2, xsp.XData.In), self.event)
        self.io_write_bits_entry_itlb_pbmt_0 = xsp.XPin(xsp.XData(2, xsp.XData.In), self.event)
        self.io_write_bits_entry_itlb_pbmt_1 = xsp.XPin(xsp.XData(2, xsp.XData.In), self.event)
        self.io_write_bits_entry_meta_codes_0 = xsp.XPin(xsp.XData(0, xsp.XData.In), self.event)
        self.io_write_bits_entry_meta_codes_1 = xsp.XPin(xsp.XData(0, xsp.XData.In), self.event)
        self.io_write_bits_gpf_gpaddr = xsp.XPin(xsp.XData(56, xsp.XData.In), self.event)
        self.io_write_bits_gpf_isForVSnonLeafPTE = xsp.XPin(xsp.XData(0, xsp.XData.In), self.event)
        self.io_update_valid = xsp.XPin(xsp.XData(0, xsp.XData.In), self.event)
        self.io_update_bits_blkPaddr = xsp.XPin(xsp.XData(42, xsp.XData.In), self.event)
        self.io_update_bits_vSetIdx = xsp.XPin(xsp.XData(8, xsp.XData.In), self.event)
        self.io_update_bits_waymask = xsp.XPin(xsp.XData(4, xsp.XData.In), self.event)
        self.io_update_bits_corrupt = xsp.XPin(xsp.XData(0, xsp.XData.In), self.event)
        self.WayLookup_readPtr_flag = xsp.XPin(xsp.XData(0, xsp.XData.Out), self.event)
        self.WayLookup_readPtr_value = xsp.XPin(xsp.XData(5, xsp.XData.Out), self.event)
        self.WayLookup_writePtr_flag = xsp.XPin(xsp.XData(0, xsp.XData.Out), self.event)
        self.WayLookup_writePtr_value = xsp.XPin(xsp.XData(5, xsp.XData.Out), self.event)
        self.WayLookup_io_write_ready_0 = xsp.XPin(xsp.XData(0, xsp.XData.Out), self.event)
        self.WayLookup_entries_30_waymask_0 = xsp.XPin(xsp.XData(0, xsp.XData.Out), self.event)
        self.WayLookup_gpf_entry_valid = xsp.XPin(xsp.XData(0, xsp.XData.Out), self.event)
        self.WayLookup_gpf_entry_bits_gpaddr = xsp.XPin(xsp.XData(0, xsp.XData.Out), self.event)


        # BindDPI
        self.clock.BindDPIPtr(self.dut.GetDPIHandle("clock", 0), self.dut.GetDPIHandle("clock", 1))
        self.reset.BindDPIPtr(self.dut.GetDPIHandle("reset", 0), self.dut.GetDPIHandle("reset", 1))
        self.io_flush.BindDPIPtr(self.dut.GetDPIHandle("io_flush", 0), self.dut.GetDPIHandle("io_flush", 1))
        self.io_read_ready.BindDPIPtr(self.dut.GetDPIHandle("io_read_ready", 0), self.dut.GetDPIHandle("io_read_ready", 1))
        self.io_read_valid.BindDPIPtr(self.dut.GetDPIHandle("io_read_valid", 0), self.dut.GetDPIHandle("io_read_valid", 1))
        self.io_read_bits_entry_vSetIdx_0.BindDPIPtr(self.dut.GetDPIHandle("io_read_bits_entry_vSetIdx_0", 0), self.dut.GetDPIHandle("io_read_bits_entry_vSetIdx_0", 1))
        self.io_read_bits_entry_vSetIdx_1.BindDPIPtr(self.dut.GetDPIHandle("io_read_bits_entry_vSetIdx_1", 0), self.dut.GetDPIHandle("io_read_bits_entry_vSetIdx_1", 1))
        self.io_read_bits_entry_waymask_0.BindDPIPtr(self.dut.GetDPIHandle("io_read_bits_entry_waymask_0", 0), self.dut.GetDPIHandle("io_read_bits_entry_waymask_0", 1))
        self.io_read_bits_entry_waymask_1.BindDPIPtr(self.dut.GetDPIHandle("io_read_bits_entry_waymask_1", 0), self.dut.GetDPIHandle("io_read_bits_entry_waymask_1", 1))
        self.io_read_bits_entry_ptag_0.BindDPIPtr(self.dut.GetDPIHandle("io_read_bits_entry_ptag_0", 0), self.dut.GetDPIHandle("io_read_bits_entry_ptag_0", 1))
        self.io_read_bits_entry_ptag_1.BindDPIPtr(self.dut.GetDPIHandle("io_read_bits_entry_ptag_1", 0), self.dut.GetDPIHandle("io_read_bits_entry_ptag_1", 1))
        self.io_read_bits_entry_itlb_exception_0.BindDPIPtr(self.dut.GetDPIHandle("io_read_bits_entry_itlb_exception_0", 0), self.dut.GetDPIHandle("io_read_bits_entry_itlb_exception_0", 1))
        self.io_read_bits_entry_itlb_exception_1.BindDPIPtr(self.dut.GetDPIHandle("io_read_bits_entry_itlb_exception_1", 0), self.dut.GetDPIHandle("io_read_bits_entry_itlb_exception_1", 1))
        self.io_read_bits_entry_itlb_pbmt_0.BindDPIPtr(self.dut.GetDPIHandle("io_read_bits_entry_itlb_pbmt_0", 0), self.dut.GetDPIHandle("io_read_bits_entry_itlb_pbmt_0", 1))
        self.io_read_bits_entry_itlb_pbmt_1.BindDPIPtr(self.dut.GetDPIHandle("io_read_bits_entry_itlb_pbmt_1", 0), self.dut.GetDPIHandle("io_read_bits_entry_itlb_pbmt_1", 1))
        self.io_read_bits_entry_meta_codes_0.BindDPIPtr(self.dut.GetDPIHandle("io_read_bits_entry_meta_codes_0", 0), self.dut.GetDPIHandle("io_read_bits_entry_meta_codes_0", 1))
        self.io_read_bits_entry_meta_codes_1.BindDPIPtr(self.dut.GetDPIHandle("io_read_bits_entry_meta_codes_1", 0), self.dut.GetDPIHandle("io_read_bits_entry_meta_codes_1", 1))
        self.io_read_bits_gpf_gpaddr.BindDPIPtr(self.dut.GetDPIHandle("io_read_bits_gpf_gpaddr", 0), self.dut.GetDPIHandle("io_read_bits_gpf_gpaddr", 1))
        self.io_read_bits_gpf_isForVSnonLeafPTE.BindDPIPtr(self.dut.GetDPIHandle("io_read_bits_gpf_isForVSnonLeafPTE", 0), self.dut.GetDPIHandle("io_read_bits_gpf_isForVSnonLeafPTE", 1))
        self.io_write_ready.BindDPIPtr(self.dut.GetDPIHandle("io_write_ready", 0), self.dut.GetDPIHandle("io_write_ready", 1))
        self.io_write_valid.BindDPIPtr(self.dut.GetDPIHandle("io_write_valid", 0), self.dut.GetDPIHandle("io_write_valid", 1))
        self.io_write_bits_entry_vSetIdx_0.BindDPIPtr(self.dut.GetDPIHandle("io_write_bits_entry_vSetIdx_0", 0), self.dut.GetDPIHandle("io_write_bits_entry_vSetIdx_0", 1))
        self.io_write_bits_entry_vSetIdx_1.BindDPIPtr(self.dut.GetDPIHandle("io_write_bits_entry_vSetIdx_1", 0), self.dut.GetDPIHandle("io_write_bits_entry_vSetIdx_1", 1))
        self.io_write_bits_entry_waymask_0.BindDPIPtr(self.dut.GetDPIHandle("io_write_bits_entry_waymask_0", 0), self.dut.GetDPIHandle("io_write_bits_entry_waymask_0", 1))
        self.io_write_bits_entry_waymask_1.BindDPIPtr(self.dut.GetDPIHandle("io_write_bits_entry_waymask_1", 0), self.dut.GetDPIHandle("io_write_bits_entry_waymask_1", 1))
        self.io_write_bits_entry_ptag_0.BindDPIPtr(self.dut.GetDPIHandle("io_write_bits_entry_ptag_0", 0), self.dut.GetDPIHandle("io_write_bits_entry_ptag_0", 1))
        self.io_write_bits_entry_ptag_1.BindDPIPtr(self.dut.GetDPIHandle("io_write_bits_entry_ptag_1", 0), self.dut.GetDPIHandle("io_write_bits_entry_ptag_1", 1))
        self.io_write_bits_entry_itlb_exception_0.BindDPIPtr(self.dut.GetDPIHandle("io_write_bits_entry_itlb_exception_0", 0), self.dut.GetDPIHandle("io_write_bits_entry_itlb_exception_0", 1))
        self.io_write_bits_entry_itlb_exception_1.BindDPIPtr(self.dut.GetDPIHandle("io_write_bits_entry_itlb_exception_1", 0), self.dut.GetDPIHandle("io_write_bits_entry_itlb_exception_1", 1))
        self.io_write_bits_entry_itlb_pbmt_0.BindDPIPtr(self.dut.GetDPIHandle("io_write_bits_entry_itlb_pbmt_0", 0), self.dut.GetDPIHandle("io_write_bits_entry_itlb_pbmt_0", 1))
        self.io_write_bits_entry_itlb_pbmt_1.BindDPIPtr(self.dut.GetDPIHandle("io_write_bits_entry_itlb_pbmt_1", 0), self.dut.GetDPIHandle("io_write_bits_entry_itlb_pbmt_1", 1))
        self.io_write_bits_entry_meta_codes_0.BindDPIPtr(self.dut.GetDPIHandle("io_write_bits_entry_meta_codes_0", 0), self.dut.GetDPIHandle("io_write_bits_entry_meta_codes_0", 1))
        self.io_write_bits_entry_meta_codes_1.BindDPIPtr(self.dut.GetDPIHandle("io_write_bits_entry_meta_codes_1", 0), self.dut.GetDPIHandle("io_write_bits_entry_meta_codes_1", 1))
        self.io_write_bits_gpf_gpaddr.BindDPIPtr(self.dut.GetDPIHandle("io_write_bits_gpf_gpaddr", 0), self.dut.GetDPIHandle("io_write_bits_gpf_gpaddr", 1))
        self.io_write_bits_gpf_isForVSnonLeafPTE.BindDPIPtr(self.dut.GetDPIHandle("io_write_bits_gpf_isForVSnonLeafPTE", 0), self.dut.GetDPIHandle("io_write_bits_gpf_isForVSnonLeafPTE", 1))
        self.io_update_valid.BindDPIPtr(self.dut.GetDPIHandle("io_update_valid", 0), self.dut.GetDPIHandle("io_update_valid", 1))
        self.io_update_bits_blkPaddr.BindDPIPtr(self.dut.GetDPIHandle("io_update_bits_blkPaddr", 0), self.dut.GetDPIHandle("io_update_bits_blkPaddr", 1))
        self.io_update_bits_vSetIdx.BindDPIPtr(self.dut.GetDPIHandle("io_update_bits_vSetIdx", 0), self.dut.GetDPIHandle("io_update_bits_vSetIdx", 1))
        self.io_update_bits_waymask.BindDPIPtr(self.dut.GetDPIHandle("io_update_bits_waymask", 0), self.dut.GetDPIHandle("io_update_bits_waymask", 1))
        self.io_update_bits_corrupt.BindDPIPtr(self.dut.GetDPIHandle("io_update_bits_corrupt", 0), self.dut.GetDPIHandle("io_update_bits_corrupt", 1))
        self.WayLookup_readPtr_flag.BindDPIPtr(self.dut.GetDPIHandle("WayLookup_readPtr_flag", 0), self.dut.GetDPIHandle("WayLookup_readPtr_flag", 1))
        self.WayLookup_readPtr_value.BindDPIPtr(self.dut.GetDPIHandle("WayLookup_readPtr_value", 0), self.dut.GetDPIHandle("WayLookup_readPtr_value", 1))
        self.WayLookup_writePtr_flag.BindDPIPtr(self.dut.GetDPIHandle("WayLookup_writePtr_flag", 0), self.dut.GetDPIHandle("WayLookup_writePtr_flag", 1))
        self.WayLookup_writePtr_value.BindDPIPtr(self.dut.GetDPIHandle("WayLookup_writePtr_value", 0), self.dut.GetDPIHandle("WayLookup_writePtr_value", 1))
        self.WayLookup_io_write_ready_0.BindDPIPtr(self.dut.GetDPIHandle("WayLookup_io_write_ready_0", 0), self.dut.GetDPIHandle("WayLookup_io_write_ready_0", 1))
        self.WayLookup_entries_30_waymask_0.BindDPIPtr(self.dut.GetDPIHandle("WayLookup_entries_30_waymask_0", 0), self.dut.GetDPIHandle("WayLookup_entries_30_waymask_0", 1))
        self.WayLookup_gpf_entry_valid.BindDPIPtr(self.dut.GetDPIHandle("WayLookup_gpf_entry_valid", 0), self.dut.GetDPIHandle("WayLookup_gpf_entry_valid", 1))
        self.WayLookup_gpf_entry_bits_gpaddr.BindDPIPtr(self.dut.GetDPIHandle("WayLookup_gpf_entry_bits_gpaddr", 0), self.dut.GetDPIHandle("WayLookup_gpf_entry_bits_gpaddr", 1))


        # Add2Port
        self.xport.Add("clock", self.clock.xdata)
        self.xport.Add("reset", self.reset.xdata)
        self.xport.Add("io_flush", self.io_flush.xdata)
        self.xport.Add("io_read_ready", self.io_read_ready.xdata)
        self.xport.Add("io_read_valid", self.io_read_valid.xdata)
        self.xport.Add("io_read_bits_entry_vSetIdx_0", self.io_read_bits_entry_vSetIdx_0.xdata)
        self.xport.Add("io_read_bits_entry_vSetIdx_1", self.io_read_bits_entry_vSetIdx_1.xdata)
        self.xport.Add("io_read_bits_entry_waymask_0", self.io_read_bits_entry_waymask_0.xdata)
        self.xport.Add("io_read_bits_entry_waymask_1", self.io_read_bits_entry_waymask_1.xdata)
        self.xport.Add("io_read_bits_entry_ptag_0", self.io_read_bits_entry_ptag_0.xdata)
        self.xport.Add("io_read_bits_entry_ptag_1", self.io_read_bits_entry_ptag_1.xdata)
        self.xport.Add("io_read_bits_entry_itlb_exception_0", self.io_read_bits_entry_itlb_exception_0.xdata)
        self.xport.Add("io_read_bits_entry_itlb_exception_1", self.io_read_bits_entry_itlb_exception_1.xdata)
        self.xport.Add("io_read_bits_entry_itlb_pbmt_0", self.io_read_bits_entry_itlb_pbmt_0.xdata)
        self.xport.Add("io_read_bits_entry_itlb_pbmt_1", self.io_read_bits_entry_itlb_pbmt_1.xdata)
        self.xport.Add("io_read_bits_entry_meta_codes_0", self.io_read_bits_entry_meta_codes_0.xdata)
        self.xport.Add("io_read_bits_entry_meta_codes_1", self.io_read_bits_entry_meta_codes_1.xdata)
        self.xport.Add("io_read_bits_gpf_gpaddr", self.io_read_bits_gpf_gpaddr.xdata)
        self.xport.Add("io_read_bits_gpf_isForVSnonLeafPTE", self.io_read_bits_gpf_isForVSnonLeafPTE.xdata)
        self.xport.Add("io_write_ready", self.io_write_ready.xdata)
        self.xport.Add("io_write_valid", self.io_write_valid.xdata)
        self.xport.Add("io_write_bits_entry_vSetIdx_0", self.io_write_bits_entry_vSetIdx_0.xdata)
        self.xport.Add("io_write_bits_entry_vSetIdx_1", self.io_write_bits_entry_vSetIdx_1.xdata)
        self.xport.Add("io_write_bits_entry_waymask_0", self.io_write_bits_entry_waymask_0.xdata)
        self.xport.Add("io_write_bits_entry_waymask_1", self.io_write_bits_entry_waymask_1.xdata)
        self.xport.Add("io_write_bits_entry_ptag_0", self.io_write_bits_entry_ptag_0.xdata)
        self.xport.Add("io_write_bits_entry_ptag_1", self.io_write_bits_entry_ptag_1.xdata)
        self.xport.Add("io_write_bits_entry_itlb_exception_0", self.io_write_bits_entry_itlb_exception_0.xdata)
        self.xport.Add("io_write_bits_entry_itlb_exception_1", self.io_write_bits_entry_itlb_exception_1.xdata)
        self.xport.Add("io_write_bits_entry_itlb_pbmt_0", self.io_write_bits_entry_itlb_pbmt_0.xdata)
        self.xport.Add("io_write_bits_entry_itlb_pbmt_1", self.io_write_bits_entry_itlb_pbmt_1.xdata)
        self.xport.Add("io_write_bits_entry_meta_codes_0", self.io_write_bits_entry_meta_codes_0.xdata)
        self.xport.Add("io_write_bits_entry_meta_codes_1", self.io_write_bits_entry_meta_codes_1.xdata)
        self.xport.Add("io_write_bits_gpf_gpaddr", self.io_write_bits_gpf_gpaddr.xdata)
        self.xport.Add("io_write_bits_gpf_isForVSnonLeafPTE", self.io_write_bits_gpf_isForVSnonLeafPTE.xdata)
        self.xport.Add("io_update_valid", self.io_update_valid.xdata)
        self.xport.Add("io_update_bits_blkPaddr", self.io_update_bits_blkPaddr.xdata)
        self.xport.Add("io_update_bits_vSetIdx", self.io_update_bits_vSetIdx.xdata)
        self.xport.Add("io_update_bits_waymask", self.io_update_bits_waymask.xdata)
        self.xport.Add("io_update_bits_corrupt", self.io_update_bits_corrupt.xdata)
        self.xport.Add("WayLookup_readPtr_flag", self.WayLookup_readPtr_flag.xdata)
        self.xport.Add("WayLookup_readPtr_value", self.WayLookup_readPtr_value.xdata)
        self.xport.Add("WayLookup_writePtr_flag", self.WayLookup_writePtr_flag.xdata)
        self.xport.Add("WayLookup_writePtr_value", self.WayLookup_writePtr_value.xdata)
        self.xport.Add("WayLookup_io_write_ready_0", self.WayLookup_io_write_ready_0.xdata)
        self.xport.Add("WayLookup_entries_30_waymask_0", self.WayLookup_entries_30_waymask_0.xdata)
        self.xport.Add("WayLookup_gpf_entry_valid", self.WayLookup_gpf_entry_valid.xdata)
        self.xport.Add("WayLookup_gpf_entry_bits_gpaddr", self.WayLookup_gpf_entry_bits_gpaddr.xdata)


        # Cascaded ports
        self.WayLookup = self.xport.NewSubPort("WayLookup_")
        self.WayLookup_entries = self.xport.NewSubPort("WayLookup_entries_")
        self.WayLookup_entries_30 = self.xport.NewSubPort("WayLookup_entries_30_")
        self.WayLookup_entries_30_waymask = self.xport.NewSubPort("WayLookup_entries_30_waymask_")
        self.WayLookup_gpf_entry = self.xport.NewSubPort("WayLookup_gpf_entry_")
        self.WayLookup_io_write_ready = self.xport.NewSubPort("WayLookup_io_write_ready_")
        self.WayLookup_readPtr = self.xport.NewSubPort("WayLookup_readPtr_")
        self.WayLookup_writePtr = self.xport.NewSubPort("WayLookup_writePtr_")
        self.io = self.xport.NewSubPort("io_")
        self.io_read = self.xport.NewSubPort("io_read_")
        self.io_read_bits = self.xport.NewSubPort("io_read_bits_")
        self.io_read_bits_entry = self.xport.NewSubPort("io_read_bits_entry_")
        self.io_read_bits_entry_itlb = self.xport.NewSubPort("io_read_bits_entry_itlb_")
        self.io_read_bits_entry_itlb_exception = self.xport.NewSubPort("io_read_bits_entry_itlb_exception_")
        self.io_read_bits_entry_itlb_pbmt = self.xport.NewSubPort("io_read_bits_entry_itlb_pbmt_")
        self.io_read_bits_entry_meta_codes = self.xport.NewSubPort("io_read_bits_entry_meta_codes_")
        self.io_read_bits_entry_ptag = self.xport.NewSubPort("io_read_bits_entry_ptag_")
        self.io_read_bits_entry_vSetIdx = self.xport.NewSubPort("io_read_bits_entry_vSetIdx_")
        self.io_read_bits_entry_waymask = self.xport.NewSubPort("io_read_bits_entry_waymask_")
        self.io_read_bits_gpf = self.xport.NewSubPort("io_read_bits_gpf_")
        self.io_update = self.xport.NewSubPort("io_update_")
        self.io_update_bits = self.xport.NewSubPort("io_update_bits_")
        self.io_write = self.xport.NewSubPort("io_write_")
        self.io_write_bits = self.xport.NewSubPort("io_write_bits_")
        self.io_write_bits_entry = self.xport.NewSubPort("io_write_bits_entry_")
        self.io_write_bits_entry_itlb = self.xport.NewSubPort("io_write_bits_entry_itlb_")
        self.io_write_bits_entry_itlb_exception = self.xport.NewSubPort("io_write_bits_entry_itlb_exception_")
        self.io_write_bits_entry_itlb_pbmt = self.xport.NewSubPort("io_write_bits_entry_itlb_pbmt_")
        self.io_write_bits_entry_meta_codes = self.xport.NewSubPort("io_write_bits_entry_meta_codes_")
        self.io_write_bits_entry_ptag = self.xport.NewSubPort("io_write_bits_entry_ptag_")
        self.io_write_bits_entry_vSetIdx = self.xport.NewSubPort("io_write_bits_entry_vSetIdx_")
        self.io_write_bits_entry_waymask = self.xport.NewSubPort("io_write_bits_entry_waymask_")
        self.io_write_bits_gpf = self.xport.NewSubPort("io_write_bits_gpf_")


    def __del__(self):
        self.Finish()

    ################################
    #         User APIs            #
    ################################
    def InitClock(self, name: str):
        self.xclock.Add(self.xport[name])

    def Step(self, i:int = 1):
        self.xclock.Step(i)

    def StepRis(self, callback, args=(), kwargs={}):
        self.xclock.StepRis(callback, args, kwargs)

    def StepFal(self, callback, args=(), kwargs={}):
        self.xclock.StepFal(callback, args, kwargs)

    def OpenWaveform(self):
        return self.dut.OpenWaveform()

    def CloseWaveform(self):
        return self.dut.CloseWaveform()

    def GetXPort(self):
        return self.xport

    def GetXClock(self):
        return self.xclock

    def SetWaveform(self, filename: str):
        self.dut.SetWaveform(filename)
    
    def FlushWaveform(self):
        self.dut.FlushWaveform()

    def SetCoverage(self, filename: str):
        self.dut.SetCoverage(filename)
    
    def CheckPoint(self, name: str) -> int:
        self.dut.CheckPoint(name)

    def Restore(self, name: str) -> int:
        self.dut.Restore(name)

    def GetInternalSignal(self, name: str, index=-1, is_array=False, use_vpi=False):
        if name not in self.internal_signals:
            signal = None
            if self.dut.GetXSignalCFGBasePtr() != 0 and not use_vpi:
                xname = "CFG:" + name
                if is_array:
                    assert index < 0, "Index is not supported for array signal"
                    signal = self.xcfg.NewXDataArray(name, xname)
                elif index >= 0:
                    signal = self.xcfg.NewXData(name, index, xname)
                else:
                    signal = self.xcfg.NewXData(name, xname)
            else:
                assert index < 0, "Index is not supported for VPI signal"
                assert not is_array, "Array is not supported for VPI signal"
                signal = xsp.XData.FromVPI(self.dut.GetVPIHandleObj(name),
                                           self.dut.GetVPIFuncPtr("vpi_get"),
                                           self.dut.GetVPIFuncPtr("vpi_get_value"),
                                           self.dut.GetVPIFuncPtr("vpi_put_value"), "VPI:" + name)
                if use_vpi:
                    assert signal is not None, f"Internal signal {name} not found (Check VPI is enabled)"
            if signal is None:
                return None
            if not isinstance(signal, xsp.XData):
                self.internal_signals[name] = [xsp.XPin(s, self.event) for s in signal]
            else:
                self.internal_signals[name] = xsp.XPin(signal, self.event)
        return self.internal_signals[name]

    def GetInternalSignalList(self, prefix="", deep=99, use_vpi=False):
        if self.dut.GetXSignalCFGBasePtr() != 0 and not use_vpi:
            return self.xcfg.GetSignalNames(prefix)
        else:
            return self.dut.VPIInternalSignalList(prefix, deep)

    def VPIInternalSignalList(self, prefix="", deep=99):
        return self.dut.VPIInternalSignalList(prefix, deep)

    def Finish(self):
        self.dut.Finish()

    def RefreshComb(self):
        self.dut.RefreshComb()

    ################################
    #      End of User APIs        #
    ################################

    def __getitem__(self, key):
        return xsp.XPin(self.port[key], self.event)

    # Async APIs wrapped from XClock
    async def AStep(self,i: int):
        return await self.xclock.AStep(i)

    async def ACondition(self,fc_cheker):
        return await self.xclock.ACondition(fc_cheker)

    def RunStep(self,i: int):
        return self.xclock.RunStep(i)

    def __setattr__(self, name, value):
        assert not isinstance(getattr(self, name, None),
                              (xsp.XPin, xsp.XData)), \
        f"XPin and XData of DUT are read-only, do you mean to set the value of the signal? please use `{name}.value = ` instead."
        return super().__setattr__(name, value)


if __name__=="__main__":
    dut=DUTWayLookup()
    dut.Step(100)
