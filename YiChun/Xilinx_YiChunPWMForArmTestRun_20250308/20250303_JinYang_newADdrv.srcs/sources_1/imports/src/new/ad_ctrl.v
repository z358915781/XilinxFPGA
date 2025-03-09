// ctrl module for AD7607 hardware
`timescale 1ns / 1ps
module ad_ctrl (
    clk_i,
    rst_i,
    sample_i,
    oversample_ena_i,
    ad_data_i,
    ad_busy_i,
    ad_conv_o,
    ad_cs_o,
    ad_rd_o,
    ad_os_o,
    ad_rst_o,
    ad_ch0_o,
    ad_ch1_o,
    ad_ch2_o,
    ad_ch3_o,
    ad_ch4_o,
    ad_ch5_o,
    ad_ch6_o,
    ad_ch7_o,
    err_intval_o,
    ad_err_o,
    sample_done_o,
    dvalid_o
);
  parameter reg [3:0] DATA_WIDTH = 4'd14;
  localparam reg [4:0] FSM_WIDTH = 1;
  localparam CH_NUM = 8;
  localparam reg [FSM_WIDTH:0] START_ON = 0;
  localparam reg [FSM_WIDTH:0] IDLE = 1;
  localparam reg [FSM_WIDTH:0] CONV = 2;
  localparam reg [FSM_WIDTH:0] SAMPLE = 3;

  input clk_i, rst_i;
  input sample_i;
  input oversample_ena_i;
  input [DATA_WIDTH-1:0] ad_data_i;
  input ad_busy_i;
  output ad_conv_o;
  output ad_cs_o;
  output ad_rd_o;
  output [2:0] ad_os_o;
  output ad_rst_o;
  output [DATA_WIDTH-1:0] ad_ch0_o;
  output [DATA_WIDTH-1:0] ad_ch1_o;
  output [DATA_WIDTH-1:0] ad_ch2_o;
  output [DATA_WIDTH-1:0] ad_ch3_o;
  output [DATA_WIDTH-1:0] ad_ch4_o;
  output [DATA_WIDTH-1:0] ad_ch5_o;
  output [DATA_WIDTH-1:0] ad_ch6_o;
  output [DATA_WIDTH-1:0] ad_ch7_o;
  output [31:0] err_intval_o;
  output ad_err_o;
  output sample_done_o;
  output [7:0] dvalid_o;

  reg ad_rst, ad_conv, ad_rdout, ad_cs;
  (*mark_debug = "true"*)
  reg [FSM_WIDTH:0] cur_state, next_state;
  (*mark_debug = "true"*)
  reg start_on, idle, conv, sample;
  (*mark_debug = "true"*)
  wire start_on2idle, idle2conv, conv2sample, sample2idle;
  reg [DATA_WIDTH-1:0] ad_ch[7:0];
  (*mark_debug = "true"*)
  reg ad_err;
  reg data_sample, data_sample_r;
  reg [4:0] ch_cnt;
  wire [3:0] ch_cs;
  reg [7:0] ch_valid;
  reg [4:0] rst_cnt;
  reg ad_busy_r;
  wire ad_busy_falling;
  reg ad_rst_done;
  reg [2:0] sample_r, ad_busy_falling_r;
  reg [31:0] ad_conv_cnt;
  reg ad_conv_r;
  reg [31:0] err_time_lock, err_time_lock_r, err_interval;

  //状态控制
  assign start_on2idle = ad_rst_done;
  assign idle2conv = (|sample_r);
  assign conv2sample = (ad_busy_falling_r[0] | ad_busy_falling);
  assign sample2idle = (ch_cnt == CH_NUM * 2 - 1);
  assign ad_busy_falling = (ad_busy_r & ~ad_busy_i);
  assign ch_cs = (ch_cnt[4:1]);

  always @(posedge clk_i) begin
    if (rst_i) cur_state <= START_ON;
    else cur_state <= next_state;
  end

  //接收到采样请求，发出相应AD7607接口信号
  //CONV或SAMPLE状态，AD无响应认为AD错误
  //任何状态，AD错误后转到IDLE状态，并发出错误脉冲
  always @(posedge clk_i) begin
    if (rst_i) begin
      ad_rst <= 1'b1;
      ad_cs  <= 1'b1;
    end else begin
      start_on <= 1'b0;
      idle <= 1'b0;
      conv <= 1'b0;
      sample <= 1'b0;
      case (cur_state)
        START_ON: begin
          start_on <= 1'b1;

          next_state <= start_on2idle ? IDLE : START_ON;
          ad_rst <= start_on2idle ? 1'b0 : 1'b1;
          ad_conv <= 1'b1;
          ad_cs <= 1'b1;
          ad_rdout <= 1'b1;
        end
        IDLE: begin
          idle <= 1'b1;

          next_state <= idle2conv ? CONV : IDLE;
          ad_conv <= idle2conv ? 1'b0 : 1'b1;
          ad_cs <= 1'b1;
        end
        CONV: begin
          conv <= 1'b1;

          next_state <= ad_err ? IDLE : conv2sample ? SAMPLE : CONV;
          ad_cs <= conv2sample ? 1'b0 : 1'b1;
          ad_conv <= 1'b1;
        end
        SAMPLE: begin
          sample <= 1'b1;

          next_state <= ad_err ? IDLE : sample2idle ? IDLE : SAMPLE;
          ad_rdout <= sample2idle ? 1'b1 : ch_cnt[0];
        end
        default: next_state <= IDLE;
      endcase
    end
  end

  //通道控制
  always @(posedge clk_i) begin
    if (rst_i) begin
      rst_cnt <= 'd0;
      ch_cnt <= 'd0;
      ad_rst_done <= 1'b0;
    end else begin
      rst_cnt <= rst_cnt + 1'b1;

      if (rst_cnt == 4'd2) ad_rst_done <= 1'b1;

      if (cur_state == IDLE) ch_cnt <= 4'd0;
      else if (cur_state == SAMPLE && ch_cnt < CH_NUM * 2 - 1) ch_cnt <= ch_cnt + 1'b1;
    end
  end

  always @(posedge clk_i) begin
    ad_busy_r <= ad_busy_i;
    sample_r[2:0] <= {sample_r[1:0], sample_i};
    ad_busy_falling_r[2:0] <= {ad_busy_falling_r[1:0], ad_busy_falling};
  end

  //通道数据提取
  always @(posedge clk_i)
    if (rst_i) begin
      ad_ch[0] <= 'h0;
      ad_ch[1] <= 'h0;
      ad_ch[2] <= 'h0;
      ad_ch[3] <= 'h0;
      ad_ch[4] <= 'h0;
      ad_ch[5] <= 'h0;
      ad_ch[6] <= 'h0;
      ad_ch[7] <= 'h0;
      ch_valid <= 'h0;
    end else begin
      if (ad_rdout == 1'b0) begin
        case (ch_cs)
          4'd0: begin
            ad_ch[0] <= ad_data_i;
            ch_valid[0] <= 1'b1;
          end
          4'd1: begin
            ad_ch[1] <= ad_data_i;
            ch_valid[1] <= 1'b1;
          end
          4'd2: begin
            ad_ch[2] <= ad_data_i;
            ch_valid[2] <= 1'b1;
          end
          4'd3: begin
            ad_ch[3] <= ad_data_i;
            ch_valid[3] <= 1'b1;
          end
          4'd4: begin
            ad_ch[4] <= ad_data_i;
            ch_valid[4] <= 1'b1;
          end
          4'd5: begin
            ad_ch[5] <= ad_data_i;
            ch_valid[5] <= 1'b1;
          end
          4'd6: begin
            ad_ch[6] <= ad_data_i;
            ch_valid[6] <= 1'b1;
          end
          4'd7: begin
            ad_ch[7] <= ad_data_i;
            ch_valid[7] <= 1'b1;
          end
          default: ;
        endcase
      end else begin
        ch_valid <= 8'b0;
      end
    end

  //AD错误判定，防止状态机死
  always @(posedge clk_i)
    if (rst_i) begin
      ad_err <= 1'b0;
      ad_conv_cnt <= 32'h0;
      err_time_lock <= 32'h0;
      err_time_lock_r <= 32'h0;
    end else begin
      if ((conv | sample) & sample_i) ad_err <= 1'b1;
      else if (idle) ad_err <= 1'b0;

      ad_conv_r <= ad_conv;
      if (ad_conv_r == 1'b1 && ad_conv == 1'b0) ad_conv_cnt <= ad_conv_cnt + 1'b1;

      if (ad_err) begin
        err_time_lock <= ad_conv_cnt;
        err_time_lock_r <= err_time_lock;
        err_interval <= err_time_lock - err_time_lock_r;
      end

      if (sample) data_sample <= 1'b1;
      else data_sample <= 1'b0;
      data_sample_r <= data_sample;
    end

  assign ad_err_o = ad_err;
  assign err_intval_o = err_interval;
  assign ad_rst_o = ad_rst;
  assign ad_conv_o = ad_conv;
  assign ad_cs_o = ad_cs;
  assign ad_rd_o = ad_rdout;
  assign ad_os_o = 3'b000;
  assign ad_ch0_o = ad_ch[0];
  assign ad_ch1_o = ad_ch[1];
  assign ad_ch2_o = ad_ch[2];
  assign ad_ch3_o = ad_ch[3];
  assign ad_ch4_o = ad_ch[4];
  assign ad_ch5_o = ad_ch[5];
  assign ad_ch6_o = ad_ch[6];
  assign ad_ch7_o = ad_ch[7];
  assign sample_done_o = data_sample_r & (~data_sample);
  assign dvalid_o = ch_valid;

endmodule  //ctrl
