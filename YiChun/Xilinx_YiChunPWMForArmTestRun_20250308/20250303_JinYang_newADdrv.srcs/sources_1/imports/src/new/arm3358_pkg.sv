`timescale 1ps / 1ps
package arm3358_pkg;
  parameter wa = 2;
  parameter wb = 4;
  parameter wc = wb - wa + 1;
  //bus definition
  parameter ARM3358_DATA_WIDTH = 16;
  parameter ARM3358_HALF_DATA_WIDTH = 8;
  parameter ARM3358_ADDR_LEN = 512;
  //communication protocol definition
  parameter PROTOCOL_61850_ADDR_WIDTH = 9;
  parameter PROTOCOL_ONLY_WRITE_DEPTH = 256;

  parameter COM_SET_PARA1_START = 0;
  parameter COM_SET_PARA1_END = 109;
  parameter SET_PARA1_LEN = COM_SET_PARA1_END - COM_SET_PARA1_START + 1;

  parameter COM_SET_CMD_START = 110;
  parameter COM_SET_CMD_END = 119;
  parameter SET_CMD_LEN = COM_SET_CMD_END - COM_SET_CMD_START + 1;

  parameter COM_SET_PARA2_START = 120;
  parameter COM_SET_PARA2_END = 219;
  parameter SET_PARA2_LEN = COM_SET_PARA2_END - COM_SET_PARA2_START + 1;

  parameter COM_ARM_DATA_START = 220;
  parameter COM_ARM_DATA_END = 255;
  parameter ARM_DATA_LEN = COM_ARM_DATA_END - COM_ARM_DATA_START + 1;

  parameter COM_MONITOR_DATA_START = 256;
  parameter COM_MONITOR_DATA_END = 502;
  parameter MONITOR_DATA_LEN = COM_MONITOR_DATA_END - COM_MONITOR_DATA_START + 1;

  parameter COM_WAVE_CHN_START = 503;
  parameter COM_WAVE_CHN_END = 511;
  parameter WAVE_CHN_LEN = COM_WAVE_CHN_END - COM_WAVE_CHN_START + 1;
  //special addr definition
  parameter SET_PARA_LEN = SET_PARA1_LEN + SET_CMD_LEN + SET_PARA2_LEN;
  parameter COM_WAVE_SEL_START = 101;
  parameter COM_WAVE_SEL_END = 109;
  // wave channel definition
  parameter ARM_ADD_CH0 = 18'd503;
  parameter ARM_ADD_CH1 = 18'd504;
  parameter ARM_ADD_CH2 = 18'd505;
  parameter ARM_ADD_CH3 = 18'd506;
  parameter ARM_ADD_CH4 = 18'd507;
  parameter ARM_ADD_CH5 = 18'd508;
  parameter ARM_ADD_CH6 = 18'd509;
  parameter ARM_ADD_CH7 = 18'd510;
  parameter ARM_ADD_CH8 = 18'd511;

  parameter WAVE_DATA_WIDTH = 12;
  typedef logic signed [WAVE_DATA_WIDTH-1:0] wave_data;
  typedef logic signed [ARM3358_DATA_WIDTH-1:0] wave_data_16b;
  typedef logic [ARM3358_DATA_WIDTH-1:0] arm3358_dbus;
  typedef logic [ARM3358_HALF_DATA_WIDTH-1:0] arm3358_half_dbus;
  // Data definition
  parameter logic [ARM3358_DATA_WIDTH-1:0] INIT_ZERO = 16'h0;
endpackage
