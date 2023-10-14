`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/16 20:17:44
// Design Name: 
// Module Name: regfile32
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module regfile32(
   output  [31:0] busa,
   output  [31:0] busb,
   input [31:0] busw,
   input [4:0] ra,
   input [4:0] rb,
   input [4:0] rw,
   input clk, we
);

reg [31:0] registers [0:31];  // 32¸ö32Î»¼Ä´æÆ÷
always @(posedge clk) begin
        if (we) begin
            registers[rw] <= busw;
        end
end

assign busa = registers[ra];
assign busb = registers[rb];

// add your code 

endmodule

