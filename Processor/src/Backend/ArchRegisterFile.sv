import CORE_PKG::*
module ArchRegisterFile (
    /*
        Architectural Register File
            - Holds the A-Regs, or program-view regsiter. 4-Read ports means that this

    */
    input clk,
    input rst,
    ROBPhysRegFileIF.ROB rob[RETIRE_WIDTH]
);

logic [31:0] arch_reg_file [NUM_AREGS-1:0];

// Writing to Regfile from ROB
always@(posedge clk) begin
    if(rst) begin
        for(int i = 0; i < NUM_AREGS; i++) begin
            arch_reg_file[i[$clog2(NUM_AREGS)]-1:0] <= '0;
        end
    end else begin
        for(int i = 0; i < RETIRE_WIDTH ; i++) begin
            if(rob[i].rob_valid) begin
                arch_reg_file[rob[i].rob_dst_index] <= rob[i].rob_dst_val;
            end
        end
    end
end

// TODO: Figure out "flushing" mechinism for switching back to a unspeculative state

endmodule