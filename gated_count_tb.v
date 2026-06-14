`timescale 1ns / 1ps

module gated_count_tb;

reg clk;
reg rst;
reg enable;

wire [7:0] count;

gated_count DUT (
    .clk(clk),
    .rst(rst),
    .enable(enable),
    .count(count)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    rst = 1;
    enable = 0;

    #20;
    rst = 0;

    // Counter starts counting
    #20;
    enable = 1;

    // Run for some time
    #100;

    // Stop counter
    enable = 0;

    #100;

    // Run again
    enable = 1;

    #100;

    $finish;
end

endmodule