/*
    Interface between Dispatch and Wakeup
*/
`ifndef SELECT_REG_READ_IF
`define SELECT_REG_READ_IF
import CORE_PKG::*;

interface SelectRegReadIF;

    logic _;
    Sel_uOP sel_uop;

    modport Select (
      input _,
      output sel_uop,
        
    );

    modport RegRead (
        input sel_uop, 
        output _,
    );

endinterface
`endif