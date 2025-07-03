import CORE_PKG::*
module PhysRegisterFile (
    /*
        Physical Register File
            - Holds the PREGS for renaming purposes and such. 8-Read ports means that this
            thing sucks but whatever for now
            - Future iterations will need to creatively address this

    */
    input clk,
    input rst,
    // Read Ports from Reg. Read (8 Ports)
    RegReadPhysRegFileIF.PhysRegFile rr_pipes[NUM_EX_PIPES],
    // Write Ports from Execute
    ExecutePhysRegFileIF.PhysRegFile ex_pipes[NUM_EX_PIPES]
);

logic [31:0] phys_reg_file [NUM_PREGS-1:0];

// Writing to Regfile from Execute
always@(posedge clk) begin
    if(rst) begin
        for(int i = 0; i < NUM_PREGS; i++) begin
            phys_reg_file[i[$clog2(NUM_PREGS)]-1:0] <= '0;
        end
    end else begin
        for(int i = 0; i < NUM_EX_PIPES; i++) begin
            if(ex_pipes[i].ex_valid) begin
                phys_reg_file[ex_pipes[i].ex_dst_index] <= ex_pipes[i].ex_dst_val;
            end
        end
    end
end

genvar i;
generate
    for(i = 0; i < NUM_EX_PIPES; i++) begin
        assign rr_pipes[i].src1_val = phys_reg_file[rr_pipes[i].src1_reg];
        assign rr_pipes[i].src2_val = phys_reg_file[rr_pipes[i].src2_reg]; 
    end
endgenerate

// TODO: Figure out "flushing" mechinism for switching back to a unspeculative state

endmodule