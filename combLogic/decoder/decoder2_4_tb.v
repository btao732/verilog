`timescale 1ns/1ns
`include "decoder.v"

module decoder2_4_tb;
reg[1:0] S;
wire[3:0] Y;

decoder2_4 uut(S, Y);

initial begin
    $dumpfile("decoder2_4_tb.vcd");
    $dumpvars(0, decoder2_4_tb);

    S = 2'b00; #20;
    S = 2'b01; #20;
    S = 2'b10; #20;
    S = 2'b11; #20;

    $display("2-4 line decoder done");
end
endmodule