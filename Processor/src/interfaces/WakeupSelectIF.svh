/*
    Interface between Dispatch and Wakeup
*/
`ifndef WAKEUP_SELECT_IF
`define WAKEUP_SELECT_IF
import CORE_PKG::*;

interface WakeupSelectIF;

    logic entry_free;

    modport Select (
      input a,
      output entry_free,
        
    );

    modport Wakeup (
        input entry_free, 
        output b,
    );

endinterface
`endif