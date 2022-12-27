// 1-2 line decoder

module decoder (
    S, Y
);
input S;
output [1:0] Y;

assign Y[0] = ~S;
assign Y[1] = S;

endmodule


// 2-4 line decoder

module decoder2_4 (S, Y);

input [1:0] S;
output [3:0] Y;

wire [3:0] W;

decoder u0(.S(S[0]), .Y(W[3:2]));
decoder u1(.S(S[1]), .Y(W[1:0]));

assign Y[0] = W[2] & W[0];
assign Y[1] = W[3] & W[0];
assign Y[2] = W[2] & W[1];
assign Y[3] = W[3] & W[1];

endmodule