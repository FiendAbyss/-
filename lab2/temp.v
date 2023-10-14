`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/17 16:33:34
// Design Name: 
// Module Name: encryption6b
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


module encryption6b(
    output [7:0] dataout,    //输出加密或解密后的8比特ASCII数据。
    output reg ready,       //输出有效标识，高电平说明输出有效，第6周期高电平
    output [5:0] key,       //输出6位加密码
    input clk,             // 时钟信号，上升沿有效
    input load,            //载入seed指示，高电平有效
    input [7:0] datain       //输入数据的8比特ASCII码。
);
wire  [63:0] seed=64'ha845fd7183ad75c4;       //初始64比特seed=64'ha845fd7183ad75c4
reg [2:0] count; 
wire [63:0] lfsr_output;
    lfsr lfsr_inst (
        .dout(lfsr_output),
        .seed(seed),
        .clk(clk),
        .load(load)
    );
    always @(posedge clk) begin
        if (load) begin
            count <= 0; // 重置计数器
            ready <= 0; // 初始化 ready 信号
         end else begin
            if (count == 5) begin
                ready <= 1; // 在 6 倍数周期末尾输出 ready 信号
                count <= 0;
            end else begin
                ready <= 0;
                count <= count + 1;
            end
        end
    end

    assign key = lfsr_output[63:58]; 
    assign dataout = datain ^ key; 
    //add your code here
endmodule

module lfsr(              //64位线性移位寄存器
	output reg [63:0] dout,
    input  [63:0]  seed,
	input  clk,
	input  load
	);

    reg [64:0] state; 

    always @(posedge clk) begin
        if (load) begin
            state[63:0] <= seed;
        end else
        begin
            state[64] <= state[0] ^ state[1] ^ state[4] ^ state[3];
            state[63:0] <= state[64:1];
        end
        dout = state[63:0];
    end

    //add your code here
endmodule
