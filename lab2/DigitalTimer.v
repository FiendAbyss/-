`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/17 13:48:41
// Design Name: 
// Module Name: DigitalTimer
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


module DigitalTimer(  //端口声明
  input clk,
  input rst,            //复位，有效后00:00:00
  input [1:0] s,        // =00时，进入技术；01：设置小时；10：设置分钟；11：设置秒
  input [3:0] data_h,   //设置初值高位，使用BCD码表示
  input [3:0] data_l,   //设置初值低位，使用BCD码表示
  output [6:0] segs,   //七段数码管输入值，显示数字
  output [7:0] an,     //七段数码管控制位，控制时、分、秒 
  output [2:0] ledout   //输出3色指示灯
); 

wire clken;
wire clk_1Hz;
reg [3:0] hour_h;
reg [3:0] hour_l;
reg [3:0] min_h;
reg [3:0] min_l;
reg [3:0] sec_h;
reg [3:0] sec_l;
reg [6:0] num;
reg [7:0] pos;
reg [3:0] data;
reg [2:0] led;
reg ck2;
reg temp;
integer cnt;
integer ss;
reg [3:0] ledtime;
assign segs = num;
assign an = pos;
assign ledout = led;
initial begin
  hour_h <= 0;
  hour_l <= 0;
  min_h <= 0;
  min_l <= 0;
  sec_h <= 0;
  sec_l <= 0;
  cnt = 0;
  ss = 0;
  ledtime = 0;
  led = 3'b000;
end

clkgen clk_(
    .clkin(clk),
    .rst(0),
    .clken(1),
    .clkout(clk_1Hz)
);

always @(posedge clk_1Hz)
begin
  if (rst)
  begin
    hour_h <= 0;
    hour_l <= 0;
    min_h <= 0;
    min_l <= 0;
    sec_h <= 0;
    sec_l <= 0;
    ss <= 0;
  end
  else case (s)
    2'b01 : begin 
      if(data_h == 0 || data_h == 1) begin
        if(data_l >= 0 && data_l <= 9) begin
          hour_h <= data_h;
          hour_l <= data_l;
        end end
      if(data_h == 2) begin
        if(data_l >= 0 && data_l <= 3) begin
          hour_h <= data_h;
          hour_l <= data_l;
        end end
    end
    2'b10 : begin 
      if(data_h >= 0 && data_h <= 5) begin
        if(data_l >= 0 && data_l <= 9) begin
          min_h <= data_h;
          min_l <= data_l;
        end end
    end
    2'b11 : begin 
        if(data_h >= 0 && data_h <= 5) begin
          if(data_l >= 0 && data_l <= 9) begin
            sec_h <= data_h;
            sec_l <= data_l;
        end end
    end
 
  default begin
    if(ledtime) begin
      ledtime <= ledtime - 1;
        led <= {led[1:0], led[2]};
      end else begin
        led <= 3'b000;
      end
            
    if(sec_l == 9) begin //xx:xx:x9
      if(sec_h == 5) begin //xx:xx:59
        if(min_l == 9) begin //xx:x9:59
          if(min_h == 5) begin //xx:59:59
            if(hour_l == 3 && hour_h == 2) begin //23:59:59
              ledtime <= 9; //RGB trigger
              led <= 3'b001;
              hour_l <= 0;
              hour_h <= 0;
            end else begin
              if(hour_l == 9) begin //x9:59:59
                hour_l <= 0;
                hour_h <= hour_h + 1;
              end else begin
                hour_l <= hour_l + 1;
              end
              ledtime <= 4; //RGB Trigger
              led <= 3'b001;
            end
            min_h <= 0;
          end else begin
            min_h <= min_h + 1;
          end
          min_l <= 0;
        end else begin
          min_l <= min_l + 1;
        end
        sec_h <= 0;
      end else begin
      sec_h <= sec_h + 1;
    end
    sec_l <= 0;
  end else begin
  sec_l <= sec_l + 1;
  end
  end
  endcase
end

integer count = 0;
always @(posedge clk) begin
  if(count == 32'd50000) begin
      count <= 1'b0;
      ck2 <= ~ck2;
  end
  else
      count <= count + 1'b1;
end


always @(posedge ck2)
begin
  case (cnt)
  0 : begin pos <= 8'b11111110; data <= sec_h;end
  1 : begin pos <= 8'b11111101; data <= min_l;end
  2 : begin pos <= 8'b11110111; data <= min_h;end
  3 : begin pos <= 8'b11101111; data <= hour_l;end
  4 : begin pos <= 8'b10111111; data <= hour_h;end
  5 : begin pos <= 8'b01111111; data <= sec_l;end
  endcase
  cnt <= (cnt + 1) % 6;
  case (data)
  4'd0: num <= 7'b1000000;
  4'd1: num <= 7'b1111001;
  4'd2: num <= 7'b0100100;
  4'd3: num <= 7'b0110000;
  4'd4: num <= 7'b0011001;
  4'd5: num <= 7'b0010010;
  4'd6: num <= 7'b0000010;
  4'd7: num <= 7'b1111000;
  4'd8: num <= 7'b0000000;
  4'd9: num <= 7'b0010000;
  default: num <= 7'b1111111;
  endcase
end
endmodule




module clkgen(input clkin, input rst, input clken, output reg clkout);
   reg[31:0] clkcount;
   initial
   begin clkcount=32'd0; clkout=1'b0; end
   always @ (posedge clkin) 
    if(rst)
     begin
        clkcount<=0;
        clkout<=1'b0;
     end
    else
    begin
     if(clken)
        begin
            if(clkcount>=32'd50000000)
             begin
                clkcount<=32'd0;
                clkout<=~clkout;
             end
             else
             begin
                clkcount<=clkcount+1;

             end
         end
     end  
endmodule