`timescale 1ns / 1ps
//`define SIM
import arm3358_pkg::*;
module check_code_detect (
    clk_i,
    rst_i,
    wr_req_i,
    rd_req_i,
    addr_i,
    data_i,
    wr_cache,
    rd_cache,
    data_o
);
`ifndef SIM
  parameter CHK_ADDR = 254;
  parameter RD_CHK_ADDR = 253;
`else
  parameter CHK_ADDR = 9;
  parameter RD_CHK_ADDR = 9;
`endif
  input clk_i;
  input rst_i;
  input wr_req_i;
  input rd_req_i;
  input [8:0] addr_i;
  input [15:0] data_i;
`ifndef SIM
  input arm3358_dbus rd_cache[ARM3358_ADDR_LEN];
`else
  input arm3358_dbus rd_cache[10];
`endif
`ifndef SIM
  output arm3358_dbus wr_cache[PROTOCOL_ONLY_WRITE_DEPTH];
`else
  output arm3358_dbus wr_cache[10];
`endif
  output reg [15:0] data_o;

  logic chk_ena, chk_ena_r;
  logic chk_ena_falling;
  logic chk_ena_falling_d1, chk_ena_falling_d2;
  logic [15:0] temp_data, temp_chk;
  logic [15:0] temp_rd_chk;
  logic [8:0] temp_addr;
  logic data_right_flag;
  logic isn_chk_addr;

  assign chk_ena_falling = (~chk_ena) & (chk_ena_r);
  assign data_right_flag = (temp_data == (~temp_chk));
  assign isn_chk_addr = (addr_i != CHK_ADDR);
  always @(posedge clk_i)
    if (rst_i) begin
      chk_ena   <= 1'b0;
      chk_ena_r <= 1'b0;
    end else begin
      if (wr_req_i) begin
        if (isn_chk_addr) begin
          temp_addr <= addr_i;
          temp_data <= data_i;
          chk_ena   <= 1'b1;
        end else begin
          if (chk_ena) begin
            temp_chk <= data_i;
            chk_ena  <= 1'b0;
          end
        end
      end
      chk_ena_r <= chk_ena;
    end

  always @(posedge clk_i)
    if (rd_req_i) begin
      data_o <= rd_cache[addr_i];
    end

  always @(posedge clk_i) begin
    chk_ena_falling_d1 <= chk_ena_falling;
    chk_ena_falling_d2 <= chk_ena_falling_d1;
    if (chk_ena_falling_d2) begin
      if (data_right_flag) wr_cache[temp_addr] <= temp_data;
    end
  end

endmodule
