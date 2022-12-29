module dff (in, en, clear, clk, rst, out);

input clk, en, rst, clear;
input in;
output reg out;

always @(posedge clk or posedge rst) 
begin
    if (rst) //asynchronous reset
        out <= 0;
    else if (!clear) //synchronous with clk
        out <= 0;
    else if (en)
        out <= in;        
end

endmodule