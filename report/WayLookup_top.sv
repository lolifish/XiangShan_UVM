	// verilator_coverage annotation
	module WayLookup_top();
	
 10467214	  logic  clock;
 000032	  logic  reset;
 000177	  logic  io_flush;
 681335	  logic  io_read_ready;
 145595	  logic  io_read_valid;
 1654400	  logic [7:0] io_read_bits_entry_vSetIdx_0;
 1653893	  logic [7:0] io_read_bits_entry_vSetIdx_1;
 828143	  logic [3:0] io_read_bits_entry_waymask_0;
 828294	  logic [3:0] io_read_bits_entry_waymask_1;
 7442828	  logic [35:0] io_read_bits_entry_ptag_0;
 7444139	  logic [35:0] io_read_bits_entry_ptag_1;
 215062	  logic [1:0] io_read_bits_entry_itlb_exception_0;
 214618	  logic [1:0] io_read_bits_entry_itlb_exception_1;
 413197	  logic [1:0] io_read_bits_entry_itlb_pbmt_0;
 413090	  logic [1:0] io_read_bits_entry_itlb_pbmt_1;
 207789	  logic  io_read_bits_entry_meta_codes_0;
 207061	  logic  io_read_bits_entry_meta_codes_1;
 772888	  logic [55:0] io_read_bits_gpf_gpaddr;
 078599	  logic  io_read_bits_gpf_isForVSnonLeafPTE;
 025890	  logic  io_write_ready;
 790157	  logic  io_write_valid;
 1580291	  logic [7:0] io_write_bits_entry_vSetIdx_0;
 1580601	  logic [7:0] io_write_bits_entry_vSetIdx_1;
 789639	  logic [3:0] io_write_bits_entry_waymask_0;
 789871	  logic [3:0] io_write_bits_entry_waymask_1;
 7112169	  logic [35:0] io_write_bits_entry_ptag_0;
 7112058	  logic [35:0] io_write_bits_entry_ptag_1;
 205538	  logic [1:0] io_write_bits_entry_itlb_exception_0;
 204965	  logic [1:0] io_write_bits_entry_itlb_exception_1;
 395447	  logic [1:0] io_write_bits_entry_itlb_pbmt_0;
 394338	  logic [1:0] io_write_bits_entry_itlb_pbmt_1;
 198202	  logic  io_write_bits_entry_meta_codes_0;
 197592	  logic  io_write_bits_entry_meta_codes_1;
 1976725	  logic [55:0] io_write_bits_gpf_gpaddr;
 197426	  logic  io_write_bits_gpf_isForVSnonLeafPTE;
 598988	  logic  io_update_valid;
 3912810	  logic [41:0] io_update_bits_blkPaddr;
 1194975	  logic [7:0] io_update_bits_vSetIdx;
 598552	  logic [3:0] io_update_bits_waymask;
 150209	  logic  io_update_bits_corrupt;
	
	
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
	
	
	  export "DPI-C" function get_clockxxCpif9T3XWMe;
	  export "DPI-C" function set_clockxxCpif9T3XWMe;
	  export "DPI-C" function get_resetxxCpif9T3XWMe;
	  export "DPI-C" function set_resetxxCpif9T3XWMe;
	  export "DPI-C" function get_io_flushxxCpif9T3XWMe;
	  export "DPI-C" function set_io_flushxxCpif9T3XWMe;
	  export "DPI-C" function get_io_read_readyxxCpif9T3XWMe;
	  export "DPI-C" function set_io_read_readyxxCpif9T3XWMe;
	  export "DPI-C" function get_io_read_validxxCpif9T3XWMe;
	  export "DPI-C" function get_io_read_bits_entry_vSetIdx_0xxCpif9T3XWMe;
	  export "DPI-C" function get_io_read_bits_entry_vSetIdx_1xxCpif9T3XWMe;
	  export "DPI-C" function get_io_read_bits_entry_waymask_0xxCpif9T3XWMe;
	  export "DPI-C" function get_io_read_bits_entry_waymask_1xxCpif9T3XWMe;
	  export "DPI-C" function get_io_read_bits_entry_ptag_0xxCpif9T3XWMe;
	  export "DPI-C" function get_io_read_bits_entry_ptag_1xxCpif9T3XWMe;
	  export "DPI-C" function get_io_read_bits_entry_itlb_exception_0xxCpif9T3XWMe;
	  export "DPI-C" function get_io_read_bits_entry_itlb_exception_1xxCpif9T3XWMe;
	  export "DPI-C" function get_io_read_bits_entry_itlb_pbmt_0xxCpif9T3XWMe;
	  export "DPI-C" function get_io_read_bits_entry_itlb_pbmt_1xxCpif9T3XWMe;
	  export "DPI-C" function get_io_read_bits_entry_meta_codes_0xxCpif9T3XWMe;
	  export "DPI-C" function get_io_read_bits_entry_meta_codes_1xxCpif9T3XWMe;
	  export "DPI-C" function get_io_read_bits_gpf_gpaddrxxCpif9T3XWMe;
	  export "DPI-C" function get_io_read_bits_gpf_isForVSnonLeafPTExxCpif9T3XWMe;
	  export "DPI-C" function get_io_write_readyxxCpif9T3XWMe;
	  export "DPI-C" function get_io_write_validxxCpif9T3XWMe;
	  export "DPI-C" function set_io_write_validxxCpif9T3XWMe;
	  export "DPI-C" function get_io_write_bits_entry_vSetIdx_0xxCpif9T3XWMe;
	  export "DPI-C" function set_io_write_bits_entry_vSetIdx_0xxCpif9T3XWMe;
	  export "DPI-C" function get_io_write_bits_entry_vSetIdx_1xxCpif9T3XWMe;
	  export "DPI-C" function set_io_write_bits_entry_vSetIdx_1xxCpif9T3XWMe;
	  export "DPI-C" function get_io_write_bits_entry_waymask_0xxCpif9T3XWMe;
	  export "DPI-C" function set_io_write_bits_entry_waymask_0xxCpif9T3XWMe;
	  export "DPI-C" function get_io_write_bits_entry_waymask_1xxCpif9T3XWMe;
	  export "DPI-C" function set_io_write_bits_entry_waymask_1xxCpif9T3XWMe;
	  export "DPI-C" function get_io_write_bits_entry_ptag_0xxCpif9T3XWMe;
	  export "DPI-C" function set_io_write_bits_entry_ptag_0xxCpif9T3XWMe;
	  export "DPI-C" function get_io_write_bits_entry_ptag_1xxCpif9T3XWMe;
	  export "DPI-C" function set_io_write_bits_entry_ptag_1xxCpif9T3XWMe;
	  export "DPI-C" function get_io_write_bits_entry_itlb_exception_0xxCpif9T3XWMe;
	  export "DPI-C" function set_io_write_bits_entry_itlb_exception_0xxCpif9T3XWMe;
	  export "DPI-C" function get_io_write_bits_entry_itlb_exception_1xxCpif9T3XWMe;
	  export "DPI-C" function set_io_write_bits_entry_itlb_exception_1xxCpif9T3XWMe;
	  export "DPI-C" function get_io_write_bits_entry_itlb_pbmt_0xxCpif9T3XWMe;
	  export "DPI-C" function set_io_write_bits_entry_itlb_pbmt_0xxCpif9T3XWMe;
	  export "DPI-C" function get_io_write_bits_entry_itlb_pbmt_1xxCpif9T3XWMe;
	  export "DPI-C" function set_io_write_bits_entry_itlb_pbmt_1xxCpif9T3XWMe;
	  export "DPI-C" function get_io_write_bits_entry_meta_codes_0xxCpif9T3XWMe;
	  export "DPI-C" function set_io_write_bits_entry_meta_codes_0xxCpif9T3XWMe;
	  export "DPI-C" function get_io_write_bits_entry_meta_codes_1xxCpif9T3XWMe;
	  export "DPI-C" function set_io_write_bits_entry_meta_codes_1xxCpif9T3XWMe;
	  export "DPI-C" function get_io_write_bits_gpf_gpaddrxxCpif9T3XWMe;
	  export "DPI-C" function set_io_write_bits_gpf_gpaddrxxCpif9T3XWMe;
	  export "DPI-C" function get_io_write_bits_gpf_isForVSnonLeafPTExxCpif9T3XWMe;
	  export "DPI-C" function set_io_write_bits_gpf_isForVSnonLeafPTExxCpif9T3XWMe;
	  export "DPI-C" function get_io_update_validxxCpif9T3XWMe;
	  export "DPI-C" function set_io_update_validxxCpif9T3XWMe;
	  export "DPI-C" function get_io_update_bits_blkPaddrxxCpif9T3XWMe;
	  export "DPI-C" function set_io_update_bits_blkPaddrxxCpif9T3XWMe;
	  export "DPI-C" function get_io_update_bits_vSetIdxxxCpif9T3XWMe;
	  export "DPI-C" function set_io_update_bits_vSetIdxxxCpif9T3XWMe;
	  export "DPI-C" function get_io_update_bits_waymaskxxCpif9T3XWMe;
	  export "DPI-C" function set_io_update_bits_waymaskxxCpif9T3XWMe;
	  export "DPI-C" function get_io_update_bits_corruptxxCpif9T3XWMe;
	  export "DPI-C" function set_io_update_bits_corruptxxCpif9T3XWMe;
	  export "DPI-C" function get_WayLookup_readPtr_flagxxCpif9T3XWMe;
	  export "DPI-C" function get_WayLookup_readPtr_valuexxCpif9T3XWMe;
	  export "DPI-C" function get_WayLookup_writePtr_flagxxCpif9T3XWMe;
	  export "DPI-C" function get_WayLookup_writePtr_valuexxCpif9T3XWMe;
	  export "DPI-C" function get_WayLookup_gpf_entry_validxxCpif9T3XWMe;
	  export "DPI-C" function get_WayLookup_gpf_entry_bits_gpaddrxxCpif9T3XWMe;
	  export "DPI-C" function get_WayLookup_entries_0_vSetIdx_0xxCpif9T3XWMe;
	  export "DPI-C" function get_WayLookup_entries_0_vSetIdx_1xxCpif9T3XWMe;
	  export "DPI-C" function get_WayLookup_entries_0_waymask_0xxCpif9T3XWMe;
	  export "DPI-C" function get_WayLookup_entries_0_waymask_1xxCpif9T3XWMe;
	  export "DPI-C" function get_WayLookup_entries_0_ptag_0xxCpif9T3XWMe;
	  export "DPI-C" function get_WayLookup_entries_0_ptag_1xxCpif9T3XWMe;
	  export "DPI-C" function get_WayLookup_entries_0_itlb_exception_0xxCpif9T3XWMe;
	  export "DPI-C" function get_WayLookup_entries_0_itlb_exception_1xxCpif9T3XWMe;
	  export "DPI-C" function get_WayLookup_entries_0_itlb_pbmt_0xxCpif9T3XWMe;
	  export "DPI-C" function get_WayLookup_entries_0_itlb_pbmt_1xxCpif9T3XWMe;
	  export "DPI-C" function get_WayLookup_entries_0_meta_codes_0xxCpif9T3XWMe;
	  export "DPI-C" function get_WayLookup_entries_0_meta_codes_1xxCpif9T3XWMe;
	  export "DPI-C" function get_WayLookup_vset_samexxCpif9T3XWMe;
	  export "DPI-C" function get_WayLookup_ptag_samexxCpif9T3XWMe;
	
	
