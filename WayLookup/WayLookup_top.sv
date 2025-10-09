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


  export "DPI-C" function get_clockxxPfBDHOzU4kB;
  export "DPI-C" function set_clockxxPfBDHOzU4kB;
  export "DPI-C" function get_resetxxPfBDHOzU4kB;
  export "DPI-C" function set_resetxxPfBDHOzU4kB;
  export "DPI-C" function get_io_flushxxPfBDHOzU4kB;
  export "DPI-C" function set_io_flushxxPfBDHOzU4kB;
  export "DPI-C" function get_io_read_readyxxPfBDHOzU4kB;
  export "DPI-C" function set_io_read_readyxxPfBDHOzU4kB;
  export "DPI-C" function get_io_read_validxxPfBDHOzU4kB;
  export "DPI-C" function get_io_read_bits_entry_vSetIdx_0xxPfBDHOzU4kB;
  export "DPI-C" function get_io_read_bits_entry_vSetIdx_1xxPfBDHOzU4kB;
  export "DPI-C" function get_io_read_bits_entry_waymask_0xxPfBDHOzU4kB;
  export "DPI-C" function get_io_read_bits_entry_waymask_1xxPfBDHOzU4kB;
  export "DPI-C" function get_io_read_bits_entry_ptag_0xxPfBDHOzU4kB;
  export "DPI-C" function get_io_read_bits_entry_ptag_1xxPfBDHOzU4kB;
  export "DPI-C" function get_io_read_bits_entry_itlb_exception_0xxPfBDHOzU4kB;
  export "DPI-C" function get_io_read_bits_entry_itlb_exception_1xxPfBDHOzU4kB;
  export "DPI-C" function get_io_read_bits_entry_itlb_pbmt_0xxPfBDHOzU4kB;
  export "DPI-C" function get_io_read_bits_entry_itlb_pbmt_1xxPfBDHOzU4kB;
  export "DPI-C" function get_io_read_bits_entry_meta_codes_0xxPfBDHOzU4kB;
  export "DPI-C" function get_io_read_bits_entry_meta_codes_1xxPfBDHOzU4kB;
  export "DPI-C" function get_io_read_bits_gpf_gpaddrxxPfBDHOzU4kB;
  export "DPI-C" function get_io_read_bits_gpf_isForVSnonLeafPTExxPfBDHOzU4kB;
  export "DPI-C" function get_io_write_readyxxPfBDHOzU4kB;
  export "DPI-C" function get_io_write_validxxPfBDHOzU4kB;
  export "DPI-C" function set_io_write_validxxPfBDHOzU4kB;
  export "DPI-C" function get_io_write_bits_entry_vSetIdx_0xxPfBDHOzU4kB;
  export "DPI-C" function set_io_write_bits_entry_vSetIdx_0xxPfBDHOzU4kB;
  export "DPI-C" function get_io_write_bits_entry_vSetIdx_1xxPfBDHOzU4kB;
  export "DPI-C" function set_io_write_bits_entry_vSetIdx_1xxPfBDHOzU4kB;
  export "DPI-C" function get_io_write_bits_entry_waymask_0xxPfBDHOzU4kB;
  export "DPI-C" function set_io_write_bits_entry_waymask_0xxPfBDHOzU4kB;
  export "DPI-C" function get_io_write_bits_entry_waymask_1xxPfBDHOzU4kB;
  export "DPI-C" function set_io_write_bits_entry_waymask_1xxPfBDHOzU4kB;
  export "DPI-C" function get_io_write_bits_entry_ptag_0xxPfBDHOzU4kB;
  export "DPI-C" function set_io_write_bits_entry_ptag_0xxPfBDHOzU4kB;
  export "DPI-C" function get_io_write_bits_entry_ptag_1xxPfBDHOzU4kB;
  export "DPI-C" function set_io_write_bits_entry_ptag_1xxPfBDHOzU4kB;
  export "DPI-C" function get_io_write_bits_entry_itlb_exception_0xxPfBDHOzU4kB;
  export "DPI-C" function set_io_write_bits_entry_itlb_exception_0xxPfBDHOzU4kB;
  export "DPI-C" function get_io_write_bits_entry_itlb_exception_1xxPfBDHOzU4kB;
  export "DPI-C" function set_io_write_bits_entry_itlb_exception_1xxPfBDHOzU4kB;
  export "DPI-C" function get_io_write_bits_entry_itlb_pbmt_0xxPfBDHOzU4kB;
  export "DPI-C" function set_io_write_bits_entry_itlb_pbmt_0xxPfBDHOzU4kB;
  export "DPI-C" function get_io_write_bits_entry_itlb_pbmt_1xxPfBDHOzU4kB;
  export "DPI-C" function set_io_write_bits_entry_itlb_pbmt_1xxPfBDHOzU4kB;
  export "DPI-C" function get_io_write_bits_entry_meta_codes_0xxPfBDHOzU4kB;
  export "DPI-C" function set_io_write_bits_entry_meta_codes_0xxPfBDHOzU4kB;
  export "DPI-C" function get_io_write_bits_entry_meta_codes_1xxPfBDHOzU4kB;
  export "DPI-C" function set_io_write_bits_entry_meta_codes_1xxPfBDHOzU4kB;
  export "DPI-C" function get_io_write_bits_gpf_gpaddrxxPfBDHOzU4kB;
  export "DPI-C" function set_io_write_bits_gpf_gpaddrxxPfBDHOzU4kB;
  export "DPI-C" function get_io_write_bits_gpf_isForVSnonLeafPTExxPfBDHOzU4kB;
  export "DPI-C" function set_io_write_bits_gpf_isForVSnonLeafPTExxPfBDHOzU4kB;
  export "DPI-C" function get_io_update_validxxPfBDHOzU4kB;
  export "DPI-C" function set_io_update_validxxPfBDHOzU4kB;
  export "DPI-C" function get_io_update_bits_blkPaddrxxPfBDHOzU4kB;
  export "DPI-C" function set_io_update_bits_blkPaddrxxPfBDHOzU4kB;
  export "DPI-C" function get_io_update_bits_vSetIdxxxPfBDHOzU4kB;
  export "DPI-C" function set_io_update_bits_vSetIdxxxPfBDHOzU4kB;
  export "DPI-C" function get_io_update_bits_waymaskxxPfBDHOzU4kB;
  export "DPI-C" function set_io_update_bits_waymaskxxPfBDHOzU4kB;
  export "DPI-C" function get_io_update_bits_corruptxxPfBDHOzU4kB;
  export "DPI-C" function set_io_update_bits_corruptxxPfBDHOzU4kB;
  export "DPI-C" function get_WayLookup_readPtr_flagxxPfBDHOzU4kB;
  export "DPI-C" function get_WayLookup_readPtr_valuexxPfBDHOzU4kB;
  export "DPI-C" function get_WayLookup_writePtr_flagxxPfBDHOzU4kB;
  export "DPI-C" function get_WayLookup_writePtr_valuexxPfBDHOzU4kB;
  export "DPI-C" function get_WayLookup_gpf_hitxxPfBDHOzU4kB;
  export "DPI-C" function get_WayLookup_gpf_entry_validxxPfBDHOzU4kB;
  export "DPI-C" function get_WayLookup_gpf_entry_bits_gpaddrxxPfBDHOzU4kB;
  export "DPI-C" function get_WayLookup_entries_0_vSetIdx_0xxPfBDHOzU4kB;
  export "DPI-C" function get_WayLookup_entries_0_vSetIdx_1xxPfBDHOzU4kB;
  export "DPI-C" function get_WayLookup_entries_0_waymask_0xxPfBDHOzU4kB;
  export "DPI-C" function get_WayLookup_entries_0_waymask_1xxPfBDHOzU4kB;
  export "DPI-C" function get_WayLookup_entries_0_ptag_0xxPfBDHOzU4kB;
  export "DPI-C" function get_WayLookup_entries_0_ptag_1xxPfBDHOzU4kB;
  export "DPI-C" function get_WayLookup_entries_0_itlb_exception_0xxPfBDHOzU4kB;
  export "DPI-C" function get_WayLookup_entries_0_itlb_exception_1xxPfBDHOzU4kB;
  export "DPI-C" function get_WayLookup_entries_0_itlb_pbmt_0xxPfBDHOzU4kB;
  export "DPI-C" function get_WayLookup_entries_0_itlb_pbmt_1xxPfBDHOzU4kB;
  export "DPI-C" function get_WayLookup_entries_0_meta_codes_0xxPfBDHOzU4kB;
  export "DPI-C" function get_WayLookup_entries_0_meta_codes_1xxPfBDHOzU4kB;
  export "DPI-C" function get_WayLookup_vset_samexxPfBDHOzU4kB;
  export "DPI-C" function get_WayLookup_ptag_samexxPfBDHOzU4kB;


  function void get_clockxxPfBDHOzU4kB;
    output logic  value;
    value=clock;
  endfunction

  function void set_clockxxPfBDHOzU4kB;
    input logic  value;
    clock=value;
  endfunction

  function void get_resetxxPfBDHOzU4kB;
    output logic  value;
    value=reset;
  endfunction

  function void set_resetxxPfBDHOzU4kB;
    input logic  value;
    reset=value;
  endfunction

  function void get_io_flushxxPfBDHOzU4kB;
    output logic  value;
    value=io_flush;
  endfunction

  function void set_io_flushxxPfBDHOzU4kB;
    input logic  value;
    io_flush=value;
  endfunction

  function void get_io_read_readyxxPfBDHOzU4kB;
    output logic  value;
    value=io_read_ready;
  endfunction

  function void set_io_read_readyxxPfBDHOzU4kB;
    input logic  value;
    io_read_ready=value;
  endfunction

  function void get_io_read_validxxPfBDHOzU4kB;
    output logic  value;
    value=io_read_valid;
  endfunction

  function void get_io_read_bits_entry_vSetIdx_0xxPfBDHOzU4kB;
    output logic [7:0] value;
    value=io_read_bits_entry_vSetIdx_0;
  endfunction

  function void get_io_read_bits_entry_vSetIdx_1xxPfBDHOzU4kB;
    output logic [7:0] value;
    value=io_read_bits_entry_vSetIdx_1;
  endfunction

  function void get_io_read_bits_entry_waymask_0xxPfBDHOzU4kB;
    output logic [3:0] value;
    value=io_read_bits_entry_waymask_0;
  endfunction

  function void get_io_read_bits_entry_waymask_1xxPfBDHOzU4kB;
    output logic [3:0] value;
    value=io_read_bits_entry_waymask_1;
  endfunction

  function void get_io_read_bits_entry_ptag_0xxPfBDHOzU4kB;
    output logic [35:0] value;
    value=io_read_bits_entry_ptag_0;
  endfunction

  function void get_io_read_bits_entry_ptag_1xxPfBDHOzU4kB;
    output logic [35:0] value;
    value=io_read_bits_entry_ptag_1;
  endfunction

  function void get_io_read_bits_entry_itlb_exception_0xxPfBDHOzU4kB;
    output logic [1:0] value;
    value=io_read_bits_entry_itlb_exception_0;
  endfunction

  function void get_io_read_bits_entry_itlb_exception_1xxPfBDHOzU4kB;
    output logic [1:0] value;
    value=io_read_bits_entry_itlb_exception_1;
  endfunction

  function void get_io_read_bits_entry_itlb_pbmt_0xxPfBDHOzU4kB;
    output logic [1:0] value;
    value=io_read_bits_entry_itlb_pbmt_0;
  endfunction

  function void get_io_read_bits_entry_itlb_pbmt_1xxPfBDHOzU4kB;
    output logic [1:0] value;
    value=io_read_bits_entry_itlb_pbmt_1;
  endfunction

  function void get_io_read_bits_entry_meta_codes_0xxPfBDHOzU4kB;
    output logic  value;
    value=io_read_bits_entry_meta_codes_0;
  endfunction

  function void get_io_read_bits_entry_meta_codes_1xxPfBDHOzU4kB;
    output logic  value;
    value=io_read_bits_entry_meta_codes_1;
  endfunction

  function void get_io_read_bits_gpf_gpaddrxxPfBDHOzU4kB;
    output logic [55:0] value;
    value=io_read_bits_gpf_gpaddr;
  endfunction

  function void get_io_read_bits_gpf_isForVSnonLeafPTExxPfBDHOzU4kB;
    output logic  value;
    value=io_read_bits_gpf_isForVSnonLeafPTE;
  endfunction

  function void get_io_write_readyxxPfBDHOzU4kB;
    output logic  value;
    value=io_write_ready;
  endfunction

  function void get_io_write_validxxPfBDHOzU4kB;
    output logic  value;
    value=io_write_valid;
  endfunction

  function void set_io_write_validxxPfBDHOzU4kB;
    input logic  value;
    io_write_valid=value;
  endfunction

  function void get_io_write_bits_entry_vSetIdx_0xxPfBDHOzU4kB;
    output logic [7:0] value;
    value=io_write_bits_entry_vSetIdx_0;
  endfunction

  function void set_io_write_bits_entry_vSetIdx_0xxPfBDHOzU4kB;
    input logic [7:0] value;
    io_write_bits_entry_vSetIdx_0=value;
  endfunction

  function void get_io_write_bits_entry_vSetIdx_1xxPfBDHOzU4kB;
    output logic [7:0] value;
    value=io_write_bits_entry_vSetIdx_1;
  endfunction

  function void set_io_write_bits_entry_vSetIdx_1xxPfBDHOzU4kB;
    input logic [7:0] value;
    io_write_bits_entry_vSetIdx_1=value;
  endfunction

  function void get_io_write_bits_entry_waymask_0xxPfBDHOzU4kB;
    output logic [3:0] value;
    value=io_write_bits_entry_waymask_0;
  endfunction

  function void set_io_write_bits_entry_waymask_0xxPfBDHOzU4kB;
    input logic [3:0] value;
    io_write_bits_entry_waymask_0=value;
  endfunction

  function void get_io_write_bits_entry_waymask_1xxPfBDHOzU4kB;
    output logic [3:0] value;
    value=io_write_bits_entry_waymask_1;
  endfunction

  function void set_io_write_bits_entry_waymask_1xxPfBDHOzU4kB;
    input logic [3:0] value;
    io_write_bits_entry_waymask_1=value;
  endfunction

  function void get_io_write_bits_entry_ptag_0xxPfBDHOzU4kB;
    output logic [35:0] value;
    value=io_write_bits_entry_ptag_0;
  endfunction

  function void set_io_write_bits_entry_ptag_0xxPfBDHOzU4kB;
    input logic [35:0] value;
    io_write_bits_entry_ptag_0=value;
  endfunction

  function void get_io_write_bits_entry_ptag_1xxPfBDHOzU4kB;
    output logic [35:0] value;
    value=io_write_bits_entry_ptag_1;
  endfunction

  function void set_io_write_bits_entry_ptag_1xxPfBDHOzU4kB;
    input logic [35:0] value;
    io_write_bits_entry_ptag_1=value;
  endfunction

  function void get_io_write_bits_entry_itlb_exception_0xxPfBDHOzU4kB;
    output logic [1:0] value;
    value=io_write_bits_entry_itlb_exception_0;
  endfunction

  function void set_io_write_bits_entry_itlb_exception_0xxPfBDHOzU4kB;
    input logic [1:0] value;
    io_write_bits_entry_itlb_exception_0=value;
  endfunction

  function void get_io_write_bits_entry_itlb_exception_1xxPfBDHOzU4kB;
    output logic [1:0] value;
    value=io_write_bits_entry_itlb_exception_1;
  endfunction

  function void set_io_write_bits_entry_itlb_exception_1xxPfBDHOzU4kB;
    input logic [1:0] value;
    io_write_bits_entry_itlb_exception_1=value;
  endfunction

  function void get_io_write_bits_entry_itlb_pbmt_0xxPfBDHOzU4kB;
    output logic [1:0] value;
    value=io_write_bits_entry_itlb_pbmt_0;
  endfunction

  function void set_io_write_bits_entry_itlb_pbmt_0xxPfBDHOzU4kB;
    input logic [1:0] value;
    io_write_bits_entry_itlb_pbmt_0=value;
  endfunction

  function void get_io_write_bits_entry_itlb_pbmt_1xxPfBDHOzU4kB;
    output logic [1:0] value;
    value=io_write_bits_entry_itlb_pbmt_1;
  endfunction

  function void set_io_write_bits_entry_itlb_pbmt_1xxPfBDHOzU4kB;
    input logic [1:0] value;
    io_write_bits_entry_itlb_pbmt_1=value;
  endfunction

  function void get_io_write_bits_entry_meta_codes_0xxPfBDHOzU4kB;
    output logic  value;
    value=io_write_bits_entry_meta_codes_0;
  endfunction

  function void set_io_write_bits_entry_meta_codes_0xxPfBDHOzU4kB;
    input logic  value;
    io_write_bits_entry_meta_codes_0=value;
  endfunction

  function void get_io_write_bits_entry_meta_codes_1xxPfBDHOzU4kB;
    output logic  value;
    value=io_write_bits_entry_meta_codes_1;
  endfunction

  function void set_io_write_bits_entry_meta_codes_1xxPfBDHOzU4kB;
    input logic  value;
    io_write_bits_entry_meta_codes_1=value;
  endfunction

  function void get_io_write_bits_gpf_gpaddrxxPfBDHOzU4kB;
    output logic [55:0] value;
    value=io_write_bits_gpf_gpaddr;
  endfunction

  function void set_io_write_bits_gpf_gpaddrxxPfBDHOzU4kB;
    input logic [55:0] value;
    io_write_bits_gpf_gpaddr=value;
  endfunction

  function void get_io_write_bits_gpf_isForVSnonLeafPTExxPfBDHOzU4kB;
    output logic  value;
    value=io_write_bits_gpf_isForVSnonLeafPTE;
  endfunction

  function void set_io_write_bits_gpf_isForVSnonLeafPTExxPfBDHOzU4kB;
    input logic  value;
    io_write_bits_gpf_isForVSnonLeafPTE=value;
  endfunction

  function void get_io_update_validxxPfBDHOzU4kB;
    output logic  value;
    value=io_update_valid;
  endfunction

  function void set_io_update_validxxPfBDHOzU4kB;
    input logic  value;
    io_update_valid=value;
  endfunction

  function void get_io_update_bits_blkPaddrxxPfBDHOzU4kB;
    output logic [41:0] value;
    value=io_update_bits_blkPaddr;
  endfunction

  function void set_io_update_bits_blkPaddrxxPfBDHOzU4kB;
    input logic [41:0] value;
    io_update_bits_blkPaddr=value;
  endfunction

  function void get_io_update_bits_vSetIdxxxPfBDHOzU4kB;
    output logic [7:0] value;
    value=io_update_bits_vSetIdx;
  endfunction

  function void set_io_update_bits_vSetIdxxxPfBDHOzU4kB;
    input logic [7:0] value;
    io_update_bits_vSetIdx=value;
  endfunction

  function void get_io_update_bits_waymaskxxPfBDHOzU4kB;
    output logic [3:0] value;
    value=io_update_bits_waymask;
  endfunction

  function void set_io_update_bits_waymaskxxPfBDHOzU4kB;
    input logic [3:0] value;
    io_update_bits_waymask=value;
  endfunction

  function void get_io_update_bits_corruptxxPfBDHOzU4kB;
    output logic  value;
    value=io_update_bits_corrupt;
  endfunction

  function void set_io_update_bits_corruptxxPfBDHOzU4kB;
    input logic  value;
    io_update_bits_corrupt=value;
  endfunction

  function void get_WayLookup_readPtr_flagxxPfBDHOzU4kB;
    output logic  value;
    value=WayLookup.readPtr_flag;
  endfunction

  function void get_WayLookup_readPtr_valuexxPfBDHOzU4kB;
    output logic [4:0] value;
    value=WayLookup.readPtr_value;
  endfunction

  function void get_WayLookup_writePtr_flagxxPfBDHOzU4kB;
    output logic  value;
    value=WayLookup.writePtr_flag;
  endfunction

  function void get_WayLookup_writePtr_valuexxPfBDHOzU4kB;
    output logic [4:0] value;
    value=WayLookup.writePtr_value;
  endfunction

  function void get_WayLookup_gpf_hitxxPfBDHOzU4kB;
    output logic  value;
    value=WayLookup.gpf_hit;
  endfunction

  function void get_WayLookup_gpf_entry_validxxPfBDHOzU4kB;
    output logic  value;
    value=WayLookup.gpf_entry_valid;
  endfunction

  function void get_WayLookup_gpf_entry_bits_gpaddrxxPfBDHOzU4kB;
    output logic [55:0] value;
    value=WayLookup.gpf_entry_bits_gpaddr;
  endfunction

  function void get_WayLookup_entries_0_vSetIdx_0xxPfBDHOzU4kB;
    output logic [7:0] value;
    value=WayLookup.entries_0_vSetIdx_0;
  endfunction

  function void get_WayLookup_entries_0_vSetIdx_1xxPfBDHOzU4kB;
    output logic [7:0] value;
    value=WayLookup.entries_0_vSetIdx_1;
  endfunction

  function void get_WayLookup_entries_0_waymask_0xxPfBDHOzU4kB;
    output logic [3:0] value;
    value=WayLookup.entries_0_waymask_0;
  endfunction

  function void get_WayLookup_entries_0_waymask_1xxPfBDHOzU4kB;
    output logic [3:0] value;
    value=WayLookup.entries_0_waymask_1;
  endfunction

  function void get_WayLookup_entries_0_ptag_0xxPfBDHOzU4kB;
    output logic [35:0] value;
    value=WayLookup.entries_0_ptag_0;
  endfunction

  function void get_WayLookup_entries_0_ptag_1xxPfBDHOzU4kB;
    output logic [35:0] value;
    value=WayLookup.entries_0_ptag_1;
  endfunction

  function void get_WayLookup_entries_0_itlb_exception_0xxPfBDHOzU4kB;
    output logic [1:0] value;
    value=WayLookup.entries_0_itlb_exception_0;
  endfunction

  function void get_WayLookup_entries_0_itlb_exception_1xxPfBDHOzU4kB;
    output logic [1:0] value;
    value=WayLookup.entries_0_itlb_exception_1;
  endfunction

  function void get_WayLookup_entries_0_itlb_pbmt_0xxPfBDHOzU4kB;
    output logic [1:0] value;
    value=WayLookup.entries_0_itlb_pbmt_0;
  endfunction

  function void get_WayLookup_entries_0_itlb_pbmt_1xxPfBDHOzU4kB;
    output logic [1:0] value;
    value=WayLookup.entries_0_itlb_pbmt_1;
  endfunction

  function void get_WayLookup_entries_0_meta_codes_0xxPfBDHOzU4kB;
    output logic  value;
    value=WayLookup.entries_0_meta_codes_0;
  endfunction

  function void get_WayLookup_entries_0_meta_codes_1xxPfBDHOzU4kB;
    output logic  value;
    value=WayLookup.entries_0_meta_codes_1;
  endfunction

  function void get_WayLookup_vset_samexxPfBDHOzU4kB;
    output logic  value;
    value=WayLookup.vset_same;
  endfunction

  function void get_WayLookup_ptag_samexxPfBDHOzU4kB;
    output logic  value;
    value=WayLookup.ptag_same;
  endfunction



  initial begin
    $dumpfile("WayLookup.fst");
    $dumpvars(0, WayLookup_top);
  end

  export "DPI-C" function finish_PfBDHOzU4kB;
  function void finish_PfBDHOzU4kB;
    $finish;
  endfunction


endmodule
