module scoreboard #(
    parameter NUM_ENTRIES = 8
  )(
    input clk,
    input rst,
    input [$clog2(NUM_ENTRIES)-1:0] r_index,
    output score,
    input w_en,
    input [$clog2(NUM_ENTRIES)-1:0] w_index,

  );

  logic scoreboard [0:NUM_ENTRIES-1];

  always@(posedge clk) begin
    if (rst) begin
      for(int i = 0; i < NUM_ENTRIES;i++) begin
        score_board[i[$clog2(NUM_ENTRIES)-1:0]] <= 1'b0;
      end
    end else if(w_en) begin
        score_board[w_index] <= ~score_board[w_index];
    end
  end

  assign score = scoreboard[r_index];



endmodule

