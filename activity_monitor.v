module activity_monitor (
    input  wire clk,
    input  wire rst,
    input  wire alu_valid,
    output reg  [15:0] activity
);

always @(posedge clk or posedge rst) begin
    if (rst)
        activity <= 0;
    else if (alu_valid)
        activity <= activity + 1;
end

endmodule
