module ShiftRegister #(
    parameter DEPTH = 8
    parameter DATA_LEN = 1
)(
    input clk,
    input rst,
    input shift_en,
    output [DATA_LEN-1:0] data 
);

    reg [DEPTH-1:0] register [DATA_LEN] 
    always @(posedge clk) begin
        
    end

endmodule