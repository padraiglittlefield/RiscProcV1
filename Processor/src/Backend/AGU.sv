module AGU (
    input logic rst,
    input logic [31:0] src1,
    input logic [31:0] src2,
    input logic agu_en,
    output logic valid,
    output logic [31:0] result
);

assign result = src1 + src2;
assign valid = rst ? 1'b0: agu_en;

endmodule