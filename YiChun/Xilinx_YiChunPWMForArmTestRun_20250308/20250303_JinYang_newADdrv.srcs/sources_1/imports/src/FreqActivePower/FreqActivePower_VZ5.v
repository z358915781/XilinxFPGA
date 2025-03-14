// -------------------------------------------------------------
// 
// File Name: D:\FreqActivePower_VZ5\FreqActivePower_VZ5.v
// Created: 2022-05-16 10:06:50
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
// Module: FreqActivePower_VZ5
// Source Path: FreqActivePower_VZ5/FreqActivePower_VZ5
// Hierarchy Level: 0
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module FreqActivePower_VZ5
          (
           g_clk,
           Rst_n,
           Pulse_4096Hz,
           time_b16,
           w_b16,
           Freq_Hig_b16,
           Freq_HigRly_b16,
           Freq_Low_b16,
           Freq_LowRly_b16,
           Hig_ActivePower_b16,
           Low_ActivePower_b16,
           Pref_b16,
           FPref_b16,
           FreqHigFlg,
           FreqLowFlg
          );



  input   g_clk;
  input   Rst_n;
  input   Pulse_4096Hz;
  input   signed [15:0] time_b16;  // sfix16_E1
  input   [15:0] w_b16;  // uint16
  input   [15:0] Freq_Hig_b16;  // uint16
  input   [15:0] Freq_HigRly_b16;  // uint16
  input   [15:0] Freq_Low_b16;  // uint16
  input   [15:0] Freq_LowRly_b16;  // uint16
  input   signed [15:0] Hig_ActivePower_b16;  // sfix16_E1
  input   signed [15:0] Low_ActivePower_b16;  // sfix16_E1
  input   signed [15:0] Pref_b16;  // sfix16_E1
  output  signed [15:0] FPref_b16;  // sfix16_E1
  output  FreqHigFlg;
  output  FreqLowFlg;

  wire Constant15_out1;
  reg [3:0] Unit_Delay43_out1;  // ufix4
  wire [8:0] Add1_add_temp;  // ufix9
  wire [8:0] Add1_1;  // ufix9
  wire [8:0] Add1_2;  // ufix9
  wire [3:0] Add1_out1;  // ufix4
  wire CT207_out1;
  wire Constant85_out1;
  wire Constant84_out1;
  reg  Unit_Delay121_out1;
  wire Switch308_out1;
  wire Switch307_out1;
  wire Or1_out1;
  wire Switch309_out1;
  reg  Unit_Delay122_out1;
  wire signed [15:0] Constant6_out1;  // int16
  wire Relational_Operator_relop1;
  wire signed [15:0] Constant1_out1;  // int16
  wire Relational_Operator2_relop1;
  wire signed [15:0] Constant17_out1;  // int16
  wire signed [15:0] Switch48_out1;  // int16
  wire signed [15:0] Constant18_out1;  // int16
  wire signed [15:0] Switch47_out1;  // int16
  wire signed [15:0] Switch8_out1;  // int16
  wire signed [15:0] Constant5_out1;  // int16
  wire signed [15:0] Data_Type_S3_out1;  // int16
  wire CT10_out1;
  wire signed [15:0] Add3_out1;  // int16
  wire signed [15:0] Switch28_out1;  // int16
  wire Dy2_relop1;
  wire signed [15:0] Switch27_out1;  // int16
  reg signed [15:0] Unit_Delay2_out1;  // int16
  wire Constant7_out1;
  wire Constant10_out1;
  wire Data_Type_Conversion_out1;
  reg  Unit_Delay3_out1;
  wire Switch29_out1;
  wire Switch30_out1;
  wire signed [15:0] Constant8_out1;  // int16
  wire Relational_Operator8_relop1;
  wire signed [15:0] Constant9_out1;  // int16
  wire Relational_Operator5_relop1;
  wire signed [15:0] Constant12_out1;  // int16
  wire signed [15:0] Switch2_out1;  // int16
  wire signed [15:0] Constant14_out1;  // int16
  wire signed [15:0] Switch1_out1;  // int16
  wire signed [15:0] Switch17_out1;  // int16
  wire signed [15:0] Constant16_out1;  // int16
  wire CT2_out1;
  wire signed [15:0] Add2_out1;  // int16
  wire signed [15:0] Switch13_out1;  // int16
  wire Dy1_relop1;
  wire signed [15:0] Switch7_out1;  // int16
  reg signed [15:0] Unit_Delay5_out1;  // int16
  wire Constant19_out1;
  wire Constant11_out1;
  wire Data_Type_Conversion1_out1;
  reg  Unit_Delay7_out1;
  wire Switch14_out1;
  wire Switch15_out1;
  wire signed [15:0] Constant2_out1;  // int16
  wire signed [16:0] Relational_Operator3_1_cast;  // sfix17
  wire signed [16:0] Relational_Operator3_1_1;  // sfix17
  wire Relational_Operator3_relop1;
  wire signed [15:0] Switch6_out1;  // sfix16_E1
  wire signed [15:0] Switch3_out1;  // sfix16_E1
  wire signed [15:0] Constant3_out1;  // int16
  wire signed [16:0] Relational_Operator1_1_cast;  // sfix17
  wire signed [16:0] Relational_Operator1_1_1;  // sfix17
  wire Relational_Operator1_relop1;
  wire signed [15:0] Switch4_out1;  // sfix16_E1
  wire signed [15:0] Switch5_out1;  // sfix16_E1


  assign Constant15_out1 = 1'b1;



  assign Add1_1 = {8'b0, Constant15_out1};
  assign Add1_2 = {5'b0, Unit_Delay43_out1};
  assign Add1_add_temp = Add1_1 + Add1_2;
  assign Add1_out1 = Add1_add_temp[3:0];



  always @(posedge g_clk)
    begin : Unit_Delay43_process
      if (Rst_n == 1'b0) begin
        Unit_Delay43_out1 <= 4'b0000;
      end
      else begin
        Unit_Delay43_out1 <= Add1_out1;
      end
    end



  assign CT207_out1 = Unit_Delay43_out1 == 4'b0000;



  assign Constant85_out1 = 1'b1;



  assign Constant84_out1 = 1'b0;



  assign Switch308_out1 = (Pulse_4096Hz == 1'b0 ? Unit_Delay121_out1 :
              Constant85_out1);



  assign Switch307_out1 = (CT207_out1 == 1'b0 ? Switch308_out1 :
              Constant84_out1);



  always @(posedge g_clk)
    begin : Unit_Delay121_process
      if (Rst_n == 1'b0) begin
        Unit_Delay121_out1 <= 1'b0;
      end
      else begin
        Unit_Delay121_out1 <= Switch307_out1;
      end
    end



  assign Or1_out1 = Pulse_4096Hz | Unit_Delay121_out1;



  always @(posedge g_clk)
    begin : Unit_Delay122_process
      if (Rst_n == 1'b0) begin
        Unit_Delay122_out1 <= 1'b0;
      end
      else begin
        Unit_Delay122_out1 <= Switch309_out1;
      end
    end



  assign Switch309_out1 = (CT207_out1 == 1'b0 ? Unit_Delay122_out1 :
              Or1_out1);



  assign Constant6_out1 = 16'sb0000000000000000;



  assign Relational_Operator_relop1 = w_b16 <= Freq_HigRly_b16;



  assign Constant1_out1 = 16'sb0000000000000000;



  assign Relational_Operator2_relop1 = w_b16 >= Freq_Hig_b16;



  assign Constant17_out1 = 16'sb1111111111111111;



  assign Switch48_out1 = (Relational_Operator_relop1 == 1'b0 ? Constant1_out1 :
              Constant17_out1);



  assign Constant18_out1 = 16'sb0000000000000001;



  assign Switch47_out1 = (Relational_Operator2_relop1 == 1'b0 ? Switch48_out1 :
              Constant18_out1);



  assign Switch8_out1 = (Switch309_out1 == 1'b0 ? Constant6_out1 :
              Switch47_out1);



  assign Constant5_out1 = 16'sb0000000000000000;



  assign Data_Type_S3_out1 = {time_b16[14:0], 1'b0};



  assign Switch28_out1 = (CT10_out1 == 1'b0 ? Add3_out1 :
              Constant5_out1);



  assign Dy2_relop1 = Switch28_out1 >= Data_Type_S3_out1;



  assign Switch27_out1 = (Dy2_relop1 == 1'b0 ? Switch28_out1 :
              Data_Type_S3_out1);



  always @(posedge g_clk)
    begin : Unit_Delay2_process
      if (Rst_n == 1'b0) begin
        Unit_Delay2_out1 <= 16'sb0000000000000000;
      end
      else begin
        Unit_Delay2_out1 <= Switch27_out1;
      end
    end



  assign Add3_out1 = Switch8_out1 + Unit_Delay2_out1;



  assign CT10_out1 = Add3_out1 < 16'sb0000000000000000;



  assign Constant7_out1 = 1'b1;



  assign Constant10_out1 = 1'b0;



  always @(posedge g_clk)
    begin : Unit_Delay3_process
      if (Rst_n == 1'b0) begin
        Unit_Delay3_out1 <= 1'b0;
      end
      else begin
        Unit_Delay3_out1 <= Data_Type_Conversion_out1;
      end
    end



  assign Switch29_out1 = (Dy2_relop1 == 1'b0 ? Unit_Delay3_out1 :
              Constant7_out1);



  assign Switch30_out1 = (CT10_out1 == 1'b0 ? Switch29_out1 :
              Constant10_out1);



  assign Data_Type_Conversion_out1 = (Switch30_out1 != 1'b0 ? 1'b1 :
              1'b0);



  assign Constant8_out1 = 16'sb0000000000000000;



  assign Relational_Operator8_relop1 = w_b16 >= Freq_LowRly_b16;



  assign Constant9_out1 = 16'sb0000000000000000;



  assign Relational_Operator5_relop1 = w_b16 <= Freq_Low_b16;



  assign Constant12_out1 = 16'sb1111111111111111;



  assign Switch2_out1 = (Relational_Operator8_relop1 == 1'b0 ? Constant9_out1 :
              Constant12_out1);



  assign Constant14_out1 = 16'sb0000000000000001;



  assign Switch1_out1 = (Relational_Operator5_relop1 == 1'b0 ? Switch2_out1 :
              Constant14_out1);



  assign Switch17_out1 = (Switch309_out1 == 1'b0 ? Constant8_out1 :
              Switch1_out1);



  assign Constant16_out1 = 16'sb0000000000000000;



  assign Switch13_out1 = (CT2_out1 == 1'b0 ? Add2_out1 :
              Constant16_out1);



  assign Dy1_relop1 = Switch13_out1 >= Data_Type_S3_out1;



  assign Switch7_out1 = (Dy1_relop1 == 1'b0 ? Switch13_out1 :
              Data_Type_S3_out1);



  always @(posedge g_clk)
    begin : Unit_Delay5_process
      if (Rst_n == 1'b0) begin
        Unit_Delay5_out1 <= 16'sb0000000000000000;
      end
      else begin
        Unit_Delay5_out1 <= Switch7_out1;
      end
    end



  assign Add2_out1 = Switch17_out1 + Unit_Delay5_out1;



  assign CT2_out1 = Add2_out1 <= 16'sb0000000000000000;



  assign Constant19_out1 = 1'b1;



  assign Constant11_out1 = 1'b0;



  always @(posedge g_clk)
    begin : Unit_Delay7_process
      if (Rst_n == 1'b0) begin
        Unit_Delay7_out1 <= 1'b0;
      end
      else begin
        Unit_Delay7_out1 <= Data_Type_Conversion1_out1;
      end
    end



  assign Switch14_out1 = (Dy1_relop1 == 1'b0 ? Unit_Delay7_out1 :
              Constant19_out1);



  assign Switch15_out1 = (CT2_out1 == 1'b0 ? Switch14_out1 :
              Constant11_out1);



  assign Data_Type_Conversion1_out1 = (Switch15_out1 != 1'b0 ? 1'b1 :
              1'b0);



  assign Constant2_out1 = 16'sb0000000000000000;



  assign Relational_Operator3_1_cast = {Pref_b16, 1'b0};
  assign Relational_Operator3_1_1 = {Constant2_out1[15], Constant2_out1};
  assign Relational_Operator3_relop1 = Relational_Operator3_1_cast <= Relational_Operator3_1_1;



  assign Switch6_out1 = (Relational_Operator3_relop1 == 1'b0 ? Pref_b16 :
              Low_ActivePower_b16);



  assign Switch3_out1 = (Data_Type_Conversion1_out1 == 1'b0 ? Pref_b16 :
              Switch6_out1);



  assign Constant3_out1 = 16'sb0000000000000000;



  assign Relational_Operator1_1_cast = {Pref_b16, 1'b0};
  assign Relational_Operator1_1_1 = {Constant3_out1[15], Constant3_out1};
  assign Relational_Operator1_relop1 = Relational_Operator1_1_cast >= Relational_Operator1_1_1;



  assign Switch4_out1 = (Relational_Operator1_relop1 == 1'b0 ? Pref_b16 :
              Hig_ActivePower_b16);



  assign Switch5_out1 = (Data_Type_Conversion_out1 == 1'b0 ? Switch3_out1 :
              Switch4_out1);



  assign FPref_b16 = Switch5_out1;

  assign FreqHigFlg = Data_Type_Conversion_out1;

  assign FreqLowFlg = Data_Type_Conversion1_out1;

endmodule  // FreqActivePower_VZ5

