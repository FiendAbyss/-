`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/09 20:14:55
// Design Name: 
// Module Name: trans4to4
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


module trans4to4(
    output  [2:0] Y0,Y1,Y2,Y3,
    input   [2:0] D0,D1,D2,D3,
    input   [1:0] S
); 

assign Y0 = (S == 2'b00) ? (D0) : (3'b000);

assign Y1 = (S == 2'b01) ? (D1) : (3'b000);

assign Y2 = (S == 2'b10) ? (D2) : (3'b000);

assign Y3 = (S == 2'b11) ? (D3) : (3'b000);
// add your code here

endmodule
