import CORE_PKG::*;

module Rename (
    input clk,
    input rst,
    DecodeRenameIF.Rename DecodeIF[RENAME_WIDTH],
    RenameDispatchIF.Rename DispIF[RENAME_WIDTH],
    RenameROBIF.Rename RobIF[RENAME_WIDTH],
    RenameRATIF.Rename RatIF[RENAME_WIDTH]
);

Decode_uOP decode_uop [RENAME_WIDTH-1:0];   // Input uOp from decode
Disp_uOP dispatch_uop [RENAME_WIDTH-1:0];   // Output uOp

// Bypassed Dst and Alias for connecting renamers to ensure sequential uses will use the correct preg
logic [$clog2(NUM_PREGS)-1:0] bypassed_dst [RENAME_WIDTH-1:0];
logic [$clog2(NUM_PREGS)-1:0] bypassed_alias [RENAME_WIDTH-1:0];

genvar i;
generate
    for (i=0; i<RENAME_WIDTH;i++) begin




    end
endgenerate



// Contains the Free Preg Queue for keeping track of which pregs are in use
FIFO #(
    .DEPTH(NUM_PREGS),
    .DATA_WIDTH($clog2(NUM_PREGS))
) FreePregQueue (
    .clk(clk),
    .rst(rst),
    .w_en(),    // todo: connect to ROB
    .r_en(),
    .data_in(), // todo: connect to ROB
    .data_out(),
    .full(),
    .empty()
);

/*

*/


endmodule