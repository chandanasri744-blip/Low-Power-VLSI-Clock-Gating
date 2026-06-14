`timescale 1ns/1ps

module gated_count(
      input clk,
      input rst,
      input enable,
      output reg [7:0] count
);

wire gated_clk;

assign gated_clk = clk & enable;

always @(posedge gated_clk or posedge rst)
begin
    if(rst)
        count <= 8'b0;
    else
        count <= count + 1;
end

endmodule