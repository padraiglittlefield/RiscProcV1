module ExecuteALU (
    input logic clk,
    input logic rst
);


ALU alu (
    .clk(clk),
    .rst(rst)
);


endmodule

  