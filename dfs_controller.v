`timescale 1ns / 1ps
module dfs_controller (
    input  wire        clk,
    input  wire        rst,
    input  wire [15:0] activity,
    output reg  [1:0]  dfs_sel
);

parameter TH_LOW  = 16'd200;
parameter TH_HIGH = 16'd600;

always @(posedge clk or posedge rst) begin
    if (rst)
        dfs_sel <= 2'b00;
    else if (activity < TH_LOW)
        dfs_sel <= 2'b00;   // LOW
    else if (activity < TH_HIGH)
        dfs_sel <= 2'b01;   // MED
    else
        dfs_sel <= 2'b10;   // HIGH
end

endmodule
