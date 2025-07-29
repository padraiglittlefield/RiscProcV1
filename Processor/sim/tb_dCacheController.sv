`timescale 1ns / 1ns
`include "core_pkg.svh"
import CORE_PKG::;
class l1_cache_state_t

endclass    

module tb_dCacheController;

    // Generate the clock
    localparam CLK_PERIOD = 1;
    localparam DUTY_CYCLE 0.5;

    logic clk;

    initial begin
    forever begin
        #(CLK_PERIOD*DUTY_CYCLE) clk = 1'b1;
        #(CLK_PERIOD*DUTY_CYCLE) clk = 1'b0;
    end
    end

    // Define signals and DUT

    logic rst;
    ArbiterControllerIF arbiter_if();

    dCacheController controller_dut (
        .clk(clk),
        .rst(rst),
        .arbiter(arbiter_if.Controller)
    );


//  assert(pht_tb[3] === RESET_VALUE) else begin
//                 $error("\npht counter %0d violated!\
//                 \n[%3d]\tASSERTION FAILED:\tACTUAL: 2'b%2b\tEXPECTED: 2'b%2b", 3, iteration, pht_tb[3], RESET_VALUE);
//             end

endmodule