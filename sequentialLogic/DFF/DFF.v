//D flip flop with asynchronous reset
module dff (clk, rst, D, Q);
input clk, rst;
input D;
output reg Q; //reg type

always @(posedge clk or posedge rst) begin
    if (rst) 
        Q <= 0;
    else 
        Q <= D;
end

endmodule