%000000	  function void get_clockxxCpif9T3XWMe;
	    output logic  value;
%000000	    value=clock;
	  endfunction
	
 20934428	  function void set_clockxxCpif9T3XWMe;
	    input logic  value;
 10467214	    clock=value;
	  endfunction
	
%000000	  function void get_resetxxCpif9T3XWMe;
	    output logic  value;
%000000	    value=reset;
	  endfunction
	
 000066	  function void set_resetxxCpif9T3XWMe;
	    input logic  value;
 000033	    reset=value;
	  endfunction
	
%000000	  function void get_io_flushxxCpif9T3XWMe;
	    output logic  value;
%000000	    value=io_flush;
	  endfunction
	
 000352	  function void set_io_flushxxCpif9T3XWMe;
	    input logic  value;
 000176	    io_flush=value;
	  endfunction
	
%000000	  function void get_io_read_readyxxCpif9T3XWMe;
	    output logic  value;
%000000	    value=io_read_ready;
	  endfunction
	
 1362670	  function void set_io_read_readyxxCpif9T3XWMe;
	    input logic  value;
 681335	    io_read_ready=value;
	  endfunction
	
 610654	  function void get_io_read_validxxCpif9T3XWMe;
	    output logic  value;
 305327	    value=io_read_valid;
	  endfunction
	
 681336	  function void get_io_read_bits_entry_vSetIdx_0xxCpif9T3XWMe;
	    output logic [7:0] value;
 340668	    value=io_read_bits_entry_vSetIdx_0;
	  endfunction
	
 681336	  function void get_io_read_bits_entry_vSetIdx_1xxCpif9T3XWMe;
	    output logic [7:0] value;
 340668	    value=io_read_bits_entry_vSetIdx_1;
	  endfunction
	
 681336	  function void get_io_read_bits_entry_waymask_0xxCpif9T3XWMe;
	    output logic [3:0] value;
 340668	    value=io_read_bits_entry_waymask_0;
	  endfunction
	
 681336	  function void get_io_read_bits_entry_waymask_1xxCpif9T3XWMe;
	    output logic [3:0] value;
 340668	    value=io_read_bits_entry_waymask_1;
	  endfunction
	
 681336	  function void get_io_read_bits_entry_ptag_0xxCpif9T3XWMe;
	    output logic [35:0] value;
 340668	    value=io_read_bits_entry_ptag_0;
	  endfunction
	
 681336	  function void get_io_read_bits_entry_ptag_1xxCpif9T3XWMe;
	    output logic [35:0] value;
 340668	    value=io_read_bits_entry_ptag_1;
	  endfunction
	
 1362670	  function void get_io_read_bits_entry_itlb_exception_0xxCpif9T3XWMe;
	    output logic [1:0] value;
 681335	    value=io_read_bits_entry_itlb_exception_0;
	  endfunction
	
 1355836	  function void get_io_read_bits_entry_itlb_exception_1xxCpif9T3XWMe;
	    output logic [1:0] value;
 677918	    value=io_read_bits_entry_itlb_exception_1;
	  endfunction
	
 681336	  function void get_io_read_bits_entry_itlb_pbmt_0xxCpif9T3XWMe;
	    output logic [1:0] value;
 340668	    value=io_read_bits_entry_itlb_pbmt_0;
	  endfunction
	
 681336	  function void get_io_read_bits_entry_itlb_pbmt_1xxCpif9T3XWMe;
	    output logic [1:0] value;
 340668	    value=io_read_bits_entry_itlb_pbmt_1;
	  endfunction
	
 681336	  function void get_io_read_bits_entry_meta_codes_0xxCpif9T3XWMe;
	    output logic  value;
 340668	    value=io_read_bits_entry_meta_codes_0;
	  endfunction
	
 681336	  function void get_io_read_bits_entry_meta_codes_1xxCpif9T3XWMe;
	    output logic  value;
 340668	    value=io_read_bits_entry_meta_codes_1;
	  endfunction
	
 013668	  function void get_io_read_bits_gpf_gpaddrxxCpif9T3XWMe;
	    output logic [55:0] value;
 006834	    value=io_read_bits_gpf_gpaddr;
	  endfunction
	
 013668	  function void get_io_read_bits_gpf_isForVSnonLeafPTExxCpif9T3XWMe;
	    output logic  value;
 006834	    value=io_read_bits_gpf_isForVSnonLeafPTE;
	  endfunction
	
 1148316	  function void get_io_write_readyxxCpif9T3XWMe;
	    output logic  value;
 574158	    value=io_write_ready;
	  endfunction
	
