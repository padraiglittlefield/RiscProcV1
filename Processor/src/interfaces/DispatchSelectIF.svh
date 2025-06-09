/*
    Interface between Dispatch and Wakeup
*/
`ifndef DISP_SELECT_IF
`define DISP_SELECT_IF
import CORE_PKG::*;

interface WakeupDispatchIF;

    localparam FU_IDX_WIDTH  = $clog2(NUM_FUS);
    localparam COL_IDX_WIDTH = $clog2(NUM_COLS);
    
    DispUOP disp_uop;
    logic disp_valid;
    logic [$clog2(NUM_FUS)-1:0] payload_ram_index;


    modport Dispatch (
      input _, 
      output disp_uop, payload_ram_index, disp_valid
        
    );

    modport Select (
        input disp_uop, payload_ram_index, disp_valid
        output _,
    );

endinterface
`endif