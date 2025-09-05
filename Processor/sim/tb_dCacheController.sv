`timescale 1ns / 1ns
import CORE_PKG::*;
 

module tb_dCacheController;

    // For debugging
    localparam DEBUG = 1;
    localparam ASSERTION = 0;

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
        //read_miss_delayed_repair();
        read_miss_write_acq();
        // read_miss_and_repair();
        // @(posedge clk);
        // @(posedge clk);
        // read_hit();
        // @(posedge clk);
        // write_hit();
        // @(posedge clk);
        // read_hit();
        // @(posedge clk);
        // write_miss();
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
        arbiter_if.read_repair_req_acq = '0;
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
        arbiter_if.read_repair_req_acq = 1'b1;
        if (ASSERTION) begin
            assert(arbiter_if.read_repair_request == 1'b1) else begin
                $error("Controller did not request a miss repair\n");
            end 
            
            assert(arbiter_if.missed_addr == 32'hAABB_CCDD) else begin
                $error("Controller did not send correct missed address\n");
            end
        end

        repaired_block = {
            32'h0000_0000,32'h1111_1111,32'h2222_2222,32'h3333_3333,32'h4444_4444,32'h5555_5555,32'h6666_6666,32'h7777_7777,
            32'h0000_0000,32'h1111_1111,32'h2222_2222,32'h3333_3333,32'h4444_4444,32'h5555_5555,32'h6666_6666,32'h7777_7777,
            32'h0000_0000,32'h1111_1111,32'h2222_2222,32'h3333_3333,32'h4444_4444,32'h5555_5555,32'h6666_6666,32'h7777_7777,
            32'h0000_0000,32'h1111_1111,32'h2222_2222,32'h3333_3333,32'h4444_4444,32'h5555_5555,32'h6666_6666,32'h7777_7777
        };

        arbiter_if.waddr = arbiter_if.missed_addr;
        arbiter_if.wdata = repaired_block;
        arbiter_if.waddr_valid = 1'b1;
        arbiter_if.wmask = '1;

        @(posedge clk);
        

        arbiter_if.read_repair_req_acq = 1'b0;
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
        if (ASSERTION) begin
            assert(arbiter_if.read_repair_request != 1'b1) else begin
                $error("Controller did not request a miss repair\n");
            end
        end

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
        if (ASSERTION) begin
            assert(arbiter_if.write_repair_request != 1'b1) else begin
                $error("Controller request a miss repair for a hit!\n");
            end
        end
        
    end
    endtask



    /* TEST: read_miss_write_acq 
    ==================================
        Description: 
        
            - This test is meant to ensure that if the read request as not been acq by the arbiter, then it will continue to request and remain in a 
            repair state, regardless of the repair resolved signal. This is so if a write repair is being resolved, the read repair will not be falsely resolved 
        
        Expected Outcome:

            - The controller will remain in the repair state and will continue to request a read repair

    */
    task read_miss_write_acq();
    begin
        arbiter_if.raddr_valid = 1'b1;
        arbiter_if.raddr = 32'hAABB_CCDD;
        @(posedge clk);
        init_signals();
        @(posedge clk);
        @(posedge clk);
        arbiter_if.write_repair_req_acq = 1'b1;
        if (ASSERTION) begin
            assert(arbiter_if.read_repair_request == 1'b1) else begin
                $error("Controller did not request a miss repair\n");
            end 
            
            assert(arbiter_if.missed_addr == 32'hAABB_CCDD) else begin
                $error("Controller did not send correct missed address\n");
            end
        end
        for(int i = 0; i <=10; i++) begin
            @(posedge clk);
            arbiter_if.repair_resolved = ~arbiter_if.repair_resolved;
        end
        if (ASSERTION) begin
            assert(arbiter_if.read_repair_request == 1'b1) else begin
                $error("Controller did not request a miss repair\n");
            end 
        end
    end
    endtask

    /* TEST: write_miss_read_acq 
    ==================================
        Description: 
        
            - This test is meant to ensure that if the write request as not been acq by the arbiter, then it will continue to request and remain in a 
            repair state, regardless of the repair resolved signal. This is so if a write repair is being resolved, the write repair will not be falsely resolved 
        
        Expected Outcome:

            - The controller will remain in the repair state and will continue to request a write repair

    */
    task write_miss_read_acq();
    begin
        arbiter_if.waddr_valid = 1'b1;
        arbiter_if.waddr = 32'hAABB_CCDD;
        @(posedge clk);
        init_signals();
        @(posedge clk);
        @(posedge clk);
        arbiter_if.read_repair_req_acq = 1'b1;
        if (ASSERTION) begin
            assert(arbiter_if.write_repair_request == 1'b1) else begin
                $error("Controller did not request a miss repair\n");
            end 
            
            assert(arbiter_if.missed_addr == 32'hAABB_CCDD) else begin
                $error("Controller did not send correct missed address\n");
            end
        end
        for(int i = 0; i <=10; i++) begin            
            arbiter_if.read_repair_req_acq = 1'b1;
            @(posedge clk);
            arbiter_if.repair_resolved = ~arbiter_if.repair_resolved;
        end
        if (ASSERTION) begin
            assert(arbiter_if.write_repair_request == 1'b1) else begin
                $error("Controller did not request a miss repair\n");
            end 
        end
    end
    endtask

    task write_miss_and_repair();
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
        arbiter_if.waddr = 32'h0000_0001;
        arbiter_if.wmask = '1;
        @(posedge clk);
        arbiter_if.waddr_valid = '0;
        arbiter_if.wdata = '0;
        arbiter_if.waddr_valid = '0;
        arbiter_if.waddr = '0;
        arbiter_if.wmask = '0;
        @(posedge clk);
        @(posedge clk);
        if (ASSERTION) begin
            assert(arbiter_if.write_repair_request == 1'b1) else begin
                $error("Controller did not request a miss repair for a miss!\n");
            end
        end
        // repaired_block = {
        //     32'h0000_0000,32'h1111_1111,32'h2222_2222,32'h3333_3333,32'h4444_4444,32'h5555_5555,32'h6666_6666,32'h7777_7777,
        //     32'h0000_0000,32'h1111_1111,32'h2222_2222,32'h3333_3333,32'h4444_4444,32'h5555_5555,32'h6666_6666,32'h7777_7777,
        //     32'h0000_0000,32'h1111_1111,32'h2222_2222,32'h3333_3333,32'h4444_4444,32'h5555_5555,32'h6666_6666,32'h7777_7777,
        //     32'h0000_0000,32'h1111_1111,32'h2222_2222,32'h3333_3333,32'h4444_4444,32'h5555_5555,32'h6666_6666,32'h7777_7777
        // };

        // arbiter_if.waddr = arbiter_if.missed_addr;
        // arbiter_if.wdata = repaired_block;
        // arbiter_if.waddr_valid = 1'b1;
        // arbiter_if.wmask = '1;

        // @(posedge clk);
        

        // arbiter_if.repair_resolved = 1'b1;
        // arbiter_if.waddr_valid = 1'b0;
        // @(posedge clk);
        // init_signals();
        // @(posedge clk);

    end
    endtask


    /* TEST: read_miss_delayed_repair 
    ==================================
        Description:

        - Delay sending the repair data until after 10-cycles have passed to simulate the delay from fetching something from
        the L2 Cache

        Expected Outcome:

        - The controller should stay in the repairing for ~10-cycles before exiting upon receiving "repair_resolved"

    */
    task read_miss_delayed_repair();
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
        
        if (ASSERTION) begin
            assert(arbiter_if.read_repair_request == 1'b1) else begin
                $error("Controller did not request a miss repair\n");
            end 
            
            assert(arbiter_if.missed_addr == 32'hAABB_CCDD) else begin
                $error("Controller did not send correct missed address\n");
            end
        end

        $display("Recieved request at %d",cycle_count);
        for(int i = 0; i <=10; i++) begin
            @(posedge clk);
        end
        $display("Sent repair at %d",cycle_count);

        repaired_block = {
            32'h0000_0000,32'h1111_1111,32'h2222_2222,32'h3333_3333,32'h4444_4444,32'h5555_5555,32'h6666_6666,32'h7777_7777,
            32'h0000_0000,32'h1111_1111,32'h2222_2222,32'h3333_3333,32'h4444_4444,32'h5555_5555,32'h6666_6666,32'h7777_7777,
            32'h0000_0000,32'h1111_1111,32'h2222_2222,32'h3333_3333,32'h4444_4444,32'h5555_5555,32'h6666_6666,32'h7777_7777,
            32'h0000_0000,32'h1111_1111,32'h2222_2222,32'h3333_3333,32'h4444_4444,32'h5555_5555,32'h6666_6666,32'h7777_7777
        };

        arbiter_if.waddr = arbiter_if.missed_addr;
        arbiter_if.wdata = repaired_block;
        arbiter_if.waddr_valid = 1'b1;
        arbiter_if.wmask = '1;

        @(posedge clk);
        

        arbiter_if.repair_resolved = 1'b1;
        arbiter_if.waddr_valid = 1'b0;
        @(posedge clk);
        init_signals();
        @(posedge clk);
    end
    endtask
    
    // What if a consequcutive write and read miss at the same time?

//  assert(pht_tb[3] === RESET_VALUE) else begin
//                 $error("\npht counter %0d violated!\
//                 \n[%3d]\tDEBUG FAILED:\tACTUAL: 2'b%2b\tEXPECTED: 2'b%2b", 3, iteration, pht_tb[3], RESET_VALUE);
//             end

endmodule