%000000	  function void get_io_write_validxxCpif9T3XWMe;
	    output logic  value;
%000000	    value=io_write_valid;
	  endfunction
	
 1580314	  function void set_io_write_validxxCpif9T3XWMe;
	    input logic  value;
 790157	    io_write_valid=value;
	  endfunction
	
%000000	  function void get_io_write_bits_entry_vSetIdx_0xxCpif9T3XWMe;
	    output logic [7:0] value;
%000000	    value=io_write_bits_entry_vSetIdx_0;
	  endfunction
	
 787124	  function void set_io_write_bits_entry_vSetIdx_0xxCpif9T3XWMe;
	    input logic [7:0] value;
 393562	    io_write_bits_entry_vSetIdx_0=value;
	  endfunction
	
%000000	  function void get_io_write_bits_entry_vSetIdx_1xxCpif9T3XWMe;
	    output logic [7:0] value;
%000000	    value=io_write_bits_entry_vSetIdx_1;
	  endfunction
	
 786990	  function void set_io_write_bits_entry_vSetIdx_1xxCpif9T3XWMe;
	    input logic [7:0] value;
 393495	    io_write_bits_entry_vSetIdx_1=value;
	  endfunction
	
%000000	  function void get_io_write_bits_entry_waymask_0xxCpif9T3XWMe;
	    output logic [3:0] value;
