module ROB #(
    parameter RETIRE_WIDTH = 2
)(
    input clk,
    input rst,

);


// Declare Entry Ready DS

// Retire < Retire Width Instructions Sequentially
logic [2:0] retire_pointer;
always@(posedge clk) begin
    if(rst) begin
        retire_pointer = 2'b00;
    end else begin

    end
end

// Declare 4-FIFOs 

// Conenct FIFO Write to Dispatch 


// Connect Exectue to this 

// Write Results to A-REG




endmodule