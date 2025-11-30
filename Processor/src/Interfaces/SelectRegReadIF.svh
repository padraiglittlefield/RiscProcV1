/*
    Interface between Select and RegRead
*/
`ifndef SELECT_REG_READ_IF
`define SELECT_REG_READ_IF
import CORE_PKG::*;

interface SelectRegReadIF;

    Sel_uOP sel_uop;

    modport Select (
      output sel_uop
        
    );

    modport RegRead (
        input sel_uopReg
    );

endinterface
`endif