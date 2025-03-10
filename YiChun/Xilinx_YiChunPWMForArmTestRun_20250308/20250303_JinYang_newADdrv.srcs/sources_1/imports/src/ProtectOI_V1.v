// -------------------------------------------------------------
// 
// File Name: D:\ProtectOI_V1\ProtectOI_V1.v
// Created: 2022-05-21 22:21:46
// 
// Generated by MATLAB 9.1 and HDL Coder 3.9
// 
// 
// -- -------------------------------------------------------------
// -- Rate and Clocking Details
// -- -------------------------------------------------------------
// Model base rate: 8.13802e-05
// Target subsystem base rate: 8.13802e-05
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: ProtectOI_V1
// Source Path: ProtectOI_V1/ProtectOI_V1
// Hierarchy Level: 0
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module ProtectOI_V1
          (
           g_clk,
           Rst_n,
           Ia_b12,
           Ib_b12,
           Ic_b12,
           OI_Iac_Inst,
           Iac_Inst_OVRcy_ref,
           Pulse50x1_Hz,
           Fs_4096Hz,
           BlockTime_b16,
           DecTime_b16,
           Working,
           FaultCnt_b4,
           PwmBlock,
           Fault
          );



  input   g_clk;
  input   Rst_n;
  input   signed [11:0] Ia_b12;  // sfix12
  input   signed [11:0] Ib_b12;  // sfix12
  input   signed [11:0] Ic_b12;  // sfix12
  input   OI_Iac_Inst;
  input   signed [11:0] Iac_Inst_OVRcy_ref;  // sfix12
  input   Pulse50x1_Hz;
  input   Fs_4096Hz;
  input   signed [15:0] BlockTime_b16;  // int16
  input   signed [15:0] DecTime_b16;  // int16
  input   Working;
  input   signed [3:0] FaultCnt_b4;  // sfix4
  output  PwmBlock;
  output  Fault;

  wire signed [12:0] Abs_y;  // sfix13
  wire signed [11:0] Abs_out1;  // sfix12
  wire signed [12:0] Abs1_y;  // sfix13
  wire signed [11:0] Abs1_out1;  // sfix12
  wire RO_3_relop1;
  wire signed [11:0] SW_3_out1;  // sfix12
  wire signed [12:0] Abs2_y;  // sfix13
  wire signed [11:0] Abs2_out1;  // sfix12
  wire RO_4_relop1;
  wire signed [11:0] SW_4_out1;  // sfix12
  wire RO_2_relop1;
  wire signed [15:0] Add2_out1;  // int16
  wire signed [15:0] SW6_out1;  // int16
  reg signed [15:0] Delay3_out1;  // int16
  wire RO3_relop1;
  reg  Delay2_out1;
  wire Logical_5_out1;
  wire signed [15:0] SW7_out1;  // int16
  wire signed [15:0] SW2_out1;  // int16
  wire RO4_relop1;
  wire Logical_1_out1;
  wire signed [15:0] Add4_out1;  // int16
  wire signed [15:0] SW1_out1;  // int16
  reg signed [15:0] Delay1_out1;  // int16
  reg  Delay4_out1;
  wire Logical_8_out1;
  wire Logical_6_out1;
  wire signed [3:0] SW4_out1;  // sfix4
  wire signed [3:0] SW3_out1;  // sfix4
  wire Logical_7_out1;
  wire signed [3:0] Add3_out1;  // sfix4
  wire RO2_relop1;
  wire Logical_2_out1;
  wire signed [3:0] SW5_out1;  // sfix4
  reg signed [3:0] Delay5_out1;  // sfix4
  wire RO1_relop1;


  // <S1>/Abs
  assign Abs_y = (Ia_b12 < 12'sb000000000000 ?  - ({Ia_b12[11], Ia_b12}) :
              {Ia_b12[11], Ia_b12});
  assign Abs_out1 = Abs_y[11:0];



  // <S1>/Abs1
  assign Abs1_y = (Ib_b12 < 12'sb000000000000 ?  - ({Ib_b12[11], Ib_b12}) :
              {Ib_b12[11], Ib_b12});
  assign Abs1_out1 = Abs1_y[11:0];



  // <S1>/RO_3
  assign RO_3_relop1 = Abs_out1 >= Abs1_out1;



  // <S1>/SW_3
  assign SW_3_out1 = (RO_3_relop1 == 1'b0 ? Abs1_out1 :
              Abs_out1);



  // <S1>/Abs2
  assign Abs2_y = (Ic_b12 < 12'sb000000000000 ?  - ({Ic_b12[11], Ic_b12}) :
              {Ic_b12[11], Ic_b12});
  assign Abs2_out1 = Abs2_y[11:0];



  // <S1>/RO_4
  assign RO_4_relop1 = SW_3_out1 >= Abs2_out1;



  // <S1>/SW_4
  // 
  // <S1>/Goto3
  // 
  // <S1>/From3
  // 
  // <S1>/RO_1
  assign SW_4_out1 = (RO_4_relop1 == 1'b0 ? Abs2_out1 :
              SW_3_out1);



  // <S1>/RO_2
  // 
  // <S1>/Goto5
  // 
  // <S1>/From6
  assign RO_2_relop1 = SW_4_out1 <= Iac_Inst_OVRcy_ref;



  // <S1>/SW6
  assign SW6_out1 = (OI_Iac_Inst == 1'b0 ? Add2_out1 :
              BlockTime_b16);



  // <S1>/Delay3
  always @(posedge g_clk)
    begin : Delay3_process
      if (Rst_n == 1'b0) begin
        Delay3_out1 <= 16'sb0000000000000000;
      end
      else begin
        Delay3_out1 <= SW6_out1;
      end
    end



  // <S1>/Delay2
  // 
  // <S1>/Goto4
  // 
  // <S1>/From4
  always @(posedge g_clk)
    begin : Delay2_process
      if (Rst_n == 1'b0) begin
        Delay2_out1 <= 1'b0;
      end
      else begin
        Delay2_out1 <= RO3_relop1;
      end
    end



  // <S1>/Logical 5
  assign Logical_5_out1 = RO_2_relop1 & (Fs_4096Hz & Delay2_out1);



  // <S1>/SW7
  assign SW7_out1 = (Logical_5_out1 == 1'b0 ? 16'sb0000000000000000 :
              16'sb1111111111111111);



  // <S1>/Add2
  assign Add2_out1 = SW7_out1 + Delay3_out1;



  // <S1>/RO3
  assign RO3_relop1 = Add2_out1 > 16'sb0000000000000000;



  assign PwmBlock = RO3_relop1;

  // <S1>/SW2
  assign SW2_out1 = (Pulse50x1_Hz == 1'b0 ? 16'sb0000000000000000 :
              16'sb0000000000000001);



  // <S1>/Logical 1
  assign Logical_1_out1 = RO4_relop1 | OI_Iac_Inst;



  // <S1>/SW1
  assign SW1_out1 = (Logical_1_out1 == 1'b0 ? Add4_out1 :
              16'sb0000000000000000);



  // <S1>/Delay1
  always @(posedge g_clk)
    begin : Delay1_process
      if (Rst_n == 1'b0) begin
        Delay1_out1 <= 16'sb0000000000000000;
      end
      else begin
        Delay1_out1 <= SW1_out1;
      end
    end



  // <S1>/Add4
  assign Add4_out1 = SW2_out1 + Delay1_out1;



  // <S1>/RO4
  assign RO4_relop1 = Add4_out1 > DecTime_b16;



  // <S1>/Delay4
  always @(posedge g_clk)
    begin : Delay4_process
      if (Rst_n == 1'b0) begin
        Delay4_out1 <= 1'b0;
      end
      else begin
        Delay4_out1 <= OI_Iac_Inst;
      end
    end



  // <S1>/Logical 8
  assign Logical_8_out1 =  ~ Delay4_out1;



  // <S1>/Logical 6
  assign Logical_6_out1 = OI_Iac_Inst & Logical_8_out1;



  // <S1>/SW4
  assign SW4_out1 = (Logical_6_out1 == 1'b0 ? 4'sb0000 :
              4'sb0001);



  // <S1>/SW3
  assign SW3_out1 = (RO4_relop1 == 1'b0 ? SW4_out1 :
              4'sb1111);



  // <S1>/Logical 7
  assign Logical_7_out1 =  ~ Working;



  // <S1>/RO2
  assign RO2_relop1 = Add3_out1 < 4'sb0000;



  // <S1>/Logical 2
  assign Logical_2_out1 = RO2_relop1 | Logical_7_out1;



  // <S1>/SW5
  assign SW5_out1 = (Logical_2_out1 == 1'b0 ? Add3_out1 :
              4'sb0000);



  // <S1>/Delay5
  // 
  // <S1>/Goto2
  // 
  // <S1>/From1
  // 
  // <S1>/Goto2
  // 
  // <S1>/From5
  // 
  // <S1>/Goto2
  // 
  // <S1>/From2
  always @(posedge g_clk)
    begin : Delay5_process
      if (Rst_n == 1'b0) begin
        Delay5_out1 <= 4'sb0000;
      end
      else begin
        Delay5_out1 <= SW5_out1;
      end
    end



  // <S1>/Add3
  assign Add3_out1 = SW3_out1 + Delay5_out1;



  // <S1>/RO1
  assign RO1_relop1 = Add3_out1 > FaultCnt_b4;



  assign Fault = RO1_relop1;

endmodule  // ProtectOI_V1

