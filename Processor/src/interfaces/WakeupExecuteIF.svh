/*
    Interface between Dispatch and Wakeup
*/
`ifndef WAKEUP_EXECUTE_IF
`define WAKEUP_EXECUTE_IF
import CORE_PKG::*;

interface WakeupExecuteIF;
    /*
        - Primarily handles the freeing of entries in the Reservation Stations
        on the completion of an instruction

    */

    logic free_en;
    logic [$clog2(RS_ENTRIES)-1:0] free_index;

    modport Wakeup (
      input free_en, free_index
        
    );

    modport Execute (
        output  free_en, free_index
    );

endinterface
`endif