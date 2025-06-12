module ShiftRegister #(

)(
    input clk,
    input rst,
    input shift_en,
    input w_en,
    input [7:0] latency_in
    output [DATA_LEN-1:0] ready

);

    reg [7:0] shift_reg; 
    
    always @(posedge clk) begin
        if(rst) begin
            shift_reg <= 'x;        
        end else if(w_en) begin
            shift_reg <= latency_in;
        end else if(shift_en) begin
            shift_reg <= shift_reg >> 1;
        end
    end

    assign shift_reg[0];

endmodule