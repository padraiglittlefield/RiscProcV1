`timescale 1ns / 1ns
`include "define.svh"

module register_rename_tb;
  localparam CLK_PERIOD = 20;
  localparam DUTY_CYCLE = 0.5;
    /* verilator lint_off UNUSEDSIGNAL */
    logic clk;
    logic rst;
    logic stall;
    
    // register renaming
    decoded_instr_t decoded_dd;
    logic [($clog2(`NUM_AREGS) * 3)-1:0] areg;      
    logic [($clog2(`NUM_PREGS) * 3)-1:0] preg_alias;
    logic rat_w_en;
    logic [$clog2(`NUM_AREGS)-1:0] dst_areg;
    logic [$clog2(`NUM_PREGS)-1:0] new_alias;
    logic [$clog2(`NUM_PREGS)-1:0] free_preg;
    logic empty;
    logic r_en;
    logic [$clog2(`NUM_AREGS)-1:0] bypassed_dst_i;
    logic [$clog2(`NUM_PREGS)-1:0] bypassed_alias_i;
    logic [$clog2(`NUM_AREGS)-1:0] bypassed_dst_o;
    logic [$clog2(`NUM_PREGS)-1:0] bypassed_alias_o;
    decoded_rr_instr_t decoded_rr;
    logic fpq_w_en;
    logic [6:0] preg_in;
    logic full;
  
  /* verilator lint_on UNUSEDSIGNAL */

  register_rename renamer (
    .clk(clk),
    .rst(rst),
    .stall(stall),
    .decoded_dd(decoded_dd),
    .areg(areg),      
    .preg_alias(preg_alias),
    .w_en(rat_w_en),
    .dst_areg(dst_areg),
    .new_alias(new_alias),
    .free_preg(free_preg), 
    .empty(empty),
    .r_en(r_en),
    .bypassed_dst_i(bypassed_dst_i),
    .bypassed_alias_i(bypassed_alias_i),
    .bypassed_dst_o(bypassed_dst_o),
    .bypassed_alias_o(bypassed_alias_o),
    .decoded_rr(decoded_rr)
  );
  
  RAT rat(
    .clk(clk),
    .rst(rst),
    .areg(areg),
    .preg_alias(preg_alias),
    .w_en(rat_w_en),
    .dst_areg(dst_areg),
    .new_alias(new_alias)
  );

  free_preg_queue fpg(
    .clk(clk),
    .rst(rst),
    .w_en(fpq_w_en),
    .r_en(r_en),
    .preg_in(preg_in),
    .preg_out(free_preg),
    .full(full),
    .empty(empty)
  );

  
  
integer cycle_count = 0;
    //run the clock forever, flipping back and forth between 1 and 0
initial begin
    forever 
    begin		
        #(CLK_PERIOD*DUTY_CYCLE) clk = 1'b1;
        cycle_count = cycle_count + 1;
        #(CLK_PERIOD*DUTY_CYCLE) clk = 1'b0;
    end
	end

initial begin
  $dumpfile("register_rename_tb.vcd");
  $dumpvars(0,register_rename_tb);
  @(posedge clk);
  init_signals();
  @(posedge clk);
  basic_instr();
  #50;
  $finish;
end

task basic_instr();
  begin
    rst = 0;
    stall = 0;
    
    // bs 
    decoded_dd.decoded_op = ADD_I;       
    decoded_dd.instr_type = '0;            
    decoded_dd.instr_type_immediate = '0;  
    decoded_dd.imm_val = '0;
    decoded_dd.is_br = '0;   
    decoded_dd.is_jmp = '0; 
    decoded_dd.rd_mem = '0;  
    decoded_dd.wr_mem = '0;  
    decoded_dd.wr_reg = '0;
    
    // relevant
    decoded_dd.rd = 5'b00001;
    decoded_dd.rs1 = 5'b00010;
    decoded_dd.rs2 = 5'b00011;

    @(posedge clk);
    decoded_dd.rd = 5'b10000;
    decoded_dd.rs1 = 5'b01000;
    decoded_dd.rs2 = 5'b00100;
    @(posedge clk);
    bypassed_dst_i = 5'b01000;;
    bypassed_alias_i = 7'b1111111;
  end
endtask


task init_signals();
  begin
    clk = 0;
    rst = 1;
    stall = 1;

    decoded_dd = '0;
    
  end 
endtask

endmodule



