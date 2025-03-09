`timescale 1ns / 1ps
//`define ITRQ_READ
import arm3358_pkg::*;
module arm3358_commu_v2 (
    sys_clk,
    tx_clk,
    Rst_n,
    gpmc_DATA,
    gpmc_ADD,
    gpmc_NE2,
    gpmc_NOE,
    gpmc_NWE,
    fifo0_data_sel,
    fifo1_data_sel,
    fifo2_data_sel,
    fifo3_data_sel,
    fifo4_data_sel,
    fifo5_data_sel,
    fifo6_data_sel,
    fifo7_data_sel,
    fifo8_data_sel,
    FIFO_SmpFreq_Set,
    FIFO_Start,
    SettingParameter,
    MonitorData,
    SettingSwitchCMD,
    ArmData,
    FIFO0_Data,
    FIFO1_Data,
    FIFO2_Data,
    FIFO3_Data,
    FIFO4_Data,
    FIFO5_Data,
    FIFO6_Data,
    FIFO7_Data,
    FIFO8_Data,
    ad_sample_start,
    rd_itr,
    stop_cnt_o
);

  input sys_clk;
  input tx_clk;
  input Rst_n;
  input [17:0] gpmc_ADD;
  input gpmc_NE2;
  input gpmc_NOE;
  input gpmc_NWE;

  input [2:0] fifo0_data_sel;
  input [2:0] fifo1_data_sel;
  input [2:0] fifo2_data_sel;
  input [2:0] fifo3_data_sel;
  input [2:0] fifo4_data_sel;
  input [2:0] fifo5_data_sel;
  input [2:0] fifo6_data_sel;
  input [2:0] fifo7_data_sel;
  input [2:0] fifo8_data_sel;

  input FIFO_Start;
  input [15:0] FIFO_SmpFreq_Set;

  inout arm3358_dbus gpmc_DATA;
  output arm3358_dbus SettingParameter[SET_PARA_LEN];
  output arm3358_dbus SettingSwitchCMD[SET_CMD_LEN];
  input arm3358_dbus MonitorData[MONITOR_DATA_LEN];
  output arm3358_dbus ArmData[ARM_DATA_LEN];
  input wave_data FIFO0_Data[8];
  input wave_data FIFO1_Data[8];
  input wave_data FIFO2_Data[8];
  input wave_data FIFO3_Data[8];
  input wave_data FIFO4_Data[8];
  input wave_data FIFO5_Data[8];
  input wave_data FIFO6_Data[8];
  input wave_data FIFO7_Data[8];
  input wave_data FIFO8_Data[8];
  input ad_sample_start;
  output rd_itr;
  output [15:0] stop_cnt_o;

  arm3358_dbus dataBuffer[ARM3358_ADDR_LEN];
  arm3358_dbus dBuf_wr_sys[PROTOCOL_ONLY_WRITE_DEPTH];

  (*mark_debug = "true"*)
  logic [PROTOCOL_61850_ADDR_WIDTH-1:0] protocol_61850_addr;
  (*IOB = "true"*)
  logic arm3358_gpmc_cs_n_r0, arm3358_gpmc_cs_n_r1;
  (*IOB = "true"*)
  logic arm3358_gpmc_re_n_r0, arm3358_gpmc_re_n_r1;
  (*IOB = "true"*)
  logic arm3358_gpmc_we_n_r0, arm3358_gpmc_we_n_r1;
  (*mark_debug = "true"*)
  arm3358_dbus full_word_data_recv, full_word_data_send;
  logic byte_sel;
  wave_data wave_chn[9];
  logic Read_Akn;
  (*IOB = "true"*) (*mark_debug = "true"*)
  logic arm3358_rd_ena_r, arm3358_wr_ena_r;
  (*mark_debug = "true"*)
  logic arm3358_rd_ena, arm3358_wr_ena;
  (*mark_debug = "true"*)
  logic tri_gate_ena;
  logic rd_wave, rd_wave_r, wave_addr_ena;
  logic rd_wave_falling;
  logic wave_itr;
  logic [23:0] wave_itr_cnt;
  logic com_if_itr;
  logic ad_sample;
  logic access_ena_rising;

  assign protocol_61850_addr = gpmc_ADD[9:1];
  assign byte_sel = gpmc_ADD[0];
  assign arm3358_rd_ena = (~arm3358_gpmc_re_n_r0)&(~arm3358_gpmc_cs_n_r0)&(~arm3358_gpmc_cs_n_r1) & (~arm3358_gpmc_re_n_r1);
  assign arm3358_wr_ena = (~arm3358_gpmc_we_n_r0)&(~arm3358_gpmc_cs_n_r0)&(~arm3358_gpmc_cs_n_r1) & (~arm3358_gpmc_we_n_r1);
  assign rd_wave = arm3358_rd_ena & wave_addr_ena;
  assign rd_wave_falling = (rd_wave_r) & (~rd_wave);
  assign access_ena_rising = ((~arm3358_rd_ena_r)&(arm3358_rd_ena))|((~arm3358_wr_ena_r)&(arm3358_wr_ena));
  assign tri_gate_ena = arm3358_rd_ena_r;

  always @(posedge tx_clk) begin
    if (Rst_n == 1'b0) begin
      arm3358_gpmc_cs_n_r0 <= 1'b1;
      arm3358_gpmc_re_n_r0 <= 1'b1;
      arm3358_gpmc_we_n_r0 <= 1'b1;
      arm3358_gpmc_cs_n_r1 <= 1'b1;
      arm3358_gpmc_re_n_r1 <= 1'b1;
      arm3358_gpmc_we_n_r1 <= 1'b1;
    end
    arm3358_gpmc_cs_n_r0 <= gpmc_NE2;
    arm3358_gpmc_cs_n_r1 <= arm3358_gpmc_cs_n_r0;
    arm3358_gpmc_re_n_r0 <= gpmc_NOE;
    arm3358_gpmc_re_n_r1 <= arm3358_gpmc_re_n_r0;
    arm3358_gpmc_we_n_r0 <= gpmc_NWE;
    arm3358_gpmc_we_n_r1 <= arm3358_gpmc_we_n_r0;

    arm3358_rd_ena_r <= arm3358_rd_ena;
    arm3358_wr_ena_r <= arm3358_wr_ena;
  end

  //总线读波形数据（地址503~511）
  always @(posedge tx_clk) begin
    if (protocol_61850_addr[8:3] == 6'b111111) wave_addr_ena <= 1'b1;
    else if (protocol_61850_addr == 503) wave_addr_ena <= 1'b1;
    else wave_addr_ena <= 1'b0;
    rd_wave_r <= rd_wave;
  end

`ifdef ITRQ_READ
  //中断信号延长
  always @(posedge tx_clk) begin
    if (Rst_n == 1'b0) begin
      com_if_itr   <= 1'b0;
      wave_itr_cnt <= 0;
    end else begin
      if (wave_itr) begin
        com_if_itr   <= 1'b1;
        wave_itr_cnt <= 0;
      end else if (com_if_itr) begin
        if (wave_itr_cnt == 4_000_000) begin
          com_if_itr <= 1'b0;
        end else begin
          wave_itr_cnt <= wave_itr_cnt + 1'b1;
        end
      end
    end
  end
`else
  always @(posedge tx_clk) begin
    if (Rst_n == 1'b0) com_if_itr <= 1'b0;
    else begin
      if (wave_itr) com_if_itr <= 1'b1;
      else if (rd_wave_falling) com_if_itr <= 1'b0;
    end
  end
`endif

  //心跳监测和校验
  comm_state_detect comm_state_inst (
      .clk_i(tx_clk),
      .rst_i(~Rst_n),
      .wr_req_i((arm3358_wr_ena & access_ena_rising)),
      .rd_req_i(arm3358_rd_ena & access_ena_rising),
      .addr_i(protocol_61850_addr),
      .data_i(full_word_data_recv),
      .wr_cache(dBuf_wr_sys),
      .rd_cache(dataBuffer),
      .data_o(full_word_data_send),
      .stop_cnt_o(stop_cnt_o)
  );

  //总线写数据输出到FPGA fabric
  generate
    genvar wrdepth_idx;
    for (
        wrdepth_idx = 0; wrdepth_idx < PROTOCOL_ONLY_WRITE_DEPTH; wrdepth_idx++
    ) begin : WR_ONLY_BLK
      assign dataBuffer[wrdepth_idx] = dBuf_wr_sys[wrdepth_idx];
    end : WR_ONLY_BLK

    genvar para_idx;
    for (para_idx = 0; para_idx < SET_PARA_LEN; para_idx++) begin : PARA1_BLK
      assign SettingParameter[COM_SET_PARA1_START+para_idx] = dataBuffer[COM_SET_PARA1_START+para_idx];
    end : PARA1_BLK

    genvar cmd_idx;
    for (cmd_idx = 0; cmd_idx < SET_CMD_LEN; cmd_idx++) begin : CMD_BLK
      assign SettingSwitchCMD[cmd_idx] = dataBuffer[COM_SET_CMD_START+cmd_idx];
    end : CMD_BLK

    genvar arm_data_idx;
    for (arm_data_idx = 0; arm_data_idx < ARM_DATA_LEN; arm_data_idx++) begin : ARM_DATA_BLK
      assign ArmData[arm_data_idx] = dataBuffer[COM_ARM_DATA_START+arm_data_idx];
    end : ARM_DATA_BLK

    genvar mon_idx;
    for (mon_idx = 0; mon_idx < MONITOR_DATA_LEN; mon_idx++) begin : MON_BLK
      assign dataBuffer[COM_MONITOR_DATA_START+mon_idx] = MonitorData[mon_idx];
    end : MON_BLK

    genvar wave_chn_idx;
    for (wave_chn_idx = 0; wave_chn_idx < WAVE_CHN_LEN; wave_chn_idx++) begin : WAVE_BLK
      assign dataBuffer[COM_WAVE_CHN_START+wave_chn_idx] = wave_chn[wave_chn_idx];
    end : WAVE_BLK
  endgenerate

  //波形数据缓存及选择输出
  //=================
  /*reg unsigned [11:0] FIFO0_Data_r[8];
  reg unsigned [11:0] FIFO1_Data_r[8];
  reg unsigned [11:0] FIFO2_Data_r[8];
  reg unsigned [11:0] FIFO3_Data_r[8];
  reg unsigned [11:0] FIFO4_Data_r[8];
  reg unsigned [11:0] FIFO5_Data_r[8];
  reg unsigned [11:0] FIFO6_Data_r[8];
  reg unsigned [11:0] FIFO7_Data_r[8];
  reg unsigned [11:0] FIFO8_Data_r[8];
   always @(posedge tx_clk) begin 
	FIFO0_Data_r <= FIFO0_Data;
	FIFO1_Data_r <= FIFO1_Data;
	FIFO2_Data_r <= FIFO2_Data;
	FIFO3_Data_r <= FIFO3_Data;
	FIFO4_Data_r <= FIFO4_Data;
	FIFO5_Data_r <= FIFO5_Data;
	FIFO6_Data_r <= FIFO6_Data;
	FIFO7_Data_r <= FIFO7_Data;
	FIFO8_Data_r <= FIFO8_Data;
  end*/
  wave_data_multiplxer wave_inst (
      .clk_i(tx_clk),
      .rst_i(~Rst_n),
      .ad_sample_start_i(ad_sample_start),
      .rd_start_i(FIFO_Start),
      .sample_freq_set_i(FIFO_SmpFreq_Set),
      .one_read_len_i(250),
      .rd_ack_i(rd_wave_falling),
      .fifo0_data_sel_i(fifo0_data_sel),
      .fifo1_data_sel_i(fifo1_data_sel),
      .fifo2_data_sel_i(fifo2_data_sel),
      .fifo3_data_sel_i(fifo3_data_sel),
      .fifo4_data_sel_i(fifo4_data_sel),
      .fifo5_data_sel_i(fifo5_data_sel),
      .fifo6_data_sel_i(fifo6_data_sel),
      .fifo7_data_sel_i(fifo7_data_sel),
      .fifo8_data_sel_i(fifo8_data_sel),
      .fifo0_data_i(FIFO0_Data),
      .fifo1_data_i(FIFO1_Data),
      .fifo2_data_i(FIFO2_Data),
      .fifo3_data_i(FIFO3_Data),
      .fifo4_data_i(FIFO4_Data),
      .fifo5_data_i(FIFO5_Data),
      .fifo6_data_i(FIFO6_Data),
      .fifo7_data_i(FIFO7_Data),
      .fifo8_data_i(FIFO8_Data),
      .fifo0_data_o(wave_chn[0]),
      .fifo1_data_o(wave_chn[1]),
      .fifo2_data_o(wave_chn[2]),
      .fifo3_data_o(wave_chn[3]),
      .fifo4_data_o(wave_chn[4]),
      .fifo5_data_o(wave_chn[5]),
      .fifo6_data_o(wave_chn[6]),
      .fifo7_data_o(wave_chn[7]),
      .fifo8_data_o(wave_chn[8]),
      .rd_itr_o(wave_itr)
  );
  

  //总线三态输出
  generate
    genvar arm3358_bit_idx;
    for (
        arm3358_bit_idx = 0; arm3358_bit_idx < ARM3358_DATA_WIDTH; arm3358_bit_idx++
    ) begin : TRI_IO_BLK
      IOBUF full_word_inst (
          .O (full_word_data_recv[arm3358_bit_idx]),
          .IO(gpmc_DATA[arm3358_bit_idx]),
          .I (full_word_data_send[arm3358_bit_idx]),
          //.T ( ~( tri_gate_ena&(~gpmc_NE2)&(~gpmc_NOE) ))
		  .T (~(tri_gate_ena & (~gpmc_NE2)))
      );
    end : TRI_IO_BLK
  endgenerate

  assign rd_itr = com_if_itr;
endmodule



