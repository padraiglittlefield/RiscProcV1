`include "define.svh"

module RAT(
      
      input clk,
      input rst,

      // read ports
      input logic [($clog2(`NUM_AREGS) * `RENAME_WIDTH):0] areg,         // the areg to be translated
      output logic [($clog2(`NUM_PREGS) * `RENAME_WIDTH):0]  preg_alias,  // the preg alias for that areg
      
      // write ports
      input w_en,
      input logic [($clog2(`NUM_AREGS) * `RENAME_WIDTH):0] dst_areg, 
      input logic [($clog2(`NUM_PREGS) * `RENAME_WIDTH):0] new_alias,

  );

  logic [$clog2(`NUM_PREGS):0] register_alias_table [0:(`NUM_AREGS-1)]; // actual rat
  

  // writing alias to the rat
  integer i;
  always@(posedge clk) begin
    if(rst) begin
      for ( i = 0; i < `NUM_AREGS; i++) begin
        register_alias_table[i[$clog2(`NUM_PREGS)] <= i[$clog2(`NUM_PREGS):0];
      end
    end else if(w_en) begin
      for( i = 1; i < `RENAME_WIDTH; i++) begin
          register_alias_table[dst_areg[(i * `RENAME_WIDTH):((i-1) * `RENAME_WIDTH)]] <= new_alias[(i * `RENAME_WIDTH):((i-1) * `RENAME_WIDTH)]] ; 
      end
    end 
  end
  
  //reading from the RATS.
  // here lies the problem. how can I have a variable number of read ports on
  // the same module. probably a for loop will be fine
  integer j;
  always@(posedge clk) begin
    if (!rst) begin
      for( j = 1; j < `RENAME_WIDTH; j++) begin
          preg_alias[(j * `RENAME_WIDTH):((j-1) * `RENAME_WIDTH)] <= register_alias_table[areg[(j * `RENAME_WIDTH):((j-1) * `RENAME_WIDTH)]]; 

      end
    end
  end


endmodule



