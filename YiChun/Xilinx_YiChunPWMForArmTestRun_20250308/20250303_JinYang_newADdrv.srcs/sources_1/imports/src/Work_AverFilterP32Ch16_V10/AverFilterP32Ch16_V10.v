// -------------------------------------------------------------
// 
// File Name: Work_AverFilterP32Ch16_V10\AverFilterP32Ch16_V10\AverFilterP32Ch16_V10.v
// Created: 2017-04-12 16:08:24
// 
// Generated by MATLAB 8.6 and HDL Coder 3.7
// 
// 
// -- -------------------------------------------------------------
// -- Rate and Clocking Details
// -- -------------------------------------------------------------
// Model base rate: 4e-08
// Target subsystem base rate: 4e-08
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: AverFilterP32Ch16_V10
// Source Path: AverFilterP32Ch16_V10/AverFilterP32Ch16_V10
// Hierarchy Level: 0
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module AverFilterP32Ch16_V10
          (
           g_clk,
           Rst_n,
           Module_On,
           Pulse,
           Filter_In0,
           Filter_In1,
           Filter_In2,
           Filter_In3,
           Filter_In4,
           Filter_In5,
           Filter_In6,
           Filter_In7,
           Filter_In8,
           Filter_In9,
           Filter_In10,
           Filter_In11,
           Filter_In12,
           Filter_In13,
           Filter_In14,
           Filter_In15,
           Filter_Out0,
           Filter_Out1,
           Filter_Out2,
           Filter_Out3,
           Filter_Out4,
           Filter_Out5,
           Filter_Out6,
           Filter_Out7,
           Filter_Out8,
           Filter_Out9,
           Filter_Out10,
           Filter_Out11,
           Filter_Out12,
           Filter_Out13,
           Filter_Out14,
           Filter_Out15
          );


  input   g_clk;
  input   Rst_n;
  input   Module_On;
  input   Pulse;
  input   signed [11:0] Filter_In0;  // sfix12
  input   signed [11:0] Filter_In1;  // sfix12
  input   signed [11:0] Filter_In2;  // sfix12
  input   signed [11:0] Filter_In3;  // sfix12
  input   signed [11:0] Filter_In4;  // sfix12
  input   signed [11:0] Filter_In5;  // sfix12
  input   signed [11:0] Filter_In6;  // sfix12
  input   signed [11:0] Filter_In7;  // sfix12
  input   signed [11:0] Filter_In8;  // sfix12
  input   signed [11:0] Filter_In9;  // sfix12
  input   signed [11:0] Filter_In10;  // sfix12
  input   signed [11:0] Filter_In11;  // sfix12
  input   signed [11:0] Filter_In12;  // sfix12
  input   signed [11:0] Filter_In13;  // sfix12
  input   signed [11:0] Filter_In14;  // sfix12
  input   signed [11:0] Filter_In15;  // sfix12
  output  signed [11:0] Filter_Out0;  // sfix12
  output  signed [11:0] Filter_Out1;  // sfix12
  output  signed [11:0] Filter_Out2;  // sfix12
  output  signed [11:0] Filter_Out3;  // sfix12
  output  signed [11:0] Filter_Out4;  // sfix12
  output  signed [11:0] Filter_Out5;  // sfix12
  output  signed [11:0] Filter_Out6;  // sfix12
  output  signed [11:0] Filter_Out7;  // sfix12
  output  signed [11:0] Filter_Out8;  // sfix12
  output  signed [11:0] Filter_Out9;  // sfix12
  output  signed [11:0] Filter_Out10;  // sfix12
  output  signed [11:0] Filter_Out11;  // sfix12
  output  signed [11:0] Filter_Out12;  // sfix12
  output  signed [11:0] Filter_Out13;  // sfix12
  output  signed [11:0] Filter_Out14;  // sfix12
  output  signed [11:0] Filter_Out15;  // sfix12


  wire [6:0] Constant2_out1_dtc;  // ufix7
  wire [6:0] Switch1_out1;  // ufix7
  wire [6:0] Add4_out1;  // ufix7
  wire CT43_out1;
  wire [6:0] Switch48_out1;  // ufix7
  reg [6:0] Unit_Delay43_out1;  // ufix7
  wire CT51_out1;
  wire CT52_out1;
  wire CT55_out1;
  wire CT57_out1;
  wire CT59_out1;
  wire CT61_out1;
  wire CT63_out1;
  wire CT65_out1;
  wire CT2_out1;
  wire CT4_out1;
  wire CT10_out1;
  wire CT12_out1;
  wire CT14_out1;
  wire CT16_out1;
  wire CT18_out1;
  wire CT20_out1;
  wire CT6_out1;
  wire CT8_out1;
  wire signed [11:0] signal1;  // sfix12
  wire signed [11:0] s;  // sfix12
  wire signed [11:0] signal1_1;  // sfix12
  wire signed [11:0] s_1;  // sfix12
  wire signed [11:0] signal1_2;  // sfix12
  wire signed [11:0] s_2;  // sfix12
  wire signed [11:0] signal1_3;  // sfix12
  wire signed [11:0] s_3;  // sfix12
  wire signed [11:0] signal1_4;  // sfix12
  wire signed [11:0] s_4;  // sfix12
  wire signed [11:0] signal1_5;  // sfix12
  wire signed [11:0] s_5;  // sfix12
  wire signed [11:0] signal1_6;  // sfix12
  wire signed [11:0] s_6;  // sfix12
  wire signed [11:0] signal1_7;  // sfix12
  wire signed [11:0] s_7;  // sfix12
  wire signed [11:0] signal1_8;  // sfix12
  wire signed [11:0] s_8;  // sfix12
  wire signed [11:0] signal1_9;  // sfix12
  wire signed [11:0] s_9;  // sfix12
  wire signed [11:0] signal1_10;  // sfix12
  wire signed [11:0] s_10;  // sfix12
  wire signed [11:0] signal1_11;  // sfix12
  wire signed [11:0] s_11;  // sfix12
  wire signed [11:0] signal1_12;  // sfix12
  wire signed [11:0] s_12;  // sfix12
  wire signed [11:0] signal1_13;  // sfix12
  wire signed [11:0] s_13;  // sfix12
  wire signed [11:0] signal1_14;  // sfix12
  wire signed [11:0] s_14;  // sfix12
  wire switch_compare_1;
  wire signed [11:0] signal1_15;  // sfix12
  wire signed [11:0] signal1_16;  // sfix12
  wire signed [11:0] signal1_17;  // sfix12
  wire signed [11:0] Switch84_out1;  // sfix12
  wire signed [11:0] Switch97_out1;  // sfix12
  wire [8:0] Switch83_out1;  // ufix9
  wire [8:0] Add11_out1;  // ufix9
  reg [8:0] Unit_Delay32_out1;  // ufix9
  wire Constant33_out1;
  wire [8:0] Add12_out1;  // ufix9
  wire signed [11:0] Simple_Dual_Port_RAM2_out1;  // sfix12
  wire switch_compare_1_1;
  wire signed [11:0] Switch98_out1;  // sfix12
  wire signed [17:0] Add7_stage2_1;  // sfix18
  wire signed [17:0] Add7_stage2_2;  // sfix18
  wire signed [17:0] Add7_op_stage2;  // sfix18
  wire CT7_out1;
  wire CT5_out1;
  wire CT19_out1;
  wire CT17_out1;
  wire CT15_out1;
  wire CT13_out1;
  wire CT11_out1;
  wire CT9_out1;
  wire CT3_out1;
  wire CT1_out1;
  wire CT64_out1;
  wire CT62_out1;
  wire CT60_out1;
  wire CT58_out1;
  wire CT56_out1;
  reg signed [16:0] Unit_Delay33_out1;  // sfix17
  wire signed [16:0] Switch79_out1;  // sfix17
  wire signed [16:0] Switch87_out1;  // sfix17
  wire signed [16:0] B24_out1_signal2;  // sfix17
  reg signed [16:0] Unit_Delay34_out1;  // sfix17
  wire signed [16:0] Switch89_out1;  // sfix17
  reg signed [16:0] Unit_Delay35_out1;  // sfix17
  wire signed [16:0] Switch91_out1;  // sfix17
  wire signed [16:0] B26_out1_signal2;  // sfix17
  reg signed [16:0] Unit_Delay36_out1;  // sfix17
  wire signed [16:0] Switch93_out1;  // sfix17
  reg signed [16:0] Unit_Delay37_out1;  // sfix17
  wire signed [16:0] Switch95_out1;  // sfix17
  wire signed [16:0] B29_out1_signal2;  // sfix17
  reg signed [16:0] Unit_Delay1_out1;  // sfix17
  wire signed [16:0] Switch2_out1;  // sfix17
  reg signed [16:0] Unit_Delay2_out1;  // sfix17
  wire signed [16:0] Switch4_out1;  // sfix17
  wire signed [16:0] B2_out1_signal2;  // sfix17
  reg signed [16:0] Unit_Delay5_out1;  // sfix17
  wire signed [16:0] Switch10_out1;  // sfix17
  reg signed [16:0] Unit_Delay6_out1;  // sfix17
  wire signed [16:0] Switch12_out1;  // sfix17
  wire signed [16:0] B6_out1_signal2;  // sfix17
  reg signed [16:0] Unit_Delay7_out1;  // sfix17
  wire signed [16:0] Switch14_out1;  // sfix17
  reg signed [16:0] Unit_Delay8_out1;  // sfix17
  wire signed [16:0] Switch16_out1;  // sfix17
  wire signed [16:0] B8_out1_signal2;  // sfix17
  reg signed [16:0] Unit_Delay9_out1;  // sfix17
  wire signed [16:0] Switch18_out1;  // sfix17
  reg signed [16:0] Unit_Delay10_out1;  // sfix17
  wire signed [16:0] Switch20_out1;  // sfix17
  wire signed [16:0] B10_out1_signal2;  // sfix17
  reg signed [16:0] Unit_Delay3_out1;  // sfix17
  wire signed [16:0] Switch6_out1;  // sfix17
  reg signed [16:0] Unit_Delay4_out1;  // sfix17
  wire signed [16:0] B4_out1_signal2;  // sfix17
  wire signed [16:0] Switch8_out1;  // sfix17
  wire signed [16:0] B4_out1_signal2_1;  // sfix17
  wire signed [16:0] signal2;  // sfix17
  wire signed [16:0] s_15;  // sfix17
  wire signed [16:0] signal2_1;  // sfix17
  wire signed [16:0] s_16;  // sfix17
  wire signed [16:0] signal2_2;  // sfix17
  wire signed [16:0] s_17;  // sfix17
  wire signed [16:0] signal2_3;  // sfix17
  wire signed [16:0] s_18;  // sfix17
  wire signed [16:0] signal2_4;  // sfix17
  wire signed [16:0] s_19;  // sfix17
  wire signed [16:0] signal2_5;  // sfix17
  wire signed [16:0] s_20;  // sfix17
  wire signed [16:0] signal2_6;  // sfix17
  wire signed [16:0] s_21;  // sfix17
  wire signed [16:0] signal2_7;  // sfix17
  wire signed [16:0] s_22;  // sfix17
  wire signed [16:0] signal2_8;  // sfix17
  wire signed [16:0] s_23;  // sfix17
  wire signed [16:0] signal2_9;  // sfix17
  wire signed [16:0] s_24;  // sfix17
  wire signed [16:0] signal2_10;  // sfix17
  wire signed [16:0] s_25;  // sfix17
  wire signed [16:0] signal2_11;  // sfix17
  wire signed [16:0] s_26;  // sfix17
  wire signed [16:0] signal2_12;  // sfix17
  wire signed [16:0] s_27;  // sfix17
  wire signed [16:0] signal2_13;  // sfix17
  wire signed [16:0] s_28;  // sfix17
  wire signed [16:0] signal2_14;  // sfix17
  wire signed [16:0] s_29;  // sfix17
  reg signed [16:0] Unit_Delay30_out1;  // sfix17
  wire signed [16:0] signal2_15;  // sfix17
  wire signed [16:0] signal2_16;  // sfix17
  wire signed [16:0] signal2_17;  // sfix17
  wire signed [17:0] Add7_stage3_add_temp;  // sfix18
  wire signed [17:0] Add7_stage3_1;  // sfix18
  wire signed [16:0] Add7_out1;  // sfix17
  wire signed [16:0] Switch80_out1;  // sfix17
  wire [11:0] Bit_Slice6_out1;  // ufix12
  wire signed [11:0] Data_Type_S11_out1;  // sfix12
  wire [11:0] Bit_Slice1_out1;  // ufix12
  wire signed [11:0] Data_Type_S12_out1;  // sfix12
  wire [11:0] Bit_Slice2_out1;  // ufix12
  wire signed [11:0] Data_Type_S13_out1;  // sfix12
  wire [11:0] Bit_Slice3_out1;  // ufix12
  wire signed [11:0] Data_Type_S15_out1;  // sfix12
  wire [11:0] Bit_Slice4_out1;  // ufix12
  wire signed [11:0] Data_Type_S16_out1;  // sfix12
  wire [11:0] Bit_Slice5_out1;  // ufix12
  wire signed [11:0] Data_Type_S17_out1;  // sfix12
  wire [11:0] Bit_Slice7_out1;  // ufix12
  wire signed [11:0] Data_Type_S1_out1;  // sfix12
  wire [11:0] Bit_Slice8_out1;  // ufix12
  wire signed [11:0] Data_Type_S2_out1;  // sfix12
  wire [11:0] Bit_Slice14_out1;  // ufix12
  wire signed [11:0] Data_Type_S4_out1;  // sfix12
  wire [11:0] Bit_Slice9_out1;  // ufix12
  wire signed [11:0] Data_Type_S5_out1;  // sfix12
  wire [11:0] Bit_Slice10_out1;  // ufix12
  wire signed [11:0] Data_Type_S6_out1;  // sfix12
  wire [11:0] Bit_Slice11_out1;  // ufix12
  wire signed [11:0] Data_Type_S7_out1;  // sfix12
  wire [11:0] Bit_Slice12_out1;  // ufix12
  wire signed [11:0] Data_Type_S8_out1;  // sfix12
  wire [11:0] Bit_Slice13_out1;  // ufix12
  wire signed [11:0] Data_Type_S9_out1;  // sfix12
  wire [11:0] Bit_Slice15_out1;  // ufix12
  wire signed [11:0] Data_Type_S3_out1;  // sfix12
  wire [11:0] Bit_Slice16_out1;  // ufix12
  wire signed [11:0] Data_Type_S10_out1;  // sfix12


  assign Constant2_out1_dtc = 7'b0000000;



  // <S1>/Add4
  assign Add4_out1 = 7'b0000001 + Switch1_out1;



  // <S1>/CT43
  assign CT43_out1 = Add4_out1 >= 7'b0010000;



  // <S1>/Switch48
  assign Switch48_out1 = (CT43_out1 == 1'b0 ? Add4_out1 :
              7'b0010000);



  // <S1>/Unit Delay43
  always @(posedge g_clk)
    begin : Unit_Delay43_process
      if (Rst_n == 1'b0) begin
        Unit_Delay43_out1 <= 7'b0000000;
      end
      else begin
        Unit_Delay43_out1 <= Switch48_out1;
      end
    end



  // <S1>/Switch1
  // 
  // <S1>/Goto3
  // 
  // <S1>/From14
  // 
  // <S1>/Goto3
  // 
  // <S1>/From78
  // 
  // <S1>/Goto3
  // 
  // <S1>/From76
  // 
  // <S1>/Goto3
  // 
  // <S1>/From65
  // 
  // <S1>/Goto3
  // 
  // <S1>/From63
  // 
  // <S1>/Goto3
  // 
  // <S1>/From60
  // 
  // <S1>/Goto3
  // 
  // <S1>/From58
  // 
  // <S1>/Goto3
  // 
  // <S1>/From54
  // 
  // <S1>/Goto3
  // 
  // <S1>/From52
  // 
  // <S1>/Goto3
  // 
  // <S1>/From49
  // 
  // <S1>/Goto3
  // 
  // <S1>/From47
  // 
  // <S1>/Goto3
  // 
  // <S1>/From44
  // 
  // <S1>/Goto3
  // 
  // <S1>/From42
  // 
  // <S1>/Goto3
  // 
  // <S1>/From39
  // 
  // <S1>/Goto3
  // 
  // <S1>/From36
  // 
  // <S1>/Goto3
  // 
  // <S1>/From34
  // 
  // <S1>/Goto3
  // 
  // <S1>/From32
  // 
  // <S1>/Goto3
  // 
  // <S1>/From24
  // 
  // <S1>/Goto3
  // 
  // <S1>/From22
  // 
  // <S1>/Goto3
  // 
  // <S1>/From199
  // 
  // <S1>/Goto3
  // 
  // <S1>/From197
  // 
  // <S1>/Goto3
  // 
  // <S1>/From194
  // 
  // <S1>/Goto3
  // 
  // <S1>/From192
  // 
  // <S1>/Goto3
  // 
  // <S1>/From189
  // 
  // <S1>/Goto3
  // 
  // <S1>/From187
  // 
  // <S1>/Goto3
  // 
  // <S1>/From184
  // 
  // <S1>/Goto3
  // 
  // <S1>/From182
  // 
  // <S1>/Goto3
  // 
  // <S1>/From179
  // 
  // <S1>/Goto3
  // 
  // <S1>/From177
  // 
  // <S1>/Goto3
  // 
  // <S1>/From174
  // 
  // <S1>/Goto3
  // 
  // <S1>/From170
  // 
  // <S1>/Goto3
  // 
  // <S1>/From168
  // 
  // <S1>/Goto3
  // 
  // <S1>/From16
  assign Switch1_out1 = (Pulse == 1'b0 ? Unit_Delay43_out1 :
              Constant2_out1_dtc);



  // <S1>/CT51
  assign CT51_out1 = Switch1_out1 == 7'b0000000;



  // <S1>/CT52
  assign CT52_out1 = Switch1_out1 < 7'b0010000;



  // <S1>/CT55
  assign CT55_out1 = Switch1_out1 == 7'b0000000;



  // <S1>/CT57
  assign CT57_out1 = Switch1_out1 == 7'b0000001;



  // <S1>/CT59
  assign CT59_out1 = Switch1_out1 == 7'b0000010;



  // <S1>/CT61
  assign CT61_out1 = Switch1_out1 == 7'b0000011;



  // <S1>/CT63
  assign CT63_out1 = Switch1_out1 == 7'b0000100;



  // <S1>/CT65
  assign CT65_out1 = Switch1_out1 == 7'b0000101;



  // <S1>/CT2
  assign CT2_out1 = Switch1_out1 == 7'b0000110;



  // <S1>/CT4
  assign CT4_out1 = Switch1_out1 == 7'b0000111;



  // <S1>/CT10
  assign CT10_out1 = Switch1_out1 == 7'b0001000;



  // <S1>/CT12
  assign CT12_out1 = Switch1_out1 == 7'b0001001;



  // <S1>/CT14
  assign CT14_out1 = Switch1_out1 == 7'b0001010;



  // <S1>/CT16
  assign CT16_out1 = Switch1_out1 == 7'b0001011;



  // <S1>/CT18
  assign CT18_out1 = Switch1_out1 == 7'b0001100;



  // <S1>/CT20
  assign CT20_out1 = Switch1_out1 == 7'b0001101;



  // <S1>/CT6
  assign CT6_out1 = Switch1_out1 == 7'b0001110;



  // <S1>/CT8
  assign CT8_out1 = Switch1_out1 == 7'b0001111;



  // <S1>/Switch9
  // 
  // <S1>/Switch9
  // 
  // <S1>/Switch9
  assign signal1 = (CT8_out1 == 1'b0 ? Filter_In15 :
              Filter_In15);



  // <S1>/Switch7
  assign s = signal1;

  // <S1>/Switch7
  // 
  // <S1>/Switch7
  // 
  // <S1>/Switch7
  assign signal1_1 = (CT6_out1 == 1'b0 ? s :
              Filter_In14);



  // <S1>/Switch21
  assign s_1 = signal1_1;

  // <S1>/Switch21
  // 
  // <S1>/Switch21
  // 
  // <S1>/Switch21
  assign signal1_2 = (CT20_out1 == 1'b0 ? s_1 :
              Filter_In13);



  // <S1>/Switch19
  assign s_2 = signal1_2;

  // <S1>/Switch19
  // 
  // <S1>/Switch19
  // 
  // <S1>/Switch19
  assign signal1_3 = (CT18_out1 == 1'b0 ? s_2 :
              Filter_In12);



  // <S1>/Switch17
  assign s_3 = signal1_3;

  // <S1>/Switch17
  // 
  // <S1>/Switch17
  // 
  // <S1>/Switch17
  assign signal1_4 = (CT16_out1 == 1'b0 ? s_3 :
              Filter_In11);



  // <S1>/Switch15
  assign s_4 = signal1_4;

  // <S1>/Switch15
  // 
  // <S1>/Switch15
  // 
  // <S1>/Switch15
  assign signal1_5 = (CT14_out1 == 1'b0 ? s_4 :
              Filter_In10);



  // <S1>/Switch13
  assign s_5 = signal1_5;

  // <S1>/Switch13
  // 
  // <S1>/Switch13
  // 
  // <S1>/Switch13
  assign signal1_6 = (CT12_out1 == 1'b0 ? s_5 :
              Filter_In9);



  // <S1>/Switch11
  assign s_6 = signal1_6;

  // <S1>/Switch11
  // 
  // <S1>/Switch11
  // 
  // <S1>/Switch11
  assign signal1_7 = (CT10_out1 == 1'b0 ? s_6 :
              Filter_In8);



  // <S1>/Switch5
  assign s_7 = signal1_7;

  // <S1>/Switch5
  // 
  // <S1>/Switch5
  // 
  // <S1>/Switch5
  assign signal1_8 = (CT4_out1 == 1'b0 ? s_7 :
              Filter_In7);



  // <S1>/Switch3
  assign s_8 = signal1_8;

  // <S1>/Switch3
  // 
  // <S1>/Switch3
  // 
  // <S1>/Switch3
  assign signal1_9 = (CT2_out1 == 1'b0 ? s_8 :
              Filter_In6);



  // <S1>/Switch96
  assign s_9 = signal1_9;

  // <S1>/Switch96
  // 
  // <S1>/Switch96
  // 
  // <S1>/Switch96
  assign signal1_10 = (CT65_out1 == 1'b0 ? s_9 :
              Filter_In5);



  // <S1>/Switch94
  assign s_10 = signal1_10;

  // <S1>/Switch94
  // 
  // <S1>/Switch94
  // 
  // <S1>/Switch94
  assign signal1_11 = (CT63_out1 == 1'b0 ? s_10 :
              Filter_In4);



  // <S1>/Switch92
  assign s_11 = signal1_11;

  // <S1>/Switch92
  // 
  // <S1>/Switch92
  // 
  // <S1>/Switch92
  assign signal1_12 = (CT61_out1 == 1'b0 ? s_11 :
              Filter_In3);



  // <S1>/Switch90
  assign s_12 = signal1_12;

  // <S1>/Switch90
  // 
  // <S1>/Switch90
  // 
  // <S1>/Switch90
  assign signal1_13 = (CT59_out1 == 1'b0 ? s_12 :
              Filter_In2);



  // <S1>/Switch88
  assign s_13 = signal1_13;

  // <S1>/Switch88
  // 
  // <S1>/Switch88
  // 
  // <S1>/Switch88
  assign signal1_14 = (CT57_out1 == 1'b0 ? s_13 :
              Filter_In1);



  // <S1>/Switch86
  assign s_14 = signal1_14;

  assign switch_compare_1 = Module_On > 1'b0;



  // <S1>/Switch86
  // 
  // <S1>/Switch86
  // 
  // <S1>/Switch86
  assign signal1_15 = (CT55_out1 == 1'b0 ? s_14 :
              Filter_In0);



  // <S1>/Bus Selector6
  // 
  // <S1>/Goto103
  assign signal1_16 = signal1_15;

  // <S1>/In13
  assign signal1_17 = signal1_16;

  // <S1>/Switch84
  assign Switch84_out1 = (switch_compare_1 == 1'b0 ? 12'sb000000000000 :
              signal1_17);



  // <S1>/Switch97
  assign Switch97_out1 = (CT52_out1 == 1'b0 ? 12'sb000000000000 :
              Switch84_out1);



  // <S1>/Switch83
  assign Switch83_out1 = (CT52_out1 == 1'b0 ? 9'b000000000 :
              9'b000000001);



  // <S1>/Unit Delay32
  always @(posedge g_clk)
    begin : Unit_Delay32_process
      if (Rst_n == 1'b0) begin
        Unit_Delay32_out1 <= 9'b000000000;
      end
      else begin
        Unit_Delay32_out1 <= Add11_out1;
      end
    end



  // <S1>/Add11
  assign Add11_out1 = Switch83_out1 + Unit_Delay32_out1;



  // <S1>/Constant33
  assign Constant33_out1 = 1'b1;



  // <S1>/Add12
  assign Add12_out1 = Add11_out1 + 9'b000000001;



  // <S1>/Simple Dual Port RAM2
  // 
  // <S1>/Goto1
  // 
  // <S1>/From12
  // 
  // <S1>/Goto10
  // 
  // <S1>/From2
  // 
  // <S1>/Goto11
  // 
  // <S1>/From4
  // 
  // <S1>/Goto12
  // 
  // <S1>/From3
  // 
  // <S1>/Goto13
  // 
  // <S1>/From6
  // 
  // <S1>/Goto14
  // 
  // <S1>/From5
  // 
  // <S1>/Goto2
  // 
  // <S1>/From148
  // 
  // <S1>/Goto21
  // 
  // <S1>/From20
  // 
  // <S1>/Goto22
  // 
  // <S1>/From28
  // 
  // <S1>/Goto24
  // 
  // <S1>/From66
  // 
  // <S1>/Goto27
  // 
  // <S1>/From84
  // 
  // <S1>/Goto49
  // 
  // <S1>/From83
  // 
  // <S1>/Goto50
  // 
  // <S1>/From86
  // 
  // <S1>/Goto51
  // 
  // <S1>/From85
  // 
  // <S1>/Goto52
  // 
  // <S1>/From67
  // 
  // <S1>/Goto53
  // 
  // <S1>/From82
  // 
  // <S1>/Goto54
  // 
  // <S1>/From30
  // 
  // <S1>/Goto9
  // 
  // <S1>/From1
  // 
  // <S1>/B1
  // 
  // <S1>/Goto16
  // 
  // <S1>/From15
  // 
  // <S1>/B10
  // 
  // <S1>/Goto37
  // 
  // <S1>/From64
  // 
  // <S1>/B2
  // 
  // <S1>/Goto19
  // 
  // <S1>/From23
  // 
  // <S1>/B23
  // 
  // <S1>/Goto104
  // 
  // <S1>/From173
  // 
  // <S1>/B24
  // 
  // <S1>/Goto107
  // 
  // <S1>/From178
  // 
  // <S1>/B25
  // 
  // <S1>/Goto110
  // 
  // <S1>/From183
  // 
  // <S1>/B26
  // 
  // <S1>/Goto113
  // 
  // <S1>/From188
  // 
  // <S1>/B27
  // 
  // <S1>/Goto116
  // 
  // <S1>/From193
  // 
  // <S1>/B29
  // 
  // <S1>/Goto119
  // 
  // <S1>/From198
  // 
  // <S1>/B3
  // 
  // <S1>/Goto39
  // 
  // <S1>/From33
  // 
  // <S1>/B4
  // 
  // <S1>/Goto42
  // 
  // <S1>/From77
  // 
  // <S1>/B5
  // 
  // <S1>/Goto25
  // 
  // <S1>/From38
  // 
  // <S1>/B6
  // 
  // <S1>/Goto28
  // 
  // <S1>/From43
  // 
  // <S1>/B7
  // 
  // <S1>/Goto31
  // 
  // <S1>/From48
  // 
  // <S1>/B8
  // 
  // <S1>/Goto33
  // 
  // <S1>/From53
  // 
  // <S1>/B9
  // 
  // <S1>/Goto35
  // 
  // <S1>/From59
  // 
  // <S1>/Switch11
  // 
  // <S1>/Switch13
  // 
  // <S1>/Switch15
  // 
  // <S1>/Switch17
  // 
  // <S1>/Switch19
  // 
  // <S1>/Switch21
  // 
  // <S1>/Switch3
  // 
  // <S1>/Switch5
  // 
  // <S1>/Switch7
  // 
  // <S1>/Switch86
  // 
  // <S1>/Switch88
  // 
  // <S1>/Switch9
  // 
  // <S1>/Switch90
  // 
  // <S1>/Switch92
  // 
  // <S1>/Switch94
  // 
  // <S1>/Switch96
  // 
  // <S1>/Goto2
  // 
  // <S1>/From169
  // 
  // <S1>/Goto53
  // 
  // <S1>/From82
  // 
  // <S1>/B4
  // 
  // <S1>/Goto42
  // 
  // <S1>/From80
  // 
  // <S1>/Switch9
  AverFilterP32Ch16_V10_SimpDualPortRAM_Wrapper_512x12b   u_Simple_Dual_Port_RAM2   (.g_clk(g_clk),
                                                               .wr_din(Switch84_out1),  // sfix12
                                                               .wr_addr(Add11_out1),  // ufix9
                                                               .wr_en(Constant33_out1),
                                                               .rd_addr(Add12_out1),  // ufix9
                                                               .rd_dout(Simple_Dual_Port_RAM2_out1)  // sfix12
                                                               );

  assign switch_compare_1_1 = Module_On > 1'b0;



  // <S1>/Switch98
  assign Switch98_out1 = (CT52_out1 == 1'b0 ? 12'sb000000000000 :
              Simple_Dual_Port_RAM2_out1);



  assign Add7_stage2_1 = {{6{Switch97_out1[11]}}, Switch97_out1};
  assign Add7_stage2_2 = {{6{Switch98_out1[11]}}, Switch98_out1};
  assign Add7_op_stage2 = Add7_stage2_1 - Add7_stage2_2;



  // <S1>/CT7
  assign CT7_out1 = Switch1_out1 == 7'b0001111;



  // <S1>/CT5
  assign CT5_out1 = Switch1_out1 == 7'b0001110;



  // <S1>/CT19
  assign CT19_out1 = Switch1_out1 == 7'b0001101;



  // <S1>/CT17
  assign CT17_out1 = Switch1_out1 == 7'b0001100;



  // <S1>/CT15
  assign CT15_out1 = Switch1_out1 == 7'b0001011;



  // <S1>/CT13
  assign CT13_out1 = Switch1_out1 == 7'b0001010;



  // <S1>/CT11
  assign CT11_out1 = Switch1_out1 == 7'b0001001;



  // <S1>/CT9
  assign CT9_out1 = Switch1_out1 == 7'b0001000;



  // <S1>/CT3
  assign CT3_out1 = Switch1_out1 == 7'b0000111;



  // <S1>/CT1
  assign CT1_out1 = Switch1_out1 == 7'b0000110;



  // <S1>/CT64
  assign CT64_out1 = Switch1_out1 == 7'b0000101;



  // <S1>/CT62
  assign CT62_out1 = Switch1_out1 == 7'b0000100;



  // <S1>/CT60
  assign CT60_out1 = Switch1_out1 == 7'b0000011;



  // <S1>/CT58
  assign CT58_out1 = Switch1_out1 == 7'b0000010;



  // <S1>/CT56
  assign CT56_out1 = Switch1_out1 == 7'b0000001;



  // <S1>/Switch87
  assign Switch87_out1 = (CT56_out1 == 1'b0 ? Unit_Delay33_out1 :
              Switch79_out1);



  // <S1>/Unit Delay33
  // 
  // <S1>/Goto105
  // 
  // <S1>/From180
  // 
  // <S1>/Goto105
  // 
  // <S1>/From205
  always @(posedge g_clk)
    begin : Unit_Delay33_process
      if (Rst_n == 1'b0) begin
        Unit_Delay33_out1 <= 17'sb00000000000000000;
      end
      else begin
        Unit_Delay33_out1 <= Switch87_out1;
      end
    end



  assign B24_out1_signal2 = Unit_Delay33_out1;

  // <S1>/Switch89
  assign Switch89_out1 = (CT58_out1 == 1'b0 ? Unit_Delay34_out1 :
              Switch79_out1);



  // <S1>/Unit Delay34
  // 
  // <S1>/Goto108
  // 
  // <S1>/From185
  // 
  // <S1>/Goto108
  // 
  // <S1>/From212
  always @(posedge g_clk)
    begin : Unit_Delay34_process
      if (Rst_n == 1'b0) begin
        Unit_Delay34_out1 <= 17'sb00000000000000000;
      end
      else begin
        Unit_Delay34_out1 <= Switch89_out1;
      end
    end



  // <S1>/Switch91
  assign Switch91_out1 = (CT60_out1 == 1'b0 ? Unit_Delay35_out1 :
              Switch79_out1);



  // <S1>/Unit Delay35
  // 
  // <S1>/Goto111
  // 
  // <S1>/From190
  // 
  // <S1>/Goto111
  // 
  // <S1>/From213
  always @(posedge g_clk)
    begin : Unit_Delay35_process
      if (Rst_n == 1'b0) begin
        Unit_Delay35_out1 <= 17'sb00000000000000000;
      end
      else begin
        Unit_Delay35_out1 <= Switch91_out1;
      end
    end



  assign B26_out1_signal2 = Unit_Delay35_out1;

  // <S1>/Switch93
  assign Switch93_out1 = (CT62_out1 == 1'b0 ? Unit_Delay36_out1 :
              Switch79_out1);



  // <S1>/Unit Delay36
  // 
  // <S1>/Goto114
  // 
  // <S1>/From195
  // 
  // <S1>/Goto114
  // 
  // <S1>/From216
  always @(posedge g_clk)
    begin : Unit_Delay36_process
      if (Rst_n == 1'b0) begin
        Unit_Delay36_out1 <= 17'sb00000000000000000;
      end
      else begin
        Unit_Delay36_out1 <= Switch93_out1;
      end
    end



  // <S1>/Switch95
  assign Switch95_out1 = (CT64_out1 == 1'b0 ? Unit_Delay37_out1 :
              Switch79_out1);



  // <S1>/Unit Delay37
  // 
  // <S1>/Goto117
  // 
  // <S1>/From200
  // 
  // <S1>/Goto117
  // 
  // <S1>/From217
  always @(posedge g_clk)
    begin : Unit_Delay37_process
      if (Rst_n == 1'b0) begin
        Unit_Delay37_out1 <= 17'sb00000000000000000;
      end
      else begin
        Unit_Delay37_out1 <= Switch95_out1;
      end
    end



  assign B29_out1_signal2 = Unit_Delay37_out1;

  // <S1>/Switch2
  assign Switch2_out1 = (CT1_out1 == 1'b0 ? Unit_Delay1_out1 :
              Switch79_out1);



  // <S1>/Unit Delay1
  // 
  // <S1>/Goto15
  // 
  // <S1>/From17
  // 
  // <S1>/Goto15
  // 
  // <S1>/From19
  always @(posedge g_clk)
    begin : Unit_Delay1_process
      if (Rst_n == 1'b0) begin
        Unit_Delay1_out1 <= 17'sb00000000000000000;
      end
      else begin
        Unit_Delay1_out1 <= Switch2_out1;
      end
    end



  // <S1>/Switch4
  assign Switch4_out1 = (CT3_out1 == 1'b0 ? Unit_Delay2_out1 :
              Switch79_out1);



  // <S1>/Unit Delay2
  // 
  // <S1>/Goto18
  // 
  // <S1>/From25
  // 
  // <S1>/Goto18
  // 
  // <S1>/From27
  always @(posedge g_clk)
    begin : Unit_Delay2_process
      if (Rst_n == 1'b0) begin
        Unit_Delay2_out1 <= 17'sb00000000000000000;
      end
      else begin
        Unit_Delay2_out1 <= Switch4_out1;
      end
    end



  assign B2_out1_signal2 = Unit_Delay2_out1;

  // <S1>/Switch10
  assign Switch10_out1 = (CT9_out1 == 1'b0 ? Unit_Delay5_out1 :
              Switch79_out1);



  // <S1>/Unit Delay5
  // 
  // <S1>/Goto23
  // 
  // <S1>/From40
  // 
  // <S1>/Goto23
  // 
  // <S1>/From69
  always @(posedge g_clk)
    begin : Unit_Delay5_process
      if (Rst_n == 1'b0) begin
        Unit_Delay5_out1 <= 17'sb00000000000000000;
      end
      else begin
        Unit_Delay5_out1 <= Switch10_out1;
      end
    end



  // <S1>/Switch12
  assign Switch12_out1 = (CT11_out1 == 1'b0 ? Unit_Delay6_out1 :
              Switch79_out1);



  // <S1>/Unit Delay6
  // 
  // <S1>/Goto26
  // 
  // <S1>/From45
  // 
  // <S1>/Goto26
  // 
  // <S1>/From70
  always @(posedge g_clk)
    begin : Unit_Delay6_process
      if (Rst_n == 1'b0) begin
        Unit_Delay6_out1 <= 17'sb00000000000000000;
      end
      else begin
        Unit_Delay6_out1 <= Switch12_out1;
      end
    end



  assign B6_out1_signal2 = Unit_Delay6_out1;

  // <S1>/Switch14
  assign Switch14_out1 = (CT13_out1 == 1'b0 ? Unit_Delay7_out1 :
              Switch79_out1);



  // <S1>/Unit Delay7
  // 
  // <S1>/Goto29
  // 
  // <S1>/From50
  // 
  // <S1>/Goto29
  // 
  // <S1>/From72
  always @(posedge g_clk)
    begin : Unit_Delay7_process
      if (Rst_n == 1'b0) begin
        Unit_Delay7_out1 <= 17'sb00000000000000000;
      end
      else begin
        Unit_Delay7_out1 <= Switch14_out1;
      end
    end



  // <S1>/Switch16
  assign Switch16_out1 = (CT15_out1 == 1'b0 ? Unit_Delay8_out1 :
              Switch79_out1);



  // <S1>/Unit Delay8
  // 
  // <S1>/Goto32
  // 
  // <S1>/From56
  // 
  // <S1>/Goto32
  // 
  // <S1>/From73
  always @(posedge g_clk)
    begin : Unit_Delay8_process
      if (Rst_n == 1'b0) begin
        Unit_Delay8_out1 <= 17'sb00000000000000000;
      end
      else begin
        Unit_Delay8_out1 <= Switch16_out1;
      end
    end



  assign B8_out1_signal2 = Unit_Delay8_out1;

  // <S1>/Switch18
  assign Switch18_out1 = (CT17_out1 == 1'b0 ? Unit_Delay9_out1 :
              Switch79_out1);



  // <S1>/Unit Delay9
  // 
  // <S1>/Goto34
  // 
  // <S1>/From61
  // 
  // <S1>/Goto34
  // 
  // <S1>/From74
  always @(posedge g_clk)
    begin : Unit_Delay9_process
      if (Rst_n == 1'b0) begin
        Unit_Delay9_out1 <= 17'sb00000000000000000;
      end
      else begin
        Unit_Delay9_out1 <= Switch18_out1;
      end
    end



  // <S1>/Switch20
  assign Switch20_out1 = (CT19_out1 == 1'b0 ? Unit_Delay10_out1 :
              Switch79_out1);



  // <S1>/Unit Delay10
  // 
  // <S1>/Goto36
  // 
  // <S1>/From68
  // 
  // <S1>/Goto36
  // 
  // <S1>/From75
  always @(posedge g_clk)
    begin : Unit_Delay10_process
      if (Rst_n == 1'b0) begin
        Unit_Delay10_out1 <= 17'sb00000000000000000;
      end
      else begin
        Unit_Delay10_out1 <= Switch20_out1;
      end
    end



  assign B10_out1_signal2 = Unit_Delay10_out1;

  // <S1>/Switch6
  assign Switch6_out1 = (CT5_out1 == 1'b0 ? Unit_Delay3_out1 :
              Switch79_out1);



  // <S1>/Unit Delay3
  // 
  // <S1>/Goto38
  // 
  // <S1>/From37
  // 
  // <S1>/Goto38
  // 
  // <S1>/From55
  always @(posedge g_clk)
    begin : Unit_Delay3_process
      if (Rst_n == 1'b0) begin
        Unit_Delay3_out1 <= 17'sb00000000000000000;
      end
      else begin
        Unit_Delay3_out1 <= Switch6_out1;
      end
    end



  assign B4_out1_signal2 = Unit_Delay4_out1;

  // <S1>/Switch8
  assign Switch8_out1 = (CT7_out1 == 1'b0 ? Unit_Delay4_out1 :
              Switch79_out1);



  // <S1>/Unit Delay4
  // 
  // <S1>/Goto41
  // 
  // <S1>/From79
  // 
  // <S1>/Goto41
  // 
  // <S1>/From81
  // 
  // <S1>/Goto41
  // 
  // <S1>/From79
  always @(posedge g_clk)
    begin : Unit_Delay4_process
      if (Rst_n == 1'b0) begin
        Unit_Delay4_out1 <= 17'sb00000000000000000;
      end
      else begin
        Unit_Delay4_out1 <= Switch8_out1;
      end
    end



  assign B4_out1_signal2_1 = Unit_Delay4_out1;

  // <S1>/Switch9
  assign signal2 = (CT8_out1 == 1'b0 ? B4_out1_signal2_1 :
              B4_out1_signal2);



  assign s_15 = signal2;

  // <S1>/Switch7
  assign signal2_1 = (CT6_out1 == 1'b0 ? s_15 :
              Unit_Delay3_out1);



  assign s_16 = signal2_1;

  // <S1>/Switch21
  assign signal2_2 = (CT20_out1 == 1'b0 ? s_16 :
              B10_out1_signal2);



  assign s_17 = signal2_2;

  // <S1>/Switch19
  assign signal2_3 = (CT18_out1 == 1'b0 ? s_17 :
              Unit_Delay9_out1);



  assign s_18 = signal2_3;

  // <S1>/Switch17
  assign signal2_4 = (CT16_out1 == 1'b0 ? s_18 :
              B8_out1_signal2);



  assign s_19 = signal2_4;

  // <S1>/Switch15
  assign signal2_5 = (CT14_out1 == 1'b0 ? s_19 :
              Unit_Delay7_out1);



  assign s_20 = signal2_5;

  // <S1>/Switch13
  assign signal2_6 = (CT12_out1 == 1'b0 ? s_20 :
              B6_out1_signal2);



  assign s_21 = signal2_6;

  // <S1>/Switch11
  assign signal2_7 = (CT10_out1 == 1'b0 ? s_21 :
              Unit_Delay5_out1);



  assign s_22 = signal2_7;

  // <S1>/Switch5
  assign signal2_8 = (CT4_out1 == 1'b0 ? s_22 :
              B2_out1_signal2);



  assign s_23 = signal2_8;

  // <S1>/Switch3
  assign signal2_9 = (CT2_out1 == 1'b0 ? s_23 :
              Unit_Delay1_out1);



  assign s_24 = signal2_9;

  // <S1>/Switch96
  assign signal2_10 = (CT65_out1 == 1'b0 ? s_24 :
              B29_out1_signal2);



  assign s_25 = signal2_10;

  // <S1>/Switch94
  assign signal2_11 = (CT63_out1 == 1'b0 ? s_25 :
              Unit_Delay36_out1);



  assign s_26 = signal2_11;

  // <S1>/Switch92
  assign signal2_12 = (CT61_out1 == 1'b0 ? s_26 :
              B26_out1_signal2);



  assign s_27 = signal2_12;

  // <S1>/Switch90
  assign signal2_13 = (CT59_out1 == 1'b0 ? s_27 :
              Unit_Delay34_out1);



  assign s_28 = signal2_13;

  // <S1>/Switch88
  assign signal2_14 = (CT57_out1 == 1'b0 ? s_28 :
              B24_out1_signal2);



  assign s_29 = signal2_14;

  // <S1>/Switch86
  assign signal2_15 = (CT55_out1 == 1'b0 ? s_29 :
              Unit_Delay30_out1);



  // <S1>/Goto106
  assign signal2_16 = signal2_15;

  // <S1>/In12
  assign signal2_17 = signal2_16;

  // <S1>/Add7
  assign Add7_stage3_1 = {signal2_17[16], signal2_17};
  assign Add7_stage3_add_temp = Add7_op_stage2 + Add7_stage3_1;
  assign Add7_out1 = Add7_stage3_add_temp[16:0];



  // <S1>/Switch79
  // 
  // <S1>/Goto95
  // 
  // <S1>/From13
  // 
  // <S1>/Goto95
  // 
  // <S1>/From71
  // 
  // <S1>/Goto95
  // 
  // <S1>/From62
  // 
  // <S1>/Goto95
  // 
  // <S1>/From57
  // 
  // <S1>/Goto95
  // 
  // <S1>/From51
  // 
  // <S1>/Goto95
  // 
  // <S1>/From46
  // 
  // <S1>/Goto95
  // 
  // <S1>/From41
  // 
  // <S1>/Goto95
  // 
  // <S1>/From35
  // 
  // <S1>/Goto95
  // 
  // <S1>/From31
  // 
  // <S1>/Goto95
  // 
  // <S1>/From21
  // 
  // <S1>/Goto95
  // 
  // <S1>/From196
  // 
  // <S1>/Goto95
  // 
  // <S1>/From191
  // 
  // <S1>/Goto95
  // 
  // <S1>/From186
  // 
  // <S1>/Goto95
  // 
  // <S1>/From181
  // 
  // <S1>/Goto95
  // 
  // <S1>/From176
  // 
  // <S1>/Goto95
  // 
  // <S1>/From167
  assign Switch79_out1 = (switch_compare_1_1 == 1'b0 ? 17'sb00000000000000000 :
              Add7_out1);



  // <S1>/Switch80
  assign Switch80_out1 = (CT51_out1 == 1'b0 ? Unit_Delay30_out1 :
              Switch79_out1);



  // <S1>/Unit Delay30
  // 
  // <S1>/Goto101
  // 
  // <S1>/From175
  // 
  // <S1>/Goto101
  // 
  // <S1>/From204
  always @(posedge g_clk)
    begin : Unit_Delay30_process
      if (Rst_n == 1'b0) begin
        Unit_Delay30_out1 <= 17'sb00000000000000000;
      end
      else begin
        Unit_Delay30_out1 <= Switch80_out1;
      end
    end



  // <S1>/Bit Slice6
  assign Bit_Slice6_out1 = Unit_Delay30_out1[16:5];



  // <S1>/Data Type S11
  // 
  // <S1>/Goto109
  // 
  // <S1>/From
  assign Data_Type_S11_out1 = Bit_Slice6_out1;



  assign Filter_Out0 = Data_Type_S11_out1;

  // <S1>/Bit Slice1
  assign Bit_Slice1_out1 = Unit_Delay33_out1[16:5];



  // <S1>/Data Type S12
  // 
  // <S1>/Goto4
  // 
  // <S1>/From7
  assign Data_Type_S12_out1 = Bit_Slice1_out1;



  assign Filter_Out1 = Data_Type_S12_out1;

  // <S1>/Bit Slice2
  assign Bit_Slice2_out1 = Unit_Delay34_out1[16:5];



  // <S1>/Data Type S13
  // 
  // <S1>/Goto5
  // 
  // <S1>/From8
  assign Data_Type_S13_out1 = Bit_Slice2_out1;



  assign Filter_Out2 = Data_Type_S13_out1;

  // <S1>/Bit Slice3
  assign Bit_Slice3_out1 = Unit_Delay35_out1[16:5];



  // <S1>/Data Type S15
  // 
  // <S1>/Goto6
  // 
  // <S1>/From9
  assign Data_Type_S15_out1 = Bit_Slice3_out1;



  assign Filter_Out3 = Data_Type_S15_out1;

  // <S1>/Bit Slice4
  assign Bit_Slice4_out1 = Unit_Delay36_out1[16:5];



  // <S1>/Data Type S16
  // 
  // <S1>/Goto7
  // 
  // <S1>/From10
  assign Data_Type_S16_out1 = Bit_Slice4_out1;



  assign Filter_Out4 = Data_Type_S16_out1;

  // <S1>/Bit Slice5
  assign Bit_Slice5_out1 = Unit_Delay37_out1[16:5];



  // <S1>/Data Type S17
  // 
  // <S1>/Goto8
  // 
  // <S1>/From11
  assign Data_Type_S17_out1 = Bit_Slice5_out1;



  assign Filter_Out5 = Data_Type_S17_out1;

  // <S1>/Bit Slice7
  assign Bit_Slice7_out1 = Unit_Delay1_out1[16:5];



  // <S1>/Data Type S1
  // 
  // <S1>/Goto17
  // 
  // <S1>/From18
  assign Data_Type_S1_out1 = Bit_Slice7_out1;



  assign Filter_Out6 = Data_Type_S1_out1;

  // <S1>/Bit Slice8
  assign Bit_Slice8_out1 = Unit_Delay2_out1[16:5];



  // <S1>/Data Type S2
  // 
  // <S1>/Goto20
  // 
  // <S1>/From29
  assign Data_Type_S2_out1 = Bit_Slice8_out1;



  assign Filter_Out7 = Data_Type_S2_out1;

  // <S1>/Bit Slice14
  assign Bit_Slice14_out1 = Unit_Delay5_out1[16:5];



  // <S1>/Data Type S4
  // 
  // <S1>/Goto30
  // 
  // <S1>/From26
  assign Data_Type_S4_out1 = Bit_Slice14_out1;



  assign Filter_Out8 = Data_Type_S4_out1;

  // <S1>/Bit Slice9
  assign Bit_Slice9_out1 = Unit_Delay6_out1[16:5];



  // <S1>/Data Type S5
  // 
  // <S1>/Goto44
  // 
  // <S1>/From91
  assign Data_Type_S5_out1 = Bit_Slice9_out1;



  assign Filter_Out9 = Data_Type_S5_out1;

  // <S1>/Bit Slice10
  assign Bit_Slice10_out1 = Unit_Delay7_out1[16:5];



  // <S1>/Data Type S6
  // 
  // <S1>/Goto45
  // 
  // <S1>/From92
  assign Data_Type_S6_out1 = Bit_Slice10_out1;



  assign Filter_Out10 = Data_Type_S6_out1;

  // <S1>/Bit Slice11
  assign Bit_Slice11_out1 = Unit_Delay8_out1[16:5];



  // <S1>/Data Type S7
  // 
  // <S1>/Goto46
  // 
  // <S1>/From93
  assign Data_Type_S7_out1 = Bit_Slice11_out1;



  assign Filter_Out11 = Data_Type_S7_out1;

  // <S1>/Bit Slice12
  assign Bit_Slice12_out1 = Unit_Delay9_out1[16:5];



  // <S1>/Data Type S8
  // 
  // <S1>/Goto47
  // 
  // <S1>/From87
  assign Data_Type_S8_out1 = Bit_Slice12_out1;



  assign Filter_Out12 = Data_Type_S8_out1;

  // <S1>/Bit Slice13
  assign Bit_Slice13_out1 = Unit_Delay10_out1[16:5];



  // <S1>/Data Type S9
  // 
  // <S1>/Goto48
  // 
  // <S1>/From88
  assign Data_Type_S9_out1 = Bit_Slice13_out1;



  assign Filter_Out13 = Data_Type_S9_out1;

  // <S1>/Bit Slice15
  assign Bit_Slice15_out1 = Unit_Delay3_out1[16:5];



  // <S1>/Data Type S3
  // 
  // <S1>/Goto40
  // 
  // <S1>/From89
  assign Data_Type_S3_out1 = Bit_Slice15_out1;



  assign Filter_Out14 = Data_Type_S3_out1;

  // <S1>/Bit Slice16
  assign Bit_Slice16_out1 = Unit_Delay4_out1[16:5];



  // <S1>/Data Type S10
  // 
  // <S1>/Goto43
  // 
  // <S1>/From90
  assign Data_Type_S10_out1 = Bit_Slice16_out1;



  assign Filter_Out15 = Data_Type_S10_out1;

endmodule  // AverFilterP32Ch16_V10

