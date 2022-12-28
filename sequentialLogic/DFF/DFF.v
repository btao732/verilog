module dff (clk, D, Q);
input clk;
input D;
output reg Q; //reg type

always @(posedge clk) begin
    Q <= D;
end
endmodule
