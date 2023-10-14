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
 decode32 UUT ( .Out(Out),.In(In),.En(En)); // ʵ�������ⵥԪ
 initial begin
 errors = 0;
 for (i=0; i<=63; i=i+1) begin
 {En, In} = i; // Ӧ�ò����������
 #10 ;
 expectY = 32'b00000000000000000000000000000000; // ��� En=0����ȱʡ���ȫΪ 0
 if (En==1) expectY[In] = 1'b1; //��������� In λ��Ӧ����Чֵ
 if (Out !== expectY) begin
 $display("Error: En=%b, In = %3b, out = %8b", En, In, Out);
 errors = errors + 1;
 end
 end
 $display("Test complete, %d errors",errors);
 end
endmodule
