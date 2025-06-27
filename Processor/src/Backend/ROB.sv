module ROB #(
    parameter RETIRE_WIDTH = 2
)(
    input clk,
    input rst,

);


// Declare Entry Ready DS

// Retire < Retire Width Instructions Sequentially

// Declare 4-FIFOs 

genvar i;
generate 
for (i = 0; i < 4; i++) begin
    FIFO #(
        .DEPTH(NUM_ROB_ENTS/4)
    ) ROB_Queue (
        .clk(clk),
        .rst(rst),
        .w_en(),
        .r_en(),
        .data_in()
        .data_out(),
        .full(),
        .empty()
    );
end
endgenerate

// Conenct FIFO Write to Dispatch 


// Connect Exectue to this 

// Write Results to A-REG




endmodule