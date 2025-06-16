/*
    Interface between Dispatch and Wakeup
*/
`ifndef ROB_EXECUTE_IF
`define ROB_EXECUTE_IF
import CORE_PKG::*;

interface ROBExecuteIF;


    modport ROB (
      input _, 
      output _,
        
    );

    modport Execute (
        input _,
        output _,
    );

endinterface
`endif