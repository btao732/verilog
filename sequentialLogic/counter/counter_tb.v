`timescale 1ns/1ns
`include "counter.v"

module top_tb;
reg clk = 0;
reg start; 
reg stop = 0;
reg rst = 0;
wire [3:0] count;
wire stop_d2;

reg cnt_en;
reg stop_d1;

top uut(rst, start, stop, clk, count, stop_d2);

always begin
    #10;
    clk = ~clk;
end

initial begin
    $dumpfile("counter_tb.vcd");
    $dumpvars(0, top_tb);
    start = 1;
    #25;
    start = 0;
    stop = 1;
    #30;
    start = 1;
    stop = 0;
    rst = 1;
    #30;
    rst = 0;
    #40;
    start = 1;
    #160;
    $display("counter test done");
    $finish;
end
endmodule