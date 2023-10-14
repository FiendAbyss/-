`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/23 22:05:46
// Design Name: 
// Module Name: number
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


module number(
    output  reg  [6:0] O_seg,
    output  reg  [7:0] O_led, 
    input clk
);
    dec7seg dec7seg_inst(.O_seg(seg), .O_led(led), .I(I), .S(S));
    reg [3:0] I;
    reg [2:0] S;
    reg [3:0] temp;
    wire [6:0] seg;
    wire [7:0] led;
    
    always @(*) 
    begin
        O_seg = seg;
        O_led = led;
    end

    reg [3:0] ID0, ID1, ID2, ID3, ID4, ID5, ID6, ID7, ID8;

    integer count;
    integer count_2;
    reg ck;
    reg ck2;

    integer s;

    initial begin
        ID0 = 9;
        ID1 = 3;
        ID2 = 0;
        ID3 = 0;
        ID4 = 2;
        ID5 = 2;
        ID6 = 1;
        ID7 = 2;
        ID8 = 2;
        s = 0;
    end

    always @(posedge clk) begin
        if(count == 32'd50000) begin
            count <= 1'b0;
            ck2 <= ~ck2;
        end
        else
            count <= count + 1'b1;
    end
    
    always @(posedge ck2) begin
        if(count_2 == 32'd400) begin
            count_2 <= 1'b0;
            ck <= ~ck;
        end
        else begin
            count_2 <= count_2 + 1'b1;
        end
    end
    

    always @(posedge ck2) begin
        s = (s + 1) % 8;
        S = s;
        case (s)
            0: I = ID0;
            1: I = ID1;
            2: I = ID2;
            3: I = ID3;
            4: I = ID4;
            5: I = ID5;
            6: I = ID6;
            7: I = ID7;
        endcase
    end
    

    always @(posedge ck) begin
        temp = ID8;
        ID8 = ID7;
        ID7 = ID6;
        ID6 = ID5;
        ID5 = ID4;
        ID4 = ID3;
        ID3 = ID2;
        ID2 = ID1;
        ID1 = ID0;
        ID0 = temp;
    end


endmodule 