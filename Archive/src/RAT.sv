`include "define.svh"

module RAT(
      
      input clk,
      input rst,

      // read ports
      input logic [($clog2(`NUM_AREGS) * `RENAME_WIDTH * 3)-1:0] areg,         // the areg to be translated
      output logic [($clog2(`NUM_PREGS) * `RENAME_WIDTH * 3)-1:0]  preg_alias,  // the preg alias for that areg
      
      // write ports
      input logic [`RENAME_WIDTH-1:0] w_en,
      input logic [($clog2(`NUM_AREGS) * `RENAME_WIDTH)-1:0] dst_areg, 
      input logic [($clog2(`NUM_PREGS) * `RENAME_WIDTH)-1:0] new_alias

  );

  logic [$clog2(`NUM_PREGS)-1:0] register_alias_table [0:(`NUM_AREGS-1)]; // actual rat
  


  // resets the RAT on flush
  integer i;
  always@(posedge clk) begin
    if(rst) begin
      for ( i = 0; i < `NUM_AREGS; i++) begin
        register_alias_table[i[$clog2(`NUM_AREGS)-1:0]] <= i[$clog2(`NUM_PREGS)-1:0];
      end
    end
  end
  


  // writing alias to the rat
  genvar k;
  generate  
    for(k = 1; k <= `RENAME_WIDTH; k++) begin
      always@(posedge clk) begin
          if(w_en[k-1] && !rst) begin 
            register_alias_table[dst_areg[(k * $clog2(`NUM_AREGS))-1:((k-1) * $clog2(`NUM_AREGS))]] <= new_alias[(k * $clog2(`NUM_PREGS))-1:((k-1) * $clog2(`NUM_PREGS))] ; 
          end
      end
    end 
  endgenerate


  //reading from the RATS. allow for multiple reads for rd, src1, and src2
  genvar j;
  generate
      for( j = 1; j <= `RENAME_WIDTH * 3; j++) begin
        assign preg_alias[(j * $clog2(`NUM_PREGS))-1:((j-1) * $clog2(`NUM_PREGS))] = register_alias_table[areg[(j * $clog2(`NUM_AREGS))-1:((j-1) * $clog2(`NUM_AREGS))]]; 
      end
  endgenerate
  


endmodule