%000000	    value=io_write_bits_entry_waymask_0;
	  endfunction
	
 740384	  function void set_io_write_bits_entry_waymask_0xxCpif9T3XWMe;
	    input logic [3:0] value;
 370192	    io_write_bits_entry_waymask_0=value;
	  endfunction
	
%000000	  function void get_io_write_bits_entry_waymask_1xxCpif9T3XWMe;
	    output logic [3:0] value;
%000000	    value=io_write_bits_entry_waymask_1;
	  endfunction
	
 740600	  function void set_io_write_bits_entry_waymask_1xxCpif9T3XWMe;
	    input logic [3:0] value;
 370300	    io_write_bits_entry_waymask_1=value;
	  endfunction
	
%000000	  function void get_io_write_bits_entry_ptag_0xxCpif9T3XWMe;
	    output logic [35:0] value;
%000000	    value=io_write_bits_entry_ptag_0;
	  endfunction
	
 790158	  function void set_io_write_bits_entry_ptag_0xxCpif9T3XWMe;
	    input logic [35:0] value;
 395079	    io_write_bits_entry_ptag_0=value;
	  endfunction
	
%000000	  function void get_io_write_bits_entry_ptag_1xxCpif9T3XWMe;
	    output logic [35:0] value;
%000000	    value=io_write_bits_entry_ptag_1;
	  endfunction
	
 790158	  function void set_io_write_bits_entry_ptag_1xxCpif9T3XWMe;
	    input logic [35:0] value;
 395079	    io_write_bits_entry_ptag_1=value;
	  endfunction
	
