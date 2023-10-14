`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/01 15:07:42
// Design Name: 
// Module Name: DT_tst
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


module DT_tst(

    );
// �ź�����
  reg clk;
  reg rst;
  reg [1:0] s;
  reg [3:0] data_h;
  reg [3:0] data_l;
  wire [6:0] segs;
  wire [7:0] an;
  wire [2:0] ledout;

  // ʵ���������Ե�ģ��
  DigitalTimer dut (
    .clk(clk),
    .rst(rst),
    .s(s),
    .data_h(data_h),
    .data_l(data_l),
    .segs(segs),
    .an(an),
    .ledout(ledout)
  );

  // ��ʼ��
  initial begin
    clk = 0;
    rst = 0;
    s = 2'b00;
    data_h = 4'd0;
    data_l = 4'd0;

    // ʱ��Ƶ�ʷ���
    forever begin
      #5 clk = ~clk;
    end

    // ��������
    #10 rst = 1; // ��λ
    #10 rst = 0;

    // ��������Сʱ״̬
    s = 2'b01;
    data_h = 4'd1;
    data_l = 4'd2;
    #10;
    s = 2'b00;

    // �������÷���״̬
    s = 2'b10;
    data_h = 4'd3;
    data_l = 4'd4;
    #10;
    s = 2'b00;

    // ����������״̬
    s = 2'b11;
    data_h = 4'd5;
    data_l = 4'd6;
    #10;
    s = 2'b00;

    // ������ʱ״̬
    #10;
    s = 2'b00;

    // ��Ӹ����������

    $finish; // ��������
  end
endmodule
