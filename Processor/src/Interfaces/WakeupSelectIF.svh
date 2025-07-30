/*
    Interface between Dispatch and Wakeup
*/
`ifndef WAKEUP_SELECT_IF
`define WAKEUP_SELECT_IF
import CORE_PKG::*;

interface WakeupSelectIF;

    logic [RS_ENTRIES-1:0] request_vector;
    logic [$clog2(RS_ENTRIES)-1:0] grant_index;
    logic grant_en;

    modport Select (
      input request_vector,
      output grant_index, grant_en
        
    );

    modport Wakeup (
        input grant_index, grant_en
        output request_vectors,
    );

endinterface
`endif