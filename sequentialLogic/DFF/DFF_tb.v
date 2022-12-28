`timescale 1ns/1ns
`include "DFF.v"

module dff_tb;

reg clk = 0, D = 0;
wire Q;

dff uut(clk, D, Q);

//generate the clock
always begin
    clk = ~clk;
    #10;
end

initial begin
    $dumpfile("DFF_tb.vcd");
    $dumpvars(0, dff_tb);

    D = 0;
    #30;
    D = 1;
    #10;
    D = 0;
    #15;
    D = 1;
    #25;
    $finish; //to make simulator stop
end

endmodule