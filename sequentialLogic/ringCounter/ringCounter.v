module ringCounter_4_bit (clk, ORI, out);
input clk;
input ORI;
output reg [3:0] out;
reg [3:0] D;

always @(negedge clk or ORI) begin
    if (ORI == 1'b0)
    begin 
        out[0] <= 1'b1;
        D[1] <= 1'b1;
        out[3:1] <= 3'b000;
        D[2] <= 1'b0;
        D[3] <= 1'b0;
        D[0] <= 1'b0;
    end

    else
    begin
        if (clk == 1'b0) //falling edge
        begin
            out[3:0] = D[3:0]; //blocking for updating
            
            D[3:1] <= out[2:0];
            D[0] <= out[3];
        end
    end
end
endmodule