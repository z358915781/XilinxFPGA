`timescale 1ns / 1ps
module multi_ad_ctrl (
    clk_i,
    rst_i,
    sample_i,
    ad_data_i,
    ad0_busy_i,
    ad1_busy_i,
    ad_conv_o,
    ad0_cs_o,
    ad1_cs_o,
    ad_rd_o,
    ad_os_o,
    ad_err_o,
    ad0_ch0_o,
    ad0_ch1_o,
    ad0_ch2_o,
    ad0_ch3_o,
    ad0_ch4_o,
    ad0_ch5_o,
    ad0_ch6_o,
    ad0_ch7_o,
    ad1_ch0_o,
    ad1_ch1_o,
    ad1_ch2_o,
    ad1_ch3_o,
    ad1_ch4_o,
    ad1_ch5_o,
    ad1_ch6_o,
    ad1_ch7_o
);

  input clk_i, rst_i;
  input sample_i;
  input [13:0] ad_data_i;
  input ad0_busy_i, ad1_busy_i;
  output ad_conv_o;
  output ad0_cs_o, ad1_cs_o;
  output ad_rd_o;
  output [2:0] ad_os_o;
  output ad_err_o;
  output [13:0] ad0_ch0_o, ad0_ch1_o, ad0_ch2_o, ad0_ch3_o,ad0_ch4_o, ad0_ch5_o, ad0_ch6_o, ad0_ch7_o;
  output [13:0] ad1_ch0_o, ad1_ch1_o, ad1_ch2_o, ad1_ch3_o,ad1_ch4_o, ad1_ch5_o, ad1_ch6_o, ad1_ch7_o;

  logic ad_rst;
  (*mark_debug = "true"*)
  logic [13:0] ad_data;
  logic [13:0] ad_ch0, ad_ch1, ad_ch2, ad_ch3, ad_ch4, ad_ch5, ad_ch6, ad_ch7;
  logic [13:0] ad0_ch0, ad0_ch1, ad0_ch2, ad0_ch3, ad0_ch4, ad0_ch5, ad0_ch6, ad0_ch7;
  logic [13:0] ad1_ch0, ad1_ch1, ad1_ch2, ad1_ch3, ad1_ch4, ad1_ch5, ad1_ch6, ad1_ch7;
  (*mark_debug = "true"*)
  logic ad_cs, ad0_cs, ad1_cs;
  (*mark_debug = "true"*)
  logic ad_conv_r, ad_rd_r;
  (*mark_debug = "true"*)
  logic ad_busy;
  (*mark_debug = "true"*)
  logic sample_done, sample_done_r;
  (*mark_debug = "true"*)
  logic poll;
  logic [7:0] dvalid;
  logic sample;
  logic sample_done_falling;

  assign sample_done_falling = sample_done_r & (~sample_done);

  //100K采样脉冲，50K采样率
  pulse #(
      .PULSE_FALLING(249),
      .PULSE_RISING (248)
  ) pusle_inst (
      .clk_i(clk_i),
      .rst_i(rst_i),
      .pulse_o(sample_pusle),
      .clk_cnt_o()
  );

  //两片AD交替采样
  always @(posedge clk_i)
    if (rst_i) begin
      poll <= 1'b0;
      sample_done_r <= 1'b0;
    end else begin
      sample_done_r <= sample_done;
      if (sample_done_falling) poll <= ~poll;

      ad_busy <= (poll == 1'b0) ? ad0_busy_i : ad1_busy_i;

      if (poll == 1'b0) begin
        ad0_cs  <= ad_cs;
        ad1_cs  <= 1'b1;
        ad0_ch0 <= dvalid[0] ? ad_ch0 : ad0_ch0;
        ad0_ch1 <= dvalid[1] ? ad_ch1 : ad0_ch1;
        ad0_ch2 <= dvalid[2] ? ad_ch2 : ad0_ch2;
        ad0_ch3 <= dvalid[3] ? ad_ch3 : ad0_ch3;
        ad0_ch4 <= dvalid[4] ? ad_ch4 : ad0_ch4;
        ad0_ch5 <= dvalid[5] ? ad_ch5 : ad0_ch5;
        ad0_ch6 <= dvalid[6] ? ad_ch6 : ad0_ch6;
        ad0_ch7 <= dvalid[7] ? ad_ch7 : ad0_ch7;
      end else if (poll == 1'b1) begin
        ad1_cs  <= ad_cs;
        ad0_cs  <= 1'b1;
        ad1_ch0 <= dvalid[0] ? ad_ch0 : ad1_ch0;
        ad1_ch1 <= dvalid[1] ? ad_ch1 : ad1_ch1;
        ad1_ch2 <= dvalid[2] ? ad_ch2 : ad1_ch2;
        ad1_ch3 <= dvalid[3] ? ad_ch3 : ad1_ch3;
        ad1_ch4 <= dvalid[4] ? ad_ch4 : ad1_ch4;
        ad1_ch5 <= dvalid[5] ? ad_ch5 : ad1_ch5;
        ad1_ch6 <= dvalid[6] ? ad_ch6 : ad1_ch6;
        ad1_ch7 <= dvalid[7] ? ad_ch7 : ad1_ch7;
      end
      ad_data <= ad_data_i;
      //sample <= sample_i;   
      sample <= sample_pusle;   
    end

  //采样单元
  ad_ctrl ad_inst (
      .clk_i(clk_i),
      .rst_i(rst_i),
      .sample_i(sample),
      .oversample_ena_i(1'b0),
      .ad_data_i(ad_data_i),
      .ad_busy_i(ad_busy),
      .ad_conv_o(ad_conv_o),
      .ad_cs_o(ad_cs),
      .ad_rd_o(ad_rd_o),
      .ad_os_o(ad_os_o),
      .ad_rst_o(ad_rst),
      .ad_ch0_o(ad_ch0),
      .ad_ch1_o(ad_ch1),
      .ad_ch2_o(ad_ch2),
      .ad_ch3_o(ad_ch3),
      .ad_ch4_o(ad_ch4),
      .ad_ch5_o(ad_ch5),
      .ad_ch6_o(ad_ch6),
      .ad_ch7_o(ad_ch7),
      .err_intval_o(),
      .ad_err_o(ad_err_o),
      .sample_done_o(sample_done),
      .dvalid_o(dvalid)
  );

  assign ad0_ch0_o = ad0_ch0;
  assign ad0_ch1_o = ad0_ch1;
  assign ad0_ch2_o = ad0_ch2;
  assign ad0_ch3_o = ad0_ch3;
  assign ad0_ch4_o = ad0_ch4;
  assign ad0_ch5_o = ad0_ch5;
  assign ad0_ch6_o = ad0_ch6;
  assign ad0_ch7_o = ad0_ch7;
  assign ad0_cs_o  = ad0_cs;
  assign ad1_ch0_o = ad1_ch0;
  assign ad1_ch1_o = ad1_ch1;
  assign ad1_ch2_o = ad1_ch2;
  assign ad1_ch3_o = ad1_ch3;
  assign ad1_ch4_o = ad1_ch4;
  assign ad1_ch5_o = ad1_ch5;
  assign ad1_ch6_o = ad1_ch6;
  assign ad1_ch7_o = ad1_ch7;
  assign ad1_cs_o  = ad1_cs;

endmodule
