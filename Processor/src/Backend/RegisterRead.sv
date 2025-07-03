import CORE_PKG::*;
module RegisterRead(
    input clk,
    input rst,
    SelectRegReadIF.RegRead selectIF,
    RegReadExecuteIF.RegRead executeIF,
    RegReadPhysRegFileIF.RegRead regfileIF

);

 src1_mux

wire src1_reg = selectIF.sel_uop.src1_reg;
wire src2_reg = selectIF.sel_uop.src2_reg;

logic [1:0] bypass1_index;
logic [1:0] bypass2_index;

bypass_mux src1_sel;
bypass_mux src2_sel;

// Connect to regfile
regfileIF.src1_reg = src1_reg;
regfileIF.src2_reg = src2_reg;

// Check if any of the srcs match the bypasses dst
always_comb begin : BypassNetwork
    src1_sel = REG_FILE;
    src2_sel = REG_FILE;
    for(int i =0; i < 4; i++) begin
        if(executeIF.execute_valid[i]) begin
            if(executeIF.bypass_dst[i] == src1_reg) begin
                bypass1_index = i[1:0];
                src1_sel = BYPASS;
            end

            if(executeIF.bypass_dst[i] == src2_reg) begin
                bypass2_index = i[1:0];
                src2_sel = BYPASS;
            end
        end
    end
end


// Assign final values to sources (either from regfile or bypassed from execute)
logic [31:0] src1_val;
logic [31:0] src2_val;
always @(*) begin
    case(src1_sel)
      REG_FILE: src1_val = regfileIF.src1_val;
      BYPASS: src1_val = executeIF.bypass_value[bypass1_index];
    endcase
end
always @(*) begin
    case(src2_sel)
      REG_FILE: src2_val = regfileIF.src2_val;
      BYPASS: src2_val = executeIF.bypass_value[bypass2_index];
    endcase
end


// Assign EX_uOP pass through values here
Ex_uOP.src1_val = src1_val;
Ex_uOP.src2_val = src2_val;

endmodule