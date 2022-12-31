`timescale 1ns/1ns
`include "multiply.v"

module top_tb;
reg [7:0] d;
reg clk = 0; 
reg rst = 0;
wire input_grant;
wire [10:0] out;

top uut(d, clk, rst, input_grant, out);

always begin
    clk = ~clk;
    #10;
end

initial begin

    $dumpfile("multiply_tb.vcd");
    $dumpvars(0, top_tb);

    rst = 0;
    #5;
    rst = 1;
    #10;
    
    rst = 0;
    d = 8'd10;
    #80;
    d = 8'd2;
    #50;
    rst = 1;
    #50;

    rst = 0;
    d = 8'd3;
    #20;
    d = 8'd11;
    #20;
    d = 8'd20;
    #150;

    $display("multiply and shift test done");
    $finish;

end

endmodule