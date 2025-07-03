/*
    Interface between Dispatch and Wakeup
*/
`ifndef DISP_SELECT_IF
`define DISP_SELECT_IF
import CORE_PKG::*;

interface DispatchSelectIF;
    
    DispUOP disp_uop;
    logic disp_valid;
    logic [$clog2(NUM_FUS)-1:0] payload_ram_index;


    modport Dispatch (
      output disp_uop, payload_ram_index, disp_valid
        
    );

    modport Select (
        input disp_uop, payload_ram_index, disp_valid
    );

endinterface
`endif