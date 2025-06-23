module mulitplier (
    input  logic clk,
    input  logic signed [31:0] rs1,
    input  logic signed [31:0] rs2,
    output logic [31:0]   lo,    
    output logic [31:0]   hi  
);

    logic signed [31:0] a_reg1, b_reg1;

    logic signed [63:0] prod_stage2;
    logic signed [63:0] prod_stage3;

    // register inputs
    always_ff @(posedge clk) begin
        a_reg1 <= rs1;
        b_reg1 <= rs2;
    end

    // multiply
    always_ff @(posedge clk) begin
        prod_stage2 <= a_reg1 * b_reg1;
    end

    // register result
    always_ff @(posedge clk) begin
        prod_stage3 <= prod_stage2;
    end

    // outputs
    assign lo = prod_stage3[31:0];   
    assign hi = prod_stage3[63:32];  
endmodule
