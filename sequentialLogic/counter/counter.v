
module top (rst, start, stop, clk, count, stop_d2);
input clk;
input start, stop;
input rst;
output reg [3:0] count;
output reg stop_d2;

reg cnt_en;
reg stop_d1;


//SR flip flop
always @(posedge clk or posedge rst) begin
    if (rst) 
        cnt_en <= 1'b0;
    else if (start) 
        cnt_en <= 1'b1;
    else if (stop)
        cnt_en <= 1'b0;
end


//4 bit counter, module 14
always @ (posedge clk or posedge rst) 
begin
    if (rst) 
        count <= 4'h0;
    else if ((cnt_en) 
            && (count == 4'd13))
        count <= 4'h0;
    else if (cnt_en)
        count <= count + 1;
end



//reg
always @(posedge clk or posedge rst) 
begin
    if (rst) 
    begin
        stop_d1 <= 1'b0;
        stop_d2 <= 1'b0;
    end

    else begin
        stop_d1 <= stop;
        stop_d2 <= stop_d1;
    end

end


endmodule