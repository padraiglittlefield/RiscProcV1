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
logic [$clog2(NUM_AREGS)-1:0] bypassed_dst [0:RENAME_WIDTH-1];
logic [$clog2(NUM_PREGS)-1:0] bypassed_alias [0:RENAME_WIDTH-1];
logic bypass_valid [0:RENAME_WIDTH-1];

logic [$clog2(NUM_PREGS)-1:0] renamed_src1 [0:RENAME_WIDTH-1];
logic [$clog2(NUM_PREGS)-1:0] renamed_src2 [0:RENAME_WIDTH-1];
logic [$clog2(NUM_PREGS)-1:0] renamed_dst_alias [0:RENAME_WIDTH-1];

logic rename_valid [0:RENAME_WIDTH-1];
logic no_free_pregs [0:RENAME_WIDTH-1];


genvar i;
generate
    for (i=0; i<RENAME_WIDTH;i++) begin
        
        assign rename_valid[i] = decode_uop[i].instr_valid & ~no_free_pregs[i];

        // Reading Alias
        
        assign RatIf[i].areg_in[0] = decode_uop[i].src1_reg;
        assign RatIf[i].areg_in[1] = decode_uop[i].src2_reg;
        assign renamed_src1[i] = RatIf[i].preg_alias_out[0];
        assign renamed_src2[i] = RatIf[i].preg_alias_out[1];


        /*  Rename Bypassing */
        
        if(i != 0) begin
            assign dispatch_uop[i].src1_reg = (bypassed_dst[i-1] == decode_uop[i].src1_reg && bypass_valid[i-1])? bypassed_alias[i-1] : renamed_src1[i]; 
            assign dispatch_uop[i].src2_reg = (bypassed_dst[i-1] == decode_uop[i].src2_reg && bypass_valid[i-1])? bypassed_alias[i-1] : renamed_src2[i]; 
        end else begin
            assign dispatch_uop[i].src1_reg = renamed_src1[i]; 
            assign dispatch_uop[i].src2_reg = renamed_src2[i]; 
        end

        assign bypassed_dst[i] = decode_uop[i].dst_reg;
        assign bypassed_val[i] = renamed_dst_alias[i];
        assign bypass_valid[i] = rename_valid[i];
        
        FIFO #(
            .DEPTH(NUM_PREGS/RENAME_WIDTH),
            .DATA_WIDTH($clog2(NUM_PREGS))
        ) FreePregQueue (
            .clk(clk),
            .rst(rst),
            .w_en(),    // todo: connect to ROB
            .r_en(rename_valid[i]),
            .data_in(), // todo: connect to ROB
            .data_out(renamed_dst_alias[i]),
            .full(),
            .empty(no_free_pregs[i])
        );

        
    end
endgenerate


/* Writing new Alias to the RAT*/


// Contains the Free Preg Queue for keeping track of which pregs are in use


/*
    Laterncy Check
*/


endmodule