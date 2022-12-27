// 1-2 line decoder

module decoder (
    S, Y
);
input S;
output[1:0] Y;

assign Y[0] = ~S;
assign Y[1] = S;

endmodule