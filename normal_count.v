`timescale 1ns / 1ps

module normal_count(
      input clk,
      input rst,
      output reg [7:0] count
);

always @(posedge clk or posedge rst)
begin
    if(rst)
        count <= 8'b0;
    else
        count <= count + 1;
end

endmodule