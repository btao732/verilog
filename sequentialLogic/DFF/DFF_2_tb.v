`timescale 1ns/1ns
`include "DFF_2.v"

module dff_tb;
reg in, en=1, clear=1, clk=0, rst = 0;
wire out;

dff uut(in, en, clear, clk, rst, out);

always begin
    #10;
    clk = ~clk;
end

initial begin

    $dumpfile("DFF_tb_2.vcd");
    $dumpvars(0, dff_tb);

    in = 0; #5;
    in = 1; #25;
    in = 0; #25;
    in = 1; 
    #30;
    en = 0;
    #30;
    en = 1;
    #30;
    rst = 1;
    #35;
    rst = 0;
    #15;
    clear = 0;
    #20;
    clear = 1;

    $display("tests done");
    $finish;
end
endmodule