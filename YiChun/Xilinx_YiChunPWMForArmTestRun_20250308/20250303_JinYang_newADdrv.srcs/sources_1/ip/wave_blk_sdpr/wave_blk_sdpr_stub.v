// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Jul 15 16:18:09 2024
// Host        : DESKTOP-NT14HU6 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/FPGA/2024.7.15xinbanjian/xinbanjian_2024.7.15/xinbanjian_2024.7.15.srcs/sources_1/ip/wave_blk_sdpr/wave_blk_sdpr_stub.v
// Design      : wave_blk_sdpr
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s75fgga484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2018.2" *)
module wave_blk_sdpr(clka, ena, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[8:0],dina[15:0],clkb,enb,addrb[8:0],doutb[15:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [8:0]addra;
  input [15:0]dina;
  input clkb;
  input enb;
  input [8:0]addrb;
  output [15:0]doutb;
endmodule
