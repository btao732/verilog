`timescale 1ns/1ns
`include "ringCounter.v"

module ringCounter_tb;
reg clk=0, ORI;
wire [3:0] out;

ringCounter_4_bit uut(clk, ORI, out);

always begin
    clk = ~clk;
    #10;
end

initial begin
    $dumpfile("ringCounter.vcd");
    $dumpvars(0, ringCounter_tb);
    ORI = 1'b0; #5;
    ORI = 1'b1; #150;
    $display("ring counter test done");
    $finish;
end

endmodule