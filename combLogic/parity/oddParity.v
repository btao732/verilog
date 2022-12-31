module oddParity (data, sel, out);

input [7:0] data;
input sel; //odd or even parity
output out;
wire odd;
reg out_reg;

assign  odd = ^data; 

always @(*) begin

    if (sel) begin
        out_reg = odd;
    end

    else begin
        out_reg = ~odd;
    end
    
end

assign out = out_reg;

endmodule