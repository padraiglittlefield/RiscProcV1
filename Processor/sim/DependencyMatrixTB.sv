`timescale 1ns / 1ns
import CORE_PKG::*;

module DependencyMatrixTB;
    localparam CLK_PERIOD = 20;
    localparam DUTY_CYCLE = 0.5;
    localparam int NUM_ROWS = 8;
    localparam int NUM_COLS = 8;
    /* verilator lint_off UNUSEDSIGNAL */
    logic clk;
    logic rst;
    logic w_en;                       
    logic [$clog2(NUM_ROWS)-1:0] w_row_index;       
    logic [NUM_COLS-1:0] set_lines;                 
    logic [NUM_COLS-1:0] clear_lines;                
    logic free_en;       
    logic [$clog2(NUM_ROWS)-1:0] free_row_index;     
    logic [NUM_ROWS-1:0] ready_vector;   
    logic clear_en;

    DependencyMatrix DUT (
        .clk(clk),
        .rst(rst),
        .w_en(w_en),                       
        .w_row_index(w_row_index),       
        .set_lines(set_lines), 
        .clear_en(clear_en),      
        .clear_lines(clear_lines),                
        .free_en(free_en),       
        .free_row_index(free_row_index),     
        .ready_vector(ready_vector) 
    );
  
integer cycle_count = 0;
    //run the clock forever; flipping back and forth between 1 and 0
initial begin
    forever 
    begin		
        #(CLK_PERIOD*DUTY_CYCLE) clk = 1'b1;
        cycle_count = cycle_count + 1;
        #(CLK_PERIOD*DUTY_CYCLE) clk = 1'b0;
    end
	end

initial begin
    $dumpfile("RAT_tb.vcd");
    $dumpvars(0,RAT_tb);
    @(posedge clk);
    init_signals();
    rst=0;
    @(posedge clk);
    write_entries();
    @(posedge clk);
    free_entry();
    @(posedge clk);
    clear_dependence();
    #50;
    $finish;
end

task init_signals();
  begin
    clk = 0;
    rst = 1;
    w_en = 0;                       
    w_row_index = '0;       
    set_lines = '0;                 
    clear_lines = '0;                
    free_en = '0;       
    free_row_index = '0;     
    clear_en = 0;
  end
endtask

task write_entries();
begin
    w_en = '1;
    w_row_index = 3'b111;
    set_lines = 8'b01000010;
    @(posedge clk);
    w_row_index = 3'b000;
    set_lines = 8'b00000000;
    @(posedge clk);
    w_en = '0;
end
endtask

task free_entry();
begin
    free_en = 1;
    free_row_index = 3'b000;
    @(posedge clk);
    free_en = '0;
end
endtask

task clear_dependence();
begin
    clear_en = 1;
    clear_lines = 8'b01000000;
    @(posedge clk);
    clear_lines = 8'b00000010;
    @(posedge clk);
    clear_en = 0;
end
endtask


endmodule



