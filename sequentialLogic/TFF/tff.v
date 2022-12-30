module tff (
    clk,
    rst,
    T,
    Q
);

input clk, rst, T;
output reg Q;


always @(posedge clk or posedge rst) begin
    if (rst)
       Q1 <= 0;
    else if (T == 1'b0)
       Q1 <= Q1;
    else if (T == 1'b1)
        Q1 <= ~ Q1;
end


endmodule