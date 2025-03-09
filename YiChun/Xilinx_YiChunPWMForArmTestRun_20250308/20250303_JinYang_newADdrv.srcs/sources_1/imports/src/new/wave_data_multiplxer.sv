`timescale 1ns / 1ps
import arm3358_pkg::*;
module wave_data_multiplxer (
    clk_i,
    rst_i,
    sample_freq_set_i,
    ad_sample_start_i,
    one_read_len_i,
    rd_ack_i,
    rd_start_i,
    fifo0_data_sel_i,
    fifo1_data_sel_i,
    fifo2_data_sel_i,
    fifo3_data_sel_i,
    fifo4_data_sel_i,
    fifo5_data_sel_i,
    fifo6_data_sel_i,
    fifo7_data_sel_i,
    fifo8_data_sel_i,
    fifo0_data_i,
    fifo1_data_i,
    fifo2_data_i,
    fifo3_data_i,
    fifo4_data_i,
    fifo5_data_i,
    fifo6_data_i,
    fifo7_data_i,
    fifo8_data_i,
    fifo0_data_o,
    fifo1_data_o,
    fifo2_data_o,
    fifo3_data_o,
    fifo4_data_o,
    fifo5_data_o,
    fifo6_data_o,
    fifo7_data_o,
    fifo8_data_o,
    rd_itr_o
);
  input clk_i;
  input rst_i;
  input arm3358_dbus sample_freq_set_i;
  input ad_sample_start_i;
  input rd_ack_i;
  input rd_start_i;
  input [2:0] fifo0_data_sel_i;
  input [2:0] fifo1_data_sel_i;
  input [2:0] fifo2_data_sel_i;
  input [2:0] fifo3_data_sel_i;
  input [2:0] fifo4_data_sel_i;
  input [2:0] fifo5_data_sel_i;
  input [2:0] fifo6_data_sel_i;
  input [2:0] fifo7_data_sel_i;
  input [2:0] fifo8_data_sel_i;
  input wave_data fifo0_data_i[8];
  input wave_data fifo1_data_i[8];
  input wave_data fifo2_data_i[8];
  input wave_data fifo3_data_i[8];
  input wave_data fifo4_data_i[8];
  input wave_data fifo5_data_i[8];
  input wave_data fifo6_data_i[8];
  input wave_data fifo7_data_i[8];
  input wave_data fifo8_data_i[8];
  input [8:0] one_read_len_i;
  output wave_data_16b fifo0_data_o;
  output wave_data_16b fifo1_data_o;
  output wave_data_16b fifo2_data_o;
  output wave_data_16b fifo3_data_o;
  output wave_data_16b fifo4_data_o;
  output wave_data_16b fifo5_data_o;
  output wave_data_16b fifo6_data_o;
  output wave_data_16b fifo7_data_o;
  output wave_data_16b fifo8_data_o;
  output rd_itr_o;

  logic [8:0] wp, rp;
  logic rd_ack;
  logic rd_resume;
  logic sample_rst;
  logic [8:0] wave_sel_change;
  logic [2:0] fifo0_data_sel_r;
  logic [2:0] fifo1_data_sel_r;
  logic [2:0] fifo2_data_sel_r;
  logic [2:0] fifo3_data_sel_r;
  logic [2:0] fifo4_data_sel_r;
  logic [2:0] fifo5_data_sel_r;
  logic [2:0] fifo6_data_sel_r;
  logic [2:0] fifo7_data_sel_r;
  logic [2:0] fifo8_data_sel_r;
  logic signed [15:0] wdata[9];
  logic signed [15:0] rdata[9];
  logic wp_ena;

  assign rd_ack = rd_ack_i;
  assign rd_resume = &wave_sel_change;
  assign sample_rst = rd_resume | rst_i;

  //波形数据暂存
  always @(posedge clk_i) begin
    case (fifo0_data_sel_i)
      3'd0: begin
        wdata[0] <= fifo0_data_i[0];
      end
      3'd1: begin
        wdata[0] <= fifo0_data_i[1];
      end
      3'd2: begin
        wdata[0] <= fifo0_data_i[2];
      end
      3'd3: begin
        wdata[0] <= fifo0_data_i[3];
      end
      3'd4: begin
        wdata[0] <= fifo0_data_i[4];
      end
      3'd5: begin
        wdata[0] <= fifo0_data_i[5];
      end
      3'd6: begin
        wdata[0] <= fifo0_data_i[6];
      end
      3'd7: begin
        wdata[0] <= fifo0_data_i[7];
      end
    endcase

    case (fifo1_data_sel_i)
      3'd0: begin
        wdata[1] <= fifo1_data_i[0];
      end
      3'd1: begin
        wdata[1] <= fifo1_data_i[1];
      end
      3'd2: begin
        wdata[1] <= fifo1_data_i[2];
      end
      3'd3: begin
        wdata[1] <= fifo1_data_i[3];
      end
      3'd4: begin
        wdata[1] <= fifo1_data_i[4];
      end
      3'd5: begin
        wdata[1] <= fifo1_data_i[5];
      end
      3'd6: begin
        wdata[1] <= fifo1_data_i[6];
      end
      3'd7: begin
        wdata[1] <= fifo1_data_i[7];
      end
    endcase

    case (fifo2_data_sel_i)
      3'd0: begin
        wdata[2] <= fifo2_data_i[0];
      end
      3'd1: begin
        wdata[2] <= fifo2_data_i[1];
      end
      3'd2: begin
        wdata[2] <= fifo2_data_i[2];
      end
      3'd3: begin
        wdata[2] <= fifo2_data_i[3];
      end
      3'd4: begin
        wdata[2] <= fifo2_data_i[4];
      end
      3'd5: begin
        wdata[2] <= fifo2_data_i[5];
      end
      3'd6: begin
        wdata[2] <= fifo2_data_i[6];
      end
      3'd7: begin
        wdata[2] <= fifo2_data_i[7];
      end
    endcase

    case (fifo3_data_sel_i)
      3'd0: begin
        wdata[3] <= fifo3_data_i[0];
      end
      3'd1: begin
        wdata[3] <= fifo3_data_i[1];
      end
      3'd2: begin
        wdata[3] <= fifo3_data_i[2];
      end
      3'd3: begin
        wdata[3] <= fifo3_data_i[3];
      end
      3'd4: begin
        wdata[3] <= fifo3_data_i[4];
      end
      3'd5: begin
        wdata[3] <= fifo3_data_i[5];
      end
      3'd6: begin
        wdata[3] <= fifo3_data_i[6];
      end
      3'd7: begin
        wdata[3] <= fifo3_data_i[7];
      end
    endcase

    case (fifo4_data_sel_i)
      3'd0: begin
        wdata[4] <= fifo4_data_i[0];
      end
      3'd1: begin
        wdata[4] <= fifo4_data_i[1];
      end
      3'd2: begin
        wdata[4] <= fifo4_data_i[2];
      end
      3'd3: begin
        wdata[4] <= fifo4_data_i[3];
      end
      3'd4: begin
        wdata[4] <= fifo4_data_i[4];
      end
      3'd5: begin
        wdata[4] <= fifo4_data_i[5];
      end
      3'd6: begin
        wdata[4] <= fifo4_data_i[6];
      end
      3'd7: begin
        wdata[4] <= fifo4_data_i[7];
      end
    endcase

    case (fifo5_data_sel_i)
      3'd0: begin
        wdata[5] <= fifo5_data_i[0];
      end
      3'd1: begin
        wdata[5] <= fifo5_data_i[1];
      end
      3'd2: begin
        wdata[5] <= fifo5_data_i[2];
      end
      3'd3: begin
        wdata[5] <= fifo5_data_i[3];
      end
      3'd4: begin
        wdata[5] <= fifo5_data_i[4];
      end
      3'd5: begin
        wdata[5] <= fifo5_data_i[5];
      end
      3'd6: begin
        wdata[5] <= fifo5_data_i[6];
      end
      3'd7: begin
        wdata[5] <= fifo5_data_i[7];
      end
    endcase

    case (fifo6_data_sel_i)
      3'd0: begin
        wdata[6] <= fifo6_data_i[0];
      end
      3'd1: begin
        wdata[6] <= fifo6_data_i[1];
      end
      3'd2: begin
        wdata[6] <= fifo6_data_i[2];
      end
      3'd3: begin
        wdata[6] <= fifo6_data_i[3];
      end
      3'd4: begin
        wdata[6] <= fifo6_data_i[4];
      end
      3'd5: begin
        wdata[6] <= fifo6_data_i[5];
      end
      3'd6: begin
        wdata[6] <= fifo6_data_i[6];
      end
      3'd7: begin
        wdata[6] <= fifo6_data_i[7];
      end
    endcase

    case (fifo7_data_sel_i)
      3'd0: begin
        wdata[7] <= fifo7_data_i[0];
      end
      3'd1: begin
        wdata[7] <= fifo7_data_i[1];
      end
      3'd2: begin
        wdata[7] <= fifo7_data_i[2];
      end
      3'd3: begin
        wdata[7] <= fifo7_data_i[3];
      end
      3'd4: begin
        wdata[7] <= fifo7_data_i[4];
      end
      3'd5: begin
        wdata[7] <= fifo7_data_i[5];
      end
      3'd6: begin
        wdata[7] <= fifo7_data_i[6];
      end
      3'd7: begin
        wdata[7] <= fifo7_data_i[7];
      end
    endcase

    case (fifo8_data_sel_i)
      3'd0: begin
        wdata[8] <= fifo8_data_i[0];
      end
      3'd1: begin
        wdata[8] <= fifo8_data_i[1];
      end
      3'd2: begin
        wdata[8] <= fifo8_data_i[2];
      end
      3'd3: begin
        wdata[8] <= fifo8_data_i[3];
      end
      3'd4: begin
        wdata[8] <= fifo8_data_i[4];
      end
      3'd5: begin
        wdata[8] <= fifo8_data_i[5];
      end
      3'd6: begin
        wdata[8] <= fifo8_data_i[6];
      end
      3'd7: begin
        wdata[8] <= fifo8_data_i[7];
      end
    endcase
  end

  //波形数据选择
  always @(posedge clk_i) begin
    fifo0_data_sel_r <= fifo0_data_sel_i;
    fifo1_data_sel_r <= fifo1_data_sel_i;
    fifo2_data_sel_r <= fifo2_data_sel_i;
    fifo3_data_sel_r <= fifo3_data_sel_i;
    fifo4_data_sel_r <= fifo4_data_sel_i;
    fifo5_data_sel_r <= fifo5_data_sel_i;
    fifo6_data_sel_r <= fifo6_data_sel_i;
    fifo7_data_sel_r <= fifo7_data_sel_i;
    fifo8_data_sel_r <= fifo8_data_sel_i;
    if (fifo0_data_sel_r != fifo0_data_sel_i) wave_sel_change[0] <= 1'b1;
    else wave_sel_change[0] <= 1'b0;
    if (fifo1_data_sel_r != fifo1_data_sel_i) wave_sel_change[1] <= 1'b1;
    else wave_sel_change[1] <= 1'b0;
    if (fifo2_data_sel_r != fifo2_data_sel_i) wave_sel_change[2] <= 1'b1;
    else wave_sel_change[2] <= 1'b0;
    if (fifo3_data_sel_r != fifo3_data_sel_i) wave_sel_change[3] <= 1'b1;
    else wave_sel_change[3] <= 1'b0;
    if (fifo4_data_sel_r != fifo4_data_sel_i) wave_sel_change[4] <= 1'b1;
    else wave_sel_change[4] <= 1'b0;
    if (fifo5_data_sel_r != fifo5_data_sel_i) wave_sel_change[5] <= 1'b1;
    else wave_sel_change[5] <= 1'b0;
    if (fifo6_data_sel_r != fifo6_data_sel_i) wave_sel_change[6] <= 1'b1;
    else wave_sel_change[6] <= 1'b0;
    if (fifo7_data_sel_r != fifo7_data_sel_i) wave_sel_change[7] <= 1'b1;
    else wave_sel_change[7] <= 1'b0;
    if (fifo8_data_sel_r != fifo8_data_sel_i) wave_sel_change[8] <= 1'b1;
    else wave_sel_change[8] <= 1'b0;
  end

  //缓存FIFO指针控制
  smaple_fifo samp_inst (
      .clk_i(clk_i),
      .rst_i(sample_rst),
      .rd_ack_i(rd_ack),
      .rd_start_i(rd_start_i),
      .sample_freq_set_i(sample_freq_set_i[9:0]),
      .ad_sample_start_i(ad_sample_start_i),
      .one_read_len_i(one_read_len_i[8:0]),
      .wp_o(wp),
      .rp_o(rp),
      .itrq_o(rd_itr_o),
      .wp_ena_o(wp_ena)
  );

  //缓存FIFO
  generate
    genvar idx;
    for (idx = 0; idx < 9; idx++) begin
      wave_blk_sdpr fifo0_inst (
          .clka (clk_i),      
          .ena  (1'b1),       
          .wea  (wp_ena),     
          .addra(wp),         
          .dina (wdata[idx]), 
          .clkb (clk_i),      
          .enb  (1'b1),       
          .addrb(rp),         
          .doutb(rdata[idx])  
      );
    end
  endgenerate

  assign fifo0_data_o = rdata[0];
  assign fifo1_data_o = rdata[1];
  assign fifo2_data_o = rdata[2];
  assign fifo3_data_o = rdata[3];
  assign fifo4_data_o = rdata[4];
  assign fifo5_data_o = rdata[5];
  assign fifo6_data_o = rdata[6];
  assign fifo7_data_o = rdata[7];
  assign fifo8_data_o = rdata[8];

endmodule
