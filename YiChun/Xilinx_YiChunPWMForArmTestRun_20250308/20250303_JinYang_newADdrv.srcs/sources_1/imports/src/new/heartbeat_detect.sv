`timescale 1ns / 1ps
//`define SIM
module heartbeat_detect (
    clk_i,
    rst_i,
    heart_beat_i,
    heart_beat_stop_o,
    stop_cnt_o
);
`ifdef SIM
  parameter HEART_BEAT_TIME = 10;
`else
  parameter HEART_BEAT_TIME = 750_000_000;
`endif

  input clk_i;
  input rst_i;
  input heart_beat_i;
  output heart_beat_stop_o;
  output [15:0] stop_cnt_o;

  logic heart_beat_stop;
  logic cnt_clr;
  logic [31:0] cnt;
  logic [15:0] stop_cnt;
  logic stop_d0;
  logic stop_rising;

  assign cnt_clr = (heart_beat_i == 1'b1);
  assign stop_rising = (~stop_d0) & heart_beat_stop;
  always @(posedge clk_i) begin
    if (rst_i) begin
      cnt <= 0;
      heart_beat_stop <= 1'b0;
      stop_d0 <= 1'b1;
    end else begin
      stop_d0 <= heart_beat_stop;
      if (cnt_clr) begin
        cnt <= 0;
        heart_beat_stop <= 1'b0;
      end else if (cnt == HEART_BEAT_TIME) heart_beat_stop <= 1'b1;
      else cnt <= cnt + 1;
    end
  end

  always @(posedge clk_i)
    if (rst_i) stop_cnt <= 0;
    else begin
      if (stop_rising) stop_cnt <= stop_cnt + 1'b1;
    end

  assign heart_beat_stop_o = heart_beat_stop;
  assign stop_cnt_o = stop_cnt;
endmodule
