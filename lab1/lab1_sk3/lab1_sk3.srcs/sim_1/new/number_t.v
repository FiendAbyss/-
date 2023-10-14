`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/23 22:07:09
// Design Name: 
// Module Name: number_t
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


module number_t( );
 wire [6:0] O_seg;
 wire [7:0] O_led;

 number number_impl(.O_seg(O_seg),.O_led(O_led),.I(I),.S(S));
 initial begin   
   $stop;
 end
endmodule
