`timescale 1ns / 1ps
module alu_32bit (
    input  wire        clk,
    input  wire        rst,
    input  wire        en,
    input  wire [1:0]  op,
    input  wire [31:0] a,
    input  wire [31:0] b,
    output reg  [63:0] y,
    output reg         valid
);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        y     <= 0;
        valid <= 0;
    end else if (en) begin
        case (op)
            3'b00: y <= a + b;
            3'b01: y <= a - b;
            3'b10: y <= a * b;
           
            default: y <= 0;
        endcase
        valid <= 1;
    end else begin
        valid <= 0;
    end
end

endmodule
