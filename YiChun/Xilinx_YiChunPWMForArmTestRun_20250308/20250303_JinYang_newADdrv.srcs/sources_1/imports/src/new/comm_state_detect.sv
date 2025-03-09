`timescale 1ns / 1ps
//`define SIM
import arm3358_pkg::*;
module comm_state_detect (
    clk_i,
    rst_i,
    wr_req_i,
    rd_req_i,
    addr_i,
    data_i,
    rd_cache,
    wr_cache,
    data_o,
    stop_cnt_o
);
  parameter P_ADDR = 26;
  parameter Q_ADDR = 27;
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
  output [15:0] stop_cnt_o;

  (*mark_debug="true"*)
  logic stop;
`ifndef SIM
  arm3358_dbus wr_cache_temp[PROTOCOL_ONLY_WRITE_DEPTH];
`else
  arm3358_dbus wr_cache_temp[10];
`endif

  //校验码检查和添加
  check_code_detect chk_code_inst (
      .clk_i(clk_i),
      .rst_i(rst_i),
      .wr_req_i(wr_req_i),
      .rd_req_i(rd_req_i),
      .addr_i(addr_i),
      .data_i(data_i),
      .wr_cache(wr_cache_temp),
      .rd_cache(rd_cache),
      .data_o(data_o)
  );

  //心跳监测
  heartbeat_detect heartbeat_inst (
      .clk_i(clk_i),
      .rst_i(rst_i),
      .heart_beat_i(wr_req_i | rd_req_i),
      .heart_beat_stop_o(stop),
      .stop_cnt_o(stop_cnt_o)
  );

  //通讯中断，则有功、无功降为0
`ifndef SIM
  always @(posedge clk_i) begin
    for (int i = 0; i < PROTOCOL_ONLY_WRITE_DEPTH; i++) begin
      if (i == P_ADDR) wr_cache[P_ADDR] <= stop ? 0 : wr_cache_temp[P_ADDR];
      else if (i == Q_ADDR) wr_cache[Q_ADDR] <= stop ? 0 : wr_cache_temp[Q_ADDR];
      else wr_cache[i] <= wr_cache_temp[i];
    end
  end
`else
  always @(posedge clk_i) begin
    for (int i = 0; i < 10; i++) begin
      if (i == 0) wr_cache[0] <= stop ? 0 : wr_cache_temp[0];
      else if (i == 1) wr_cache[1] <= stop ? 0 : wr_cache_temp[1];
      else wr_cache[i] <= wr_cache_temp[i];
    end
  end
`endif

endmodule
