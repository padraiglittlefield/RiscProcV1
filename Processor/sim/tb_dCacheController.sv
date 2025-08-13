`timescale 1ns / 1ns
import CORE_PKG::*;
 

module tb_dCacheController;

    // Generate the clock
    localparam CLK_PERIOD = 1;
    localparam DUTY_CYCLE = 0.5;

    logic clk;

    integer cycle_count = 0;
    initial begin
        forever begin
            #(CLK_PERIOD*DUTY_CYCLE) clk = 1'b1;
            cycle_count = cycle_count + 1;
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

    initial begin
        $dumpfile("tb_dCacheController.vcd");
        $dumpvars(0,tb_dCacheController);
        rst=1'b1;
        @(posedge clk);
        init_signals();
        @(posedge clk);
        read_miss_and_repair();
        @(posedge clk);
        read_hit();
        @(posedge clk);
        write_hit();
        @(posedge clk);
        read_hit();
        @(posedge clk);
        write_miss();
        #50;
        $finish;
    end


    task init_signals();
    begin
        rst = 1'b0;
        arbiter_if.raddr_valid = '0;
        arbiter_if.raddr = '0;
        arbiter_if.rdata_valid = '0;
        arbiter_if.waddr_valid = '0;
        arbiter_if.waddr = '0;
        arbiter_if.wdata = '0;
        arbiter_if.wmask = '0;
        arbiter_if.repair_resolved = '0;
    end
    endtask

    task read_miss_and_repair();
    begin
        logic [1023:0] repaired_block;
        rst = 1'b0;
        arbiter_if.raddr_valid = 1'b1;
        arbiter_if.raddr = 32'hAABB_CCDD;
        @(posedge clk);
        arbiter_if.raddr_valid = '0;
        arbiter_if.raddr = '0;
        arbiter_if.rdata_valid = '0;
        @(posedge clk);
        @(posedge clk);
        // assert(arbiter_if.read_repair_request == 1'b1) else begin
        //     $error("Controller did not request a miss repair\n");
        // end 
        
        // assert(arbiter_if.missed_addr == 32'hAABB_CCDD) else begin
        //     $error("Controller did not send correct missed address\n");
        // end

        repaired_block = {
            32'h0000_0000,32'h1111_1111,32'h2222_2222,32'h3333_3333,32'h4444_4444,32'h5555_5555,32'h6666_6666,32'h7777_7777,
            32'h0000_0000,32'h1111_1111,32'h2222_2222,32'h3333_3333,32'h4444_4444,32'h5555_5555,32'h6666_6666,32'h7777_7777,
            32'h0000_0000,32'h1111_1111,32'h2222_2222,32'h3333_3333,32'h4444_4444,32'h5555_5555,32'h6666_6666,32'h7777_7777,
            32'h0000_0000,32'h1111_1111,32'h2222_2222,32'h3333_3333,32'h4444_4444,32'h5555_5555,32'h6666_6666,32'h7777_7777
        };

        arbiter_if.wdata = repaired_block;
        arbiter_if.waddr_valid = 1'b1;
        arbiter_if.waddr = arbiter_if.missed_addr;
        arbiter_if.wmask = '1;

        @(posedge clk);

        arbiter_if.repair_resolved = 1'b1;
        arbiter_if.waddr_valid = 1'b0;
        @(posedge clk);
        init_signals();
        @(posedge clk);
    end
    endtask

    task read_hit();
    begin
        logic [1023:0] repaired_block;
        rst = 1'b0;
        arbiter_if.raddr_valid = 1'b1;
        arbiter_if.raddr = 32'hAABB_CCDD;
        @(posedge clk);
        arbiter_if.raddr_valid = '0;
        arbiter_if.raddr = '0;
        arbiter_if.rdata_valid = '0;
        @(posedge clk);
        // assert(arbiter_if.read_repair_request != 1'b1) else begin
        //     $error("Controller did not request a miss repair\n");
        // end

        @(posedge clk);
        init_signals();
        @(posedge clk);
    end
    endtask

    task write_hit();
    begin
        logic [1023:0] new_block;
        new_block = {
            32'h0101_0101,32'h1111_1111,32'h2222_2222,32'h3333_3333,32'h4444_4444,32'h5555_5555,32'h6666_6666,32'h7777_7777,
            32'h0000_0101,32'h1111_1111,32'h2222_2222,32'h3333_3333,32'h4444_4444,32'h5555_5555,32'h6666_6666,32'h7777_7777,
            32'h0000_0000,32'h1111_1111,32'h2222_2222,32'h3333_3333,32'h4444_4444,32'h5555_5555,32'h6666_6666,32'h7777_7777,
            32'h0000_0000,32'h1111_1111,32'h2222_2222,32'h3333_3333,32'h4444_4444,32'h5555_5555,32'h6666_6666,32'h7777_7777
        };

        arbiter_if.wdata = new_block;
        arbiter_if.waddr_valid = 1'b1;
        arbiter_if.waddr = 32'hAABB_CCDD;
        arbiter_if.wmask = '1;
        @(posedge clk);
        init_signals();
        @(posedge clk);
    end
    endtask

    task write_miss();
    begin
        logic [1023:0] new_block;
        new_block = {
            32'h0101_0101,32'h1111_1111,32'h2222_2222,32'h3333_3333,32'h4444_4444,32'h5555_5555,32'h6666_6666,32'h7777_7777,
            32'h0000_0101,32'h1111_1111,32'h2222_2222,32'h3333_3333,32'h4444_4444,32'h5555_5555,32'h6666_6666,32'h7777_7777,
            32'h0000_0000,32'h1111_1111,32'h2222_2222,32'h3333_3333,32'h4444_4444,32'h5555_5555,32'h6666_6666,32'h7777_7777,
            32'h0000_0000,32'h1111_1111,32'h2222_2222,32'h3333_3333,32'h4444_4444,32'h5555_5555,32'h6666_6666,32'h7777_7777
        };

        arbiter_if.wdata = new_block;
        arbiter_if.waddr_valid = 1'b1;
        arbiter_if.waddr = 32'h0000_0000;
        arbiter_if.wmask = '1;
        @(posedge clk);
        arbiter_if.waddr_valid = 1'b0;
        @(posedge clk);
    end
    endtask
//  assert(pht_tb[3] === RESET_VALUE) else begin
//                 $error("\npht counter %0d violated!\
//                 \n[%3d]\tASSERTION FAILED:\tACTUAL: 2'b%2b\tEXPECTED: 2'b%2b", 3, iteration, pht_tb[3], RESET_VALUE);
//             end

endmodule