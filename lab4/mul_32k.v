`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/02 00:39:53
// Design Name: 
// Module Name: mul_32p
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


module mul_32k(
  input [31:0] X, Y,
  output [63:0] P       // output variable for assignment
  );
//add your code here  

reg [63:0] temp;
    reg [63:0] stored0;
    reg [63:0] stored1;
    reg [63:0] stored2;
    reg [63:0] stored3;
    reg [63:0] stored4;
    reg [63:0] stored5;
    reg [63:0] stored6;
    reg [63:0] stored7;
    reg [63:0] stored8;
    reg [63:0] stored9;
    reg [63:0] stored10;
    reg [63:0] stored11;
    reg [63:0] stored12;
    reg [63:0] stored13;
    reg [63:0] stored14;                    
    reg [63:0] stored15;
    reg [63:0] stored16;
    reg [63:0] stored17;
    reg [63:0] stored18;
    reg [63:0] stored19;
    reg [63:0] stored20;
    reg [63:0] stored21;
    reg [63:0] stored22;
    reg [63:0] stored23;
    reg [63:0] stored24;
    reg [63:0] stored25;
    reg [63:0] stored26;
    reg [63:0] stored27;
    reg [63:0] stored28;
    reg [63:0] stored29;
    reg [63:0] stored30;
    reg [63:0] stored31;
    
    reg [63:0] add0_1;
    reg [63:0] add2_3;
    reg [63:0] add4_5;
    reg [63:0] add6_7;
    reg [63:0] add8_9;
    reg [63:0] add10_11;
    reg [63:0] add12_13;
    reg [63:0] add14_15;
    reg [63:0] add16_17;                    
    reg [63:0] add18_19;
    reg [63:0] add20_21;
    reg [63:0] add22_23;
    reg [63:0] add24_25;
    reg [63:0] add26_27;
    reg [63:0] add28_29;
    reg [63:0] add30_31;
    
    reg [63:0] add0t1_2t3;
    reg [63:0] add4t5_6t7;
    reg [63:0] add8t9_10t11;
    reg [63:0] add12t13_14t15;
    reg [63:0] add16t17_18t19;
    reg [63:0] add20t21_22t23;
    reg [63:0] add24t25_26t27;                        
    reg [63:0] add28t29_30t31;
    
    reg [63:0] add0t1_2t3_4t5_6t7;
    reg [63:0] add8t9_10t11_12t13_14t15;
    reg [63:0] add16t17_18t19_20t21_22t23;
    reg [63:0] add24t25_26t27_28t29_30t31;
    
    reg [63:0] add0t1_2t3_4t5_6t7_8t9_10t11_12t13_14t15;
    reg [63:0] add16t17_18t19_20t21_22t23_24t25_26t27_28t29_30t31;
    
    always @(*)begin
        stored0<=Y[0]?{32'b0,X}:64'b0;
        stored1<=Y[1]?{31'b0,X,1'b0}:64'b0;
        stored2<=Y[2]?{30'b0,X,2'b0}:64'b0;
        stored3<=Y[3]?{29'b0,X,3'b0}:64'b0;
        stored4<=Y[4]?{28'b0,X,4'b0}:64'b0;
        stored5<=Y[5]?{27'b0,X,5'b0}:64'b0;
        stored6<=Y[6]?{26'b0,X,6'b0}:64'b0;
        stored7<=Y[7]?{25'b0,X,7'b0}:64'b0;
        stored8<=Y[8]?{24'b0,X,8'b0}:64'b0;
        stored9<=Y[9]?{23'b0,X,9'b0}:64'b0;
        stored10<=Y[10]?{22'b0,X,10'b0}:64'b0;
        stored11<=Y[11]?{21'b0,X,11'b0}:64'b0;
        stored12<=Y[12]?{20'b0,X,12'b0}:64'b0;
        stored13<=Y[13]?{19'b0,X,13'b0}:64'b0;
        stored14<=Y[14]?{18'b0,X,14'b0}:64'b0;
        stored15<=Y[15]?{17'b0,X,15'b0}:64'b0;
        stored16<=Y[16]?{16'b0,X,16'b0}:64'b0;
        stored17<=Y[17]?{15'b0,X,17'b0}:64'b0;
        stored18<=Y[18]?{14'b0,X,18'b0}:64'b0;
        stored19<=Y[19]?{13'b0,X,19'b0}:64'b0;
        stored20<=Y[20]?{12'b0,X,20'b0}:64'b0;
        stored21<=Y[21]?{11'b0,X,21'b0}:64'b0;
        stored22<=Y[22]?{10'b0,X,22'b0}:64'b0;
        stored23<=Y[23]?{9'b0,X,23'b0}:64'b0;
        stored24<=Y[24]?{8'b0,X,24'b0}:64'b0;
        stored25<=Y[25]?{7'b0,X,25'b0}:64'b0;
        stored26<=Y[26]?{6'b0,X,26'b0}:64'b0;
        stored27<=Y[27]?{5'b0,X,27'b0}:64'b0;
        stored28<=Y[28]?{4'b0,X,28'b0}:64'b0;
        stored29<=Y[29]?{3'b0,X,29'b0}:64'b0;
        stored30<=Y[30]?{2'b0,X,30'b0}:64'b0;
        stored31<=Y[31]?{1'b0,X,31'b0}:64'b0;
        
        add0_1<=stored0+stored1;
        add2_3<=stored2+stored3;
        add4_5<=stored4+stored5;
        add6_7<=stored6+stored7;
        add8_9<=stored8+stored9;
        add10_11<=stored10+stored11;
        add12_13<=stored12+stored13;
        add14_15<=stored14+stored15;
        add16_17<=stored16+stored17;
        add16_17<=stored16+stored17;
        add18_19<=stored18+stored19;
        add20_21<=stored20+stored21;
        add22_23<=stored22+stored23;
        add24_25<=stored24+stored25;
        add26_27<=stored26+stored27;
        add28_29<=stored28+stored29;
        add30_31<=stored30+stored31;
        
        add0t1_2t3<=add0_1+add2_3;
        add4t5_6t7<=add4_5+add6_7;
        add8t9_10t11<=add8_9+add10_11;
        add12t13_14t15<=add12_13+add14_15;
        add16t17_18t19<=add16_17+add18_19;
        add20t21_22t23<=add20_21+add22_23;
        add24t25_26t27<=add24_25+add26_27;
        add28t29_30t31<=add28_29+add30_31;
        
        add0t1_2t3_4t5_6t7<=add0t1_2t3+add4t5_6t7;
        add8t9_10t11_12t13_14t15<=add8t9_10t11+add12t13_14t15;
        add16t17_18t19_20t21_22t23<=add16t17_18t19+add20t21_22t23;
        add24t25_26t27_28t29_30t31<=add24t25_26t27+add28t29_30t31;
        
        add0t1_2t3_4t5_6t7_8t9_10t11_12t13_14t15<=add0t1_2t3_4t5_6t7+add8t9_10t11_12t13_14t15;
        add16t17_18t19_20t21_22t23_24t25_26t27_28t29_30t31<=add16t17_18t19_20t21_22t23+add24t25_26t27_28t29_30t31;

        temp<=add0t1_2t3_4t5_6t7_8t9_10t11_12t13_14t15+add16t17_18t19_20t21_22t23_24t25_26t27_28t29_30t31;

    end 
    
    assign P=temp;

endmodule