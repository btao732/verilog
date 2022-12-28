module mux_4_1 (D3, D2, D1, D0, S, Y);

input [1:0] D3, D2, D1, D0, S;
output [1:0] Y;
reg [1:0] R;

always @(*) begin
   case (S)
    2'b00 : R = D0;
    2'b01 : R = D1;
    2'b10 : R = D2;
    2'b11 : R = D3;
    default : R = 2'b00;
endcase 
end

assign Y = R;

endmodule