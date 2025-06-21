module Execute (
    input logic clk,
    input logic rst
);



// Define functtional units
ALU alu1 (
    .clk(clk),
    .rst(rst)
);

ALU alu2 (
    .clk(clk),
    .rst(rst)
);

Multiply mul (
    .clk(clk),
    .rst(rst)

);

AGU agu (
  .clk(clk),
.rst(rst)

);



endmodule

  