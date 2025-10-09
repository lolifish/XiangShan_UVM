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


  export "DPI-C" function get_clockxxCAWPMqHHbM;
  export "DPI-C" function set_clockxxCAWPMqHHbM;
  export "DPI-C" function get_resetxxCAWPMqHHbM;
  export "DPI-C" function set_resetxxCAWPMqHHbM;
  export "DPI-C" function get_io_flushxxCAWPMqHHbM;
  export "DPI-C" function set_io_flushxxCAWPMqHHbM;
  export "DPI-C" function get_io_read_readyxxCAWPMqHHbM;
  export "DPI-C" function set_io_read_readyxxCAWPMqHHbM;
  export "DPI-C" function get_io_read_validxxCAWPMqHHbM;
  export "DPI-C" function get_io_read_bits_entry_vSetIdx_0xxCAWPMqHHbM;
  export "DPI-C" function get_io_read_bits_entry_vSetIdx_1xxCAWPMqHHbM;
  export "DPI-C" function get_io_read_bits_entry_waymask_0xxCAWPMqHHbM;
  export "DPI-C" function get_io_read_bits_entry_waymask_1xxCAWPMqHHbM;
  export "DPI-C" function get_io_read_bits_entry_ptag_0xxCAWPMqHHbM;
  export "DPI-C" function get_io_read_bits_entry_ptag_1xxCAWPMqHHbM;
  export "DPI-C" function get_io_read_bits_entry_itlb_exception_0xxCAWPMqHHbM;
  export "DPI-C" function get_io_read_bits_entry_itlb_exception_1xxCAWPMqHHbM;
  export "DPI-C" function get_io_read_bits_entry_itlb_pbmt_0xxCAWPMqHHbM;
  export "DPI-C" function get_io_read_bits_entry_itlb_pbmt_1xxCAWPMqHHbM;
  export "DPI-C" function get_io_read_bits_entry_meta_codes_0xxCAWPMqHHbM;
  export "DPI-C" function get_io_read_bits_entry_meta_codes_1xxCAWPMqHHbM;
  export "DPI-C" function get_io_read_bits_gpf_gpaddrxxCAWPMqHHbM;
  export "DPI-C" function get_io_read_bits_gpf_isForVSnonLeafPTExxCAWPMqHHbM;
  export "DPI-C" function get_io_write_readyxxCAWPMqHHbM;
  export "DPI-C" function get_io_write_validxxCAWPMqHHbM;
  export "DPI-C" function set_io_write_validxxCAWPMqHHbM;
  export "DPI-C" function get_io_write_bits_entry_vSetIdx_0xxCAWPMqHHbM;
  export "DPI-C" function set_io_write_bits_entry_vSetIdx_0xxCAWPMqHHbM;
  export "DPI-C" function get_io_write_bits_entry_vSetIdx_1xxCAWPMqHHbM;
  export "DPI-C" function set_io_write_bits_entry_vSetIdx_1xxCAWPMqHHbM;
  export "DPI-C" function get_io_write_bits_entry_waymask_0xxCAWPMqHHbM;
  export "DPI-C" function set_io_write_bits_entry_waymask_0xxCAWPMqHHbM;
  export "DPI-C" function get_io_write_bits_entry_waymask_1xxCAWPMqHHbM;
  export "DPI-C" function set_io_write_bits_entry_waymask_1xxCAWPMqHHbM;
  export "DPI-C" function get_io_write_bits_entry_ptag_0xxCAWPMqHHbM;
  export "DPI-C" function set_io_write_bits_entry_ptag_0xxCAWPMqHHbM;
  export "DPI-C" function get_io_write_bits_entry_ptag_1xxCAWPMqHHbM;
  export "DPI-C" function set_io_write_bits_entry_ptag_1xxCAWPMqHHbM;
  export "DPI-C" function get_io_write_bits_entry_itlb_exception_0xxCAWPMqHHbM;
  export "DPI-C" function set_io_write_bits_entry_itlb_exception_0xxCAWPMqHHbM;
  export "DPI-C" function get_io_write_bits_entry_itlb_exception_1xxCAWPMqHHbM;
  export "DPI-C" function set_io_write_bits_entry_itlb_exception_1xxCAWPMqHHbM;
  export "DPI-C" function get_io_write_bits_entry_itlb_pbmt_0xxCAWPMqHHbM;
  export "DPI-C" function set_io_write_bits_entry_itlb_pbmt_0xxCAWPMqHHbM;
  export "DPI-C" function get_io_write_bits_entry_itlb_pbmt_1xxCAWPMqHHbM;
  export "DPI-C" function set_io_write_bits_entry_itlb_pbmt_1xxCAWPMqHHbM;
  export "DPI-C" function get_io_write_bits_entry_meta_codes_0xxCAWPMqHHbM;
  export "DPI-C" function set_io_write_bits_entry_meta_codes_0xxCAWPMqHHbM;
  export "DPI-C" function get_io_write_bits_entry_meta_codes_1xxCAWPMqHHbM;
  export "DPI-C" function set_io_write_bits_entry_meta_codes_1xxCAWPMqHHbM;
  export "DPI-C" function get_io_write_bits_gpf_gpaddrxxCAWPMqHHbM;
  export "DPI-C" function set_io_write_bits_gpf_gpaddrxxCAWPMqHHbM;
  export "DPI-C" function get_io_write_bits_gpf_isForVSnonLeafPTExxCAWPMqHHbM;
  export "DPI-C" function set_io_write_bits_gpf_isForVSnonLeafPTExxCAWPMqHHbM;
  export "DPI-C" function get_io_update_validxxCAWPMqHHbM;
  export "DPI-C" function set_io_update_validxxCAWPMqHHbM;
  export "DPI-C" function get_io_update_bits_blkPaddrxxCAWPMqHHbM;
  export "DPI-C" function set_io_update_bits_blkPaddrxxCAWPMqHHbM;
  export "DPI-C" function get_io_update_bits_vSetIdxxxCAWPMqHHbM;
  export "DPI-C" function set_io_update_bits_vSetIdxxxCAWPMqHHbM;
  export "DPI-C" function get_io_update_bits_waymaskxxCAWPMqHHbM;
  export "DPI-C" function set_io_update_bits_waymaskxxCAWPMqHHbM;
  export "DPI-C" function get_io_update_bits_corruptxxCAWPMqHHbM;
  export "DPI-C" function set_io_update_bits_corruptxxCAWPMqHHbM;
  export "DPI-C" function get_WayLookup_readPtr_flagxxCAWPMqHHbM;
  export "DPI-C" function get_WayLookup_readPtr_valuexxCAWPMqHHbM;
  export "DPI-C" function get_WayLookup_writePtr_flagxxCAWPMqHHbM;
  export "DPI-C" function get_WayLookup_writePtr_valuexxCAWPMqHHbM;
  export "DPI-C" function get_WayLookup_gpf_entry_validxxCAWPMqHHbM;
  export "DPI-C" function get_WayLookup_gpf_entry_bits_gpaddrxxCAWPMqHHbM;
  export "DPI-C" function get_WayLookup_entries_0_vSetIdx_0xxCAWPMqHHbM;
  export "DPI-C" function get_WayLookup_entries_0_vSetIdx_1xxCAWPMqHHbM;
  export "DPI-C" function get_WayLookup_entries_0_waymask_0xxCAWPMqHHbM;
  export "DPI-C" function get_WayLookup_entries_0_waymask_1xxCAWPMqHHbM;
  export "DPI-C" function get_WayLookup_entries_0_ptag_0xxCAWPMqHHbM;
  export "DPI-C" function get_WayLookup_entries_0_ptag_1xxCAWPMqHHbM;
  export "DPI-C" function get_WayLookup_entries_0_itlb_exception_0xxCAWPMqHHbM;
  export "DPI-C" function get_WayLookup_entries_0_itlb_exception_1xxCAWPMqHHbM;
  export "DPI-C" function get_WayLookup_entries_0_itlb_pbmt_0xxCAWPMqHHbM;
  export "DPI-C" function get_WayLookup_entries_0_itlb_pbmt_1xxCAWPMqHHbM;
  export "DPI-C" function get_WayLookup_entries_0_meta_codes_0xxCAWPMqHHbM;
  export "DPI-C" function get_WayLookup_entries_0_meta_codes_1xxCAWPMqHHbM;
  export "DPI-C" function get_WayLookup_vset_samexxCAWPMqHHbM;
  export "DPI-C" function get_WayLookup_ptag_samexxCAWPMqHHbM;


  function void get_clockxxCAWPMqHHbM;
    output logic  value;
    value=clock;
  endfunction

  function void set_clockxxCAWPMqHHbM;
    input logic  value;
    clock=value;
  endfunction

  function void get_resetxxCAWPMqHHbM;
    output logic  value;
    value=reset;
  endfunction

  function void set_resetxxCAWPMqHHbM;
    input logic  value;
    reset=value;
  endfunction

  function void get_io_flushxxCAWPMqHHbM;
    output logic  value;
    value=io_flush;
  endfunction

  function void set_io_flushxxCAWPMqHHbM;
    input logic  value;
    io_flush=value;
  endfunction

  function void get_io_read_readyxxCAWPMqHHbM;
    output logic  value;
    value=io_read_ready;
  endfunction

  function void set_io_read_readyxxCAWPMqHHbM;
    input logic  value;
    io_read_ready=value;
  endfunction

  function void get_io_read_validxxCAWPMqHHbM;
    output logic  value;
    value=io_read_valid;
  endfunction

  function void get_io_read_bits_entry_vSetIdx_0xxCAWPMqHHbM;
    output logic [7:0] value;
    value=io_read_bits_entry_vSetIdx_0;
  endfunction

  function void get_io_read_bits_entry_vSetIdx_1xxCAWPMqHHbM;
    output logic [7:0] value;
    value=io_read_bits_entry_vSetIdx_1;
  endfunction

  function void get_io_read_bits_entry_waymask_0xxCAWPMqHHbM;
    output logic [3:0] value;
    value=io_read_bits_entry_waymask_0;
  endfunction

  function void get_io_read_bits_entry_waymask_1xxCAWPMqHHbM;
    output logic [3:0] value;
    value=io_read_bits_entry_waymask_1;
  endfunction

  function void get_io_read_bits_entry_ptag_0xxCAWPMqHHbM;
    output logic [35:0] value;
    value=io_read_bits_entry_ptag_0;
  endfunction

  function void get_io_read_bits_entry_ptag_1xxCAWPMqHHbM;
    output logic [35:0] value;
    value=io_read_bits_entry_ptag_1;
  endfunction

  function void get_io_read_bits_entry_itlb_exception_0xxCAWPMqHHbM;
    output logic [1:0] value;
    value=io_read_bits_entry_itlb_exception_0;
  endfunction

  function void get_io_read_bits_entry_itlb_exception_1xxCAWPMqHHbM;
    output logic [1:0] value;
    value=io_read_bits_entry_itlb_exception_1;
  endfunction

  function void get_io_read_bits_entry_itlb_pbmt_0xxCAWPMqHHbM;
    output logic [1:0] value;
    value=io_read_bits_entry_itlb_pbmt_0;
  endfunction

  function void get_io_read_bits_entry_itlb_pbmt_1xxCAWPMqHHbM;
    output logic [1:0] value;
    value=io_read_bits_entry_itlb_pbmt_1;
  endfunction

  function void get_io_read_bits_entry_meta_codes_0xxCAWPMqHHbM;
    output logic  value;
    value=io_read_bits_entry_meta_codes_0;
  endfunction

  function void get_io_read_bits_entry_meta_codes_1xxCAWPMqHHbM;
    output logic  value;
    value=io_read_bits_entry_meta_codes_1;
  endfunction

  function void get_io_read_bits_gpf_gpaddrxxCAWPMqHHbM;
    output logic [55:0] value;
    value=io_read_bits_gpf_gpaddr;
  endfunction

  function void get_io_read_bits_gpf_isForVSnonLeafPTExxCAWPMqHHbM;
    output logic  value;
    value=io_read_bits_gpf_isForVSnonLeafPTE;
  endfunction

  function void get_io_write_readyxxCAWPMqHHbM;
    output logic  value;
    value=io_write_ready;
  endfunction

  function void get_io_write_validxxCAWPMqHHbM;
    output logic  value;
    value=io_write_valid;
  endfunction

  function void set_io_write_validxxCAWPMqHHbM;
    input logic  value;
    io_write_valid=value;
  endfunction

  function void get_io_write_bits_entry_vSetIdx_0xxCAWPMqHHbM;
    output logic [7:0] value;
    value=io_write_bits_entry_vSetIdx_0;
  endfunction

  function void set_io_write_bits_entry_vSetIdx_0xxCAWPMqHHbM;
    input logic [7:0] value;
    io_write_bits_entry_vSetIdx_0=value;
  endfunction

  function void get_io_write_bits_entry_vSetIdx_1xxCAWPMqHHbM;
    output logic [7:0] value;
    value=io_write_bits_entry_vSetIdx_1;
  endfunction

  function void set_io_write_bits_entry_vSetIdx_1xxCAWPMqHHbM;
    input logic [7:0] value;
    io_write_bits_entry_vSetIdx_1=value;
  endfunction

  function void get_io_write_bits_entry_waymask_0xxCAWPMqHHbM;
    output logic [3:0] value;
    value=io_write_bits_entry_waymask_0;
  endfunction

  function void set_io_write_bits_entry_waymask_0xxCAWPMqHHbM;
    input logic [3:0] value;
    io_write_bits_entry_waymask_0=value;
  endfunction

  function void get_io_write_bits_entry_waymask_1xxCAWPMqHHbM;
    output logic [3:0] value;
    value=io_write_bits_entry_waymask_1;
  endfunction

  function void set_io_write_bits_entry_waymask_1xxCAWPMqHHbM;
    input logic [3:0] value;
    io_write_bits_entry_waymask_1=value;
  endfunction

  function void get_io_write_bits_entry_ptag_0xxCAWPMqHHbM;
    output logic [35:0] value;
    value=io_write_bits_entry_ptag_0;
  endfunction

  function void set_io_write_bits_entry_ptag_0xxCAWPMqHHbM;
    input logic [35:0] value;
    io_write_bits_entry_ptag_0=value;
  endfunction

  function void get_io_write_bits_entry_ptag_1xxCAWPMqHHbM;
    output logic [35:0] value;
    value=io_write_bits_entry_ptag_1;
  endfunction

  function void set_io_write_bits_entry_ptag_1xxCAWPMqHHbM;
    input logic [35:0] value;
    io_write_bits_entry_ptag_1=value;
  endfunction

  function void get_io_write_bits_entry_itlb_exception_0xxCAWPMqHHbM;
    output logic [1:0] value;
    value=io_write_bits_entry_itlb_exception_0;
  endfunction

  function void set_io_write_bits_entry_itlb_exception_0xxCAWPMqHHbM;
    input logic [1:0] value;
    io_write_bits_entry_itlb_exception_0=value;
  endfunction

  function void get_io_write_bits_entry_itlb_exception_1xxCAWPMqHHbM;
    output logic [1:0] value;
    value=io_write_bits_entry_itlb_exception_1;
  endfunction

  function void set_io_write_bits_entry_itlb_exception_1xxCAWPMqHHbM;
    input logic [1:0] value;
    io_write_bits_entry_itlb_exception_1=value;
  endfunction

  function void get_io_write_bits_entry_itlb_pbmt_0xxCAWPMqHHbM;
    output logic [1:0] value;
    value=io_write_bits_entry_itlb_pbmt_0;
  endfunction

  function void set_io_write_bits_entry_itlb_pbmt_0xxCAWPMqHHbM;
    input logic [1:0] value;
    io_write_bits_entry_itlb_pbmt_0=value;
  endfunction

  function void get_io_write_bits_entry_itlb_pbmt_1xxCAWPMqHHbM;
    output logic [1:0] value;
    value=io_write_bits_entry_itlb_pbmt_1;
  endfunction

  function void set_io_write_bits_entry_itlb_pbmt_1xxCAWPMqHHbM;
    input logic [1:0] value;
    io_write_bits_entry_itlb_pbmt_1=value;
  endfunction

  function void get_io_write_bits_entry_meta_codes_0xxCAWPMqHHbM;
    output logic  value;
    value=io_write_bits_entry_meta_codes_0;
  endfunction

  function void set_io_write_bits_entry_meta_codes_0xxCAWPMqHHbM;
    input logic  value;
    io_write_bits_entry_meta_codes_0=value;
  endfunction

  function void get_io_write_bits_entry_meta_codes_1xxCAWPMqHHbM;
    output logic  value;
    value=io_write_bits_entry_meta_codes_1;
  endfunction

  function void set_io_write_bits_entry_meta_codes_1xxCAWPMqHHbM;
    input logic  value;
    io_write_bits_entry_meta_codes_1=value;
  endfunction

  function void get_io_write_bits_gpf_gpaddrxxCAWPMqHHbM;
    output logic [55:0] value;
    value=io_write_bits_gpf_gpaddr;
  endfunction

  function void set_io_write_bits_gpf_gpaddrxxCAWPMqHHbM;
    input logic [55:0] value;
    io_write_bits_gpf_gpaddr=value;
  endfunction

  function void get_io_write_bits_gpf_isForVSnonLeafPTExxCAWPMqHHbM;
    output logic  value;
    value=io_write_bits_gpf_isForVSnonLeafPTE;
  endfunction

  function void set_io_write_bits_gpf_isForVSnonLeafPTExxCAWPMqHHbM;
    input logic  value;
    io_write_bits_gpf_isForVSnonLeafPTE=value;
  endfunction

  function void get_io_update_validxxCAWPMqHHbM;
    output logic  value;
    value=io_update_valid;
  endfunction

  function void set_io_update_validxxCAWPMqHHbM;
    input logic  value;
    io_update_valid=value;
  endfunction

  function void get_io_update_bits_blkPaddrxxCAWPMqHHbM;
    output logic [41:0] value;
    value=io_update_bits_blkPaddr;
  endfunction

  function void set_io_update_bits_blkPaddrxxCAWPMqHHbM;
    input logic [41:0] value;
    io_update_bits_blkPaddr=value;
  endfunction

  function void get_io_update_bits_vSetIdxxxCAWPMqHHbM;
    output logic [7:0] value;
    value=io_update_bits_vSetIdx;
  endfunction

  function void set_io_update_bits_vSetIdxxxCAWPMqHHbM;
    input logic [7:0] value;
    io_update_bits_vSetIdx=value;
  endfunction

  function void get_io_update_bits_waymaskxxCAWPMqHHbM;
    output logic [3:0] value;
    value=io_update_bits_waymask;
  endfunction

  function void set_io_update_bits_waymaskxxCAWPMqHHbM;
    input logic [3:0] value;
    io_update_bits_waymask=value;
  endfunction

  function void get_io_update_bits_corruptxxCAWPMqHHbM;
    output logic  value;
    value=io_update_bits_corrupt;
  endfunction

  function void set_io_update_bits_corruptxxCAWPMqHHbM;
    input logic  value;
    io_update_bits_corrupt=value;
  endfunction

  function void get_WayLookup_readPtr_flagxxCAWPMqHHbM;
    output logic  value;
    value=WayLookup.readPtr_flag;
  endfunction

  function void get_WayLookup_readPtr_valuexxCAWPMqHHbM;
    output logic [4:0] value;
    value=WayLookup.readPtr_value;
  endfunction

  function void get_WayLookup_writePtr_flagxxCAWPMqHHbM;
    output logic  value;
    value=WayLookup.writePtr_flag;
  endfunction

  function void get_WayLookup_writePtr_valuexxCAWPMqHHbM;
    output logic [4:0] value;
    value=WayLookup.writePtr_value;
  endfunction

  function void get_WayLookup_gpf_entry_validxxCAWPMqHHbM;
    output logic  value;
    value=WayLookup.gpf_entry_valid;
  endfunction

  function void get_WayLookup_gpf_entry_bits_gpaddrxxCAWPMqHHbM;
    output logic [55:0] value;
    value=WayLookup.gpf_entry_bits_gpaddr;
  endfunction

  function void get_WayLookup_entries_0_vSetIdx_0xxCAWPMqHHbM;
    output logic [7:0] value;
    value=WayLookup.entries_0_vSetIdx_0;
  endfunction

  function void get_WayLookup_entries_0_vSetIdx_1xxCAWPMqHHbM;
    output logic [7:0] value;
    value=WayLookup.entries_0_vSetIdx_1;
  endfunction

  function void get_WayLookup_entries_0_waymask_0xxCAWPMqHHbM;
    output logic [3:0] value;
    value=WayLookup.entries_0_waymask_0;
  endfunction

  function void get_WayLookup_entries_0_waymask_1xxCAWPMqHHbM;
    output logic [3:0] value;
    value=WayLookup.entries_0_waymask_1;
  endfunction

  function void get_WayLookup_entries_0_ptag_0xxCAWPMqHHbM;
    output logic [35:0] value;
    value=WayLookup.entries_0_ptag_0;
  endfunction

  function void get_WayLookup_entries_0_ptag_1xxCAWPMqHHbM;
    output logic [35:0] value;
    value=WayLookup.entries_0_ptag_1;
  endfunction

  function void get_WayLookup_entries_0_itlb_exception_0xxCAWPMqHHbM;
    output logic [1:0] value;
    value=WayLookup.entries_0_itlb_exception_0;
  endfunction

  function void get_WayLookup_entries_0_itlb_exception_1xxCAWPMqHHbM;
    output logic [1:0] value;
    value=WayLookup.entries_0_itlb_exception_1;
  endfunction

  function void get_WayLookup_entries_0_itlb_pbmt_0xxCAWPMqHHbM;
    output logic [1:0] value;
    value=WayLookup.entries_0_itlb_pbmt_0;
  endfunction

  function void get_WayLookup_entries_0_itlb_pbmt_1xxCAWPMqHHbM;
    output logic [1:0] value;
    value=WayLookup.entries_0_itlb_pbmt_1;
  endfunction

  function void get_WayLookup_entries_0_meta_codes_0xxCAWPMqHHbM;
    output logic  value;
    value=WayLookup.entries_0_meta_codes_0;
  endfunction

  function void get_WayLookup_entries_0_meta_codes_1xxCAWPMqHHbM;
    output logic  value;
    value=WayLookup.entries_0_meta_codes_1;
  endfunction

  function void get_WayLookup_vset_samexxCAWPMqHHbM;
    output logic  value;
    value=WayLookup.vset_same;
  endfunction

  function void get_WayLookup_ptag_samexxCAWPMqHHbM;
    output logic  value;
    value=WayLookup.ptag_same;
  endfunction



  initial begin
    $dumpfile("WayLookup.fst");
    $dumpvars(0, WayLookup_top);
  end

  export "DPI-C" function finish_CAWPMqHHbM;
  function void finish_CAWPMqHHbM;
    $finish;
  endfunction


endmodule
