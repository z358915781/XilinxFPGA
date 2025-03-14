// -------------------------------------------------------------
// 
// File Name: Work_RMSP64Ch8_V10\RMSP64Ch8_V10\SimpleDualPortRAM_512x24b.v
// Created: 2017-05-23 10:54:11
// 
// Generated by MATLAB 8.6 and HDL Coder 3.7
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: SimpleDualPortRAM_512x24b
// Source Path: RMSP64Ch8_V10/RMSP64Ch8_V10/SimpDualPortRAM_Wrapper_512x24b/SimpleDualPortRAM_512x24b
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module SimpleDualPortRAM_512x24b
          (
           g_clk,
           wr_din,
           wr_addr,
           wr_en,
           rd_addr,
           rd_dout
          );


  input   g_clk;
  input   signed [23:0] wr_din;  // sfix24
  input   [8:0] wr_addr;  // ufix9
  input   wr_en;  // ufix1
  input   [8:0] rd_addr;  // ufix9
  output  signed [23:0] rd_dout;  // sfix24

  parameter addr_width = 4'd9;
  parameter data_width = 5'd24;

  reg  [data_width - 1:0] ram [2**addr_width - 1:0];
  reg  [data_width - 1:0] data_int;


  always @(posedge g_clk)
    begin : SimpleDualPortRAM_512x24b_process
      if (wr_en == 1'b1) begin
        ram[wr_addr] <= wr_din;
      end
      data_int <= ram[rd_addr];
    end

  assign rd_dout = data_int;

endmodule  // SimpleDualPortRAM_512x24b

