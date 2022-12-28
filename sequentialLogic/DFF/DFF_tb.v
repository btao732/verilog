`timescale 1ns/1ns
`include "DFF.v"

module dff_tb;

reg clk = 0, D = 0, rst = 0;
wire Q;

dff uut(clk, rst, D, Q);

//generate the clock
always begin
    clk = ~clk;
    #10;
end

initial begin
    $dumpfile("DFF_tb.vcd");
    $dumpvars(0, dff_tb);

    D = 0;
    #5;
    D = 1;
    #50;
    D = 1;
    rst = 1;
    #10;
    D = 0;
    #15;
    D = 1;
    #30;
   
    $finish; //to make simulator stop
end

endmodule