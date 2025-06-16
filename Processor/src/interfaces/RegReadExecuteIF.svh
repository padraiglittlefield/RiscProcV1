/*
    Interface between Dispatch and Wakeup
*/
`ifndef SELECT_REG_IF
`define SELECT_REG_IF
import CORE_PKG::*;

interface RegReadExecuteIF;


    Sel_uOP sel_uop;

    modport Execute (
      input _,
      output _,
        
    );

    modport RegRead (
        input _, 
        output _,
    );

endinterface
`endif