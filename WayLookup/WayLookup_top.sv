module WayLookup_top();

  logic  clock;
  logic  reset;
  logic  io_flush;
  logic  io_read_ready;
  logic  io_read_valid;
  logic [7:0] io_read_bits_entry_vSetIdx_0;
  logic [7:0] io_read_bits_entry_vSetIdx_1;
  logic [3:0] io_read_bits_entry_waymask_0;
  logic [3:0] io_read_bits_entry_waymask_1;
  logic [35:0] io_read_bits_entry_ptag_0;
  logic [35:0] io_read_bits_entry_ptag_1;
  logic [1:0] io_read_bits_entry_itlb_exception_0;
  logic [1:0] io_read_bits_entry_itlb_exception_1;
  logic [1:0] io_read_bits_entry_itlb_pbmt_0;
  logic [1:0] io_read_bits_entry_itlb_pbmt_1;
  logic  io_read_bits_entry_meta_codes_0;
  logic  io_read_bits_entry_meta_codes_1;
  logic [55:0] io_read_bits_gpf_gpaddr;
  logic  io_read_bits_gpf_isForVSnonLeafPTE;
  logic  io_write_ready;
  logic  io_write_valid;
  logic [7:0] io_write_bits_entry_vSetIdx_0;
  logic [7:0] io_write_bits_entry_vSetIdx_1;
  logic [3:0] io_write_bits_entry_waymask_0;
  logic [3:0] io_write_bits_entry_waymask_1;
  logic [35:0] io_write_bits_entry_ptag_0;
  logic [35:0] io_write_bits_entry_ptag_1;
  logic [1:0] io_write_bits_entry_itlb_exception_0;
  logic [1:0] io_write_bits_entry_itlb_exception_1;
  logic [1:0] io_write_bits_entry_itlb_pbmt_0;
  logic [1:0] io_write_bits_entry_itlb_pbmt_1;
  logic  io_write_bits_entry_meta_codes_0;
  logic  io_write_bits_entry_meta_codes_1;
  logic [55:0] io_write_bits_gpf_gpaddr;
  logic  io_write_bits_gpf_isForVSnonLeafPTE;
  logic  io_update_valid;
  logic [41:0] io_update_bits_blkPaddr;
  logic [7:0] io_update_bits_vSetIdx;
  logic [3:0] io_update_bits_waymask;
  logic  io_update_bits_corrupt;


 WayLookup WayLookup(
    .clock(clock),
    .reset(reset),
    .io_flush(io_flush),
    .io_read_ready(io_read_ready),
    .io_read_valid(io_read_valid),
    .io_read_bits_entry_vSetIdx_0(io_read_bits_entry_vSetIdx_0),
    .io_read_bits_entry_vSetIdx_1(io_read_bits_entry_vSetIdx_1),
    .io_read_bits_entry_waymask_0(io_read_bits_entry_waymask_0),
    .io_read_bits_entry_waymask_1(io_read_bits_entry_waymask_1),
    .io_read_bits_entry_ptag_0(io_read_bits_entry_ptag_0),
    .io_read_bits_entry_ptag_1(io_read_bits_entry_ptag_1),
    .io_read_bits_entry_itlb_exception_0(io_read_bits_entry_itlb_exception_0),
    .io_read_bits_entry_itlb_exception_1(io_read_bits_entry_itlb_exception_1),
    .io_read_bits_entry_itlb_pbmt_0(io_read_bits_entry_itlb_pbmt_0),
    .io_read_bits_entry_itlb_pbmt_1(io_read_bits_entry_itlb_pbmt_1),
    .io_read_bits_entry_meta_codes_0(io_read_bits_entry_meta_codes_0),
    .io_read_bits_entry_meta_codes_1(io_read_bits_entry_meta_codes_1),
    .io_read_bits_gpf_gpaddr(io_read_bits_gpf_gpaddr),
    .io_read_bits_gpf_isForVSnonLeafPTE(io_read_bits_gpf_isForVSnonLeafPTE),
    .io_write_ready(io_write_ready),
    .io_write_valid(io_write_valid),
    .io_write_bits_entry_vSetIdx_0(io_write_bits_entry_vSetIdx_0),
    .io_write_bits_entry_vSetIdx_1(io_write_bits_entry_vSetIdx_1),
    .io_write_bits_entry_waymask_0(io_write_bits_entry_waymask_0),
    .io_write_bits_entry_waymask_1(io_write_bits_entry_waymask_1),
    .io_write_bits_entry_ptag_0(io_write_bits_entry_ptag_0),
    .io_write_bits_entry_ptag_1(io_write_bits_entry_ptag_1),
    .io_write_bits_entry_itlb_exception_0(io_write_bits_entry_itlb_exception_0),
    .io_write_bits_entry_itlb_exception_1(io_write_bits_entry_itlb_exception_1),
    .io_write_bits_entry_itlb_pbmt_0(io_write_bits_entry_itlb_pbmt_0),
    .io_write_bits_entry_itlb_pbmt_1(io_write_bits_entry_itlb_pbmt_1),
    .io_write_bits_entry_meta_codes_0(io_write_bits_entry_meta_codes_0),
    .io_write_bits_entry_meta_codes_1(io_write_bits_entry_meta_codes_1),
    .io_write_bits_gpf_gpaddr(io_write_bits_gpf_gpaddr),
    .io_write_bits_gpf_isForVSnonLeafPTE(io_write_bits_gpf_isForVSnonLeafPTE),
    .io_update_valid(io_update_valid),
    .io_update_bits_blkPaddr(io_update_bits_blkPaddr),
    .io_update_bits_vSetIdx(io_update_bits_vSetIdx),
    .io_update_bits_waymask(io_update_bits_waymask),
    .io_update_bits_corrupt(io_update_bits_corrupt)
 );


  export "DPI-C" function get_clockxxHK2YcqZVzmf;
  export "DPI-C" function set_clockxxHK2YcqZVzmf;
  export "DPI-C" function get_resetxxHK2YcqZVzmf;
  export "DPI-C" function set_resetxxHK2YcqZVzmf;
  export "DPI-C" function get_io_flushxxHK2YcqZVzmf;
  export "DPI-C" function set_io_flushxxHK2YcqZVzmf;
  export "DPI-C" function get_io_read_readyxxHK2YcqZVzmf;
  export "DPI-C" function set_io_read_readyxxHK2YcqZVzmf;
  export "DPI-C" function get_io_read_validxxHK2YcqZVzmf;
  export "DPI-C" function get_io_read_bits_entry_vSetIdx_0xxHK2YcqZVzmf;
  export "DPI-C" function get_io_read_bits_entry_vSetIdx_1xxHK2YcqZVzmf;
  export "DPI-C" function get_io_read_bits_entry_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_io_read_bits_entry_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_io_read_bits_entry_ptag_0xxHK2YcqZVzmf;
  export "DPI-C" function get_io_read_bits_entry_ptag_1xxHK2YcqZVzmf;
  export "DPI-C" function get_io_read_bits_entry_itlb_exception_0xxHK2YcqZVzmf;
  export "DPI-C" function get_io_read_bits_entry_itlb_exception_1xxHK2YcqZVzmf;
  export "DPI-C" function get_io_read_bits_entry_itlb_pbmt_0xxHK2YcqZVzmf;
  export "DPI-C" function get_io_read_bits_entry_itlb_pbmt_1xxHK2YcqZVzmf;
  export "DPI-C" function get_io_read_bits_entry_meta_codes_0xxHK2YcqZVzmf;
  export "DPI-C" function get_io_read_bits_entry_meta_codes_1xxHK2YcqZVzmf;
  export "DPI-C" function get_io_read_bits_gpf_gpaddrxxHK2YcqZVzmf;
  export "DPI-C" function get_io_read_bits_gpf_isForVSnonLeafPTExxHK2YcqZVzmf;
  export "DPI-C" function get_io_write_readyxxHK2YcqZVzmf;
  export "DPI-C" function get_io_write_validxxHK2YcqZVzmf;
  export "DPI-C" function set_io_write_validxxHK2YcqZVzmf;
  export "DPI-C" function get_io_write_bits_entry_vSetIdx_0xxHK2YcqZVzmf;
  export "DPI-C" function set_io_write_bits_entry_vSetIdx_0xxHK2YcqZVzmf;
  export "DPI-C" function get_io_write_bits_entry_vSetIdx_1xxHK2YcqZVzmf;
  export "DPI-C" function set_io_write_bits_entry_vSetIdx_1xxHK2YcqZVzmf;
  export "DPI-C" function get_io_write_bits_entry_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function set_io_write_bits_entry_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_io_write_bits_entry_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function set_io_write_bits_entry_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_io_write_bits_entry_ptag_0xxHK2YcqZVzmf;
  export "DPI-C" function set_io_write_bits_entry_ptag_0xxHK2YcqZVzmf;
  export "DPI-C" function get_io_write_bits_entry_ptag_1xxHK2YcqZVzmf;
  export "DPI-C" function set_io_write_bits_entry_ptag_1xxHK2YcqZVzmf;
  export "DPI-C" function get_io_write_bits_entry_itlb_exception_0xxHK2YcqZVzmf;
  export "DPI-C" function set_io_write_bits_entry_itlb_exception_0xxHK2YcqZVzmf;
  export "DPI-C" function get_io_write_bits_entry_itlb_exception_1xxHK2YcqZVzmf;
  export "DPI-C" function set_io_write_bits_entry_itlb_exception_1xxHK2YcqZVzmf;
  export "DPI-C" function get_io_write_bits_entry_itlb_pbmt_0xxHK2YcqZVzmf;
  export "DPI-C" function set_io_write_bits_entry_itlb_pbmt_0xxHK2YcqZVzmf;
  export "DPI-C" function get_io_write_bits_entry_itlb_pbmt_1xxHK2YcqZVzmf;
  export "DPI-C" function set_io_write_bits_entry_itlb_pbmt_1xxHK2YcqZVzmf;
  export "DPI-C" function get_io_write_bits_entry_meta_codes_0xxHK2YcqZVzmf;
  export "DPI-C" function set_io_write_bits_entry_meta_codes_0xxHK2YcqZVzmf;
  export "DPI-C" function get_io_write_bits_entry_meta_codes_1xxHK2YcqZVzmf;
  export "DPI-C" function set_io_write_bits_entry_meta_codes_1xxHK2YcqZVzmf;
  export "DPI-C" function get_io_write_bits_gpf_gpaddrxxHK2YcqZVzmf;
  export "DPI-C" function set_io_write_bits_gpf_gpaddrxxHK2YcqZVzmf;
  export "DPI-C" function get_io_write_bits_gpf_isForVSnonLeafPTExxHK2YcqZVzmf;
  export "DPI-C" function set_io_write_bits_gpf_isForVSnonLeafPTExxHK2YcqZVzmf;
  export "DPI-C" function get_io_update_validxxHK2YcqZVzmf;
  export "DPI-C" function set_io_update_validxxHK2YcqZVzmf;
  export "DPI-C" function get_io_update_bits_blkPaddrxxHK2YcqZVzmf;
  export "DPI-C" function set_io_update_bits_blkPaddrxxHK2YcqZVzmf;
  export "DPI-C" function get_io_update_bits_vSetIdxxxHK2YcqZVzmf;
  export "DPI-C" function set_io_update_bits_vSetIdxxxHK2YcqZVzmf;
  export "DPI-C" function get_io_update_bits_waymaskxxHK2YcqZVzmf;
  export "DPI-C" function set_io_update_bits_waymaskxxHK2YcqZVzmf;
  export "DPI-C" function get_io_update_bits_corruptxxHK2YcqZVzmf;
  export "DPI-C" function set_io_update_bits_corruptxxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_readPtr_flagxxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_readPtr_valuexxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_writePtr_flagxxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_writePtr_valuexxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_gpf_hitxxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_gpf_entry_validxxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_gpf_entry_bits_gpaddrxxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_0_vSetIdx_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_0_vSetIdx_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_0_ptag_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_0_ptag_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_0_itlb_exception_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_0_itlb_exception_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_0_itlb_pbmt_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_0_itlb_pbmt_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_0_meta_codes_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_0_meta_codes_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_samexxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_2xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_3xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_4xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_5xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_6xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_7xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_8xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_9xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_10xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_11xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_12xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_13xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_14xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_15xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_16xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_17xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_18xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_19xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_20xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_21xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_22xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_23xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_24xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_25xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_26xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_27xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_28xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_29xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_30xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_31xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_32xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_33xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_34xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_35xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_36xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_37xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_38xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_39xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_40xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_41xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_42xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_43xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_44xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_45xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_46xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_47xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_48xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_49xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_50xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_51xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_52xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_53xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_54xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_55xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_56xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_57xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_58xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_59xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_60xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_61xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_62xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_vset_same_63xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_samexxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_2xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_3xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_4xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_5xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_6xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_7xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_8xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_9xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_10xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_11xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_12xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_13xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_14xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_15xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_16xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_17xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_18xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_19xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_20xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_21xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_22xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_23xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_24xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_25xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_26xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_27xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_28xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_29xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_30xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_31xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_32xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_33xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_34xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_35xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_36xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_37xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_38xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_39xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_40xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_41xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_42xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_43xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_44xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_45xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_46xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_47xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_48xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_49xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_50xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_51xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_52xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_53xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_54xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_55xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_56xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_57xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_58xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_59xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_60xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_61xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_62xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_ptag_same_63xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_0_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_0_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_1_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_1_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_2_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_2_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_3_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_3_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_4_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_4_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_5_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_5_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_6_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_6_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_7_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_7_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_8_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_8_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_9_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_9_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_10_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_10_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_11_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_11_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_12_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_12_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_13_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_13_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_14_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_14_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_15_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_15_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_16_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_16_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_17_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_17_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_18_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_18_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_19_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_19_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_20_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_20_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_21_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_21_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_22_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_22_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_23_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_23_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_24_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_24_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_25_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_25_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_26_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_26_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_27_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_27_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_28_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_28_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_29_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_29_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_30_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_30_waymask_1xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_31_waymask_0xxHK2YcqZVzmf;
  export "DPI-C" function get_WayLookup_entries_31_waymask_1xxHK2YcqZVzmf;


  function void get_clockxxHK2YcqZVzmf;
    output logic  value;
    value=clock;
  endfunction

  function void set_clockxxHK2YcqZVzmf;
    input logic  value;
    clock=value;
  endfunction

  function void get_resetxxHK2YcqZVzmf;
    output logic  value;
    value=reset;
  endfunction

  function void set_resetxxHK2YcqZVzmf;
    input logic  value;
    reset=value;
  endfunction

  function void get_io_flushxxHK2YcqZVzmf;
    output logic  value;
    value=io_flush;
  endfunction

  function void set_io_flushxxHK2YcqZVzmf;
    input logic  value;
    io_flush=value;
  endfunction

  function void get_io_read_readyxxHK2YcqZVzmf;
    output logic  value;
    value=io_read_ready;
  endfunction

  function void set_io_read_readyxxHK2YcqZVzmf;
    input logic  value;
    io_read_ready=value;
  endfunction

  function void get_io_read_validxxHK2YcqZVzmf;
    output logic  value;
    value=io_read_valid;
  endfunction

  function void get_io_read_bits_entry_vSetIdx_0xxHK2YcqZVzmf;
    output logic [7:0] value;
    value=io_read_bits_entry_vSetIdx_0;
  endfunction

  function void get_io_read_bits_entry_vSetIdx_1xxHK2YcqZVzmf;
    output logic [7:0] value;
    value=io_read_bits_entry_vSetIdx_1;
  endfunction

  function void get_io_read_bits_entry_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=io_read_bits_entry_waymask_0;
  endfunction

  function void get_io_read_bits_entry_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=io_read_bits_entry_waymask_1;
  endfunction

  function void get_io_read_bits_entry_ptag_0xxHK2YcqZVzmf;
    output logic [35:0] value;
    value=io_read_bits_entry_ptag_0;
  endfunction

  function void get_io_read_bits_entry_ptag_1xxHK2YcqZVzmf;
    output logic [35:0] value;
    value=io_read_bits_entry_ptag_1;
  endfunction

  function void get_io_read_bits_entry_itlb_exception_0xxHK2YcqZVzmf;
    output logic [1:0] value;
    value=io_read_bits_entry_itlb_exception_0;
  endfunction

  function void get_io_read_bits_entry_itlb_exception_1xxHK2YcqZVzmf;
    output logic [1:0] value;
    value=io_read_bits_entry_itlb_exception_1;
  endfunction

  function void get_io_read_bits_entry_itlb_pbmt_0xxHK2YcqZVzmf;
    output logic [1:0] value;
    value=io_read_bits_entry_itlb_pbmt_0;
  endfunction

  function void get_io_read_bits_entry_itlb_pbmt_1xxHK2YcqZVzmf;
    output logic [1:0] value;
    value=io_read_bits_entry_itlb_pbmt_1;
  endfunction

  function void get_io_read_bits_entry_meta_codes_0xxHK2YcqZVzmf;
    output logic  value;
    value=io_read_bits_entry_meta_codes_0;
  endfunction

  function void get_io_read_bits_entry_meta_codes_1xxHK2YcqZVzmf;
    output logic  value;
    value=io_read_bits_entry_meta_codes_1;
  endfunction

  function void get_io_read_bits_gpf_gpaddrxxHK2YcqZVzmf;
    output logic [55:0] value;
    value=io_read_bits_gpf_gpaddr;
  endfunction

  function void get_io_read_bits_gpf_isForVSnonLeafPTExxHK2YcqZVzmf;
    output logic  value;
    value=io_read_bits_gpf_isForVSnonLeafPTE;
  endfunction

  function void get_io_write_readyxxHK2YcqZVzmf;
    output logic  value;
    value=io_write_ready;
  endfunction

  function void get_io_write_validxxHK2YcqZVzmf;
    output logic  value;
    value=io_write_valid;
  endfunction

  function void set_io_write_validxxHK2YcqZVzmf;
    input logic  value;
    io_write_valid=value;
  endfunction

  function void get_io_write_bits_entry_vSetIdx_0xxHK2YcqZVzmf;
    output logic [7:0] value;
    value=io_write_bits_entry_vSetIdx_0;
  endfunction

  function void set_io_write_bits_entry_vSetIdx_0xxHK2YcqZVzmf;
    input logic [7:0] value;
    io_write_bits_entry_vSetIdx_0=value;
  endfunction

  function void get_io_write_bits_entry_vSetIdx_1xxHK2YcqZVzmf;
    output logic [7:0] value;
    value=io_write_bits_entry_vSetIdx_1;
  endfunction

  function void set_io_write_bits_entry_vSetIdx_1xxHK2YcqZVzmf;
    input logic [7:0] value;
    io_write_bits_entry_vSetIdx_1=value;
  endfunction

  function void get_io_write_bits_entry_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=io_write_bits_entry_waymask_0;
  endfunction

  function void set_io_write_bits_entry_waymask_0xxHK2YcqZVzmf;
    input logic [3:0] value;
    io_write_bits_entry_waymask_0=value;
  endfunction

  function void get_io_write_bits_entry_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=io_write_bits_entry_waymask_1;
  endfunction

  function void set_io_write_bits_entry_waymask_1xxHK2YcqZVzmf;
    input logic [3:0] value;
    io_write_bits_entry_waymask_1=value;
  endfunction

  function void get_io_write_bits_entry_ptag_0xxHK2YcqZVzmf;
    output logic [35:0] value;
    value=io_write_bits_entry_ptag_0;
  endfunction

  function void set_io_write_bits_entry_ptag_0xxHK2YcqZVzmf;
    input logic [35:0] value;
    io_write_bits_entry_ptag_0=value;
  endfunction

  function void get_io_write_bits_entry_ptag_1xxHK2YcqZVzmf;
    output logic [35:0] value;
    value=io_write_bits_entry_ptag_1;
  endfunction

  function void set_io_write_bits_entry_ptag_1xxHK2YcqZVzmf;
    input logic [35:0] value;
    io_write_bits_entry_ptag_1=value;
  endfunction

  function void get_io_write_bits_entry_itlb_exception_0xxHK2YcqZVzmf;
    output logic [1:0] value;
    value=io_write_bits_entry_itlb_exception_0;
  endfunction

  function void set_io_write_bits_entry_itlb_exception_0xxHK2YcqZVzmf;
    input logic [1:0] value;
    io_write_bits_entry_itlb_exception_0=value;
  endfunction

  function void get_io_write_bits_entry_itlb_exception_1xxHK2YcqZVzmf;
    output logic [1:0] value;
    value=io_write_bits_entry_itlb_exception_1;
  endfunction

  function void set_io_write_bits_entry_itlb_exception_1xxHK2YcqZVzmf;
    input logic [1:0] value;
    io_write_bits_entry_itlb_exception_1=value;
  endfunction

  function void get_io_write_bits_entry_itlb_pbmt_0xxHK2YcqZVzmf;
    output logic [1:0] value;
    value=io_write_bits_entry_itlb_pbmt_0;
  endfunction

  function void set_io_write_bits_entry_itlb_pbmt_0xxHK2YcqZVzmf;
    input logic [1:0] value;
    io_write_bits_entry_itlb_pbmt_0=value;
  endfunction

  function void get_io_write_bits_entry_itlb_pbmt_1xxHK2YcqZVzmf;
    output logic [1:0] value;
    value=io_write_bits_entry_itlb_pbmt_1;
  endfunction

  function void set_io_write_bits_entry_itlb_pbmt_1xxHK2YcqZVzmf;
    input logic [1:0] value;
    io_write_bits_entry_itlb_pbmt_1=value;
  endfunction

  function void get_io_write_bits_entry_meta_codes_0xxHK2YcqZVzmf;
    output logic  value;
    value=io_write_bits_entry_meta_codes_0;
  endfunction

  function void set_io_write_bits_entry_meta_codes_0xxHK2YcqZVzmf;
    input logic  value;
    io_write_bits_entry_meta_codes_0=value;
  endfunction

  function void get_io_write_bits_entry_meta_codes_1xxHK2YcqZVzmf;
    output logic  value;
    value=io_write_bits_entry_meta_codes_1;
  endfunction

  function void set_io_write_bits_entry_meta_codes_1xxHK2YcqZVzmf;
    input logic  value;
    io_write_bits_entry_meta_codes_1=value;
  endfunction

  function void get_io_write_bits_gpf_gpaddrxxHK2YcqZVzmf;
    output logic [55:0] value;
    value=io_write_bits_gpf_gpaddr;
  endfunction

  function void set_io_write_bits_gpf_gpaddrxxHK2YcqZVzmf;
    input logic [55:0] value;
    io_write_bits_gpf_gpaddr=value;
  endfunction

  function void get_io_write_bits_gpf_isForVSnonLeafPTExxHK2YcqZVzmf;
    output logic  value;
    value=io_write_bits_gpf_isForVSnonLeafPTE;
  endfunction

  function void set_io_write_bits_gpf_isForVSnonLeafPTExxHK2YcqZVzmf;
    input logic  value;
    io_write_bits_gpf_isForVSnonLeafPTE=value;
  endfunction

  function void get_io_update_validxxHK2YcqZVzmf;
    output logic  value;
    value=io_update_valid;
  endfunction

  function void set_io_update_validxxHK2YcqZVzmf;
    input logic  value;
    io_update_valid=value;
  endfunction

  function void get_io_update_bits_blkPaddrxxHK2YcqZVzmf;
    output logic [41:0] value;
    value=io_update_bits_blkPaddr;
  endfunction

  function void set_io_update_bits_blkPaddrxxHK2YcqZVzmf;
    input logic [41:0] value;
    io_update_bits_blkPaddr=value;
  endfunction

  function void get_io_update_bits_vSetIdxxxHK2YcqZVzmf;
    output logic [7:0] value;
    value=io_update_bits_vSetIdx;
  endfunction

  function void set_io_update_bits_vSetIdxxxHK2YcqZVzmf;
    input logic [7:0] value;
    io_update_bits_vSetIdx=value;
  endfunction

  function void get_io_update_bits_waymaskxxHK2YcqZVzmf;
    output logic [3:0] value;
    value=io_update_bits_waymask;
  endfunction

  function void set_io_update_bits_waymaskxxHK2YcqZVzmf;
    input logic [3:0] value;
    io_update_bits_waymask=value;
  endfunction

  function void get_io_update_bits_corruptxxHK2YcqZVzmf;
    output logic  value;
    value=io_update_bits_corrupt;
  endfunction

  function void set_io_update_bits_corruptxxHK2YcqZVzmf;
    input logic  value;
    io_update_bits_corrupt=value;
  endfunction

  function void get_WayLookup_readPtr_flagxxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.readPtr_flag;
  endfunction

  function void get_WayLookup_readPtr_valuexxHK2YcqZVzmf;
    output logic [4:0] value;
    value=WayLookup.readPtr_value;
  endfunction

  function void get_WayLookup_writePtr_flagxxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.writePtr_flag;
  endfunction

  function void get_WayLookup_writePtr_valuexxHK2YcqZVzmf;
    output logic [4:0] value;
    value=WayLookup.writePtr_value;
  endfunction

  function void get_WayLookup_gpf_hitxxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.gpf_hit;
  endfunction

  function void get_WayLookup_gpf_entry_validxxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.gpf_entry_valid;
  endfunction

  function void get_WayLookup_gpf_entry_bits_gpaddrxxHK2YcqZVzmf;
    output logic [55:0] value;
    value=WayLookup.gpf_entry_bits_gpaddr;
  endfunction

  function void get_WayLookup_entries_0_vSetIdx_0xxHK2YcqZVzmf;
    output logic [7:0] value;
    value=WayLookup.entries_0_vSetIdx_0;
  endfunction

  function void get_WayLookup_entries_0_vSetIdx_1xxHK2YcqZVzmf;
    output logic [7:0] value;
    value=WayLookup.entries_0_vSetIdx_1;
  endfunction

  function void get_WayLookup_entries_0_ptag_0xxHK2YcqZVzmf;
    output logic [35:0] value;
    value=WayLookup.entries_0_ptag_0;
  endfunction

  function void get_WayLookup_entries_0_ptag_1xxHK2YcqZVzmf;
    output logic [35:0] value;
    value=WayLookup.entries_0_ptag_1;
  endfunction

  function void get_WayLookup_entries_0_itlb_exception_0xxHK2YcqZVzmf;
    output logic [1:0] value;
    value=WayLookup.entries_0_itlb_exception_0;
  endfunction

  function void get_WayLookup_entries_0_itlb_exception_1xxHK2YcqZVzmf;
    output logic [1:0] value;
    value=WayLookup.entries_0_itlb_exception_1;
  endfunction

  function void get_WayLookup_entries_0_itlb_pbmt_0xxHK2YcqZVzmf;
    output logic [1:0] value;
    value=WayLookup.entries_0_itlb_pbmt_0;
  endfunction

  function void get_WayLookup_entries_0_itlb_pbmt_1xxHK2YcqZVzmf;
    output logic [1:0] value;
    value=WayLookup.entries_0_itlb_pbmt_1;
  endfunction

  function void get_WayLookup_entries_0_meta_codes_0xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.entries_0_meta_codes_0;
  endfunction

  function void get_WayLookup_entries_0_meta_codes_1xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.entries_0_meta_codes_1;
  endfunction

  function void get_WayLookup_vset_samexxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same;
  endfunction

  function void get_WayLookup_vset_same_1xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_1;
  endfunction

  function void get_WayLookup_vset_same_2xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_2;
  endfunction

  function void get_WayLookup_vset_same_3xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_3;
  endfunction

  function void get_WayLookup_vset_same_4xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_4;
  endfunction

  function void get_WayLookup_vset_same_5xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_5;
  endfunction

  function void get_WayLookup_vset_same_6xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_6;
  endfunction

  function void get_WayLookup_vset_same_7xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_7;
  endfunction

  function void get_WayLookup_vset_same_8xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_8;
  endfunction

  function void get_WayLookup_vset_same_9xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_9;
  endfunction

  function void get_WayLookup_vset_same_10xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_10;
  endfunction

  function void get_WayLookup_vset_same_11xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_11;
  endfunction

  function void get_WayLookup_vset_same_12xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_12;
  endfunction

  function void get_WayLookup_vset_same_13xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_13;
  endfunction

  function void get_WayLookup_vset_same_14xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_14;
  endfunction

  function void get_WayLookup_vset_same_15xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_15;
  endfunction

  function void get_WayLookup_vset_same_16xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_16;
  endfunction

  function void get_WayLookup_vset_same_17xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_17;
  endfunction

  function void get_WayLookup_vset_same_18xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_18;
  endfunction

  function void get_WayLookup_vset_same_19xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_19;
  endfunction

  function void get_WayLookup_vset_same_20xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_20;
  endfunction

  function void get_WayLookup_vset_same_21xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_21;
  endfunction

  function void get_WayLookup_vset_same_22xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_22;
  endfunction

  function void get_WayLookup_vset_same_23xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_23;
  endfunction

  function void get_WayLookup_vset_same_24xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_24;
  endfunction

  function void get_WayLookup_vset_same_25xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_25;
  endfunction

  function void get_WayLookup_vset_same_26xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_26;
  endfunction

  function void get_WayLookup_vset_same_27xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_27;
  endfunction

  function void get_WayLookup_vset_same_28xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_28;
  endfunction

  function void get_WayLookup_vset_same_29xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_29;
  endfunction

  function void get_WayLookup_vset_same_30xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_30;
  endfunction

  function void get_WayLookup_vset_same_31xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_31;
  endfunction

  function void get_WayLookup_vset_same_32xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_32;
  endfunction

  function void get_WayLookup_vset_same_33xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_33;
  endfunction

  function void get_WayLookup_vset_same_34xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_34;
  endfunction

  function void get_WayLookup_vset_same_35xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_35;
  endfunction

  function void get_WayLookup_vset_same_36xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_36;
  endfunction

  function void get_WayLookup_vset_same_37xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_37;
  endfunction

  function void get_WayLookup_vset_same_38xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_38;
  endfunction

  function void get_WayLookup_vset_same_39xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_39;
  endfunction

  function void get_WayLookup_vset_same_40xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_40;
  endfunction

  function void get_WayLookup_vset_same_41xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_41;
  endfunction

  function void get_WayLookup_vset_same_42xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_42;
  endfunction

  function void get_WayLookup_vset_same_43xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_43;
  endfunction

  function void get_WayLookup_vset_same_44xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_44;
  endfunction

  function void get_WayLookup_vset_same_45xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_45;
  endfunction

  function void get_WayLookup_vset_same_46xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_46;
  endfunction

  function void get_WayLookup_vset_same_47xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_47;
  endfunction

  function void get_WayLookup_vset_same_48xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_48;
  endfunction

  function void get_WayLookup_vset_same_49xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_49;
  endfunction

  function void get_WayLookup_vset_same_50xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_50;
  endfunction

  function void get_WayLookup_vset_same_51xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_51;
  endfunction

  function void get_WayLookup_vset_same_52xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_52;
  endfunction

  function void get_WayLookup_vset_same_53xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_53;
  endfunction

  function void get_WayLookup_vset_same_54xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_54;
  endfunction

  function void get_WayLookup_vset_same_55xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_55;
  endfunction

  function void get_WayLookup_vset_same_56xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_56;
  endfunction

  function void get_WayLookup_vset_same_57xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_57;
  endfunction

  function void get_WayLookup_vset_same_58xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_58;
  endfunction

  function void get_WayLookup_vset_same_59xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_59;
  endfunction

  function void get_WayLookup_vset_same_60xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_60;
  endfunction

  function void get_WayLookup_vset_same_61xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_61;
  endfunction

  function void get_WayLookup_vset_same_62xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_62;
  endfunction

  function void get_WayLookup_vset_same_63xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.vset_same_63;
  endfunction

  function void get_WayLookup_ptag_samexxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same;
  endfunction

  function void get_WayLookup_ptag_same_1xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_1;
  endfunction

  function void get_WayLookup_ptag_same_2xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_2;
  endfunction

  function void get_WayLookup_ptag_same_3xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_3;
  endfunction

  function void get_WayLookup_ptag_same_4xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_4;
  endfunction

  function void get_WayLookup_ptag_same_5xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_5;
  endfunction

  function void get_WayLookup_ptag_same_6xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_6;
  endfunction

  function void get_WayLookup_ptag_same_7xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_7;
  endfunction

  function void get_WayLookup_ptag_same_8xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_8;
  endfunction

  function void get_WayLookup_ptag_same_9xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_9;
  endfunction

  function void get_WayLookup_ptag_same_10xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_10;
  endfunction

  function void get_WayLookup_ptag_same_11xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_11;
  endfunction

  function void get_WayLookup_ptag_same_12xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_12;
  endfunction

  function void get_WayLookup_ptag_same_13xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_13;
  endfunction

  function void get_WayLookup_ptag_same_14xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_14;
  endfunction

  function void get_WayLookup_ptag_same_15xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_15;
  endfunction

  function void get_WayLookup_ptag_same_16xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_16;
  endfunction

  function void get_WayLookup_ptag_same_17xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_17;
  endfunction

  function void get_WayLookup_ptag_same_18xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_18;
  endfunction

  function void get_WayLookup_ptag_same_19xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_19;
  endfunction

  function void get_WayLookup_ptag_same_20xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_20;
  endfunction

  function void get_WayLookup_ptag_same_21xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_21;
  endfunction

  function void get_WayLookup_ptag_same_22xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_22;
  endfunction

  function void get_WayLookup_ptag_same_23xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_23;
  endfunction

  function void get_WayLookup_ptag_same_24xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_24;
  endfunction

  function void get_WayLookup_ptag_same_25xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_25;
  endfunction

  function void get_WayLookup_ptag_same_26xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_26;
  endfunction

  function void get_WayLookup_ptag_same_27xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_27;
  endfunction

  function void get_WayLookup_ptag_same_28xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_28;
  endfunction

  function void get_WayLookup_ptag_same_29xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_29;
  endfunction

  function void get_WayLookup_ptag_same_30xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_30;
  endfunction

  function void get_WayLookup_ptag_same_31xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_31;
  endfunction

  function void get_WayLookup_ptag_same_32xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_32;
  endfunction

  function void get_WayLookup_ptag_same_33xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_33;
  endfunction

  function void get_WayLookup_ptag_same_34xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_34;
  endfunction

  function void get_WayLookup_ptag_same_35xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_35;
  endfunction

  function void get_WayLookup_ptag_same_36xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_36;
  endfunction

  function void get_WayLookup_ptag_same_37xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_37;
  endfunction

  function void get_WayLookup_ptag_same_38xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_38;
  endfunction

  function void get_WayLookup_ptag_same_39xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_39;
  endfunction

  function void get_WayLookup_ptag_same_40xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_40;
  endfunction

  function void get_WayLookup_ptag_same_41xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_41;
  endfunction

  function void get_WayLookup_ptag_same_42xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_42;
  endfunction

  function void get_WayLookup_ptag_same_43xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_43;
  endfunction

  function void get_WayLookup_ptag_same_44xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_44;
  endfunction

  function void get_WayLookup_ptag_same_45xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_45;
  endfunction

  function void get_WayLookup_ptag_same_46xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_46;
  endfunction

  function void get_WayLookup_ptag_same_47xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_47;
  endfunction

  function void get_WayLookup_ptag_same_48xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_48;
  endfunction

  function void get_WayLookup_ptag_same_49xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_49;
  endfunction

  function void get_WayLookup_ptag_same_50xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_50;
  endfunction

  function void get_WayLookup_ptag_same_51xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_51;
  endfunction

  function void get_WayLookup_ptag_same_52xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_52;
  endfunction

  function void get_WayLookup_ptag_same_53xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_53;
  endfunction

  function void get_WayLookup_ptag_same_54xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_54;
  endfunction

  function void get_WayLookup_ptag_same_55xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_55;
  endfunction

  function void get_WayLookup_ptag_same_56xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_56;
  endfunction

  function void get_WayLookup_ptag_same_57xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_57;
  endfunction

  function void get_WayLookup_ptag_same_58xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_58;
  endfunction

  function void get_WayLookup_ptag_same_59xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_59;
  endfunction

  function void get_WayLookup_ptag_same_60xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_60;
  endfunction

  function void get_WayLookup_ptag_same_61xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_61;
  endfunction

  function void get_WayLookup_ptag_same_62xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_62;
  endfunction

  function void get_WayLookup_ptag_same_63xxHK2YcqZVzmf;
    output logic  value;
    value=WayLookup.ptag_same_63;
  endfunction

  function void get_WayLookup_entries_0_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_0_waymask_0;
  endfunction

  function void get_WayLookup_entries_0_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_0_waymask_1;
  endfunction

  function void get_WayLookup_entries_1_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_1_waymask_0;
  endfunction

  function void get_WayLookup_entries_1_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_1_waymask_1;
  endfunction

  function void get_WayLookup_entries_2_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_2_waymask_0;
  endfunction

  function void get_WayLookup_entries_2_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_2_waymask_1;
  endfunction

  function void get_WayLookup_entries_3_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_3_waymask_0;
  endfunction

  function void get_WayLookup_entries_3_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_3_waymask_1;
  endfunction

  function void get_WayLookup_entries_4_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_4_waymask_0;
  endfunction

  function void get_WayLookup_entries_4_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_4_waymask_1;
  endfunction

  function void get_WayLookup_entries_5_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_5_waymask_0;
  endfunction

  function void get_WayLookup_entries_5_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_5_waymask_1;
  endfunction

  function void get_WayLookup_entries_6_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_6_waymask_0;
  endfunction

  function void get_WayLookup_entries_6_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_6_waymask_1;
  endfunction

  function void get_WayLookup_entries_7_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_7_waymask_0;
  endfunction

  function void get_WayLookup_entries_7_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_7_waymask_1;
  endfunction

  function void get_WayLookup_entries_8_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_8_waymask_0;
  endfunction

  function void get_WayLookup_entries_8_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_8_waymask_1;
  endfunction

  function void get_WayLookup_entries_9_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_9_waymask_0;
  endfunction

  function void get_WayLookup_entries_9_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_9_waymask_1;
  endfunction

  function void get_WayLookup_entries_10_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_10_waymask_0;
  endfunction

  function void get_WayLookup_entries_10_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_10_waymask_1;
  endfunction

  function void get_WayLookup_entries_11_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_11_waymask_0;
  endfunction

  function void get_WayLookup_entries_11_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_11_waymask_1;
  endfunction

  function void get_WayLookup_entries_12_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_12_waymask_0;
  endfunction

  function void get_WayLookup_entries_12_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_12_waymask_1;
  endfunction

  function void get_WayLookup_entries_13_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_13_waymask_0;
  endfunction

  function void get_WayLookup_entries_13_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_13_waymask_1;
  endfunction

  function void get_WayLookup_entries_14_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_14_waymask_0;
  endfunction

  function void get_WayLookup_entries_14_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_14_waymask_1;
  endfunction

  function void get_WayLookup_entries_15_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_15_waymask_0;
  endfunction

  function void get_WayLookup_entries_15_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_15_waymask_1;
  endfunction

  function void get_WayLookup_entries_16_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_16_waymask_0;
  endfunction

  function void get_WayLookup_entries_16_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_16_waymask_1;
  endfunction

  function void get_WayLookup_entries_17_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_17_waymask_0;
  endfunction

  function void get_WayLookup_entries_17_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_17_waymask_1;
  endfunction

  function void get_WayLookup_entries_18_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_18_waymask_0;
  endfunction

  function void get_WayLookup_entries_18_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_18_waymask_1;
  endfunction

  function void get_WayLookup_entries_19_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_19_waymask_0;
  endfunction

  function void get_WayLookup_entries_19_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_19_waymask_1;
  endfunction

  function void get_WayLookup_entries_20_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_20_waymask_0;
  endfunction

  function void get_WayLookup_entries_20_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_20_waymask_1;
  endfunction

  function void get_WayLookup_entries_21_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_21_waymask_0;
  endfunction

  function void get_WayLookup_entries_21_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_21_waymask_1;
  endfunction

  function void get_WayLookup_entries_22_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_22_waymask_0;
  endfunction

  function void get_WayLookup_entries_22_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_22_waymask_1;
  endfunction

  function void get_WayLookup_entries_23_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_23_waymask_0;
  endfunction

  function void get_WayLookup_entries_23_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_23_waymask_1;
  endfunction

  function void get_WayLookup_entries_24_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_24_waymask_0;
  endfunction

  function void get_WayLookup_entries_24_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_24_waymask_1;
  endfunction

  function void get_WayLookup_entries_25_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_25_waymask_0;
  endfunction

  function void get_WayLookup_entries_25_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_25_waymask_1;
  endfunction

  function void get_WayLookup_entries_26_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_26_waymask_0;
  endfunction

  function void get_WayLookup_entries_26_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_26_waymask_1;
  endfunction

  function void get_WayLookup_entries_27_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_27_waymask_0;
  endfunction

  function void get_WayLookup_entries_27_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_27_waymask_1;
  endfunction

  function void get_WayLookup_entries_28_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_28_waymask_0;
  endfunction

  function void get_WayLookup_entries_28_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_28_waymask_1;
  endfunction

  function void get_WayLookup_entries_29_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_29_waymask_0;
  endfunction

  function void get_WayLookup_entries_29_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_29_waymask_1;
  endfunction

  function void get_WayLookup_entries_30_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_30_waymask_0;
  endfunction

  function void get_WayLookup_entries_30_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_30_waymask_1;
  endfunction

  function void get_WayLookup_entries_31_waymask_0xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_31_waymask_0;
  endfunction

  function void get_WayLookup_entries_31_waymask_1xxHK2YcqZVzmf;
    output logic [3:0] value;
    value=WayLookup.entries_31_waymask_1;
  endfunction



  initial begin
    $dumpfile("WayLookup.fst");
    $dumpvars(0, WayLookup_top);
  end

  export "DPI-C" function finish_HK2YcqZVzmf;
  function void finish_HK2YcqZVzmf;
    $finish;
  endfunction


endmodule
