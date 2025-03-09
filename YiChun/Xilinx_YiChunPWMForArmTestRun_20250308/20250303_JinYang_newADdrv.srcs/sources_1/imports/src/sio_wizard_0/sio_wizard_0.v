// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Aug  3 10:22:38 2024
// Host        : DESKTOP-LIMK86K running 64-bit major release  (build 9200)
// Command     : write_verilog -mode synth_stub D:/Xilinx_Pro/sio/sio_wizard_0/sio_wizard_0.v
// Design      : sio_wizard_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s100fgga484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module sio_wizard_0(rst_n, clk, timeout_set, baud, id, master, tx_out, 
  tx_load, tx_en, tx_addr, tx_data1, rx_in, rx_valid, rx_err, rx_id, rx_addr, rx_data1, timeout_rst, 
  txrx)
/* synthesis syn_black_box black_box_pad_pin="rst_n,clk,timeout_set[15:0],baud[3:0],id[4:0],master,tx_out,tx_load,tx_en,tx_addr[4:0],tx_data1[15:0],rx_in,rx_valid,rx_err,rx_id[4:0],rx_addr[4:0],rx_data1[15:0],timeout_rst,txrx" */;
  input rst_n;
  input clk;
  input [15:0]timeout_set;
  input [3:0]baud;
  input [4:0]id;
  input master;
  output tx_out;
  output tx_load;
  input tx_en;
  input [4:0]tx_addr;
  input [15:0]tx_data1;
  input rx_in;
  output rx_valid;
  output rx_err;
  output [4:0]rx_id;
  output [4:0]rx_addr;
  output [15:0]rx_data1;
  output timeout_rst;
  output txrx;
endmodule
