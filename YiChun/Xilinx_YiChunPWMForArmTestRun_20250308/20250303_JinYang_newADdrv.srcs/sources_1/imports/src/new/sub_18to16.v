// -------------------------------------------------------------
// 
// File Name: D:\FPGA_MZ\sub_18to16\sub_18to16.v
// Created: 2024-12-18 21:59:43
// 
// Generated by MATLAB 9.1 and HDL Coder 3.9
// 
// 
// -- -------------------------------------------------------------
// -- Rate and Clocking Details
// -- -------------------------------------------------------------
// Model base rate: 0.0005
// Target subsystem base rate: 0.0005
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: sub_18to16
// Source Path: sub_18to16/sub_18to16
// Hierarchy Level: 0
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module sub_18to16
          (
           IN1_s18,
           IN2_s18,
           out_s16
          );



  input   signed [17:0] IN1_s18;  // sfix18
  input   signed [17:0] IN2_s18;  // sfix18
  output  signed [15:0] out_s16;  // int16

  wire signed [18:0] Subs19_2_1;  // sfix19
  wire signed [18:0] Subs19_2_2;  // sfix19
  wire signed [18:0] Subs19_2_out1;  // sfix19
  wire signed [15:0] S16_6_out1;  // int16


  // <S1>/Subs19_2
  assign Subs19_2_1 = {IN1_s18[17], IN1_s18};
  assign Subs19_2_2 = {IN2_s18[17], IN2_s18};
  assign Subs19_2_out1 = Subs19_2_1 - Subs19_2_2;



  // <S1>/S16_6
  assign S16_6_out1 = Subs19_2_out1[15:0];



  assign out_s16 = S16_6_out1;

endmodule  // sub_18to16

