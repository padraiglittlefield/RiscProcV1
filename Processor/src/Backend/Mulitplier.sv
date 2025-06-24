module Mulitplier (
    input  logic clk,
    input logic rst,
    input logic enable,
    input  logic signed [31:0] rs1,
    input  logic signed [31:0] rs2,
    output logic [31:0]   lo,    
    output logic [31:0]   hi,
    output logic mul_valid
);

    logic signed [31:0] a_reg1, b_reg1;
    logic valid;

    logic signed [63:0] prod_stage2;
    logic valid_stage2;

    logic signed [63:0] prod_stage3;
    logic valid_stage3;

    // register inputs
    always_ff @(posedge clk) begin
        if (rst | ~enable) begin
            a_reg1 <= '0;
            b_reg1 <= '0;
            valid <= '0;
        end else begin
            a_reg1 <= rs1;
            b_reg1 <= rs2;
            valid <= 1'b1;
        end
    end

    // multiply
    always_ff @(posedge clk) begin
        prod_stage2 <= a_reg1 * b_reg1;
        valid_stage2 <= valid;
    end

    // register result
    always_ff @(posedge clk) begin
        prod_stage3 <= prod_stage2;
        valid_stage3 <= valid_stage2;
    end

    // outputs
    assign lo = prod_stage3[31:0];   
    assign hi = prod_stage3[63:32]; 
    assign mul_valid = valid_stage3; 
endmodule
