`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/23 21:52:26
// Design Name: 
// Module Name: decode32
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


module decode32(
    output [31:0] Out,
     input [4:0] In,
    input En
    );
    assign Out =En ? (1<<In) : 0;
endmodule