%000000	  function void get_io_write_bits_entry_itlb_exception_0xxCpif9T3XWMe;
	    output logic [1:0] value;
%000000	    value=io_write_bits_entry_itlb_exception_0;
	  endfunction
	
 403378	  function void set_io_write_bits_entry_itlb_exception_0xxCpif9T3XWMe;
	    input logic [1:0] value;
 201689	    io_write_bits_entry_itlb_exception_0=value;
	  endfunction
	
%000000	  function void get_io_write_bits_entry_itlb_exception_1xxCpif9T3XWMe;
	    output logic [1:0] value;
%000000	    value=io_write_bits_entry_itlb_exception_1;
	  endfunction
	
 402196	  function void set_io_write_bits_entry_itlb_exception_1xxCpif9T3XWMe;
	    input logic [1:0] value;
 201098	    io_write_bits_entry_itlb_exception_1=value;
	  endfunction
	
%000000	  function void get_io_write_bits_entry_itlb_pbmt_0xxCpif9T3XWMe;
	    output logic [1:0] value;
%000000	    value=io_write_bits_entry_itlb_pbmt_0;
	  endfunction
	
 593376	  function void set_io_write_bits_entry_itlb_pbmt_0xxCpif9T3XWMe;
	    input logic [1:0] value;
 296688	    io_write_bits_entry_itlb_pbmt_0=value;
	  endfunction
	
%000000	  function void get_io_write_bits_entry_itlb_pbmt_1xxCpif9T3XWMe;
	    output logic [1:0] value;
%000000	    value=io_write_bits_entry_itlb_pbmt_1;
	  endfunction
	
 591730	  function void set_io_write_bits_entry_itlb_pbmt_1xxCpif9T3XWMe;
	    input logic [1:0] value;
 295865	    io_write_bits_entry_itlb_pbmt_1=value;
	  endfunction
	
