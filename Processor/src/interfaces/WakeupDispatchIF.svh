/*
    Interface between Dispatch and Wakeup
*/
`ifndef DISP_WAKEUP_IF
`define DISP_WAKEUP_IF
import CORE_PKG::*;

interface WakeupDispatchIF;

    logic entry_free;

    modport Dispatch (
      input a,
      output entry_free,
        
    );

    modport Wakeup (
        input entry_free, 
        output b,
    );

endinterface
`endif