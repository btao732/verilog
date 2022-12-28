module tff (
    clk,
    rst,
    T,
    Q
);

input clk, rst;
output reg Q;

always @(posedge(clk)) begin
   if (T)
       Q <= 0;
    else
       Q <= ~Q;
end

always @(rst) begin
    if (!rst) 
       Q <= 0;
end


endmodule