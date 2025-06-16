module PhysicalRegisterFile (
    input clk,
    input rst 
);

/*
    TODO: Need to figure out ROB stuff restoring unspeculative state
*/

logic [31:0] reg_file [NUM_PREGS-1:0];

always@(posedge clk) begin
    if()
end

endmodule