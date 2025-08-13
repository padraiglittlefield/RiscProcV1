`timescale 1ns / 1ns
import CORE_PKG::*;


module tb_cache_test;
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

    logic [7:0] raddr;
    logic [7:0] waddr;
    logic r_en;
    logic w_en;
    logic [18:0] din;
    logic [18:0] dout;

    cache_test DUT (
        .clk(clk),
        .raddr(raddr),
        .waddr(waddr),
        .r_en(r_en),
        .w_en(w_en),
        .din(din),
        .dout(dout)
    );

    initial begin
        $dumpfile("tb_cache_test.vcd");
        $dumpvars(0,tb_cache_test);
        @(posedge clk);
        init_signals();
        @(posedge clk);
        pipeline_write_and_read();
        #50;
        $finish;
    end

    task init_signals();
    begin
        raddr = '0;
        waddr = '0;
        r_en = '0;
        w_en = '0;
        din = '0;
        dout = '0;
    end
    endtask

    task single_write_and_read();
    begin
        din = '1;
        w_en = 1'b1;
        @(posedge clk);
        w_en = 1'b0;
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        r_en = 1'b1;
        @(posedge clk);
        r_en = 1'b0;
    end
    endtask

    task pipeline_write_and_read();
    begin
        w_en = 1'b1;
        waddr = 8'b00000001;
        din = 19'b0000000000000000001;
        @(posedge clk);
        waddr = 8'b00000010;
        din = 19'b0000000000000000010;
        r_en = 1'b1;
        raddr = 8'b00000001;
        @(posedge clk);
        waddr = 8'b00000011;
        din = 19'b0000000000000000011;
        raddr = 8'b00000010;
        @(posedge clk);
        waddr = 8'b00000100;
        din = 19'b0000000000000000100;
        raddr = 8'b00000011;
        @(posedge clk);
        w_en = 0;
        raddr = 8'b00000100;
        @(posedge clk);
        r_en = '0;
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
    end
    endtask

endmodule