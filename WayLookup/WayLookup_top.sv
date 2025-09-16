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


  export "DPI-C" function get_clockxxK88npgmY8xS;
  export "DPI-C" function set_clockxxK88npgmY8xS;
  export "DPI-C" function get_resetxxK88npgmY8xS;
  export "DPI-C" function set_resetxxK88npgmY8xS;
  export "DPI-C" function get_io_flushxxK88npgmY8xS;
  export "DPI-C" function set_io_flushxxK88npgmY8xS;
  export "DPI-C" function get_io_read_readyxxK88npgmY8xS;
  export "DPI-C" function set_io_read_readyxxK88npgmY8xS;
  export "DPI-C" function get_io_read_validxxK88npgmY8xS;
  export "DPI-C" function get_io_read_bits_entry_vSetIdx_0xxK88npgmY8xS;
  export "DPI-C" function get_io_read_bits_entry_vSetIdx_1xxK88npgmY8xS;
  export "DPI-C" function get_io_read_bits_entry_waymask_0xxK88npgmY8xS;
  export "DPI-C" function get_io_read_bits_entry_waymask_1xxK88npgmY8xS;
  export "DPI-C" function get_io_read_bits_entry_ptag_0xxK88npgmY8xS;
  export "DPI-C" function get_io_read_bits_entry_ptag_1xxK88npgmY8xS;
  export "DPI-C" function get_io_read_bits_entry_itlb_exception_0xxK88npgmY8xS;
  export "DPI-C" function get_io_read_bits_entry_itlb_exception_1xxK88npgmY8xS;
  export "DPI-C" function get_io_read_bits_entry_itlb_pbmt_0xxK88npgmY8xS;
  export "DPI-C" function get_io_read_bits_entry_itlb_pbmt_1xxK88npgmY8xS;
  export "DPI-C" function get_io_read_bits_entry_meta_codes_0xxK88npgmY8xS;
  export "DPI-C" function get_io_read_bits_entry_meta_codes_1xxK88npgmY8xS;
  export "DPI-C" function get_io_read_bits_gpf_gpaddrxxK88npgmY8xS;
  export "DPI-C" function get_io_read_bits_gpf_isForVSnonLeafPTExxK88npgmY8xS;
  export "DPI-C" function get_io_write_readyxxK88npgmY8xS;
  export "DPI-C" function get_io_write_validxxK88npgmY8xS;
  export "DPI-C" function set_io_write_validxxK88npgmY8xS;
  export "DPI-C" function get_io_write_bits_entry_vSetIdx_0xxK88npgmY8xS;
  export "DPI-C" function set_io_write_bits_entry_vSetIdx_0xxK88npgmY8xS;
  export "DPI-C" function get_io_write_bits_entry_vSetIdx_1xxK88npgmY8xS;
  export "DPI-C" function set_io_write_bits_entry_vSetIdx_1xxK88npgmY8xS;
  export "DPI-C" function get_io_write_bits_entry_waymask_0xxK88npgmY8xS;
  export "DPI-C" function set_io_write_bits_entry_waymask_0xxK88npgmY8xS;
  export "DPI-C" function get_io_write_bits_entry_waymask_1xxK88npgmY8xS;
  export "DPI-C" function set_io_write_bits_entry_waymask_1xxK88npgmY8xS;
  export "DPI-C" function get_io_write_bits_entry_ptag_0xxK88npgmY8xS;
  export "DPI-C" function set_io_write_bits_entry_ptag_0xxK88npgmY8xS;
  export "DPI-C" function get_io_write_bits_entry_ptag_1xxK88npgmY8xS;
  export "DPI-C" function set_io_write_bits_entry_ptag_1xxK88npgmY8xS;
  export "DPI-C" function get_io_write_bits_entry_itlb_exception_0xxK88npgmY8xS;
  export "DPI-C" function set_io_write_bits_entry_itlb_exception_0xxK88npgmY8xS;
  export "DPI-C" function get_io_write_bits_entry_itlb_exception_1xxK88npgmY8xS;
  export "DPI-C" function set_io_write_bits_entry_itlb_exception_1xxK88npgmY8xS;
  export "DPI-C" function get_io_write_bits_entry_itlb_pbmt_0xxK88npgmY8xS;
  export "DPI-C" function set_io_write_bits_entry_itlb_pbmt_0xxK88npgmY8xS;
  export "DPI-C" function get_io_write_bits_entry_itlb_pbmt_1xxK88npgmY8xS;
  export "DPI-C" function set_io_write_bits_entry_itlb_pbmt_1xxK88npgmY8xS;
  export "DPI-C" function get_io_write_bits_entry_meta_codes_0xxK88npgmY8xS;
  export "DPI-C" function set_io_write_bits_entry_meta_codes_0xxK88npgmY8xS;
  export "DPI-C" function get_io_write_bits_entry_meta_codes_1xxK88npgmY8xS;
  export "DPI-C" function set_io_write_bits_entry_meta_codes_1xxK88npgmY8xS;
  export "DPI-C" function get_io_write_bits_gpf_gpaddrxxK88npgmY8xS;
  export "DPI-C" function set_io_write_bits_gpf_gpaddrxxK88npgmY8xS;
  export "DPI-C" function get_io_write_bits_gpf_isForVSnonLeafPTExxK88npgmY8xS;
  export "DPI-C" function set_io_write_bits_gpf_isForVSnonLeafPTExxK88npgmY8xS;
  export "DPI-C" function get_io_update_validxxK88npgmY8xS;
  export "DPI-C" function set_io_update_validxxK88npgmY8xS;
  export "DPI-C" function get_io_update_bits_blkPaddrxxK88npgmY8xS;
  export "DPI-C" function set_io_update_bits_blkPaddrxxK88npgmY8xS;
  export "DPI-C" function get_io_update_bits_vSetIdxxxK88npgmY8xS;
  export "DPI-C" function set_io_update_bits_vSetIdxxxK88npgmY8xS;
  export "DPI-C" function get_io_update_bits_waymaskxxK88npgmY8xS;
  export "DPI-C" function set_io_update_bits_waymaskxxK88npgmY8xS;
  export "DPI-C" function get_io_update_bits_corruptxxK88npgmY8xS;
  export "DPI-C" function set_io_update_bits_corruptxxK88npgmY8xS;
  export "DPI-C" function get_WayLookup_readPtr_flagxxK88npgmY8xS;
  export "DPI-C" function get_WayLookup_readPtr_valuexxK88npgmY8xS;
  export "DPI-C" function get_WayLookup_writePtr_flagxxK88npgmY8xS;
  export "DPI-C" function get_WayLookup_writePtr_valuexxK88npgmY8xS;
  export "DPI-C" function get_WayLookup_io_write_ready_0xxK88npgmY8xS;
  export "DPI-C" function get_WayLookup_entries_30_waymask_0xxK88npgmY8xS;


  function void get_clockxxK88npgmY8xS;
    output logic  value;
    value=clock;
  endfunction

  function void set_clockxxK88npgmY8xS;
    input logic  value;
    clock=value;
  endfunction

  function void get_resetxxK88npgmY8xS;
    output logic  value;
    value=reset;
  endfunction

  function void set_resetxxK88npgmY8xS;
    input logic  value;
    reset=value;
  endfunction

  function void get_io_flushxxK88npgmY8xS;
    output logic  value;
    value=io_flush;
  endfunction

  function void set_io_flushxxK88npgmY8xS;
    input logic  value;
    io_flush=value;
  endfunction

  function void get_io_read_readyxxK88npgmY8xS;
    output logic  value;
    value=io_read_ready;
  endfunction

  function void set_io_read_readyxxK88npgmY8xS;
    input logic  value;
    io_read_ready=value;
  endfunction

  function void get_io_read_validxxK88npgmY8xS;
    output logic  value;
    value=io_read_valid;
  endfunction

  function void get_io_read_bits_entry_vSetIdx_0xxK88npgmY8xS;
    output logic [7:0] value;
    value=io_read_bits_entry_vSetIdx_0;
  endfunction

  function void get_io_read_bits_entry_vSetIdx_1xxK88npgmY8xS;
    output logic [7:0] value;
    value=io_read_bits_entry_vSetIdx_1;
  endfunction

  function void get_io_read_bits_entry_waymask_0xxK88npgmY8xS;
    output logic [3:0] value;
    value=io_read_bits_entry_waymask_0;
  endfunction

  function void get_io_read_bits_entry_waymask_1xxK88npgmY8xS;
    output logic [3:0] value;
    value=io_read_bits_entry_waymask_1;
  endfunction

  function void get_io_read_bits_entry_ptag_0xxK88npgmY8xS;
    output logic [35:0] value;
    value=io_read_bits_entry_ptag_0;
  endfunction

  function void get_io_read_bits_entry_ptag_1xxK88npgmY8xS;
    output logic [35:0] value;
    value=io_read_bits_entry_ptag_1;
  endfunction

  function void get_io_read_bits_entry_itlb_exception_0xxK88npgmY8xS;
    output logic [1:0] value;
    value=io_read_bits_entry_itlb_exception_0;
  endfunction

  function void get_io_read_bits_entry_itlb_exception_1xxK88npgmY8xS;
    output logic [1:0] value;
    value=io_read_bits_entry_itlb_exception_1;
  endfunction

  function void get_io_read_bits_entry_itlb_pbmt_0xxK88npgmY8xS;
    output logic [1:0] value;
    value=io_read_bits_entry_itlb_pbmt_0;
  endfunction

  function void get_io_read_bits_entry_itlb_pbmt_1xxK88npgmY8xS;
    output logic [1:0] value;
    value=io_read_bits_entry_itlb_pbmt_1;
  endfunction

  function void get_io_read_bits_entry_meta_codes_0xxK88npgmY8xS;
    output logic  value;
    value=io_read_bits_entry_meta_codes_0;
  endfunction

  function void get_io_read_bits_entry_meta_codes_1xxK88npgmY8xS;
    output logic  value;
    value=io_read_bits_entry_meta_codes_1;
  endfunction

  function void get_io_read_bits_gpf_gpaddrxxK88npgmY8xS;
    output logic [55:0] value;
    value=io_read_bits_gpf_gpaddr;
  endfunction

  function void get_io_read_bits_gpf_isForVSnonLeafPTExxK88npgmY8xS;
    output logic  value;
    value=io_read_bits_gpf_isForVSnonLeafPTE;
  endfunction

  function void get_io_write_readyxxK88npgmY8xS;
    output logic  value;
    value=io_write_ready;
  endfunction

  function void get_io_write_validxxK88npgmY8xS;
    output logic  value;
    value=io_write_valid;
  endfunction

  function void set_io_write_validxxK88npgmY8xS;
    input logic  value;
    io_write_valid=value;
  endfunction

  function void get_io_write_bits_entry_vSetIdx_0xxK88npgmY8xS;
    output logic [7:0] value;
    value=io_write_bits_entry_vSetIdx_0;
  endfunction

  function void set_io_write_bits_entry_vSetIdx_0xxK88npgmY8xS;
    input logic [7:0] value;
    io_write_bits_entry_vSetIdx_0=value;
  endfunction

  function void get_io_write_bits_entry_vSetIdx_1xxK88npgmY8xS;
    output logic [7:0] value;
    value=io_write_bits_entry_vSetIdx_1;
  endfunction

  function void set_io_write_bits_entry_vSetIdx_1xxK88npgmY8xS;
    input logic [7:0] value;
    io_write_bits_entry_vSetIdx_1=value;
  endfunction

  function void get_io_write_bits_entry_waymask_0xxK88npgmY8xS;
    output logic [3:0] value;
    value=io_write_bits_entry_waymask_0;
  endfunction

  function void set_io_write_bits_entry_waymask_0xxK88npgmY8xS;
    input logic [3:0] value;
    io_write_bits_entry_waymask_0=value;
  endfunction

  function void get_io_write_bits_entry_waymask_1xxK88npgmY8xS;
    output logic [3:0] value;
    value=io_write_bits_entry_waymask_1;
  endfunction

  function void set_io_write_bits_entry_waymask_1xxK88npgmY8xS;
    input logic [3:0] value;
    io_write_bits_entry_waymask_1=value;
  endfunction

  function void get_io_write_bits_entry_ptag_0xxK88npgmY8xS;
    output logic [35:0] value;
    value=io_write_bits_entry_ptag_0;
  endfunction

  function void set_io_write_bits_entry_ptag_0xxK88npgmY8xS;
    input logic [35:0] value;
    io_write_bits_entry_ptag_0=value;
  endfunction

  function void get_io_write_bits_entry_ptag_1xxK88npgmY8xS;
    output logic [35:0] value;
    value=io_write_bits_entry_ptag_1;
  endfunction

  function void set_io_write_bits_entry_ptag_1xxK88npgmY8xS;
    input logic [35:0] value;
    io_write_bits_entry_ptag_1=value;
  endfunction

  function void get_io_write_bits_entry_itlb_exception_0xxK88npgmY8xS;
    output logic [1:0] value;
    value=io_write_bits_entry_itlb_exception_0;
  endfunction

  function void set_io_write_bits_entry_itlb_exception_0xxK88npgmY8xS;
    input logic [1:0] value;
    io_write_bits_entry_itlb_exception_0=value;
  endfunction

  function void get_io_write_bits_entry_itlb_exception_1xxK88npgmY8xS;
    output logic [1:0] value;
    value=io_write_bits_entry_itlb_exception_1;
  endfunction

  function void set_io_write_bits_entry_itlb_exception_1xxK88npgmY8xS;
    input logic [1:0] value;
    io_write_bits_entry_itlb_exception_1=value;
  endfunction

  function void get_io_write_bits_entry_itlb_pbmt_0xxK88npgmY8xS;
    output logic [1:0] value;
    value=io_write_bits_entry_itlb_pbmt_0;
  endfunction

  function void set_io_write_bits_entry_itlb_pbmt_0xxK88npgmY8xS;
    input logic [1:0] value;
    io_write_bits_entry_itlb_pbmt_0=value;
  endfunction

  function void get_io_write_bits_entry_itlb_pbmt_1xxK88npgmY8xS;
    output logic [1:0] value;
    value=io_write_bits_entry_itlb_pbmt_1;
  endfunction

  function void set_io_write_bits_entry_itlb_pbmt_1xxK88npgmY8xS;
    input logic [1:0] value;
    io_write_bits_entry_itlb_pbmt_1=value;
  endfunction

  function void get_io_write_bits_entry_meta_codes_0xxK88npgmY8xS;
    output logic  value;
    value=io_write_bits_entry_meta_codes_0;
  endfunction

  function void set_io_write_bits_entry_meta_codes_0xxK88npgmY8xS;
    input logic  value;
    io_write_bits_entry_meta_codes_0=value;
  endfunction

  function void get_io_write_bits_entry_meta_codes_1xxK88npgmY8xS;
    output logic  value;
    value=io_write_bits_entry_meta_codes_1;
  endfunction

  function void set_io_write_bits_entry_meta_codes_1xxK88npgmY8xS;
    input logic  value;
    io_write_bits_entry_meta_codes_1=value;
  endfunction

  function void get_io_write_bits_gpf_gpaddrxxK88npgmY8xS;
    output logic [55:0] value;
    value=io_write_bits_gpf_gpaddr;
  endfunction

  function void set_io_write_bits_gpf_gpaddrxxK88npgmY8xS;
    input logic [55:0] value;
    io_write_bits_gpf_gpaddr=value;
  endfunction

  function void get_io_write_bits_gpf_isForVSnonLeafPTExxK88npgmY8xS;
    output logic  value;
    value=io_write_bits_gpf_isForVSnonLeafPTE;
  endfunction

  function void set_io_write_bits_gpf_isForVSnonLeafPTExxK88npgmY8xS;
    input logic  value;
    io_write_bits_gpf_isForVSnonLeafPTE=value;
  endfunction

  function void get_io_update_validxxK88npgmY8xS;
    output logic  value;
    value=io_update_valid;
  endfunction

  function void set_io_update_validxxK88npgmY8xS;
    input logic  value;
    io_update_valid=value;
  endfunction

  function void get_io_update_bits_blkPaddrxxK88npgmY8xS;
    output logic [41:0] value;
    value=io_update_bits_blkPaddr;
  endfunction

  function void set_io_update_bits_blkPaddrxxK88npgmY8xS;
    input logic [41:0] value;
    io_update_bits_blkPaddr=value;
  endfunction

  function void get_io_update_bits_vSetIdxxxK88npgmY8xS;
    output logic [7:0] value;
    value=io_update_bits_vSetIdx;
  endfunction

  function void set_io_update_bits_vSetIdxxxK88npgmY8xS;
    input logic [7:0] value;
    io_update_bits_vSetIdx=value;
  endfunction

  function void get_io_update_bits_waymaskxxK88npgmY8xS;
    output logic [3:0] value;
    value=io_update_bits_waymask;
  endfunction

  function void set_io_update_bits_waymaskxxK88npgmY8xS;
    input logic [3:0] value;
    io_update_bits_waymask=value;
  endfunction

  function void get_io_update_bits_corruptxxK88npgmY8xS;
    output logic  value;
    value=io_update_bits_corrupt;
  endfunction

  function void set_io_update_bits_corruptxxK88npgmY8xS;
    input logic  value;
    io_update_bits_corrupt=value;
  endfunction

  function void get_WayLookup_readPtr_flagxxK88npgmY8xS;
    output logic  value;
    value=WayLookup.readPtr_flag;
  endfunction

  function void get_WayLookup_readPtr_valuexxK88npgmY8xS;
    output logic  value;
    value=WayLookup.readPtr_value;
  endfunction

  function void get_WayLookup_writePtr_flagxxK88npgmY8xS;
    output logic  value;
    value=WayLookup.writePtr_flag;
  endfunction

  function void get_WayLookup_writePtr_valuexxK88npgmY8xS;
    output logic  value;
    value=WayLookup.writePtr_value;
  endfunction

  function void get_WayLookup_io_write_ready_0xxK88npgmY8xS;
    output logic  value;
    value=WayLookup.io_write_ready_0;
  endfunction

  function void get_WayLookup_entries_30_waymask_0xxK88npgmY8xS;
    output logic  value;
    value=WayLookup.entries_30_waymask_0;
  endfunction



  initial begin
    $dumpfile("WayLookup.fst");
    $dumpvars(0, WayLookup_top);
  end

  export "DPI-C" function finish_K88npgmY8xS;
  function void finish_K88npgmY8xS;
    $finish;
  endfunction


endmodule
