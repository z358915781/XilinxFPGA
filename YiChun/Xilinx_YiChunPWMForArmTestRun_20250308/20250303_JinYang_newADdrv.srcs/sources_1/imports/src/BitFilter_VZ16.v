// -------------------------------------------------------------
// 
// File Name: D:\WORK_NEW2\2021\BitFilter_VZ16\BitFilter_VZ16.v
// Created: 2021-12-14 14:55:58
// 
// Generated by MATLAB 9.1 and HDL Coder 3.9
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
// Module: BitFilter_VZ16
// Source Path: BitFilter_VZ16/BitFilter_VZ16
// Hierarchy Level: 0
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module BitFilter_VZ16
          (
           g_clk,
           Rst_n,
           Filter_Reset,
           In0,
           In1,
           In2,
           In3,
           In4,
           In5,
           In6,
           In7,
           CNT_b12,
           BitFltedOut0,
           BitFltedOut1,
           BitFltedOut2,
           BitFltedOut3,
           BitFltedOut4,
           BitFltedOut5,
           BitFltedOut6,
           BitFltedOut7
          );



  input   g_clk;
  input   Rst_n;
  input   Filter_Reset;
  input   In0;
  input   In1;
  input   In2;
  input   In3;
  input   In4;
  input   In5;
  input   In6;
  input   In7;
  input   signed [11:0] CNT_b12;  // sfix12
  output  BitFltedOut0;
  output  BitFltedOut1;
  output  BitFltedOut2;
  output  BitFltedOut3;
  output  BitFltedOut4;
  output  BitFltedOut5;
  output  BitFltedOut6;
  output  BitFltedOut7;

  reg [2:0] Unit_Delay43_out1;  // ufix3
  wire [2:0] Add1_out1;  // ufix3
  wire CT41_out1;
  wire CT1_out1;
  reg  Unit_Delay4_out1;
  wire Switch4_out1;
  wire Switch1_out1;
  wire Or2_out1;
  wire Switch5_out1;
  reg  Unit_Delay6_out1;
  wire CT2_out1;
  wire CT4_out1;
  wire CT3_out1;
  wire CT8_out1;
  wire CT5_out1;
  wire CT7_out1;
  wire CT6_out1;
  wire signal1;
  wire s;
  wire signal1_1;
  wire s_1;
  wire signal1_2;
  wire s_2;
  wire signal1_3;
  wire s_3;
  wire signal1_4;
  wire s_4;
  wire signal1_5;
  wire s_5;
  wire signal1_6;
  wire s_6;
  wire signal1_7;
  wire signal1_8;
  wire signal1_9;
  wire signed [11:0] Switch3_out1;  // sfix12
  reg signed [11:0] Unit_Delay22_out1;  // sfix12
  wire signed [11:0] Switch27_out1;  // sfix12
  wire signed [11:0] Switch46_out1;  // sfix12
  wire signed [11:0] Bus_Creator12_out1_signal2;  // sfix12
  reg signed [11:0] Unit_Delay1_out1;  // sfix12
  wire signed [11:0] Switch7_out1;  // sfix12
  wire signed [11:0] Bus_Creator1_out1_signal2;  // sfix12
  reg signed [11:0] Unit_Delay7_out1;  // sfix12
  wire signed [11:0] Switch10_out1;  // sfix12
  wire signed [11:0] Bus_Creator3_out1_signal2;  // sfix12
  reg signed [11:0] Unit_Delay3_out1;  // sfix12
  wire signed [11:0] Switch13_out1;  // sfix12
  wire signed [11:0] Bus_Creator2_out1_signal2;  // sfix12
  reg signed [11:0] Unit_Delay11_out1;  // sfix12
  wire signed [11:0] Switch21_out1;  // sfix12
  wire signed [11:0] Bus_Creator5_out1_signal2;  // sfix12
  reg signed [11:0] Unit_Delay9_out1;  // sfix12
  wire signed [11:0] Switch24_out1;  // sfix12
  wire signed [11:0] Bus_Creator4_out1_signal2;  // sfix12
  reg signed [11:0] Unit_Delay15_out1;  // sfix12
  wire signed [11:0] Switch15_out1;  // sfix12
  wire signed [11:0] Bus_Creator7_out1_signal2;  // sfix12
  reg signed [11:0] Unit_Delay13_out1;  // sfix12
  wire signed [11:0] Bus_Creator6_out1_signal2;  // sfix12
  wire CT10_out1;
  wire signed [11:0] Switch2_out1;  // sfix12
  wire signed [11:0] Switch28_out1;  // sfix12
  wire Dy2_relop1;
  wire signed [11:0] Switch18_out1;  // sfix12
  wire signed [11:0] Bus_Creator6_out1_signal2_1;  // sfix12
  wire signed [11:0] signal2;  // sfix12
  wire signed [11:0] s_7;  // sfix12
  wire signed [11:0] signal2_1;  // sfix12
  wire signed [11:0] s_8;  // sfix12
  wire signed [11:0] signal2_2;  // sfix12
  wire signed [11:0] s_9;  // sfix12
  wire signed [11:0] signal2_3;  // sfix12
  wire signed [11:0] s_10;  // sfix12
  wire signed [11:0] signal2_4;  // sfix12
  wire signed [11:0] s_11;  // sfix12
  wire signed [11:0] signal2_5;  // sfix12
  wire signed [11:0] s_12;  // sfix12
  wire signed [11:0] signal2_6;  // sfix12
  wire signed [11:0] s_13;  // sfix12
  wire signed [11:0] signal2_7;  // sfix12
  wire signed [11:0] signal2_8;  // sfix12
  wire signed [11:0] signal2_9;  // sfix12
  wire signed [11:0] Add3_out1;  // sfix12
  reg  Unit_Delay23_out1;
  wire Bus_Creator12_out1_signal3;
  reg  Unit_Delay2_out1;
  wire Data_Type_Conversion_out1;
  wire Switch8_out1;
  wire Bus_Creator1_out1_signal3;
  reg  Unit_Delay8_out1;
  wire Switch11_out1;
  wire Bus_Creator3_out1_signal3;
  reg  Unit_Delay5_out1;
  wire Switch14_out1;
  wire Bus_Creator2_out1_signal3;
  reg  Unit_Delay12_out1;
  wire Switch22_out1;
  wire Bus_Creator5_out1_signal3;
  reg  Unit_Delay10_out1;
  wire Switch25_out1;
  wire Bus_Creator4_out1_signal3;
  reg  Unit_Delay16_out1;
  wire Switch16_out1;
  wire Bus_Creator7_out1_signal3;
  reg  Unit_Delay14_out1;
  wire Bus_Creator6_out1_signal3;
  wire Switch19_out1;
  wire Bus_Creator6_out1_signal3_1;
  wire signal3;
  wire s_14;
  wire signal3_1;
  wire s_15;
  wire signal3_2;
  wire s_16;
  wire signal3_3;
  wire s_17;
  wire signal3_4;
  wire s_18;
  wire signal3_5;
  wire s_19;
  wire signal3_6;
  wire s_20;
  wire signal3_7;
  wire signal3_8;
  wire signal3_9;
  wire Switch29_out1;
  wire Switch30_out1;
  wire Switch47_out1;


  // <S1>/Add1
  assign Add1_out1 = 3'b001 + Unit_Delay43_out1;



  // <S1>/Unit Delay43
  // 
  // <S1>/Goto57
  // 
  // <S1>/From10
  // 
  // <S1>/Goto57
  // 
  // <S1>/From7
  // 
  // <S1>/Goto57
  // 
  // <S1>/From5
  // 
  // <S1>/Goto57
  // 
  // <S1>/From24
  // 
  // <S1>/Goto57
  // 
  // <S1>/From21
  // 
  // <S1>/Goto57
  // 
  // <S1>/From19
  // 
  // <S1>/Goto57
  // 
  // <S1>/From15
  // 
  // <S1>/Goto57
  // 
  // <S1>/From13
  // 
  // <S1>/Goto57
  // 
  // <S1>/From123
  always @(posedge g_clk)
    begin : Unit_Delay43_process
      if (Rst_n == 1'b0) begin
        Unit_Delay43_out1 <= 3'b000;
      end
      else begin
        Unit_Delay43_out1 <= Add1_out1;
      end
    end



  // <S1>/CT41
  assign CT41_out1 = Unit_Delay43_out1 == 3'b000;



  // <S1>/CT1
  assign CT1_out1 = Unit_Delay43_out1 == 3'b000;



  // <S1>/Switch4
  assign Switch4_out1 = (Filter_Reset == 1'b0 ? Unit_Delay4_out1 :
              1'b1);



  // <S1>/Switch1
  assign Switch1_out1 = (CT1_out1 == 1'b0 ? Switch4_out1 :
              1'b0);



  // <S1>/Unit Delay4
  always @(posedge g_clk)
    begin : Unit_Delay4_process
      if (Rst_n == 1'b0) begin
        Unit_Delay4_out1 <= 1'b0;
      end
      else begin
        Unit_Delay4_out1 <= Switch1_out1;
      end
    end



  // <S1>/Or2
  assign Or2_out1 = Filter_Reset | Unit_Delay4_out1;



  // <S1>/Unit Delay6
  always @(posedge g_clk)
    begin : Unit_Delay6_process
      if (Rst_n == 1'b0) begin
        Unit_Delay6_out1 <= 1'b0;
      end
      else begin
        Unit_Delay6_out1 <= Switch5_out1;
      end
    end



  // <S1>/Switch5
  // 
  // <S1>/Goto1
  // 
  // <S1>/From3
  assign Switch5_out1 = (CT1_out1 == 1'b0 ? Unit_Delay6_out1 :
              Or2_out1);



  // <S1>/CT2
  assign CT2_out1 = Unit_Delay43_out1 == 3'b001;



  // <S1>/CT4
  assign CT4_out1 = Unit_Delay43_out1 == 3'b010;



  // <S1>/CT3
  assign CT3_out1 = Unit_Delay43_out1 == 3'b011;



  // <S1>/CT8
  assign CT8_out1 = Unit_Delay43_out1 == 3'b100;



  // <S1>/CT5
  assign CT5_out1 = Unit_Delay43_out1 == 3'b101;



  // <S1>/CT7
  assign CT7_out1 = Unit_Delay43_out1 == 3'b110;



  // <S1>/CT6
  assign CT6_out1 = Unit_Delay43_out1 == 3'b111;



  // <S1>/Switch17
  // 
  // <S1>/Switch17
  // 
  // <S1>/Switch17
  assign signal1 = (CT6_out1 == 1'b0 ? In7 :
              In7);



  // <S1>/Switch26
  assign s = signal1;

  // <S1>/Switch26
  // 
  // <S1>/Switch26
  // 
  // <S1>/Switch26
  assign signal1_1 = (CT7_out1 == 1'b0 ? s :
              In6);



  // <S1>/Switch23
  assign s_1 = signal1_1;

  // <S1>/Switch23
  // 
  // <S1>/Switch23
  // 
  // <S1>/Switch23
  assign signal1_2 = (CT5_out1 == 1'b0 ? s_1 :
              In5);



  // <S1>/Switch20
  assign s_2 = signal1_2;

  // <S1>/Switch20
  // 
  // <S1>/Switch20
  // 
  // <S1>/Switch20
  assign signal1_3 = (CT8_out1 == 1'b0 ? s_2 :
              In4);



  // <S1>/Switch12
  assign s_3 = signal1_3;

  // <S1>/Switch12
  // 
  // <S1>/Switch12
  // 
  // <S1>/Switch12
  assign signal1_4 = (CT3_out1 == 1'b0 ? s_3 :
              In3);



  // <S1>/Switch9
  assign s_4 = signal1_4;

  // <S1>/Switch9
  // 
  // <S1>/Switch9
  // 
  // <S1>/Switch9
  assign signal1_5 = (CT4_out1 == 1'b0 ? s_4 :
              In2);



  // <S1>/Switch6
  assign s_5 = signal1_5;

  // <S1>/Switch6
  // 
  // <S1>/Switch6
  // 
  // <S1>/Switch6
  assign signal1_6 = (CT2_out1 == 1'b0 ? s_5 :
              In1);



  // <S1>/Switch44
  assign s_6 = signal1_6;

  // <S1>/Switch44
  // 
  // <S1>/Switch44
  // 
  // <S1>/Switch44
  // 
  // <S1>/Goto2
  // 
  // <S1>/Fro
  assign signal1_7 = (CT41_out1 == 1'b0 ? s_6 :
              In0);



  // <S1>/Bus Selector2
  // 
  // <S1>/Goto3
  assign signal1_8 = signal1_7;

  // <S1>/From1
  assign signal1_9 = signal1_8;

  // <S1>/Switch3
  assign Switch3_out1 = (signal1_9 == 1'b0 ? 12'sb110000011000 :
              12'sb000000000001);



  // <S1>/Switch46
  assign Switch46_out1 = (CT41_out1 == 1'b0 ? Unit_Delay22_out1 :
              Switch27_out1);



  // <S1>/Unit Delay22
  always @(posedge g_clk)
    begin : Unit_Delay22_process
      if (Rst_n == 1'b0) begin
        Unit_Delay22_out1 <= 12'sb000000000000;
      end
      else begin
        Unit_Delay22_out1 <= Switch46_out1;
      end
    end



  assign Bus_Creator12_out1_signal2 = Unit_Delay22_out1;

  // <S1>/Switch7
  assign Switch7_out1 = (CT2_out1 == 1'b0 ? Unit_Delay1_out1 :
              Switch27_out1);



  // <S1>/Unit Delay1
  always @(posedge g_clk)
    begin : Unit_Delay1_process
      if (Rst_n == 1'b0) begin
        Unit_Delay1_out1 <= 12'sb000000000000;
      end
      else begin
        Unit_Delay1_out1 <= Switch7_out1;
      end
    end



  assign Bus_Creator1_out1_signal2 = Unit_Delay1_out1;

  // <S1>/Switch10
  assign Switch10_out1 = (CT4_out1 == 1'b0 ? Unit_Delay7_out1 :
              Switch27_out1);



  // <S1>/Unit Delay7
  always @(posedge g_clk)
    begin : Unit_Delay7_process
      if (Rst_n == 1'b0) begin
        Unit_Delay7_out1 <= 12'sb000000000000;
      end
      else begin
        Unit_Delay7_out1 <= Switch10_out1;
      end
    end



  assign Bus_Creator3_out1_signal2 = Unit_Delay7_out1;

  // <S1>/Switch13
  assign Switch13_out1 = (CT3_out1 == 1'b0 ? Unit_Delay3_out1 :
              Switch27_out1);



  // <S1>/Unit Delay3
  always @(posedge g_clk)
    begin : Unit_Delay3_process
      if (Rst_n == 1'b0) begin
        Unit_Delay3_out1 <= 12'sb000000000000;
      end
      else begin
        Unit_Delay3_out1 <= Switch13_out1;
      end
    end



  assign Bus_Creator2_out1_signal2 = Unit_Delay3_out1;

  // <S1>/Switch21
  assign Switch21_out1 = (CT8_out1 == 1'b0 ? Unit_Delay11_out1 :
              Switch27_out1);



  // <S1>/Unit Delay11
  always @(posedge g_clk)
    begin : Unit_Delay11_process
      if (Rst_n == 1'b0) begin
        Unit_Delay11_out1 <= 12'sb000000000000;
      end
      else begin
        Unit_Delay11_out1 <= Switch21_out1;
      end
    end



  assign Bus_Creator5_out1_signal2 = Unit_Delay11_out1;

  // <S1>/Switch24
  assign Switch24_out1 = (CT5_out1 == 1'b0 ? Unit_Delay9_out1 :
              Switch27_out1);



  // <S1>/Unit Delay9
  // 
  // <S1>/Goto7
  // 
  // <S1>/From6
  // 
  // <S1>/Bus Creator1
  // 
  // <S1>/Bus Creator12
  // 
  // <S1>/Bus Creator2
  // 
  // <S1>/Bus Creator3
  // 
  // <S1>/Bus Creator4
  // 
  // <S1>/Bus Creator5
  // 
  // <S1>/Bus Creator6
  // 
  // <S1>/Bus Creator7
  // 
  // <S1>/Switch12
  // 
  // <S1>/Switch17
  // 
  // <S1>/Switch20
  // 
  // <S1>/Switch23
  // 
  // <S1>/Switch26
  // 
  // <S1>/Switch44
  // 
  // <S1>/Switch6
  // 
  // <S1>/Switch9
  // 
  // <S1>/Bus Creator6
  // 
  // <S1>/Switch17
  always @(posedge g_clk)
    begin : Unit_Delay9_process
      if (Rst_n == 1'b0) begin
        Unit_Delay9_out1 <= 12'sb000000000000;
      end
      else begin
        Unit_Delay9_out1 <= Switch24_out1;
      end
    end



  assign Bus_Creator4_out1_signal2 = Unit_Delay9_out1;

  // <S1>/Switch15
  assign Switch15_out1 = (CT7_out1 == 1'b0 ? Unit_Delay15_out1 :
              Switch27_out1);



  // <S1>/Unit Delay15
  always @(posedge g_clk)
    begin : Unit_Delay15_process
      if (Rst_n == 1'b0) begin
        Unit_Delay15_out1 <= 12'sb000000000000;
      end
      else begin
        Unit_Delay15_out1 <= Switch15_out1;
      end
    end



  assign Bus_Creator7_out1_signal2 = Unit_Delay15_out1;

  assign Bus_Creator6_out1_signal2 = Unit_Delay13_out1;

  // <S1>/Switch28
  assign Switch28_out1 = (CT10_out1 == 1'b0 ? Switch2_out1 :
              12'sb000000000000);



  // <S1>/Dy2
  assign Dy2_relop1 = Switch28_out1 >= CNT_b12;



  // <S1>/Switch27
  // 
  // <S1>/Goto25
  // 
  // <S1>/From12
  // 
  // <S1>/Goto25
  // 
  // <S1>/From9
  // 
  // <S1>/Goto25
  // 
  // <S1>/From26
  // 
  // <S1>/Goto25
  // 
  // <S1>/From23
  // 
  // <S1>/Goto25
  // 
  // <S1>/From2
  // 
  // <S1>/Goto25
  // 
  // <S1>/From18
  // 
  // <S1>/Goto25
  // 
  // <S1>/From17
  // 
  // <S1>/Goto25
  // 
  // <S1>/From122
  assign Switch27_out1 = (Dy2_relop1 == 1'b0 ? Switch28_out1 :
              CNT_b12);



  // <S1>/Switch18
  assign Switch18_out1 = (CT6_out1 == 1'b0 ? Unit_Delay13_out1 :
              Switch27_out1);



  // <S1>/Unit Delay13
  always @(posedge g_clk)
    begin : Unit_Delay13_process
      if (Rst_n == 1'b0) begin
        Unit_Delay13_out1 <= 12'sb000000000000;
      end
      else begin
        Unit_Delay13_out1 <= Switch18_out1;
      end
    end



  assign Bus_Creator6_out1_signal2_1 = Unit_Delay13_out1;

  // <S1>/Switch17
  assign signal2 = (CT6_out1 == 1'b0 ? Bus_Creator6_out1_signal2_1 :
              Bus_Creator6_out1_signal2);



  assign s_7 = signal2;

  // <S1>/Switch26
  assign signal2_1 = (CT7_out1 == 1'b0 ? s_7 :
              Bus_Creator7_out1_signal2);



  assign s_8 = signal2_1;

  // <S1>/Switch23
  assign signal2_2 = (CT5_out1 == 1'b0 ? s_8 :
              Bus_Creator4_out1_signal2);



  assign s_9 = signal2_2;

  // <S1>/Switch20
  assign signal2_3 = (CT8_out1 == 1'b0 ? s_9 :
              Bus_Creator5_out1_signal2);



  assign s_10 = signal2_3;

  // <S1>/Switch12
  assign signal2_4 = (CT3_out1 == 1'b0 ? s_10 :
              Bus_Creator2_out1_signal2);



  assign s_11 = signal2_4;

  // <S1>/Switch9
  assign signal2_5 = (CT4_out1 == 1'b0 ? s_11 :
              Bus_Creator3_out1_signal2);



  assign s_12 = signal2_5;

  // <S1>/Switch6
  assign signal2_6 = (CT2_out1 == 1'b0 ? s_12 :
              Bus_Creator1_out1_signal2);



  assign s_13 = signal2_6;

  // <S1>/Switch44
  assign signal2_7 = (CT41_out1 == 1'b0 ? s_13 :
              Bus_Creator12_out1_signal2);



  // <S1>/Goto4
  assign signal2_8 = signal2_7;

  // <S1>/From109
  assign signal2_9 = signal2_8;

  // <S1>/Add3
  assign Add3_out1 = Switch3_out1 + signal2_9;



  // <S1>/Switch2
  assign Switch2_out1 = (Switch5_out1 == 1'b0 ? Add3_out1 :
              12'sb111111111111);



  // <S1>/CT10
  assign CT10_out1 = Switch2_out1 <= 12'sb000000000000;



  assign Bus_Creator12_out1_signal3 = Unit_Delay23_out1;

  // <S1>/Switch8
  assign Switch8_out1 = (CT2_out1 == 1'b0 ? Unit_Delay2_out1 :
              Data_Type_Conversion_out1);



  // <S1>/Unit Delay2
  always @(posedge g_clk)
    begin : Unit_Delay2_process
      if (Rst_n == 1'b0) begin
        Unit_Delay2_out1 <= 1'b0;
      end
      else begin
        Unit_Delay2_out1 <= Switch8_out1;
      end
    end



  assign Bus_Creator1_out1_signal3 = Unit_Delay2_out1;

  // <S1>/Switch11
  assign Switch11_out1 = (CT4_out1 == 1'b0 ? Unit_Delay8_out1 :
              Data_Type_Conversion_out1);



  // <S1>/Unit Delay8
  always @(posedge g_clk)
    begin : Unit_Delay8_process
      if (Rst_n == 1'b0) begin
        Unit_Delay8_out1 <= 1'b0;
      end
      else begin
        Unit_Delay8_out1 <= Switch11_out1;
      end
    end



  assign Bus_Creator3_out1_signal3 = Unit_Delay8_out1;

  // <S1>/Switch14
  assign Switch14_out1 = (CT3_out1 == 1'b0 ? Unit_Delay5_out1 :
              Data_Type_Conversion_out1);



  // <S1>/Unit Delay5
  always @(posedge g_clk)
    begin : Unit_Delay5_process
      if (Rst_n == 1'b0) begin
        Unit_Delay5_out1 <= 1'b0;
      end
      else begin
        Unit_Delay5_out1 <= Switch14_out1;
      end
    end



  assign Bus_Creator2_out1_signal3 = Unit_Delay5_out1;

  // <S1>/Switch22
  assign Switch22_out1 = (CT8_out1 == 1'b0 ? Unit_Delay12_out1 :
              Data_Type_Conversion_out1);



  // <S1>/Unit Delay12
  always @(posedge g_clk)
    begin : Unit_Delay12_process
      if (Rst_n == 1'b0) begin
        Unit_Delay12_out1 <= 1'b0;
      end
      else begin
        Unit_Delay12_out1 <= Switch22_out1;
      end
    end



  assign Bus_Creator5_out1_signal3 = Unit_Delay12_out1;

  // <S1>/Switch25
  assign Switch25_out1 = (CT5_out1 == 1'b0 ? Unit_Delay10_out1 :
              Data_Type_Conversion_out1);



  // <S1>/Unit Delay10
  always @(posedge g_clk)
    begin : Unit_Delay10_process
      if (Rst_n == 1'b0) begin
        Unit_Delay10_out1 <= 1'b0;
      end
      else begin
        Unit_Delay10_out1 <= Switch25_out1;
      end
    end



  assign Bus_Creator4_out1_signal3 = Unit_Delay10_out1;

  // <S1>/Switch16
  assign Switch16_out1 = (CT7_out1 == 1'b0 ? Unit_Delay16_out1 :
              Data_Type_Conversion_out1);



  // <S1>/Unit Delay16
  always @(posedge g_clk)
    begin : Unit_Delay16_process
      if (Rst_n == 1'b0) begin
        Unit_Delay16_out1 <= 1'b0;
      end
      else begin
        Unit_Delay16_out1 <= Switch16_out1;
      end
    end



  assign Bus_Creator7_out1_signal3 = Unit_Delay16_out1;

  assign Bus_Creator6_out1_signal3 = Unit_Delay14_out1;

  // <S1>/Switch19
  assign Switch19_out1 = (CT6_out1 == 1'b0 ? Unit_Delay14_out1 :
              Data_Type_Conversion_out1);



  // <S1>/Unit Delay14
  always @(posedge g_clk)
    begin : Unit_Delay14_process
      if (Rst_n == 1'b0) begin
        Unit_Delay14_out1 <= 1'b0;
      end
      else begin
        Unit_Delay14_out1 <= Switch19_out1;
      end
    end



  assign Bus_Creator6_out1_signal3_1 = Unit_Delay14_out1;

  // <S1>/Switch17
  assign signal3 = (CT6_out1 == 1'b0 ? Bus_Creator6_out1_signal3_1 :
              Bus_Creator6_out1_signal3);



  assign s_14 = signal3;

  // <S1>/Switch26
  assign signal3_1 = (CT7_out1 == 1'b0 ? s_14 :
              Bus_Creator7_out1_signal3);



  assign s_15 = signal3_1;

  // <S1>/Switch23
  assign signal3_2 = (CT5_out1 == 1'b0 ? s_15 :
              Bus_Creator4_out1_signal3);



  assign s_16 = signal3_2;

  // <S1>/Switch20
  assign signal3_3 = (CT8_out1 == 1'b0 ? s_16 :
              Bus_Creator5_out1_signal3);



  assign s_17 = signal3_3;

  // <S1>/Switch12
  assign signal3_4 = (CT3_out1 == 1'b0 ? s_17 :
              Bus_Creator2_out1_signal3);



  assign s_18 = signal3_4;

  // <S1>/Switch9
  assign signal3_5 = (CT4_out1 == 1'b0 ? s_18 :
              Bus_Creator3_out1_signal3);



  assign s_19 = signal3_5;

  // <S1>/Switch6
  assign signal3_6 = (CT2_out1 == 1'b0 ? s_19 :
              Bus_Creator1_out1_signal3);



  assign s_20 = signal3_6;

  // <S1>/Switch44
  assign signal3_7 = (CT41_out1 == 1'b0 ? s_20 :
              Bus_Creator12_out1_signal3);



  // <S1>/Goto5
  assign signal3_8 = signal3_7;

  // <S1>/From133
  assign signal3_9 = signal3_8;

  // <S1>/Switch29
  assign Switch29_out1 = (Dy2_relop1 == 1'b0 ? signal3_9 :
              1'b1);



  // <S1>/Switch30
  assign Switch30_out1 = (CT10_out1 == 1'b0 ? Switch29_out1 :
              1'b0);



  // <S1>/Data Type Conversion
  // 
  // <S1>/Goto40
  // 
  // <S1>/From11
  // 
  // <S1>/Goto40
  // 
  // <S1>/From8
  // 
  // <S1>/Goto40
  // 
  // <S1>/From25
  // 
  // <S1>/Goto40
  // 
  // <S1>/From22
  // 
  // <S1>/Goto40
  // 
  // <S1>/From20
  // 
  // <S1>/Goto40
  // 
  // <S1>/From16
  // 
  // <S1>/Goto40
  // 
  // <S1>/From14
  // 
  // <S1>/Goto40
  // 
  // <S1>/From124
  assign Data_Type_Conversion_out1 = (Switch30_out1 != 1'b0 ? 1'b1 :
              1'b0);



  // <S1>/Switch47
  assign Switch47_out1 = (CT41_out1 == 1'b0 ? Unit_Delay23_out1 :
              Data_Type_Conversion_out1);



  // <S1>/Unit Delay23
  always @(posedge g_clk)
    begin : Unit_Delay23_process
      if (Rst_n == 1'b0) begin
        Unit_Delay23_out1 <= 1'b0;
      end
      else begin
        Unit_Delay23_out1 <= Switch47_out1;
      end
    end



  assign BitFltedOut0 = Unit_Delay23_out1;

  assign BitFltedOut1 = Unit_Delay2_out1;

  assign BitFltedOut2 = Unit_Delay8_out1;

  assign BitFltedOut3 = Unit_Delay5_out1;

  assign BitFltedOut4 = Unit_Delay12_out1;

  assign BitFltedOut5 = Unit_Delay10_out1;

  assign BitFltedOut6 = Unit_Delay16_out1;

  assign BitFltedOut7 = Unit_Delay14_out1;

  // <S1>/Scope6

endmodule  // BitFilter_VZ16