%000000	  function void get_io_write_bits_entry_meta_codes_0xxCpif9T3XWMe;
	    output logic  value;
%000000	    value=io_write_bits_entry_meta_codes_0;
	  endfunction
	
 396404	  function void set_io_write_bits_entry_meta_codes_0xxCpif9T3XWMe;
	    input logic  value;
 198202	    io_write_bits_entry_meta_codes_0=value;
	  endfunction
	
%000000	  function void get_io_write_bits_entry_meta_codes_1xxCpif9T3XWMe;
	    output logic  value;
%000000	    value=io_write_bits_entry_meta_codes_1;
	  endfunction
	
 395184	  function void set_io_write_bits_entry_meta_codes_1xxCpif9T3XWMe;
	    input logic  value;
 197592	    io_write_bits_entry_meta_codes_1=value;
	  endfunction
	
%000000	  function void get_io_write_bits_gpf_gpaddrxxCpif9T3XWMe;
	    output logic [55:0] value;
%000000	    value=io_write_bits_gpf_gpaddr;
	  endfunction
	
 789384	  function void set_io_write_bits_gpf_gpaddrxxCpif9T3XWMe;
	    input logic [55:0] value;
 394692	    io_write_bits_gpf_gpaddr=value;
	  endfunction
	
%000000	  function void get_io_write_bits_gpf_isForVSnonLeafPTExxCpif9T3XWMe;
	    output logic  value;
%000000	    value=io_write_bits_gpf_isForVSnonLeafPTE;
	  endfunction
	
 394850	  function void set_io_write_bits_gpf_isForVSnonLeafPTExxCpif9T3XWMe;
	    input logic  value;
 197425	    io_write_bits_gpf_isForVSnonLeafPTE=value;
	  endfunction
	
%000000	  function void get_io_update_validxxCpif9T3XWMe;
	    output logic  value;
%000000	    value=io_update_valid;
	  endfunction
	
 1197978	  function void set_io_update_validxxCpif9T3XWMe;
	    input logic  value;
 598989	    io_update_valid=value;
	  endfunction
	
%000000	  function void get_io_update_bits_blkPaddrxxCpif9T3XWMe;
	    output logic [41:0] value;
%000000	    value=io_update_bits_blkPaddr;
	  endfunction
	
 598032	  function void set_io_update_bits_blkPaddrxxCpif9T3XWMe;
	    input logic [41:0] value;
 299016	    io_update_bits_blkPaddr=value;
	  endfunction
	
%000000	  function void get_io_update_bits_vSetIdxxxCpif9T3XWMe;
	    output logic [7:0] value;
%000000	    value=io_update_bits_vSetIdx;
	  endfunction
	
 594996	  function void set_io_update_bits_vSetIdxxxCpif9T3XWMe;
	    input logic [7:0] value;
 297498	    io_update_bits_vSetIdx=value;
	  endfunction
	
%000000	  function void get_io_update_bits_waymaskxxCpif9T3XWMe;
	    output logic [3:0] value;
%000000	    value=io_update_bits_waymask;
	  endfunction
	
 561284	  function void set_io_update_bits_waymaskxxCpif9T3XWMe;
	    input logic [3:0] value;
 280642	    io_update_bits_waymask=value;
	  endfunction
	
%000000	  function void get_io_update_bits_corruptxxCpif9T3XWMe;
	    output logic  value;
%000000	    value=io_update_bits_corrupt;
	  endfunction
	
 300418	  function void set_io_update_bits_corruptxxCpif9T3XWMe;
	    input logic  value;
 150209	    io_update_bits_corrupt=value;
	  endfunction
	
%000002	  function void get_WayLookup_readPtr_flagxxCpif9T3XWMe;
	    output logic  value;
%000001	    value=WayLookup.readPtr_flag;
	  endfunction
	
%000002	  function void get_WayLookup_readPtr_valuexxCpif9T3XWMe;
	    output logic [4:0] value;
%000001	    value=WayLookup.readPtr_value;
	  endfunction
	
%000002	  function void get_WayLookup_writePtr_flagxxCpif9T3XWMe;
	    output logic  value;
