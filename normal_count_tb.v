`timescale 1ns / 1ps

module normal_count_tb;

reg clk;
reg rst;

wire [7:0] count;

normal_count DUT (
    .clk(clk),
    .rst(rst),
    .count(count)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    rst = 1;

    #20;
    rst = 0;

    #200;

    $finish;
end

endmodule