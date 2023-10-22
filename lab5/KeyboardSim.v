`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/10 09:38:14
// Design Name: 
// Module Name: KeyboardSim
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


module KeyboardSim(
    input CLK100MHZ,   //系统时钟信号
    input PS2_CLK,    //来自键盘的时钟信号
    input PS2_DATA,  //来自键盘的串行数据位
    input BTNC,      //Reset
    output [6:0]SEG,
    output [7:0]AN,
    output [15:0] LED   //显示
    );
    
// Add your code here

reg [31:0] seg7_data;
reg [15:0] LED_reg;
reg [31:0] cnt_pushbutton;

reg ready;

reg [31:0] keycode;
reg [15:0] keycodeout_prev;
reg [15:0] keycodeout_cur;
reg [7:0] asciicode;

KeyBoardReceiver keyboardreceiver(
    .keycodeout(keycode),
    .ready(ready),
    .cnt_p(cnt_pushbutton),
    .clk(CLK100MHZ),
    .kb_clk(PS2_CLK),
    .kb_data(PS2_DATA),
    .keycodeout_prev(keycodeout_prev),
    .keycodeout_cur(keycodeout_cur)
);

kbcode2ascii kbcode2ascii(
    .asciicode(asciicode),
    .kbcode(keycodeout_cur[7:0])
);


initial begin
    seg7_data[31:0]<=32'b00000000000000000000000000000000;
    LED_reg[15:0]<=16'b0000000000000000;
end

always @(*)begin
    seg7_data[31:24]<=cnt_pushbutton[7:0];
    seg7_data[23:8]<={keycodeout_prev[7:0],keycodeout_cur[7:0]};
    seg7_data[7:0]<=asciicode;
    LED_reg[7:0]<=asciicode;
end

always @(keycodeout_cur)begin
        case(keycodeout_cur)
            16'h0058:LED_reg[15:8]<=8'b00000001;
            16'h0077:LED_reg[15:8]<=8'b00000010;
            16'h0012:LED_reg[15:8]<=8'b00000100;
            16'h0059:LED_reg[15:8]<=8'b00000100;
            16'h0014:LED_reg[15:8]<=8'b00001000;
            16'hE014:LED_reg[15:8]<=8'b00001000;
            16'h0011:LED_reg[15:8]<=8'b00010000;
            16'hE011:LED_reg[15:8]<=8'b00010000;
            default:LED_reg[15:8]<=8'b00000000;
        endcase
end

assign LED=LED_reg;
seg7decimal sevenSeg (
.x(seg7_data[31:0]),
.clk(CLK100MHZ),
.seg(SEG[6:0]),
.an(AN[7:0]),
.dp(0) 
);
endmodule
