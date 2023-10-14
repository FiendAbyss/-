`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/17 10:18:07
// Design Name: 
// Module Name: regfile_top
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


module regfile_top(
   output  [7:0] busa8,
   output  [7:0] busb8,
   input [3:0] busw,
   input [2:0] ra,
   input [2:0] rb,
   input [2:0] rw,
   input [1:0] rd_hi,
   input clk, we
   );
   wire [31:0] busa32;
   wire [31:0] busb32;
   wire [31:0] busw32;
   wire [4:0] ra32;
   wire [4:0] rb32;
   wire [4:0] rw32;

    // 重复 busw 的 4 位数据 8 次来扩展为 32 位
    assign busw32 = {8{busw}}; 

    // 将 ra、rb、rw 的低 3 位与 rd_hi 的高 2 位连接为 5 位地址
    assign ra32 = {rd_hi, ra};
    assign rb32 = {rd_hi, rb};
    assign rw32 = {rd_hi, rw};
    // add your code

   regfile32 regfile32_check(.busa(busa32),.busb(busb32),.busw(busw32),.ra(ra32),.rb(rb32),.rw(rw32),.clk(clk),.we(we));


    // 使用低 8 位数据 busa8 和 busb8 来显示
    assign busa8 = busa32[7:0];
    assign busb8 = busb32[7:0];
    // add your code
 
endmodule
