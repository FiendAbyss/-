`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/23 21:55:44
// Design Name: 
// Module Name: decode32_t
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


module decode32_t();
reg [4:0] In;
reg En;
wire [31:0] Out;
 integer i, errors;
 reg [31:0] expectY;
 decode32 UUT ( .Out(Out),.In(In),.En(En)); // 实例化待测单元
 initial begin
 errors = 0;
 for (i=0; i<=63; i=i+1) begin
 {En, In} = i; // 应用测试输入组合
 #10 ;
 expectY = 32'b00000000000000000000000000000000; // 如果 En=0，则缺省输出全为 0
 if (En==1) expectY[In] = 1'b1; //否则，输出在 In 位上应是有效值
 if (Out !== expectY) begin
 $display("Error: En=%b, In = %3b, out = %8b", En, In, Out);
 errors = errors + 1;
 end
 end
 $display("Test complete, %d errors",errors);
 end
endmodule
