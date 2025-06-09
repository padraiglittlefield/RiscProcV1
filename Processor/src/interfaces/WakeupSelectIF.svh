/*
    Interface between Dispatch and Wakeup
*/
`ifndef WAKEUP_SELECT_IF
`define WAKEUP_SELECT_IF
import CORE_PKG::*;

interface WakeupSelectIF;

    logic [NUM_ROWS-1:0] request_vector;
    logic [NUM_ROWS-1:0] select_vector;

    modport Select (
      input request_vector,
      output select_vector,
        
    );

    modport Wakeup (
        input select_vector, 
        output request_vectors,
    );

endinterface
`endif