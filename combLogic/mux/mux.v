module mux(in_1, in_2, in_3, out);

input [3:0] in_1;
input [3:0] in_2;
input in_3;

output[3:0] out;

assign out = in_3 ? in_2 : in_1;


endmodule