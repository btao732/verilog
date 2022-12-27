`timescale 1ns/1ns
`include "decoder.v"

module decoder_tb;
reg S;
wire[1:0] Y;
decoder uut(S, Y);


initial begin
    $dumpfile("decoder_tb.vcd");
    $dumpvars(0, decoder_tb);

    S = 0; #20;
    S = 1; #20;
    S = 0; #20;

    $display("decoder test done");
end

endmodule