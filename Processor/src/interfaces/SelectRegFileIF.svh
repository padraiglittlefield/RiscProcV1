/*
    Interface between Dispatch and Wakeup
*/
`ifndef SELECT_REG_IF
`define SELECT_REG_IF
import CORE_PKG::*;

interface WakeupSelectIF;

    logic _;

    modport Select (
      input _,
      output _,
        
    );

    modport Regfile (
        input _, 
        output _,
    );

endinterface
`endif