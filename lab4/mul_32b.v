`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/02 11:14:03
// Design Name: 
// Module Name: mul_32b
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


//ʹ��Booth��λ�˷��ĳ˷���
module mul_32b(
    output [63:0] p,         //�˻�
    output out_valid,        //�ߵ�ƽ��Чʱ����ʾ�˷�����������
    input clk,              //ʱ�� 
    input rst_n,             //��λ�źţ�����Ч
    input [31:0] x,           //������
    input [31:0] y,           //����
    input in_valid           //�ߵ�ƽ��Ч����ʾ�˷�����ʼ����
); 
    //�Ĵ���
    reg [5:0] cnt;     //��λ�����Ĵ���
    reg [63:0] buffer;      //�˻��Ĵ���
    reg [31:0] op1;         //�������Ĵ���
    reg bufferbooth;        //�˻��Ĵ�����-1λ

    //����߼�
    wire [1:0] op;          //Booth����
    wire cout;              //�ӷ����Ľ�λ
    wire [31:0] rx, ry; //�ӷ�������������Ͳ��ֻ��Ĵ���
    wire [31:0] Add_result;        //�ӷ��������
    assign op = {buffer[0], bufferbooth}; //Booth����
    assign ry = op1;
    assign rx = buffer[63:32];
    assign p = buffer;
    assign out_valid = (cnt == 0);

    //�ӷ���
    Adder32 adder32_1(
        .x(rx),
        .y((op == 2'b00 || op == 2'b11)? 32'd0 : ry),
        .sub(op == 2'b10),
        .f(Add_result),
        .cout(cout)
    );

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            cnt <= 0;
            buffer <= 0;
            op1 <= 0;
            bufferbooth <= 0;
        end
        else if(in_valid) begin
            cnt <= 32;
            buffer <= {32'd0, y};
            op1 <= x;
            bufferbooth <= 0;
        end
        else if(cnt > 0) begin
            cnt <= cnt - 1;
            buffer <= {Add_result[31], Add_result, buffer[31:1]};
            bufferbooth <= buffer[0];
        end
    end
endmodule
