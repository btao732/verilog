`timescale 1ns/1ns
`include "mux.v"

module mux_tb;

reg [3:0] in_1 = 4'b0000;
reg [3:0] in_2 = 4'b0100;
reg in_3;

wire [3:0] out;

mux uut(in_1, in_2, in_3, out);

initial begin
    $dumpfile("mux_tb.vcd");
    $dumpvars(0, mux_tb);

    in_3 = 0; #20;
    in_3 = 1; #20;

end
endmodule