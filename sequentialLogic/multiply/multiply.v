module top (d, clk, rst, input_grant, out);
input [7:0] d;
input clk, rst;
output reg input_grant;
output reg [10:0] out;

reg [1:0] count;
reg [7:0] multiplier;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        count <= 2'b00;
    end

    else begin
        count <= count + 1;
    end
end

always @(posedge clk or posedge rst) begin

    if (rst) begin
        input_grant <= 1'b0;
        out <= 11'd0;
        multiplier <= 8'd0;
    end

    else begin
        case (count)
            2'b00 : begin
                multiplier <= d;
                out <= d;
                input_grant <= 1'b1;
            end

            2'b01 : begin
                out <= multiplier + {multiplier, 1'b0}; //* 3
                input_grant <= 1'b0;
            end

            2'b10: begin
                out <= multiplier + {multiplier, 1'b0} + {multiplier, 2'b00};
                input_grant <= 1'b0; 
            end

            2'b11 : begin
                out <= {multiplier, 3'b000};
                input_grant <= 1'b0;   
            end

            default : begin
                out <= d;
                input_grant <= 1'b0;
            end

        endcase
    end
end


endmodule