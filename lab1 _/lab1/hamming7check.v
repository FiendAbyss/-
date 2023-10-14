`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/09 21:27:45
// Design Name: 
// Module Name: hamming7check
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


module hamming7check(
   output reg [7:1] DC,    //纠错输出7位正确的结果
   output reg  NOERROR,    //校验结果正确标志位
   input  [7:1] DU         //输入7位汉明码

);
// add your code here
reg [3:1] S;
integer i;
always @(*)
    begin
        S[1] <= DU[1] ^ DU[3] ^ DU[5] ^ DU[7];
        S[2] <= DU[2] ^ DU[3] ^ DU[6] ^ DU[7];
        S[3] <= DU[4] ^ DU[5] ^ DU[6] ^ DU[7];
        for(i = 1; i < 8; i = i + 1) begin
            if(S == i)
                DC[i] = DU[i] ^ 1;
            else
                DC[i] = DU[i];
        NOERROR = (S == 0);
        end
    end
endmodule
