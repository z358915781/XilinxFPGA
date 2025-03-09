`timescale 1ns / 1ps
import arm3358_pkg::*;
module smaple_fifo (
    clk_i,
    rst_i,
    rd_ack_i,
    rd_start_i,
    sample_freq_set_i,
    ad_sample_start_i,
    one_read_len_i,
    wp_o,
    rp_o,
    itrq_o,
    wp_ena_o
);
  //采样抽取率
  parameter EXTRACT_RATIO = 20;
  //每通道一次读250个数据
  parameter LEN_ONE_READ = 250;
  parameter RAM_LEN = 500;

  input clk_i;
  input rst_i;
  input rd_ack_i;
  input rd_start_i;
  input [9:0] sample_freq_set_i;
  input ad_sample_start_i;
  input [8:0] one_read_len_i;
  output [8:0] wp_o;
  output [8:0] rp_o;
  output itrq_o;
  output wp_ena_o;

  logic [7:0] extract_cnt;
  //软件设置采样率，20对应5000Hz采样频率
  (*mark_debug="true"*)
  logic [7:0] extract_ratio;
  logic [8:0] one_read_len;
  logic extract_cnt_clr;
  logic extract_ena;
  logic ad_sample_falling;
  logic itrq_ena;
  (*mark_debug = "true"*)
  logic [3:0] rd_ack_cnt;
  (*mark_debug = "true"*)
  logic rp_incr;
  (*mark_debug = "true"*)
  logic [8:0] wp, rp;
  logic [8:0] extract_data_cnt;
  logic ad_sample_start_r;
  logic itrq_miss, itrq;
  logic rd_start;
  logic rp_lock;
  logic sw_rst;
  logic itrq_miss_dena;

  assign extract_cnt_clr = (extract_cnt == extract_ratio) ? 1'b1 : 1'b0;
  //软复位，写1复位模块
  assign sw_rst = sample_freq_set_i[8];
  //软件写1，取消中断推断功能
  assign itrq_miss_dena = sample_freq_set_i[9];

  //一次中断读取所有通道数据，之后指针递增
  always @(posedge clk_i)
    if (rst_i | sw_rst) rd_ack_cnt = 0;
    else begin
      if (rd_ack_i & rd_ack_cnt == 4'd8) begin
        rp_incr <= 1;
        rd_ack_cnt <= 0;
      end else if (rd_ack_i) begin
        rd_ack_cnt <= rd_ack_cnt + 1;
        rp_incr <= 0;
      end else begin
        rp_incr <= 0;
      end
    end

  //缓存指针控制
  always @(posedge clk_i)
    if (rst_i | sw_rst) begin
      wp <= 0;
      rp <= 0;
      rp_lock <= 1'b1;
    end else begin
      if (extract_ena & wp == {one_read_len, 1'b0} - 1) wp <= 0;
      else if (extract_ena) wp <= wp + 1;

      if (rp_lock) rp <= 0;
      else if (rp_incr & rp == {one_read_len, 1'b0} - 1) rp <= 0;
      else if (rp_incr) rp <= rp + 1;

      if (itrq_ena) rp_lock <= 1'b0;
    end

  //序列抽取
  always @(posedge clk_i)
    if (rst_i | sw_rst) begin
      extract_cnt <= 0;
      extract_data_cnt <= 0;
    end else begin
      if (extract_cnt_clr) begin
        extract_cnt <= 0;
        extract_ena <= 1'b1;
      end else begin
        if (ad_sample_falling) extract_cnt <= extract_cnt + 1'b1;
        extract_ena <= 1'b0;
      end

      if ((extract_data_cnt == one_read_len)) begin
        extract_data_cnt <= 0;
        itrq_ena <= 1;
      end else begin
        if (extract_ena) extract_data_cnt <= extract_data_cnt + 1'b1;
        itrq_ena <= 0;
      end
    end

  //AD转换开始标志
  always @(posedge clk_i) begin
    ad_sample_start_r <= ad_sample_start_i;
    if (ad_sample_start_r & (~ad_sample_start_i)) ad_sample_falling <= 1'b1;
    else ad_sample_falling <= 1'b0;
  end

  //抽样率设置
  always @(posedge clk_i) begin
    if (rst_i) extract_ratio <= 20;
    else begin
      if (sample_freq_set_i[7:0] != 0) extract_ratio <= sample_freq_set_i[7:0];
      else extract_ratio <= 20;
    end
  end

  //一次读长度设置, 默认250
  always @(posedge clk_i) begin
    if (rst_i) one_read_len <= 250;
    else begin
      if (one_read_len_i != 0) one_read_len <= one_read_len_i;
      else one_read_len <= 250;
    end
  end

  //ARM 未捕获中断
  always @(posedge clk_i) begin
    if (rst_i | sw_rst) begin
      itrq_miss <= 1'b0;
      itrq <= 1'b0;
    end else begin
      if (itrq_miss_dena) itrq_miss <= 1'b0;
      else if (rd_ack_i) begin
        if (wp < one_read_len && rp < one_read_len) itrq_miss <= 1'b1;
        else if (wp >= one_read_len && rp >= one_read_len) itrq_miss <= 1'b1;
      end else if (itrq_ena) begin
        itrq_miss <= 1'b0;
      end

      itrq <= itrq_ena & (~itrq_miss);
    end
  end

  //上电一定时间后，允许发中断
  always @(posedge clk_i) begin
    if (rst_i) rd_start <= 1'b0;
    else begin
      if (rd_start_i) begin
        if (wp < 125) rd_start <= 1'b1;
      end else rd_start <= 1'b0;
    end
  end

  assign wp_o = wp;
  assign rp_o = rp;
  assign itrq_o = itrq & rd_start;
  assign wp_ena_o = extract_ena;
endmodule
