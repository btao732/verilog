`timescale 1ns/1ns
`include "mux_4_1_case.v"

module mux_4_1_tb;

reg [1:0] D0 = 2'b00;
reg [1:0] D1 = 2'b01;
reg [1:0] D2 = 2'b10;
reg [1:0] D3 = 2'b11;

reg [1:0] S;

wire [1:0] Y;

mux_4_1 uut(D3, D2, D1, D0, S, Y);

initial begin
    $dumpfile("mux_4_1_tb.vcd");
    $dumpvars(0, mux_4_1_tb);
    S = 2'b00; #20;
    S = 2'b01; #20;
    S = 2'b11; #20;
    S = 2'b10; #20;
    $display("test done");
end

endmodule