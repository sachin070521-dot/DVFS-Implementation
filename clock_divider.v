`timescale 1ns / 1ps
module clock_divider (
    input  wire clk_in,     // 100 MHz
    input  wire rst,
    output reg  clk_div2,    // 50 MHz
    output reg  clk_div4,    // 25 MHz
    output reg  clk_div8     // 12.5 MHz
);

reg [2:0] cnt;

always @(posedge clk_in or posedge rst) begin
    if (rst) begin
        cnt      <= 0;
        clk_div2 <= 0;
        clk_div4 <= 0;
        clk_div8 <= 0;
    end else begin
        cnt <= cnt + 1;
        clk_div2 <= cnt[0];
        clk_div4 <= cnt[1];
        clk_div8 <= cnt[2];
    end
end

endmodule
