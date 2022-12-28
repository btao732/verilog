module mux_4_1 (D3, D2, D1, D0, S, Y);

input [1:0] D3, D2, D1, D0, S;
output [1:0] Y;

assign Y = (S == 2'b00) ? D0 :
            (S == 2'b01) ? D1 :
            (S == 2'b10) ? D2 :
            D3;
endmodule