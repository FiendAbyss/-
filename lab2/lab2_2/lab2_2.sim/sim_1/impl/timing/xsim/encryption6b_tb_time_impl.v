// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Oct  1 15:41:29 2023
// Host        : LAPTOP-83S8MCUQ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Abyss/Desktop/lab2/lab2_2/lab2_2.sim/sim_1/impl/timing/xsim/encryption6b_tb_time_impl.v
// Design      : encryption6b
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "f3f57fc9" *) 
(* NotValidForBitStream *)
module encryption6b
   (dataout,
    ready,
    key,
    clk,
    load,
    datain);
  output [7:0]dataout;
  output ready;
  output [5:0]key;
  input clk;
  input load;
  input [7:0]datain;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire [7:0]datain;
  wire [5:0]datain_IBUF;
  wire [7:0]dataout;
  wire [7:0]dataout_OBUF;
  wire [5:0]key;
  wire load;
  wire load_IBUF;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire ready;
  wire ready_OBUF;
  wire ready_i_1_n_0;
  wire [5:0]NLW_gen_key_OBUF_UNCONNECTED;

initial begin
 $sdf_annotate("encryption6b_tb_time_impl.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt[0]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \cnt[1]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \cnt[2]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .O(\cnt[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt[0]),
        .R(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt[1]),
        .R(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(cnt[2]),
        .R(load_IBUF));
  IBUF \datain_IBUF[0]_inst 
       (.I(datain[0]),
        .O(datain_IBUF[0]));
  IBUF \datain_IBUF[1]_inst 
       (.I(datain[1]),
        .O(datain_IBUF[1]));
  IBUF \datain_IBUF[2]_inst 
       (.I(datain[2]),
        .O(datain_IBUF[2]));
  IBUF \datain_IBUF[3]_inst 
       (.I(datain[3]),
        .O(datain_IBUF[3]));
  IBUF \datain_IBUF[4]_inst 
       (.I(datain[4]),
        .O(datain_IBUF[4]));
  IBUF \datain_IBUF[5]_inst 
       (.I(datain[5]),
        .O(datain_IBUF[5]));
  IBUF \datain_IBUF[6]_inst 
       (.I(datain[6]),
        .O(dataout_OBUF[6]));
  IBUF \datain_IBUF[7]_inst 
       (.I(datain[7]),
        .O(dataout_OBUF[7]));
  OBUF \dataout_OBUF[0]_inst 
       (.I(dataout_OBUF[0]),
        .O(dataout[0]));
  OBUF \dataout_OBUF[1]_inst 
       (.I(dataout_OBUF[1]),
        .O(dataout[1]));
  OBUF \dataout_OBUF[2]_inst 
       (.I(dataout_OBUF[2]),
        .O(dataout[2]));
  OBUF \dataout_OBUF[3]_inst 
       (.I(dataout_OBUF[3]),
        .O(dataout[3]));
  OBUF \dataout_OBUF[4]_inst 
       (.I(dataout_OBUF[4]),
        .O(dataout[4]));
  OBUF \dataout_OBUF[5]_inst 
       (.I(dataout_OBUF[5]),
        .O(dataout[5]));
  OBUF \dataout_OBUF[6]_inst 
       (.I(dataout_OBUF[6]),
        .O(dataout[6]));
  OBUF \dataout_OBUF[7]_inst 
       (.I(dataout_OBUF[7]),
        .O(dataout[7]));
  lfsr gen
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .datain_IBUF(datain_IBUF),
        .dataout_OBUF(dataout_OBUF[5:0]),
        .key_OBUF(NLW_gen_key_OBUF_UNCONNECTED[5:0]),
        .load_IBUF(load_IBUF),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \key_OBUF[0]_inst 
       (.I(lopt),
        .O(key[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \key_OBUF[1]_inst 
       (.I(lopt_1),
        .O(key[1]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \key_OBUF[2]_inst 
       (.I(lopt_2),
        .O(key[2]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \key_OBUF[3]_inst 
       (.I(lopt_3),
        .O(key[3]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \key_OBUF[4]_inst 
       (.I(lopt_4),
        .O(key[4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \key_OBUF[5]_inst 
       (.I(lopt_5),
        .O(key[5]));
  IBUF load_IBUF_inst
       (.I(load),
        .O(load_IBUF));
  OBUF ready_OBUF_inst
       (.I(ready_OBUF),
        .O(ready));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    ready_i_1
       (.I0(cnt[2]),
        .I1(cnt[0]),
        .I2(cnt[1]),
        .O(ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ready_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(ready_i_1_n_0),
        .Q(ready_OBUF),
        .R(load_IBUF));
endmodule

module lfsr
   (key_OBUF,
    dataout_OBUF,
    load_IBUF,
    clk_IBUF_BUFG,
    datain_IBUF,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  output [5:0]key_OBUF;
  output [5:0]dataout_OBUF;
  input load_IBUF;
  input clk_IBUF_BUFG;
  input [5:0]datain_IBUF;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;

  wire clk_IBUF_BUFG;
  wire [5:0]datain_IBUF;
  wire [5:0]dataout_OBUF;
  wire [57:0]dout;
  wire \dout_reg[58]_lopt_replica_1 ;
  wire \dout_reg[59]_lopt_replica_1 ;
  wire \dout_reg[60]_lopt_replica_1 ;
  wire \dout_reg[61]_lopt_replica_1 ;
  wire \dout_reg[62]_lopt_replica_1 ;
  wire \dout_reg[63]_lopt_replica_1 ;
  wire [5:0]key_OBUF;
  wire load_IBUF;
  wire [63:63]p_0_out__0;

  assign lopt = \dout_reg[58]_lopt_replica_1 ;
  assign lopt_1 = \dout_reg[59]_lopt_replica_1 ;
  assign lopt_2 = \dout_reg[60]_lopt_replica_1 ;
  assign lopt_3 = \dout_reg[61]_lopt_replica_1 ;
  assign lopt_4 = \dout_reg[62]_lopt_replica_1 ;
  assign lopt_5 = \dout_reg[63]_lopt_replica_1 ;
  LUT2 #(
    .INIT(4'h6)) 
    \dataout_OBUF[0]_inst_i_1 
       (.I0(key_OBUF[0]),
        .I1(datain_IBUF[0]),
        .O(dataout_OBUF[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dataout_OBUF[1]_inst_i_1 
       (.I0(key_OBUF[1]),
        .I1(datain_IBUF[1]),
        .O(dataout_OBUF[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dataout_OBUF[2]_inst_i_1 
       (.I0(key_OBUF[2]),
        .I1(datain_IBUF[2]),
        .O(dataout_OBUF[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dataout_OBUF[3]_inst_i_1 
       (.I0(key_OBUF[3]),
        .I1(datain_IBUF[3]),
        .O(dataout_OBUF[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dataout_OBUF[4]_inst_i_1 
       (.I0(key_OBUF[4]),
        .I1(datain_IBUF[4]),
        .O(dataout_OBUF[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dataout_OBUF[5]_inst_i_1 
       (.I0(key_OBUF[5]),
        .I1(datain_IBUF[5]),
        .O(dataout_OBUF[5]));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[1]),
        .Q(dout[0]),
        .R(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[11]),
        .Q(dout[10]),
        .S(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[12]),
        .Q(dout[11]),
        .R(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[13]),
        .Q(dout[12]),
        .S(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[14]),
        .Q(dout[13]),
        .S(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[15]),
        .Q(dout[14]),
        .S(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[16]),
        .Q(dout[15]),
        .R(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[17]),
        .Q(dout[16]),
        .S(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[18]),
        .Q(dout[17]),
        .R(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[19]),
        .Q(dout[18]),
        .S(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[20]),
        .Q(dout[19]),
        .S(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[2]),
        .Q(dout[1]),
        .R(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[21]),
        .Q(dout[20]),
        .R(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[22]),
        .Q(dout[21]),
        .S(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[23]),
        .Q(dout[22]),
        .R(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[24]),
        .Q(dout[23]),
        .S(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[25]),
        .Q(dout[24]),
        .S(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[26]),
        .Q(dout[25]),
        .S(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[27]),
        .Q(dout[26]),
        .R(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[28]),
        .Q(dout[27]),
        .R(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[29]),
        .Q(dout[28]),
        .R(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[30]),
        .Q(dout[29]),
        .R(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[3]),
        .Q(dout[2]),
        .S(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[31]),
        .Q(dout[30]),
        .R(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[32]),
        .Q(dout[31]),
        .S(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[33]),
        .Q(dout[32]),
        .S(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[34]),
        .Q(dout[33]),
        .R(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[35]),
        .Q(dout[34]),
        .R(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[36]),
        .Q(dout[35]),
        .R(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[37]),
        .Q(dout[36]),
        .S(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[38]),
        .Q(dout[37]),
        .S(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[39]),
        .Q(dout[38]),
        .S(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[40]),
        .Q(dout[39]),
        .R(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[4]),
        .Q(dout[3]),
        .R(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[41]),
        .Q(dout[40]),
        .S(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[42]),
        .Q(dout[41]),
        .R(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[43]),
        .Q(dout[42]),
        .S(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[44]),
        .Q(dout[43]),
        .S(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[45]),
        .Q(dout[44]),
        .S(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[46]),
        .Q(dout[45]),
        .S(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[47]),
        .Q(dout[46]),
        .S(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[48]),
        .Q(dout[47]),
        .S(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[49]),
        .Q(dout[48]),
        .S(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[50]),
        .Q(dout[49]),
        .R(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[5]),
        .Q(dout[4]),
        .R(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[51]),
        .Q(dout[50]),
        .S(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[52]),
        .Q(dout[51]),
        .R(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[53]),
        .Q(dout[52]),
        .R(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[54]),
        .Q(dout[53]),
        .R(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[55]),
        .Q(dout[54]),
        .S(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[56]),
        .Q(dout[55]),
        .R(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[57]),
        .Q(dout[56]),
        .R(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(key_OBUF[0]),
        .Q(dout[57]),
        .R(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(key_OBUF[1]),
        .Q(key_OBUF[0]),
        .R(load_IBUF));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[58]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(key_OBUF[1]),
        .Q(\dout_reg[58]_lopt_replica_1 ),
        .R(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(key_OBUF[2]),
        .Q(key_OBUF[1]),
        .S(load_IBUF));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[59]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(key_OBUF[2]),
        .Q(\dout_reg[59]_lopt_replica_1 ),
        .S(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[6]),
        .Q(dout[5]),
        .R(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(key_OBUF[3]),
        .Q(key_OBUF[2]),
        .R(load_IBUF));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[60]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(key_OBUF[3]),
        .Q(\dout_reg[60]_lopt_replica_1 ),
        .R(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(key_OBUF[4]),
        .Q(key_OBUF[3]),
        .S(load_IBUF));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[61]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(key_OBUF[4]),
        .Q(\dout_reg[61]_lopt_replica_1 ),
        .S(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(key_OBUF[5]),
        .Q(key_OBUF[4]),
        .R(load_IBUF));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[62]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(key_OBUF[5]),
        .Q(\dout_reg[62]_lopt_replica_1 ),
        .R(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_out__0),
        .Q(key_OBUF[5]),
        .S(load_IBUF));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[63]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_out__0),
        .Q(\dout_reg[63]_lopt_replica_1 ),
        .S(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[7]),
        .Q(dout[6]),
        .S(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[8]),
        .Q(dout[7]),
        .S(load_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[9]),
        .Q(dout[8]),
        .S(load_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[10]),
        .Q(dout[9]),
        .R(load_IBUF));
  LUT4 #(
    .INIT(16'h6996)) 
    p_0_out
       (.I0(dout[1]),
        .I1(dout[3]),
        .I2(dout[4]),
        .I3(dout[0]),
        .O(p_0_out__0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
