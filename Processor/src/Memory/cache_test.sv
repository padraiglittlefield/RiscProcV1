`timescale 1ns / 1ns
`include "core_pkg.svh"
`include "../src/Interfaces/ArbiterControllerIF.svh"
`include "../src/Memory/openram-sram-files/L1-cache/sram_0rw1r1w_19_256_freepdk45.v"
`include "../src/Memory/openram-sram-files/L1-cache/sram_0rw1r1w_1024_256_freepdk45.v"


import CORE_PKG::*;

module cache_test(

    input logic clk,
    input logic [7:0] raddr,
    input logic [7:0] waddr,
    input logic r_en,
    input logic w_en,
    input logic [18:0] din,
    output logic [18:0] dout
);

logic [18:0] dout_o;
logic [18:0] rblock;

assign dout = dout_o;

sram_0rw1r1w_19_256_freepdk45 tag_store0 ( // For checking Read Misses
    .clk0(clk), 
    .csb0(~w_en), // active low chip select
    .addr0(waddr), // Write to tags on block replacement
    .din0(din),
    .clk1(clk), 
    .csb1(~r_en), // active low chip select
    .addr1(raddr),
    .dout1(dout_o)
);

always@(posedge clk) begin
    rblock <= dout_o;
end


endmodule