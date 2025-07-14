/*
    Interface between Dispatch and Wakeup
*/
`ifndef DISP_WAKEUP_IF
`define DISP_WAKEUP_IF
import CORE_PKG::*;

interface WakeupDispatchIF;
    localparam RS_IDX_WIDTH = $clog2(RS_ENTRIES)
    localparam FU_IDX_WIDTH  = $clog2(NUM_FUS);
    localparam COL_IDX_WIDTH = $clog2(NUM_COLS);
    
    logic entry_free;       // Whether or not there is room in the entry queue for another instructions
    logic [RS_IDX_WDTH-1:0] entry_index;      // The index of the free entry
    logic dispatch_valid;   // Whether or not dispatch instruction is valid
    logic latency;
    logic src1_dp_en;      // Is src 1 waiting on an instruction to finish
    logic src2_dp_en;      // Is src 2 waiting on an instruction to finish
    logic [(FU_IDX_WIDTH + COL_IDX_WIDTH)-1:0] src1_dp_loc;     // Which srcs are not ready. Entry nums will be read from DLT or will be 0 if dst is ready
    logic [(FU_IDX_WIDTH + COL_IDX_WIDTH)-1:0] src2_dp_loc;     // Which srcs are not ready. Entry nums will be read from DLT


    modport Dispatch (
      input entry_free, entry_index
      output dispatch_valid, latency, src1_dp_loc, src2_dp_loc, src1_dp_en, src2_dp_en
        
    );

    modport Wakeup (
        input dispatch_valid, latency, src1_dp_loc, src2_dp_loc, src1_dp_en, src2_dp_en  
        output entry_free, entry_index
    );

endinterface
`endif