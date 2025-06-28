/*
    Interface between Dispatch and ROB
*/
`ifndef DISP_ROB_IF
`define DISP_ROB_IF
import CORE_PKG::*;

interface DispatchROBIF;


    modport Dispatch (
      input _, 
      output _,
        
    );

    modport ROB (
        input _,
        output _,
    );

endinterface
`endif