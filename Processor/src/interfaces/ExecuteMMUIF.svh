/*
    Interface between Execute and Memory Management Unit
*/
`ifndef EXECUTE_MMU_IF
`define EXECUTE_MMU_IF
import CORE_PKG::*;

interface ExecuteMMUIF;



    modport Execute (
        input _,
        output _,
    );

    modport MMU (
      input _, 
      output _,
    );

endinterface
`endif