%000001	    value=WayLookup.writePtr_flag;
	  endfunction
	
%000002	  function void get_WayLookup_writePtr_valuexxCpif9T3XWMe;
	    output logic [4:0] value;
%000001	    value=WayLookup.writePtr_value;
	  endfunction
	
%000002	  function void get_WayLookup_gpf_entry_validxxCpif9T3XWMe;
	    output logic  value;
%000001	    value=WayLookup.gpf_entry_valid;
	  endfunction
	
%000002	  function void get_WayLookup_gpf_entry_bits_gpaddrxxCpif9T3XWMe;
	    output logic [55:0] value;
%000001	    value=WayLookup.gpf_entry_bits_gpaddr;
	  endfunction
	
%000002	  function void get_WayLookup_entries_0_vSetIdx_0xxCpif9T3XWMe;
	    output logic [7:0] value;
%000001	    value=WayLookup.entries_0_vSetIdx_0;
	  endfunction
	
%000002	  function void get_WayLookup_entries_0_vSetIdx_1xxCpif9T3XWMe;
	    output logic [7:0] value;
%000001	    value=WayLookup.entries_0_vSetIdx_1;
	  endfunction
	
%000002	  function void get_WayLookup_entries_0_waymask_0xxCpif9T3XWMe;
	    output logic [3:0] value;
%000001	    value=WayLookup.entries_0_waymask_0;
	  endfunction
	
%000002	  function void get_WayLookup_entries_0_waymask_1xxCpif9T3XWMe;
	    output logic [3:0] value;
%000001	    value=WayLookup.entries_0_waymask_1;
	  endfunction
	
%000002	  function void get_WayLookup_entries_0_ptag_0xxCpif9T3XWMe;
	    output logic [35:0] value;
%000001	    value=WayLookup.entries_0_ptag_0;
	  endfunction
	
%000002	  function void get_WayLookup_entries_0_ptag_1xxCpif9T3XWMe;
	    output logic [35:0] value;
%000001	    value=WayLookup.entries_0_ptag_1;
	  endfunction
	
%000002	  function void get_WayLookup_entries_0_itlb_exception_0xxCpif9T3XWMe;
	    output logic [1:0] value;
%000001	    value=WayLookup.entries_0_itlb_exception_0;
	  endfunction
	
%000002	  function void get_WayLookup_entries_0_itlb_exception_1xxCpif9T3XWMe;
	    output logic [1:0] value;
%000001	    value=WayLookup.entries_0_itlb_exception_1;
	  endfunction
	
%000002	  function void get_WayLookup_entries_0_itlb_pbmt_0xxCpif9T3XWMe;
	    output logic [1:0] value;
%000001	    value=WayLookup.entries_0_itlb_pbmt_0;
	  endfunction
	
%000002	  function void get_WayLookup_entries_0_itlb_pbmt_1xxCpif9T3XWMe;
	    output logic [1:0] value;
%000001	    value=WayLookup.entries_0_itlb_pbmt_1;
	  endfunction
	
%000002	  function void get_WayLookup_entries_0_meta_codes_0xxCpif9T3XWMe;
	    output logic  value;
%000001	    value=WayLookup.entries_0_meta_codes_0;
	  endfunction
	
%000002	  function void get_WayLookup_entries_0_meta_codes_1xxCpif9T3XWMe;
	    output logic  value;
%000001	    value=WayLookup.entries_0_meta_codes_1;
	  endfunction
	
%000002	  function void get_WayLookup_vset_samexxCpif9T3XWMe;
	    output logic  value;
%000001	    value=WayLookup.vset_same;
	  endfunction
	
%000002	  function void get_WayLookup_ptag_samexxCpif9T3XWMe;
	    output logic  value;
%000001	    value=WayLookup.ptag_same;
	  endfunction
	
	
	
%000002	  initial begin
%000001	    $dumpfile("WayLookup.fst");
%000001	    $dumpvars(0, WayLookup_top);
	  end
	
	  export "DPI-C" function finish_Cpif9T3XWMe;
%000000	  function void finish_Cpif9T3XWMe;
%000000	    $finish;
	  endfunction
	
	
	endmodule
	
