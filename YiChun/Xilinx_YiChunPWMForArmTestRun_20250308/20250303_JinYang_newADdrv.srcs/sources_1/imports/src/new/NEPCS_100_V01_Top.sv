`timescale 1ns / 1ps
import arm3358_pkg::*;
module NEPCS_3000_S7 (
    input         g_clk,
    input  [13:0] AD_DB,
    output        AD_CONVST,
    output        AD_CS0,
    output        AD_CS1,
    output        AD_RD,
    output        AD_Rst,
    input         AD_BUSY0,
    input         AD_BUSY1,
    input         AMBUS_CE,
    input         AMBUS_RE,
    input         AMBUS_WE,       //8L
    input  [10:0] AMBUS_AB,
    inout  [15:0] AMBUS_DB,
    output        ARM_IRQ0,
    //output [ 7:0] CPLD_out,
	output [11:0] CPLD_out,
    input  [15:0] CPLD_in,
    output        Test_Pin1,      //15
    output        Test_Pin2,      //16
    output        Test_Pin3,      //29
    output        PWM_OE1,
    output        PWM_OE2,
    input         CN6_7_CONNECT,
    output        PWMA_1,         //CN7.26 PWM14
    output        PWMA_2,         //CN7.26 PWM14
    output        PWMA_3,
    output        PWMA_4,
	output        PWMA_5,
	output        PWMA_6,
    output        PWMB_1,
    output        PWMB_2,
    output        PWMB_3,
    output        PWMB_4,
	output        PWMB_5,
	output        PWMB_6,
    output        PWMC_1,
    output        PWMC_2,
    output        PWMC_3,
    output        PWMC_4,
	output        PWMC_5,
	output        PWMC_6,
    input         IGBTA_ERR_1,
    input         IGBTA_ERR_2,
    input         IGBTA_ERR_3,
    input         IGBTA_ERR_4,
    input         IGBTB_ERR_1,
    input         IGBTB_ERR_2,
    input         IGBTB_ERR_3,
    input         IGBTB_ERR_4,
    input         IGBTC_ERR_1,
    input         IGBTC_ERR_2,
    input         IGBTC_ERR_3,
    input         IGBTC_ERR_4,
    input         FIBER_RX_IN,
    output        FIBER_TX_OUT

);

//ssign signal_inout = capture_input ? 1'bz : 1'b0; // 输出高阻状�?�以防止驱动信号


  parameter IDEL = 4'b0000;
  parameter CHARGE = 4'b0001;
  parameter EXCITE = 4'b0010;
  parameter PROWORK = 4'b0011;
  parameter WORKING = 4'b0100;
  parameter FAULT = 4'b0101;
  parameter STOP = 4'b0110;
  parameter TRANSITION = 4'b1000;

  reg [24:0] sec_cnt;
  reg [31:0] sys_rst_cnt = 0;
  wire mmcm_locked;
  wire AMBUS_CE_net, AMBUS_RE_net, AMBUS_WE_net;
  wire [10:0] AMBUS_AB_net;
  //================================================ 	 
  wire clk100m;
  wire clk200m;
  wire clk25m;
  wire clk5m;

  wire Clk_1MHz, Pulse_1MHz, Clk_0p95Hz, Pulse_0p95Hz;
  wire [15:0] Cnt_0p95Hz;

  wave_data FIFO0_Data[8];
  wave_data FIFO1_Data[8];
  wave_data FIFO2_Data[8];
  wave_data FIFO3_Data[8];
  wave_data FIFO4_Data[8];
  wave_data FIFO5_Data[8];
  wave_data FIFO6_Data[8];
  wave_data FIFO7_Data[8];
  wave_data FIFO8_Data[8];
  arm3358_dbus SettingParameter[SET_PARA_LEN];
  arm3358_dbus SettingSwitchCMD[SET_CMD_LEN];
  arm3358_dbus MonitorData[MONITOR_DATA_LEN];
  arm3358_dbus ArmData[ARM_DATA_LEN];

  wire[15:0] Stm32_SysState1,Stm32_SysState2,Stm32_Alarm1,Stm32_Alarm2,Stm32_Fault1,Stm32_Fault2,Stm32_PcsState;
  wire [15:0] Stm32_BatSoc, Stm32_RatedPwr;

  wire [15:0] Cnt_Stm32;
  wire [ 7:0] WdgRst_n_Nums;
  wire [15:0] P_Ref_In, Q_Ref_In;

  wire [15:0] IF_test1, IF_test2, IF_test3;
  wire rst_n;

  wire [15:0] IacLoss_Max;
  wire [15:0] IacLoss_Min;

  wire [15:0] IqLimit2_b12;
  wire [15:0] Iac_Inst_OVRcy_ref;
  wire [15:0] Uac_Inst_OVRcy_ref;

  wire [15:0] SettingSwitchCMD0;
  wire [15:0] SettingSwitchCMD1;
  wire [15:0] SettingSwitchCMD2;
  wire [15:0] SettingSwitchCMD3;
  wire [15:0] SettingSwitchCMD4;
  wire [15:0] SettingSwitchCMD5;
  wire [15:0] SettingSwitchCMD6;
  wire [15:0] SettingSwitchCMD7;
  wire [15:0] SettingSwitchCMD8;
  wire [15:0] SettingSwitchCMD9;


  wire [15:0] Uac_OV_ref;
  wire [15:0] Uac_UV_ref;
  wire [15:0] Iac_OI_ref;
  wire [15:0] Udc_OV_ref;
  wire [15:0] Udc_UV_ref;
  wire [15:0] Idc_OI_ref;
  wire [15:0] Ubtr_OV_ref;
  wire [15:0] Ubtr_UV_ref;
  //wire [15:0]	UbtrIsltn_OV_ref	;
  wire [15:0] UdcDelta_OV_ref;
  wire [15:0] Uac_Inst_OV_ref;
  wire [15:0] Iac_Inst_OV_ref;
  wire [15:0] Udc_Inst_OV_ref;
  wire [15:0] Idc_Inst_OV_ref;
  wire [15:0] Ubtr_Inst_OV_ref;
  wire [15:0] I_Zero_ref;
  wire [15:0] ProChgDrop_ref;
  wire [15:0] IGBT_Temp_OT_ref;

  wire [15:0] IcomRms_OI_ref;

  wire [15:0] Frq_OF_ref;
  wire [15:0] Frq_UF_ref;

  wire [15:0] SwitchOnRef_b12;
  wire [15:0] AcVolOnRef_b12;
  wire [15:0] Island_UacUV_b12, Island_FreqDlta_b16;

  //缇庢爣鏂板鍙傛�?????
  wire [15:0] Uac_OV2_ref;
  wire [15:0] Uac_UV2_ref;
  wire [15:0] Uac_UV3_ref;
  wire [15:0] Frq_OF2_ref;
  wire [15:0] Frq_UF2_ref;
  wire [15:0] Frq_OF1_time;
  wire [15:0] Frq_UF1_time;
  wire [15:0] Frq_OF2_time;
  wire [15:0] Frq_UF2_time;
  wire [15:0] Uac_OV1_time;
  wire [15:0] Uac_UV1_time;
  wire [15:0] Uac_OV2_time;
  wire [15:0] Uac_UV2_time;
  wire [15:0] Uac_UV3_time;
  wire [15:0] HLvrt_StepIn_Time;

  wire [15:0] FIFO_SmpFreq_Set;
  wire [15:0] FIFO0_DATA_SEL;
  wire [15:0] FIFO1_DATA_SEL;
  wire [15:0] FIFO2_DATA_SEL;
  wire [15:0] FIFO3_DATA_SEL;
  wire [15:0] FIFO4_DATA_SEL;
  wire [15:0] FIFO5_DATA_SEL;
  wire [15:0] FIFO6_DATA_SEL;
  wire [15:0] FIFO7_DATA_SEL;
  wire [15:0] FIFO8_DATA_SEL;


  wire [15:0] IGBTa_Temp;
  wire [15:0] IGBTb_Temp;
  wire [15:0] IGBTc_Temp;

  wire [15:0] ARM_State13;
  wire [15:0] ARM_State14;
  wire [15:0] ARM_State15;
  wire [15:0] Um_ref_Arm_b12;  // sfix12
  wire [15:0] Unm_ref_Arm_b12;  // sfix12
  wire [15:0] PhaseAddnSeq_Arm_ub13;  //璐熷簭鐩稿鐩镐�?????
  wire [15:0] Um_ref_Fiber_b12;  // sfix12
  wire [15:0] Unm_ref_Fiber_b12;  // sfix12
  wire [15:0] PhaseAddnSeq_Fiber_ub13;  //璐熷簭鐩稿鐩镐�?????
  wire [15:0] P_ref_Arm_b16;  // int16
  wire [15:0] P_ref_Fiber_b16;  // int16
  wire [15:0] Q_ref_Arm_b16;  // int16
  wire [15:0] Q_ref_Fiber_b16;  // int16
  wire [15:0] w_Add_Arm_b16;  // int16
  wire [15:0] w_Add_Fiber_b16;  // int16
  wire [15:0] Ma_Fiber_b16;
  wire [15:0] Mb_Fiber_b16;
  wire [15:0] Mc_Fiber_b16;
  wire [15:0] Um_ref_Bias_b12;
  wire [15:0] w_Add_b16;  // int16

  wire [15:0] Udc_Ref_b12;  // sfix12
  wire [15:0] Um_ref_b12;  // sfix12
  wire [15:0] Unm_ref_b12;  // sfix12
  wire [15:0] P_ref_b16;  // int16
  wire [15:0] Q_ref_b16;  // int16
  wire [15:0] ILimit_b12;  // sfix12
  wire [15:0] C_co_b12;
  wire [15:0] R_co_b12;  // sfix12
  wire [15:0] Rco_Kp_b12;  // sfix12
  wire [15:0] Rco_Ki_b12;  // sfix12
  wire [15:0] Udc_Kp_b12;  // int16
  wire [15:0] Udc_Ki_b12;  // int16
  wire [15:0] Pdc2ac_co_b16;  // int16
  wire [15:0] ACDischgPLimit_b16;  // int16
  wire [15:0] ACChargePLimit_b16;  // int16

  wire [15:0] Idc_Kp_b12;
  wire [15:0] Idc_Ki_b12;
  wire [15:0] PdcChgLimit_b16;
  wire [15:0] PdcDischgLimit_b16;
  wire [15:0] IdcChgLimit_b12;
  wire [15:0] IdcDischgLimit_b12;

  wire [15:0] Rsnc_co_b16;
  wire [15:0] FilterFre_ub16;
  wire [15:0] CurCmp_Kb_b12;
  wire [15:0] CurCmp_Kf_b12;
  wire [15:0] L_co_b13;  // sfix13
  wire [15:0] Uin_co_b13;  // sfix13
  wire [15:0] UacKp_b16;  // int16
  wire [15:0] UacKi_b16;  // int16
  wire [15:0] UacSoftFre_b16;  // uint16
  wire [15:0] PacSoftFre_b16;  // uint16
  wire [15:0] UdcSoftFre_b16;  // uint16
  wire [15:0] PLL_Kp_b12;  // sfix12
  wire [15:0] PLL_Ki_b12;  // sfix12
  wire [15:0] CarryNum_b12;  // sfix12
  wire [15:0] DC_Kp_b12;  // sfix12
  wire [15:0] DC_Ki_b12;  // sfix12
  wire [15:0] w_co_b12;  // sfix12
  wire [15:0] Jco_Kp_b12;  // sfix12
  wire [15:0] Jco_Ki_b12;  // sfix12
  wire [15:0] UqpAdd_UpLimit_b12;  // sfix12
  wire [15:0] UqpAdd_LowLimit_b12;  // sfix12
  wire [15:0] LVRT_WaveThr_b12;
  wire [15:0] LVRT_DeltaOut_b12;
  wire [15:0] LVRT_DeltaIn_b12;
  wire [15:0] DeadTime_b8;  // uint8
  wire [15:0] BlockTime_b8;  // uint8
  wire [15:0] DeadTmCp_b12;
  wire [15:0] Iac2DTFull_b12;
  wire [15:0] PwmBlockTime;

  wire [15:0] Ac2DcLoss_b16;
  wire [15:0] IacKp_b16;
  wire [15:0] IacKi_b16;
  wire [15:0] UcomFltFre_ub16;
  wire [15:0] CT2Hall_b12;

  wire [15:0] IqRef_co_Lvrt_b12;

  wire First_VS;
  wire [11:0] Iq_Filtered_b12;  // sfix12
  wire Lvrting;
  wire Zvrting;
  wire [23:0] P_b24;  // sfix24
  wire [23:0] Q_b24;  // sfix24
  wire [23:0] Pdc_b24;  // sfix24
  wire Pulse50x1_Hz;
  wire Pulse50x16_Hz;
  wire Pulse50x32_Hz;
  wire Pulse50x64_Hz;
  wire Pulse50x128_Hz;
  wire Pulse50x256_Hz;
  wire Pulse50x512_Hz;
  wire Pulse50x1024_Hz;
  wire PulseCarryx1_Hz,PulseCarryx16_Hz;
  wire PulseCarryx32_Hz;
  wire PulseCarryx64_Hz;
  wire PulseCarryx128_Hz;
  wire [12:0] wt_b13;  // ufix13
  wire [12:0] nwt_b13;  //璐熷簭鐢靛帇鐩歌�?????
  wire [15:0] PhaseAddnSeq_ub13;  //璐熷簭鐩稿鐩镐�?????
  wire [15:0] PhaseAddpSeq_i13;  //闆剁┛鐩稿鐩镐�?????
  wire [17:0] w_b18;  // sfix18
  wire [11:0] Udp_b12;  // sfix12
  wire [11:0] Uqp_b12;  // sfix12
  wire [11:0] Udn_b12;  // sfix12
  wire [11:0] Uqn_b12;  // sfix12
  wire [11:0] Idp_b12;  // sfix12
  wire [11:0] Iqp_b12;  // sfix12
  wire [11:0] Idn_b12;  // sfix12
  wire [11:0] Iqn_b12;  // sfix12

  wire [11:0] Udp_Flted_b12;
  wire [11:0] Uqp_Flted_b12;
  wire [11:0] Udn_Flted_b12;
  wire [11:0] Uqn_Flted_b12;
  wire [11:0] Idp_Flted_b12;
  wire [11:0] Iqp_Flted_b12;
  wire [11:0] Idn_Flted_b12;
  wire [11:0] Iqn_Flted_b12;
  wire [11:0] Udp_drop_b12;
  wire [11:0] Uqp_drop_b12;
  wire [11:0] Udn_drop_b12;
  wire [11:0] Uqn_drop_b12;
  wire [11:0] Udp_ref_in_b12;
  wire [11:0] Uqp_ref_in_b12;
  wire [11:0] Udn_ref_in_b12;
  wire [11:0] Uqn_ref_in_b12;
  wire [11:0] Idp_ref_in_b12;
  wire [11:0] Iqp_ref_in_b12;
  wire [11:0] Idn_ref_in_b12;
  wire [11:0] Iqn_ref_in_b12;
  wire [11:0] UdpVct_Flted_b12;
  wire [11:0] UqpVct_Flted_b12;
  wire [11:0] UdnVct_Flted_b12;
  wire [11:0] UqnVct_Flted_b12;
  wire [11:0] Rco_in_b12;
  wire [11:0] Mdp_b12;
  wire [11:0] Mqp_b12;
  wire [11:0] Mdn_b12;
  wire [11:0] Mqn_b12;
  wire [11:0] Ma_b12;
  wire [11:0] Mb_b12;
  wire [11:0] Mc_b12;
  wire [15:0] PLL_Cmp_In_b16;
  wire [11:0] Delta_w_Iq_b12;
  wire [15:0] Delta_w_b16;
  wire [15:0] IgbtErr_Cnt_b12;

  wire [11:0] Idca_b12;
  wire [11:0] Idcb_b12;
  wire [11:0] Delta_DCa_b12;
  wire [11:0] Delta_DCb_b12;

  wire [11:0] PIdp_cmp_b12;
  wire [11:0] PIqp_cmp_b12;
  wire [11:0] PIdn_cmp_b12;
  wire [11:0] PIqn_cmp_b12;

  wire [15:0] Udq_Add_b12;  // sfix12


  wire [11:0] Uqp_Add_In_b12;
  wire [15:0] UdcDelta2Uo_co_b12;
  wire [15:0] Pm2M0m_co_b12;

  wire [15:0] RCom_b12;

  wire [15:0] CarryShift_b12;

  wire [11:0] U0_b12;
  wire [11:0] UdcDelta_Temp_b12;

  wire [11:0] MaIn_b12;
  wire [11:0] MbIn_b12;
  wire [11:0] McIn_b12;
  wire [11:0] MsvA_b12;
  wire [11:0] MsvB_b12;
  wire [11:0] MsvC_b12;

  wire [11:0] IcomOrgAll_b12;

  wire [11:0] IaPhFlted_b12;
  wire [11:0] IbPhFlted_b12;
  wire [11:0] IcPhFlted_b12;

  wire [11:0] IaPh_b12;
  wire [11:0] IbPh_b12;
  wire [11:0] IcPh_b12;
  wire Soft_Finished;
  wire [11:0] Um_ref_Set_b12;
  wire Fiber_Slave;

  assign AMBUS_CE_net = AMBUS_CE;
  assign AMBUS_RE_net = AMBUS_RE;
  assign AMBUS_WE_net = AMBUS_WE;
  assign AMBUS_AB_net = AMBUS_AB;


  wire [15:0] TRANSITION_TimeSet;

  wire [15:0] State0;
  wire [15:0] State1;
  wire [15:0] State2;
  wire [15:0] State3;
  wire [15:0] State4;
  wire [15:0] State5;
  wire [15:0] State6;
  wire [15:0] State7;
  wire [15:0] State8;
  wire [15:0] State9;
  wire [15:0] State10;
  wire [15:0] State11;
  wire [15:0] State12;
  wire [15:0] State13;
  wire [15:0] State14;
  wire [15:0] State15;

  wire [15:0] Err_Lock_State0;
  wire [15:0] Err_Lock_State1;
  wire [15:0] Err_Lock_State2;
  wire [15:0] Err_Lock_State3;
  wire [15:0] Err_Lock_State4;
  wire [15:0] Err_Lock_State5;
  wire [15:0] Err_Lock_State6;
  wire [15:0] Err_Lock_State7;
  wire [15:0] Err_Lock_State8;
  wire [15:0] Err_Lock_State9;
  wire [15:0] Err_Lock_State10;
  wire [15:0] Err_Lock_State11;
  wire [15:0] Err_Lock_State12;
  wire [15:0] Err_Lock_State13;
  wire [15:0] Err_Lock_State14;
  wire [15:0] Err_Lock_State15;

  wire [11:0] Uab_Ever;
  wire [11:0] Ubc_Ever;
  wire [11:0] Uca_Ever;
  wire [11:0] Ia_Ever;
  wire [11:0] Ib_Ever;
  wire [11:0] Ic_Ever;
  wire [11:0] Udc_Ever;
  wire [11:0] Idc_Ever;
  wire [11:0] Ubtr_Ever;
  wire [11:0] UposGnd_Ever;
  wire [11:0] UnegGnd_Ever;
  wire [11:0] Ia_CT_Ever;
  wire [11:0] Ib_CT_Ever;
  wire [11:0] Ic_CT_Ever;

  wire [11:0] QF_Uab_Ever;
  wire [11:0] Ipid_Ever;

  wire [15:0] Uab_Zero;
  wire [15:0] Ubc_Zero;
  wire [15:0] Uca_Zero;
  wire [15:0] Ia_Zero;
  wire [15:0] Ib_Zero;
  wire [15:0] Ic_Zero;
  wire [15:0] Udc_Zero;
  wire [15:0] Idc_Zero;
  wire [15:0] Ubtr_Zero;
  wire [15:0] UposGnd_Zero;
  wire [15:0] UnegGnd_Zero;
  wire [15:0] Ia_CT_Zero;
  wire [15:0] Ib_CT_Zero;
  wire [15:0] Ic_CT_Zero;

  wire [15:0] QF_Uab_Zero;
  wire [15:0] Ipid_Zero;

  wire signed [11:0] Uab;
  wire signed [11:0] Ubc;
  wire signed [11:0] Uca;
  wire [11:0] Ia;
  wire [11:0] Ib;
  wire [11:0] Ic;
  wire [11:0] Ia_CT;
  wire [11:0] Ib_CT;
  wire [11:0] Ic_CT;
  wire [11:0] Ia_CT_to_Ia;
  wire [11:0] Ib_CT_to_Ib;
  wire [11:0] Ic_CT_to_Ic;

  wire [11:0] Udc;
  wire [11:0] Idc;
  wire [11:0] Ubtr;
  wire [11:0] UposGnd;
  wire [11:0] UnegGnd;

  wire [11:0] Rly_Ua;
  wire [11:0] Rly_Ub;
  wire [11:0] Rly_Uc;
  wire [11:0] QF_Uab;
  wire [11:0] Ipid;


  wire [11:0] Uab_RMS;
  wire [11:0] Ubc_RMS;
  wire [11:0] Uca_RMS;
  wire [11:0] Ia_RMS;
  wire [11:0] Ib_RMS;
  wire [11:0] Ic_RMS;
  wire [11:0] Uac_Max;
  wire [11:0] Uac_Min;
  
  wire [11:0] DeltaUdc_RMS;

  wire [11:0] Ia_CT_RMS;
  wire [11:0] Ib_CT_RMS;
  wire [11:0] Ic_CT_RMS;
  wire [11:0] ICT0_RMS;
  wire [11:0] QF_Uab_RMS;
  wire [11:0] Ipid_RMS;

  wire [11:0] IcomRms_b12;

  wire [11:0] ILimit_Rdced;
  wire [15:0] CabnetHeatOV_Ref;

  wire [15:0] PLD_Test0, PLD_Test1, PLD_Test2, PLD_Test3;
  wire signed [11:0] Uab_FltP32, Ubc_FltP32, Uca_FltP32;

  //wire [15:0] SetCONNECTTime;
  reg  [15:0] IgbtErrDlyCnt;
  reg         IgbtErrDis;

  wire Pulse4096Hz, Pulse8192Hz, Pulse50x32Hz, SqWave100kHz, Pulse98p3477Hz;
  wire Start_1sOn, Start_2sOn, Start_5sOn, Start_10sOn;
  wire Pulse4096x4Hz;
  wire [12:0] wt;

  wire [15:0] P_FltP128, Q_FltP128, Pdc_FltP128, Idc_FltP128;

  wire ControlLoop3L_On;
  wire Excite_On;
  wire [11:0] PWM_WORD;
  wire PWMA_Temp_1;
  wire PWMA_Temp_2;
  wire PWMA_Temp_3;
  wire PWMA_Temp_4;
  wire PWMA_Temp_5;
  wire PWMA_Temp_6;
  wire PWMB_Temp_1;
  wire PWMB_Temp_2;
  wire PWMB_Temp_3;
  wire PWMB_Temp_4;
  wire PWMB_Temp_5;
  wire PWMB_Temp_6;
  wire PWMC_Temp_1;
  wire PWMC_Temp_2;
  wire PWMC_Temp_3;
  wire PWMC_Temp_4;
  wire PWMC_Temp_5;
  wire PWMC_Temp_6;
  wire [11:0] Ia_CT_FltP32;
  wire [11:0] Ib_CT_FltP32;
  wire [11:0] Ic_CT_FltP32;
  wire PulseCarryx1_Hz_delay;
  wire Pulse50x16_Hz_delay;
  wire [11:0] Umax_ins, Uab_Abs, Ubc_Abs, Uca_Abs;
  wire FlagOVins;
  wire InvControlLoopOn;
  wire [15:0] ChgPLimit_b16;
  wire [15:0] DischgPLimit_b16;
  wire [15:0] UdcPIUpLimit_Back_b16;
  wire [15:0] Pdc2ac_ref_b16;
  wire [11:0] ILimit_In_b12;
  wire SyncEn_Inv;
  wire PwmBlock_w;
  wire PwmBlock;
  wire CtlLoop_On2;
  wire CtlLoop_On2_Dly;
  reg FlagOVinsLock;
  reg [7:0] FlagOVinsLockCnt;
  wire FlagOV_insLock, FlagOC_insLock;
  wire [15:0] PVR_K_b16;
  wire [15:0] CMD1;
  wire CMD2_2 = 1'b0;
  wire CtlLoop_OnVSG;
  wire CtlLoop_OnNoVSG;
  wire CtlLoop_On;
  wire PwmBlock_PQ0;
  wire ToChargeOk, ChargeOk, ToExciteOk, ExciteOk, ToProWorkOk, ProWorkOk, ToWorkOk, WorkingOk;
  wire [3:0] StateCode, StateLast1Code, StateLast2Code, StateLast3Code;
  wire Em_In_flag, GoNext_flag, StartCMD_flag, DelayOut_flag;
  wire VF_Mode;
  wire VI_Mode;

  wire [13:0] AD0_CH0, AD0_CH1, AD0_CH2, AD0_CH3, AD0_CH4, AD0_CH5, AD0_CH6, AD0_CH7;
  wire [13:0] AD1_CH0, AD1_CH1, AD1_CH2, AD1_CH3, AD1_CH4, AD1_CH5, AD1_CH6, AD1_CH7;
  wire AD_Err;
  wire [9:0] ADErrCNT;
  wire StCMD06, StCMD07;
  wire [15:0] LvrtCntSet1;
  wire [15:0] LvrtCntSet2;
  wire [15:0] LvrtCntSet3;
  wire [15:0] PacSoftFre2_b16;
  wire [15:0] IacSoftFre2Sel_b16;
  reg         PacSoftFlg;
  reg  [15:0] LvrtCnt;
  reg  [ 3:0] LVRTSTATE;
  reg  [11:0] Idp_ref_in_b12_LvrtLock;
  wire [11:0] Switch66_out1_out;
  wire [11:0] InLoopErrdp_b12;
  wire [11:0] InLoopErrqp_b12;
  wire [11:0] InLoopErrdn_b12;
  wire [11:0] InLoopErrqn_b12;
  wire [11:0] RptCmpa_b12;
  wire [11:0] RptCmpb_b12;
  wire [11:0] RptCmpc_b12;

  wire [17:0] Wref_add_b18;
  wire [34:0] wt_b35;
  wire [11:0] Udp_PLL_b12;
  wire [11:0] Uqp_PLL_b12;
  wire [11:0] Udn_PLL_b12;
  wire [11:0] Uqn_PLL_b12;
  wire Inr_Running, Ffr_Running, Fvr_Running;
  wire VolLoop_En2;
  wire [15:0] fast_VSGPLimit_b16;
  wire [15:0] fast_VSGQLimit_b16;
  wire [15:0] fast_Inr_K_b16;
  wire [15:0] fast_Kf_P_inv_b16;
  wire [15:0] fast_Kv_Q_inv_b16;
  wire [15:0] fast_dP_Ffr_b16;
  wire [15:0] fast_dQ_Fvr_b16;
  wire [15:0] fast_dP_Inertia_b16;

  wire [15:0] slow_VSGPLimit_b16;
  wire [15:0] slow_VSGQLimit_b16;
  wire [15:0] slow_Kf_P_inv_Lmt_b16;
  wire [15:0] slow_Kv_Q_inv_Lmt_b16;
  wire [15:0] slow_Kf_P_inv_b16;
  wire [15:0] slow_Kv_Q_inv_b16;
  wire [15:0] slow_dP_Ffr_b16;
  wire [15:0] slow_dQ_Fvr_b16;
  wire [15:0] slow_Ffr_fSel_b16;
  wire [15:0] slow_Ffr_db_b16;  //+++++

  wire [15:0] VSG_Uac_Inst_OV_ref;
  wire [15:0] VSG_InsFilter;
  wire [15:0] ULine_ref_b12;
  wire [15:0] PLL_Kdiff_b16;  // sfix16
  wire [15:0] PLL_Kx_b16;  // sfix16
  wire [15:0] PLL_Ky_b16;  // sfix16
  wire [15:0] Kf_I_b16;
  //--wire [15:0] 		Kf_P_inv_b16;	
  wire [15:0] Kv_I_b16;
  //--wire [15:0] 		Kv_Q_inv_b16;	
  wire [15:0] Resp_Kx_b16;
  wire [15:0] Resp_Ky_b16;
  wire [15:0] Inr_K_b16;
  wire [15:0] dP_Ffr_b16;  //++++++ZJ 20220411
  wire [15:0] fast_Ffr_db_b16;  //++++++ZJ 20220411

  //wire [15:0]       dP_Ffr_b16;
  wire [15:0] dQ_Fvr_b16;
  wire [15:0] dP_Inertia_b16;
  wire [15:0] Pref_Soft_b16;
  wire [15:0] dWdt_b16;
  wire [15:0] dWdt_lpf1_b16;
  wire [15:0] dWdt_lpf4_b16;
  wire [15:0] W_err_b16;
  wire [15:0] Werr_Flted_b16;
  wire [15:0] dU_b16;
  wire [11:0] UmRef_Soft_b12;
  wire [11:0] Um_ref_new_b12;  //add ZJ 20211101
  wire [11:0] Um_ref_out_b12;
  wire [15:0] Freq_Droop_b16;
  wire [15:0] Kvi_b16;
  wire [15:0] Ffr_db_b16;  // uint16
  wire [15:0] Fvr_db_b12;  // uint16
  wire [15:0] Inr_db_b16;
  wire [15:0] Pref_sum_b16;
  wire [15:0] Qref_sum_b16;
  wire [12:0] wt_sycgen_b13;
  wire [11:0] SinwtSyc_b12;
  wire [11:0] CoswtSyc_b12;
  wire [11:0] Ump_b12;
  wire [15:0] UmRefUp_b12, UmRefLow_b12;
  wire [17:0] w3_b18;
  wire [17:0] w2_b18;


  wire [15:0] slow_pluse_b16;
  wire        slow_pluse_out;

  wire [15:0] fast_pluse_b16;
  wire        fast_pluse_out;
  wire [15:0] FW_P_ref_b16;
  wire [15:0] Freq_Hig_b16;
  wire [15:0] Freq_HigRly_b16;
  wire [15:0] Freq_Low_b16;
  wire [15:0] Freq_LowRly_b16;
  wire [15:0] time_b16;
  wire        FreqHigFlg;
  wire        FreqLowFlg;
  wire [17:0] w_Flted2;
  wire [15:0] w_offset_b16;
  wire [17:0] wb18_Flted;
  wire [17:0] wb18_FltedOut2;
  
  wire [15:0] w_delaySel_b16;
  wire PulseWdelaySel, PulseWdelaySel_next1, PulseWdelaySel_next2;

  wire [15:0] P_Kp_b16, P_Ki_b16;
  wire [12:0] wt_tmp_b13;
  wire [11:0] PhaseAddnSeqSoft_ub12;
  wire [15:0] Fre2PhaseAdd_Co_b16;
  wire [11:0] Sinwt, Coswt;
  wire [11:0] SinA, SinB, SinC;
  wire [11:0] nSinwt, nCoswt;
  wire [15:0] stop_cnt;
  wire [15:0] P_refSel_b16;
  reg [23:0] led_cnt = 0;
  wire ad_convst_n;
  (*mark_debug = "true"*)
  wire rd_itr;

  //assign rst_n = (mmcm_locked) & (sys_rst_cnt[24] == 1'b1);
  assign rst_n = (sys_rst_cnt[24] == 1'b1);
  assign GoNext_flag = 0;
  assign Em_In_flag = 0;//SettingSwitchCMD0[6] | SettingSwitchCMD0[7];

  always @(posedge clk25m) begin
    //if (mmcm_locked) begin
      if (sys_rst_cnt[24] == 1'b0) sys_rst_cnt <= sys_rst_cnt + 1'b1;
      else sys_rst_cnt <= sys_rst_cnt;
    //end
  end

  mmcm0 mmcm0_inst (
      .clk100m(clk100m),
      .cl100m(clk200m),
      .clk25m (clk25m),
	  .clk5m (clk5m),
      .reset  (1'b0),
      .locked (mmcm_locked),
      .clk_in1(g_clk)
  );

  ClkPulse_Gen ClkPulse_Gen_Inst (
      .g_clk(clk25m),  //in
      .Rst_n(rst_n),  //in
      .Clk_1MHz(Clk_1MHz),
      .Pulse_1MHz(Pulse_1MHz),
      .Clk_0p95Hz(Clk_0p95Hz),
      .Pulse_0p95Hz(Pulse_0p95Hz),
      .Cnt_0p95Hz(Cnt_0p95Hz)
  );

 /* (*IOB = "true"*)
  arm3358_commu_v2 ARM_comm_Inst (
      .sys_clk(clk25m),
      .tx_clk(clk200m),
      .Rst_n(rst_n),
      .gpmc_DATA(AMBUS_DB),
      .gpmc_ADD({7'd0, AMBUS_AB_net}),
      .gpmc_NE2(AMBUS_CE_net),
      .gpmc_NOE(AMBUS_RE_net),
      .gpmc_NWE(AMBUS_WE_net),
      /////Data select///////////////////
      .fifo0_data_sel(FIFO0_DATA_SEL[2:0]),
      .fifo1_data_sel(FIFO1_DATA_SEL[2:0]),
      .fifo2_data_sel(FIFO2_DATA_SEL[2:0]),
      .fifo3_data_sel(FIFO3_DATA_SEL[2:0]),
      .fifo4_data_sel(FIFO4_DATA_SEL[2:0]),
      .fifo5_data_sel(FIFO5_DATA_SEL[2:0]),
      .fifo6_data_sel(FIFO6_DATA_SEL[2:0]),
      .fifo7_data_sel(FIFO7_DATA_SEL[2:0]),
      .fifo8_data_sel(FIFO8_DATA_SEL[2:0]),
      /////FIFO0 Data in///////////////////
      .FIFO0_Data(FIFO0_Data),
      .FIFO1_Data(FIFO1_Data),
      .FIFO2_Data(FIFO2_Data),
      .FIFO3_Data(FIFO3_Data),
      .FIFO4_Data(FIFO4_Data),
      .FIFO5_Data(FIFO5_Data),
      .FIFO6_Data(FIFO6_Data),
      .FIFO7_Data(FIFO7_Data),
      .FIFO8_Data(FIFO8_Data),
      .FIFO_SmpFreq_Set(FIFO_SmpFreq_Set),
      .FIFO_Start(Start_10sOn),
      .SettingParameter(SettingParameter),
      .SettingSwitchCMD(SettingSwitchCMD),
      .ArmData(ArmData),
      .MonitorData(MonitorData),
      .ad_sample_start(ad_convst_n),
      .rd_itr(rd_itr),
      .stop_cnt_o(stop_cnt)
  );*/

 wire [15:0] FSMC_DATA_rd; 
 wire [15:0] DLen_b16;
 wire [15:0] TIME_Sec;
 wire [15:0] FIFO_Read_cnt_Sec;
 wire [15:0] FIFO_Write_cnt_Sec;
 wire [15:0] FullCnt;
 wire [15:0] EmptyCnt;
 wire [15:0] ICT_OI_ref;  
wire rdakn;
assign 	ARM_IRQ0 = (~rdakn);

reg [15:0] rdakn_cnt;
always@(posedge clk25m) begin
	if (rdakn == 1) begin
		rdakn_cnt <= rdakn_cnt+1;
	end
	else begin
		rdakn_cnt <= rdakn_cnt;
	end
end
//========================================= wave sel =========================================
wire [15:0] FIFOX_DATA_SEL[8:0]; 
wire [15:0] FIFOX_Data_r[8:0]; 
wire [15:0] PWMWORD1,PWMWORD2;
//assign PWMWORD1={PWMA_1,PWMA_2,PWMA_3,PWMA_4,PWMA_5,PWMA_6,0,1, PWMB_1,PWMB_2,PWMB_3,PWMB_4,PWMB_5,PWMB_6,1,0};  
assign PWMWORD2={PWMC_1,PWMC_2,PWMC_3,PWMC_4,PWMC_5,PWMC_6,0,IO_Rerord[8:0]};  
assign PWMWORD1= {PWMA_1,PWMA_4,PWMA_5,PWMA_6,Carryb12Out};
wire [8:0] IO_Rerord = {CtlLoop_On2,PwmLoadPluse,PulseCarryx1_Hz,PulseCarryx16_Hz,(~CPLD_in[10]),(~CPLD_in[15]),PwmLockA,PwmLockB,PwmLockC};
genvar i1;
generate
	for(i1=0;i1<9;i1=i1+1) begin: FifoSelZ_for_wave
		 FifoSelZ FifoSelZ_Inst( .FIFO_ID(i1),
			.Soft_on(Soft_on),
			.Ia_CT_FltP32(Ia_CT_FltP32), .Idp_C_b12(Idp_C_b12), .Pload_b16(Pload_b16),
			.Ia_CT(Ia_CT), .Ic_CT(Ic_CT),
			.sinA(sinA), .sinB(sinB), .sinC(sinC), .PhaseInv(PhaseInv),
		    .rdakn(rdakn), .HvrtFlg(HvrtFlg), .LvrtFlg(LvrtFlg),
			.Uab_b12(Uab), .Ubc_b12(Ubc), .Uca_b12(Uca), .Ia_b12(Ia), .Ib_b12(Ib), .Ic_b12(Ic),
			.UposGnd_b12(UposGnd), .UnegGnd_b12(UnegGnd), .Udc_b12(Udc), .Ubtr_b12(Ubtr), .Idc_b12(Idc),	//+++
			.Udp_b12(Udp_b12), .Uqp_b12(Uqp_b12), .Udn_b12(Udn_b12), .Uqn_b12(Uqn_b12), .Udp_PLL_b12(Udp_PLL_b12),  .Uqp_PLL_b12(Uqp_PLL_b12),  
			.Idp_b12(Idp_b12), .Iqp_b12(Iqp_b12), .Idn_b12(Idn_b12), .Iqn_b12(Iqn_b12),
			.Idp_ref_in_b12(Idp_ref_in_b12), .Iqp_ref_in_b12(Iqp_ref_in_b12), .Idn_ref_in_b12(Idn_ref_in_b12), .Iqn_ref_in_b12(Iqn_ref_in_b12), 
			.Mdp_b12(Mdp_b12), .Mqp_b12(Mqp_b12), .Mdn_b12(Mdn_b12), .Mqn_b12(Mqn_b12), 
			.Ma_b12(Ma_b12), .Mb_b12(Mb_b12), .Mc_b12(Mc_b12), .MaIn_b12( MaIn_b12 ), .MbIn_b12( MbIn_b12 ), .McIn_b12( McIn_b12 ), 
			.MsvA_b12( MsvA_b12 ), .MsvB_b12( MsvB_b12 ), .MsvC_b12( MsvC_b12 ),  .Sinwt(Sinwt), .Coswt(Coswt), .nSinwt(nSinwt),  .nCoswt(nCoswt),  
			.debug0({{4{Sinwt	[11]}},	Sinwt}),.debug1({{4{Coswt	[11]}},	Coswt}),.debug2(0), 
			.debug3( wIn_s18 ),.debug4( dWoutAbs_s16 ), .debug5(InrState),.debug6(dwLock_s16),.debug7(dWDead_s16),.debug8(),.debug9(),
			.debug20(Fiber_UposGnd),.debug21(Fiber_UnegGnd), .debug22(Fiber_Uab),.debug23(Fiber_Ubc),.debug24(Fiber_Uca),
			.FIFOX_DATA_SEL(FIFOX_DATA_SEL[i1]), .FIFOX_Data_r(FIFOX_Data_r[i1])    
		);
	end
endgenerate	  
ARM_commZJ ARM_comm_Inst (   
							.DLen_b16(DLen_b16), .FSMC_DATA_rd( FSMC_DATA_rd ), .FullCnt(FullCnt), .EmptyCnt(EmptyCnt),
							.FIFO_Read_cnt_Sec(FIFO_Read_cnt_Sec), .FIFO_Write_cnt_Sec(FIFO_Write_cnt_Sec), .TIME_Sec(TIME_Sec), 
							//===========================
							.Rst_n( rst_n ), .g_clk( clk25m ),
							//.FSMC_CLK( g_clk ),
							//.FSMC_DATA( DB ), //
							//.DSP_DATA( DB ),
							//.FSMC_ADD( {8'd0,AB} ),
							.FSMC_NE1( 1'b1 ),
							//.FSMC_NE2( BUF_NCS3 ),
							.FSMC_NE3( 1'b1 ),
							.FSMC_NE4( 1'b1 ),
							//.FSMC_NOE( BUF_NRD ),
							//.FSMC_NWE( BUF_NWE ),
							.FSMC_NBL1( 1'b1 ),
							.FSMC_NBL0( 1'b1 ),  
							.FSMC_CLK( clk200m ),
							.FSMC_DATA( AMBUS_DB ), // //.DSP_DATA( DB ),
							.FSMC_ADD( AMBUS_AB_net[10:1] ), //10bit
							.FSMC_NE2( AMBUS_CE_net ), 
							.FSMC_NOE( AMBUS_RE_net ),
							.FSMC_NWE( AMBUS_WE_net ),  
							/////Data select/////////////////// 
							.FIFO0_Data0( FIFOX_Data_r[0]  ), .FIFO1_Data0( FIFOX_Data_r[1]  ), .FIFO2_Data0( FIFOX_Data_r[2]  ),   
							.FIFO3_Data0( FIFOX_Data_r[3]  ), .FIFO4_Data0( FIFOX_Data_r[4]  ), .FIFO5_Data0( FIFOX_Data_r[5]  ),   
							.FIFO6_Data0( FIFOX_Data_r[6]  ), .FIFO7_Data0( FIFOX_Data_r[7]  ), .FIFO8_Data0( FIFOX_Data_r[8]  ),   
							
							//.Fault_in0( {{4{Uab	[11]}},	Uab} ), .Fault_in1( {{4{Ubc	[11]}},	Ubc} ), .Fault_in2( {{4{Uca	[11]}},	Uca} ),
							//.Fault_in3( {{4{Ia	[11]}},	Ia} ),  .Fault_in4( {{4{Ib	[11]}},	Ib} ), .Fault_in5( {{4{Ic	[11]}},	Ic} ),
							.Fault_in0( {{4{Udp_b12	[11]}},	Udp_b12} ), .Fault_in1( {{4{Uqp_b12	[11]}},	Uqp_b12} ), .Fault_in2( {{4{Udp_PLL_b12	[11]}},	Udp_PLL_b12} ),
							.Fault_in3( {{4{Ma_b12	[11]}},	Ma_b12} ),  .Fault_in4( {{4{Mb_b12	[11]}},	Mb_b12} ), .Fault_in5( {{4{Mc_b12	[11]}},	Mc_b12} ),
							.Fault_in6( {{4{Udc	[11]}},	Udc} ), .Fault_in7( {{4{UposGnd	[11]}},	UposGnd} ), .Fault_in8( {{4{UnegGnd	[11]}},	UnegGnd} ),  
							.Fault_in9( {{4{Idc	[11]}},	Idc} ), .Fault_in10( P_ref_SetIn ), .Fault_in11( -Q_ref_SetIn ), 
							.Fault_in12( {{4{MaIn_b12[11]}},MaIn_b12} ), .Fault_in13( {{4{MbIn_b12[11]}},MbIn_b12} ), .Fault_in14( {{4{McIn_b12[11]}},McIn_b12} ),  
							.Fault_in15( {{4{Idp_ref_in_b12[11]}},Idp_ref_in_b12} ), .Fault_in16( {{4{Iqp_ref_in_b12[11]}},Iqp_ref_in_b12} ),  .Fault_in17( {{4{Uqp_PLL_b12	[11]}},	Uqp_PLL_b12}  ), 
							 
							.PWMWORD1(PWMWORD1),.PWMWORD2(PWMWORD2),
							//.FIFO_SmpFreq_Set( (FIFO_SmpFreq_Set < 4000) ? 4000 : FIFO_SmpFreq_Set ), //25000000/(2^23/100)=298 
							.FIFO_SmpFreq_Set(FIFO_SmpFreq_Set),
							.FIFO_Start( Start_10sOn ),
							.FIFO_Read_Akn(rdakn), 
					////////////////////////////////////////////////////////////////////////////////// ///////////////////////////  
							.SettingParameter0(	Uac_OV_ref	),
							.SettingParameter1(	Uac_UV_ref	),
							.SettingParameter2(	Iac_OI_ref	),
							.SettingParameter3(	Udc_OV_ref	),
							.SettingParameter4(	Udc_UV_ref	),
							.SettingParameter5(	Idc_OI_ref	),
							.SettingParameter6(	Ubtr_OV_ref	),
							.SettingParameter7(	Ubtr_UV_ref	),
							.SettingParameter8(	UdcDelta_OV_ref	),
							.SettingParameter9(	Uac_Inst_OV_ref	),
							.SettingParameter10(	Iac_Inst_OV_ref	),
							.SettingParameter11(	Udc_Inst_OV_ref	),
							.SettingParameter12(	Idc_Inst_OV_ref	),
							.SettingParameter13(	Ubtr_Inst_OV_ref	),
							.SettingParameter14(	I_Zero_ref	),
							.SettingParameter15(	ProChgDrop_ref	),
							.SettingParameter16(	Frq_OF_ref	),
							.SettingParameter17(	Frq_UF_ref	),
							.SettingParameter18(	CabnetHeatOV_Ref	),
							.SettingParameter19(	IcomRms_OI_ref	),
							.SettingParameter20(	IGBT_Temp_OT_ref	),
							.SettingParameter21(	ICT_OI_ref	), //PASS

							.SettingParameter22(	UpnGnd_OV_ref  ), //PhaseAddpSeq_i13	
							.SettingParameter23(	Udc_Ref_b12	),
							.SettingParameter24(	Um_ref_Arm_b12	),
							.SettingParameter25(	Unm_ref_Arm_b12	),
							.SettingParameter26(	P_ref_Arm_b16	),
							.SettingParameter27(	Q_ref_Arm_b16	),
							.SettingParameter28(	ILimit_b12	),
							.SettingParameter29(	ACChargePLimit_b16	),
							.SettingParameter30(	ACDischgPLimit_b16	),
							.SettingParameter31(	PdcChgLimit_b16	),
							.SettingParameter32(	PdcDischgLimit_b16	),
							.SettingParameter33(	IdcChgLimit_b12	),
							.SettingParameter34(	IdcDischgLimit_b12	),
							.SettingParameter35(	Ac2DcLoss_b16	),
							.SettingParameter36(	Rsnc_co_b16	),
							.SettingParameter37(	FilterFre_ub16	),
							.SettingParameter38(	CT2Hall_b12	), //???
							.SettingParameter39(	CurCmp_Kb_b12	),
							.SettingParameter40(	CurCmp_Kf_b12	),
							.SettingParameter41(	Pdc2ac_co_b16	),
							.SettingParameter42(	Uin_co_b13	),
							.SettingParameter43(	L_co_b13	),
							.SettingParameter44(	C_co_b12	),
							.SettingParameter45(	w_co_b12	),
							.SettingParameter46(	R_co_b12	),
							.SettingParameter47(	Rco_Kp_b12	),
							.SettingParameter48(	Rco_Ki_b12	),
							.SettingParameter49(	Jco_Kp_b12	),
							.SettingParameter50(	Jco_Ki_b12	),//PASS
	
							.SettingParameter51(	UqpAdd_UpLimit_b12	),
							.SettingParameter52(	UqpAdd_LowLimit_b12	),
							.SettingParameter53(	Udq_Add_b12	),
							.SettingParameter54(	w_Add_Arm_b16	),
							.SettingParameter55(	P_Kp_b16	),
							.SettingParameter56(	P_Ki_b16	),
							.SettingParameter57(	PhaseAddnSeq_Arm_ub13	),
							.SettingParameter58(	UacKp_b16	),
							.SettingParameter59(	UacKi_b16	),
							.SettingParameter60(	Udc_Kp_b12	),
							.SettingParameter61(	Udc_Ki_b12	),
							.SettingParameter62(	Idc_Kp_b12	),
							.SettingParameter63(	Idc_Ki_b12	),
							.SettingParameter64(	PLL_Kp_b12	),
							.SettingParameter65(	PLL_Ki_b12	),
							.SettingParameter66(	DC_Kp_b12	),
							.SettingParameter67(	DC_Ki_b12	),
							.SettingParameter68(	IacKp_b16	),
							.SettingParameter69(	IacKi_b16	),
							.SettingParameter70(	PVR_K_b16	),
							.SettingParameter71(	Um_ref_Bias_b12	),
							.SettingParameter72(	UacSoftFre_b16	),
							.SettingParameter73(	PacSoftFre_b16	),
							.SettingParameter74(	UdcSoftFre_b16	),
							.SettingParameter75(	Fre2PhaseAdd_Co_b16	), //PASS 
  
							.SettingParameter76(		), //??Kn_s16_arm
							.SettingParameter77(	CarryNum_b12	),  .CarryNum_b12_Set(CarryNum_b12_Set),
							.SettingParameter78(	DeadTime_b8	),
							.SettingParameter79(	BlockTime_b8	),
							.SettingParameter80(	DeadTmCp_b12	),
							.SettingParameter81(	Iac2DTFull_b12	),
							.SettingParameter82(	LVRT_WaveThr_b12	),
							.SettingParameter83(	LVRT_DeltaOut_b12	),
							.SettingParameter84(	LVRT_DeltaIn_b12	),
							.SettingParameter85(	IgbtErr_Cnt_b12	),
							.SettingParameter86(	UdcDelta2Uo_co_b12	),
							.SettingParameter87(	IqRef_co_Lvrt_b12	), //+++
							.SettingParameter88(	SwitchOnRef_b12	),
							.SettingParameter89(	AcVolOnRef_b12	),
							.SettingParameter90(	Pm2M0m_co_b12	),
							.SettingParameter91(	RCom_b12	),
							.SettingParameter92(	UcomFltFre_ub16	),
							.SettingParameter93(	CarryShift_b12	),
							.SettingParameter94(	Island_UacUV_b12	), //++++SSS
							.SettingParameter95(	Island_FreqDlta_b16	), //++++SSS
							.SettingParameter96(	UmRefUp_b12	),
							.SettingParameter97(	UmRefLow_b12	),
							.SettingParameter98(	IacLoss_Max	),
							.SettingParameter99(	IacLoss_Min	),
							
							
							.SettingParameter100( FIFO_SmpFreq_Set ),
							.SettingParameter101(FIFOX_DATA_SEL[0]),.SettingParameter102(FIFOX_DATA_SEL[1]),.SettingParameter103(FIFOX_DATA_SEL[2]),  
							.SettingParameter104(FIFOX_DATA_SEL[3]),.SettingParameter105(FIFOX_DATA_SEL[4]),.SettingParameter106(FIFOX_DATA_SEL[5]),  
							.SettingParameter107(FIFOX_DATA_SEL[6]),.SettingParameter108(FIFOX_DATA_SEL[7]),.SettingParameter109(FIFOX_DATA_SEL[8]), 
							.SettingSwitchCMD0(SettingSwitchCMD0),
							.SettingSwitchCMD1(SettingSwitchCMD1),	
							.SettingSwitchCMD2(SettingSwitchCMD2),	
							.SettingSwitchCMD3(SettingSwitchCMD3),	
							.SettingSwitchCMD4(SettingSwitchCMD4),
							.SettingSwitchCMD5(SettingSwitchCMD5),	
							.SettingSwitchCMD6(SettingSwitchCMD6),	
							.SettingSwitchCMD7(  ),	
							.SettingSwitchCMD8(  ),	
							.SettingSwitchCMD9(  ),
		 
							.SettingParameter120(Uac_OV2_ref),
							.SettingParameter121(Uac_UV2_ref),
							.SettingParameter122(Uac_OV1_time),
							.SettingParameter123(Uac_UV1_time),
							.SettingParameter124(Uac_OV2_time),
							.SettingParameter125(Uac_UV2_time),
							.SettingParameter126(Frq_OF2_ref),
							.SettingParameter127(Frq_UF2_ref),
							.SettingParameter128(Frq_OF1_time),
							.SettingParameter129(Frq_UF1_time),
							.SettingParameter130(Frq_OF2_time),
							.SettingParameter131(Frq_UF2_time), 
							 
							 .SettingParameter141(uartBaud),  //+++++++++++++2024
							 .SettingParameter142(Dly_u8),   //+++++++++++++2024
							 .SettingParameter143(Kr_b16),   //+++++++++++++2024
							 .SettingParameter144(RRLmt_b12),   //+++++++++++++2024
							 .SettingParameter145(In_K_b12), 
							 
							.SettingParameter158( 		), //+++ ok  820 200ms
							.SettingParameter159( 		),  //+++ ok 820 200ms
							
							//FFRQ  
							.SettingParameter160(LvrtCntSet1		), //+++ ok  820 200ms
							.SettingParameter161(LvrtCntSet2		),  //+++ ok 820 200ms
							.SettingParameter162(LvrtCntSet3		),  //+++ ok 30000 8s
							.SettingParameter163(PacSoftFre2_b16		),  //+++ ok 5
							.SettingParameter164( 	KOut_s12	),  //1024 = 100%    //PLL_KPKISEL=1
							.SettingParameter165( 	Kin_s12	),  //1024 = 100%    //SEL_VSG_W=0
							.SettingParameter166(	pllpluseSet		),     //PLL_SEL=0
							.SettingParameter167(	UmpluseSet		), //偏置修正 0
							.SettingParameter168(	 Kn_s16_arm		),  //PLLPulseSel=4
							.SettingParameter169(	FWSel		),  //PLL_cntSet=30000
							.SettingParameter170(Freq_Hig_b16		), //17249
							.SettingParameter171(Freq_HigRly_b16		),//17214
							.SettingParameter172(Freq_Low_b16		),//17008
							.SettingParameter173(Freq_LowRly_b16		), //17043
							.SettingParameter174(time_b16		), //82*5 (20ms)
							.SettingParameter175( 	w_offset_b16		), //0=0.16 1=0.32 2=0.64 3=1.28
							.SettingParameter176(	w_delaySel_b16		), //0=0.05 1=0.1  2=0.2  3=0.4
							.SettingParameter177(	PwmBlockTime		),//+++  20
							.SettingParameter178(	Iac_Inst_OVRcy_ref		), //+++  1000
							.SettingParameter179(			), //+++ NO /8635
							//VSG1
							.SettingParameter180(fast_VSGPLimit_b16		),
							.SettingParameter181(fast_VSGQLimit_b16		),
							.SettingParameter182(Qlmt_b16		),
							.SettingParameter183( fast_Kf_P_inv_b16		),///6000
							.SettingParameter184( fast_Kv_Q_inv_b16		), //fast_kf /6635
							.SettingParameter185(fast_pluse_b16	 	),//f sel
							.SettingParameter186(fast_Ffr_db_b16		), 
							.SettingParameter187(TRANSITION_TimeSet  ),  
							
                     //VSG LIMIT
							.SettingParameter189(	EnableARMIO  ),//VSG_PSel=1
							.SettingParameter190(slow_VSGPLimit_b16		),
							.SettingParameter191(slow_VSGQLimit_b16		),
							.SettingParameter192(slow_pluse_b16		),
							.SettingParameter193(slow_Kf_P_inv_Lmt_b16		),
							.SettingParameter194(slow_Kv_Q_inv_Lmt_b16		),
							.SettingParameter195(VSG_InsFilter		),
							.SettingParameter196(VSG_Uac_Inst_OV_ref		),
							.SettingParameter197(		),
							.SettingParameter198(	K_Uac_OverN_s16	),
							.SettingParameter199(	K_Iac_OverN_s16	), 
							.SettingParameter200(Uac_UV3_ref		),
							.SettingParameter201(Uac_UV3_time		),
							.SettingParameter202(HLvrt_StepIn_Time		),
							.SettingParameter203(ULine_ref_b12		),
							.SettingParameter204(PLL_Kdiff_b16		),
							.SettingParameter205(PLL_Kx_b16		),
							.SettingParameter206(PLL_Ky_b16		),
							.SettingParameter207(Resp_Kx_b16		),
							.SettingParameter208(Resp_Ky_b16		), //299
							.SettingParameter209(fast_Inr_K_b16		),
							.SettingParameter210(Inr_db_b16		),
							.SettingParameter211(Kf_I_b16		), //593
							.SettingParameter212(slow_Kf_P_inv_b16		),
							.SettingParameter213(slow_Ffr_db_b16		),
							.SettingParameter214(slow_Ffr_fSel_b16		),
							.SettingParameter215(Kv_I_b16		),
							.SettingParameter216(Kvi_b16		),
							.SettingParameter217(slow_Kv_Q_inv_b16		),
							.SettingParameter218(Fvr_db_b12		),
							.SettingParameter219(		),
  
							.ARM_Data0(	IGBTa_Temp	),
							.ARM_Data1(	IGBTb_Temp	),
							.ARM_Data2(	IGBTc_Temp	),
							.ARM_Data3(	Stm32_BatSoc	),
							.ARM_Data4(	Stm32_RatedPwr	), //228
							.ARM_Data5(	ARM_State13 ),
							.ARM_Data6(	ARM_State14	),
							.ARM_Data7(	ARM_State15	),
							.ARM_Data8(	Cnt_Stm32	), //228
//							.ARM_Data9(		),
							.ARM_Data10(	Stm32_SysState1	), //230
							.ARM_Data11(	Stm32_SysState2	), //231
							.ARM_Data12(	Stm32_Alarm1	),
							.ARM_Data13(	Stm32_Alarm2	),
							.ARM_Data14(	Stm32_Fault1	),
						    .ARM_Data15(	Stm32_Fault2 	),
							.ARM_Data16(	Stm32_PcsState	),
							.ARM_Data17(	Uab_Zero	),
							.ARM_Data18(	Ubc_Zero	),
							.ARM_Data19(	Uca_Zero	),
							.ARM_Data20(	Ia_Zero	),
							.ARM_Data21(	Ib_Zero	),
							.ARM_Data22(	Ic_Zero	),
							.ARM_Data23(	Udc_Zero	),
							.ARM_Data24(	Idc_Zero	),
							.ARM_Data25(	Ubtr_Zero	),
							.ARM_Data26(	UposGnd_Zero	),
							.ARM_Data27(	UnegGnd_Zero	),
							.ARM_Data28(	Ia_CT_Zero	),
							.ARM_Data29(	Ib_CT_Zero	),
							.ARM_Data30(	Ic_CT_Zero	),
							.ARM_Data31(	QF_Uab_Zero	),
							.ARM_Data32(	Ipid_Zero	), 
		/////////////////////////////////////////////////////// 
							.MonitorData0(	{{4{	Uab_RMS	[11]}},	Uab_RMS	}	), //256
							.MonitorData1(	{{4{	Ubc_RMS	[11]}},	Ubc_RMS	}	),
							.MonitorData2(	{{4{	Uca_RMS	[11]}},	Uca_RMS	}	),
							.MonitorData3(	{{4{	Ia_RMS	[11]}},	Ia_RMS	}	),
							.MonitorData4(	{{4{	Ib_RMS	[11]}},	Ib_RMS	}	),
							.MonitorData5(	{{4{	Ic_RMS	[11]}},	Ic_RMS	}	),
							.MonitorData6(	{{4{	Udc	[11]}},	Udc	}	),
							.MonitorData7(	Idc_FltP128	),
							.MonitorData8(	{{4{	Ubtr	[11]}},	Ubtr	}	),
							.MonitorData9(	{{4{	UposGnd	[11]}},	UposGnd	}	),
							.MonitorData10(	{{4{	UnegGnd	[11]}},	UnegGnd	}	),
							.MonitorData11(	P_FltP128					),
							.MonitorData12(	Q_FltP128					),
							.MonitorData13(	Pdc_FltP128					),
							.MonitorData14(	{{4{	DeltaUdc_RMS	[11]}},	DeltaUdc_RMS	}					),
							.MonitorData15( wb18_Flted[17:2]		 			),
							.MonitorData16(	{{4{	Ia_CT_RMS	[11]}},	Ia_CT_RMS	}					),
							.MonitorData17(	{{4{	Ib_CT_RMS	[11]}},	Ib_CT_RMS	}					),
							.MonitorData18(	{{4{	Ic_CT_RMS	[11]}},	Ic_CT_RMS	}					),
							.MonitorData19(	State0					),
							.MonitorData20(	State1					),
							.MonitorData21(	State2					),
							.MonitorData22(	State3					),
							.MonitorData23(	State4					),
							.MonitorData24(	State5					),
							.MonitorData25(	State6					),  
							.MonitorData26(	State7					),
							.MonitorData27(	State8					),
							.MonitorData28(	State9					),
							.MonitorData29(	State10					),
							.MonitorData30(	State11					),
							.MonitorData31(	State12					),
							.MonitorData32(	State13					),
							.MonitorData33(	State14					),
							.MonitorData34(	State15					),
							.MonitorData35(	Err_Lock_State0		),
							.MonitorData36(	Err_Lock_State1		),
							.MonitorData37(	Err_Lock_State2		),
							.MonitorData38(	Err_Lock_State3		),
							.MonitorData39(	Err_Lock_State4		),
							.MonitorData40(	Err_Lock_State5		),
							.MonitorData41(	Err_Lock_State6		),
							.MonitorData42(	Err_Lock_State7					),
							.MonitorData43(	Err_Lock_State8					),
							.MonitorData44(	Err_Lock_State9					),
							.MonitorData45(	Err_Lock_State10					),
							.MonitorData46(	Err_Lock_State11					),
							.MonitorData47(	Err_Lock_State12					),
							.MonitorData48(	Err_Lock_State13					),
							.MonitorData49(	Err_Lock_State14					),
							.MonitorData50(	Err_Lock_State15					),  
  
							.MonitorData51(			{{4{Uab_Ever[11]}}, Uab_Ever}			),//256+51 
							.MonitorData52(			{{4{Ubc_Ever[11]}}, Ubc_Ever}			),
							.MonitorData53(			{{4{Uca_Ever[11]}}, Uca_Ever}			),
							.MonitorData54(			{{4{Ia_Ever[11]}}, Ia_Ever}			),
							.MonitorData55(			{{4{Ib_Ever[11]}}, Ib_Ever}			),
							.MonitorData56(			{{4{Ic_Ever[11]}}, Ic_Ever}			),
							.MonitorData57(         {{4{Udc_Ever[11]}}, Udc_Ever}            ),
							.MonitorData58(			{{4{Idc_Ever[11]}}, Idc_Ever}			),
							.MonitorData59(			{{4{Ubtr_Ever[11]}}, Ubtr_Ever}			),
							.MonitorData60(	{{4{	UposGnd_Ever	[11]}},	UposGnd_Ever	}					),
							.MonitorData61(	{{4{	UnegGnd_Ever	[11]}},	UnegGnd_Ever	}					),
							.MonitorData62(	{{4{	Ia_CT_Ever	[11]}},	Ia_CT_Ever	}	),
							.MonitorData63(	{{4{	Ib_CT_Ever	[11]}},	Ib_CT_Ever	}	),
							.MonitorData64(	{{4{	Ic_CT_Ever	[11]}},	Ic_CT_Ever	}	),
							.MonitorData65(	{{4{QF_Uab_Ever[11]}}, QF_Uab_Ever}	), //256+65 == 321 
							.MonitorData66(		{{4{Ipid_Ever[11]}}, Ipid_Ever} ), //256+66 == 322 
							//.MonitorData67(		{{4{Idca_b12[11]}}, Idca_b12}					), //4735
							//.MonitorData68(		{{4{Idcb_b12[11]}}, Idcb_b12}				),  //2980
							.MonitorData67(		Pload_b16					), //P_CT
							.MonitorData68(		Qload_b16				),  //Q_CT							
							.MonitorData69(		{{4{Delta_DCa_b12[11]}}, Delta_DCa_b12}					), //0
							.MonitorData70(		{{4{Delta_DCb_b12[11]}}, Delta_DCb_b12}				), //29
							.MonitorData71(  	DLen_b16				), //256+71 
							.MonitorData72(	 	{{4{Ipid_RMS[11]}}, Ipid_RMS} ), //256+72  
							.MonitorData73(	{{4{	IcomRms_b12	[11]}},	IcomRms_b12	}					   ), //256+73  
							.MonitorData74(		Err_Lock_State15			), 
							.MonitorData75(		DebugData			),  //331
							.MonitorData76(	   P_Ref_In				),  //332
							.MonitorData77(		Q_Ref_In				),  //333 
							//fpga version
							.MonitorData78(	    16'd1252_4	), //125X_Y 1250kw X=2[0=常规 1=户外 2=XiongMao] Y=netNum
							//.MonitorData79(		16'd11_10_1	         ), //add XBY LVRT	and Xn_Over  OUT0/4 
							//.MonitorData79(		16'd19_11_4	         ), //RD_EN
							//.MonitorData79(		16'd11_11_4	         ),
							//.MonitorData79(		16'd14_12_4	         ),
							//.MonitorData79(		16'd08_01_5	         ), //armIO / Pzero / Filber / ArmCom
							//.MonitorData79(		16'd17_01_5	         ), //FilberErr CMD1.1
							//.MonitorData79(		16'd06_02_5	         ), //TXRX
							//.MonitorData79(		16'd23_02_5	         ),//CTprotect_disable
							//.MonitorData79(		16'd26_02_5	         ),//Ib_CT and CT monitor and PQ inverse
							.MonitorData79(		16'd02_03_5	         ),//new ADdrv and FSMchange and Zvrting
							//.MonitorData80(	State13	), 
							//.MonitorData81(	State14	), 
							//.MonitorData82(	State15	), //256+82  338
							//.MonitorData83(	Cnt_Am335				),
							.MonitorData84(	rdakn_cnt	),
							.MonitorData85(	{{3{wt_b13[12]}}, wt_b13}	),
							// .MonitorData84(	Stm32_OptCmd	),
							// .MonitorData85(	Stm32_CtrlMode		),
							//.MonitorData86(	Stm32_RunMode		),
							//.MonitorData87(	Stm32_PCmd	),
							//.MonitorData88(	Stm32_QCmd	),  
							//.MonitorData89(	  {{8{WdgRst_n_Nums[7]}}, WdgRst_n_Nums}  ),//68
							.MonitorData90(	 16'd346  ), //68/++++++ZJ 20220411 
							.MonitorData91(	 16'd347  ), //332 0 
							.MonitorData92(	 ICT_OI_ref  ), //332 0 
							.MonitorData93(	   ), //332 0 
							.MonitorData94(	   ), //332 0 
							.MonitorData95(	   ), //332 0 
							.MonitorData96(	   ), //332 0 
							.MonitorData97(	   ), //332 0 
							.MonitorData98(	   ), //332 0 
							.MonitorData99(	   ), //332 0 
							.MonitorData100(			),//356
							.MonitorData101(	Am335_QCmd		),
							.MonitorData102(	P_Ref_In	),
							.MonitorData103(	Q_Ref_In	)

				); 
  //wire [15:0] Paux, Qaux;
  assign P_refSel_b16          =  P_ref_Arm_b16;// + Paux;
  assign Q_ref_b16             =  Q_ref_Arm_b16;// + Qaux;
  //assign Fiber_Slave           = (SettingSwitchCMD2[8] & (~SettingSwitchCMD2[9]));
  assign Um_ref_Set_b12        = Um_ref_Arm_b12;
  assign Unm_ref_b12           = Unm_ref_Arm_b12;
  assign PhaseAddnSeq_ub13     = PhaseAddnSeq_Arm_ub13;
  assign w_Add_b16             = w_Add_Arm_b16;

  LmtB16_V1 LmtB16_V1_inst (
      .In_b16(P_refSel_b16),
      .LmtPos_b16(ACDischgPLimit_b16),
      .LmtNeg_b16(ACChargePLimit_b16),
      .Out_b16(P_ref_b16)
  );

  assign PWM_OE1 = SqWave100kHz;
  assign PWM_OE2 = SqWave100kHz;

  PulseSource_V16Z PulseSource_V15_Inst (
      .g_clk(clk25m),
      .Rst_n(rst_n),
      .Pulse4096Hz(Pulse4096Hz),
      .Pulse8192Hz(Pulse8192Hz),
      .Pulse50x32Hz(Pulse50x32Hz),
      .Pulse44p7035Hz(),
      .Pulse98p3477Hz(Pulse98p3477Hz),
      .SqWave100kHz(SqWave100kHz),
      .Start_1sOn(Start_1sOn),
      .Start_2sOn(Start_2sOn),
      .Start_5sOn(Start_5sOn),
      .Start_10sOn(Start_10sOn),
      .wt(wt),
      .Pulse4096x4Hz(Pulse4096x4Hz)
  );
 
wire [15:0] ADErrCNT,  ADBusyCnt,  ADReadyCnt,  ADSampleCnt, ADIldeCnt, ADStartCnt,AD_ErrTtoal; 
wire [3:0]  ADstate;
AD7607Drv_VZ10 AD7607Drv_V10c_Inst
          (
           .g_clk(clk25m), .Rst_n(rst_n & Start_1sOn), 
		   //.AD_Start(rst_n),
           .AD_BUSY0(AD_BUSY0),
           .AD_BUSY1(AD_BUSY1),
           .AD_DB(AD_DB),
			//.Pulse50x32Hz( Pulse50x32_Hz ),
           .AD_Rst( AD_Rst ),//
           .AD_CONVST(ad_convst_n), //ad_convst_n
           .AD_CS0(AD_CS0),
           .AD_CS1(AD_CS1),
           .AD_RD(AD_RD),
           .AD_OS(),//AD_OS
           .AD0_CH0( AD0_CH0 ),
           .AD0_CH1( AD0_CH1 ),
           .AD0_CH2( AD0_CH2 ),
           .AD0_CH3( AD0_CH3 ),
           .AD0_CH4( AD0_CH4 ),
           .AD0_CH5( AD0_CH5 ),
           .AD0_CH6( AD0_CH6 ),
           .AD0_CH7( AD0_CH7 ),
           .AD1_CH0( AD1_CH0 ),
           .AD1_CH1( AD1_CH1 ),
           .AD1_CH2( AD1_CH2 ),
           .AD1_CH3( AD1_CH3 ),
           .AD1_CH4( AD1_CH4 ),
           .AD1_CH5( AD1_CH5 ),
           .AD1_CH6( AD1_CH6 ),
           .AD1_CH7( AD1_CH7 ),
           .AD_Err( AD_Err ),
           .ADErrCNT( ADErrCNT ),//ADErrCNT
		   .ADBusyCnt(ADBusyCnt), .ADReadyCnt(ADReadyCnt),  .ADSampleCnt(ADSampleCnt), .ADIldeCnt(ADIldeCnt), .ADStartCnt(ADStartCnt),
		   .state(ADstate), .AD_ErrTtoal(AD_ErrTtoal)
          ); 
/*		  
  wire [15:0] ADErrCNT,  ADBusyCnt,  ADReadyCnt,  ADSampleCnt; 
  AD7607Drv_VZ10 AD7607Drv_V10c_Inst
          (
           .g_clk(clk25m), .Rst_n(rst_n), 
		   //.AD_Start(rst_n),
           .AD_BUSY0(AD_BUSY0),
           .AD_BUSY1(AD_BUSY1),
           .AD_DB(AD_DB),
			//.Pulse50x32Hz( Pulse50x32_Hz ),
           .AD_Rst(),//AD_Rst
           .AD_CONVST(ad_convst_n), //ad_convst_n
           .AD_CS0(AD_CS0),
           .AD_CS1(AD_CS1),
           .AD_RD(AD_RD),
           .AD_OS(),//AD_OS
           .AD0_CH0( AD0_CH0 ),
           .AD0_CH1( AD0_CH1 ),
           .AD0_CH2( AD0_CH2 ),
           .AD0_CH3( AD0_CH3 ),
           .AD0_CH4( AD0_CH4 ),
           .AD0_CH5( AD0_CH5 ),
           .AD0_CH6( AD0_CH6 ),
           .AD0_CH7( AD0_CH7 ),
           .AD1_CH0( AD1_CH0 ),
           .AD1_CH1( AD1_CH1 ),
           .AD1_CH2( AD1_CH2 ),
           .AD1_CH3( AD1_CH3 ),
           .AD1_CH4( AD1_CH4 ),
           .AD1_CH5( AD1_CH5 ),
           .AD1_CH6( AD1_CH6 ),
           .AD1_CH7( AD1_CH7 ),
           .AD_Err( AD_Err ),
           .ADErrCNT( ADErrCNT ),//ADErrCNT
		   .ADBusyCnt(ADBusyCnt), .ADReadyCnt(ADReadyCnt),  .ADSampleCnt(ADSampleCnt)
          );*/


//assign AD_Rst = ~Start_1sOn;

 /* multi_ad_ctrl ad_inst (
      .clk_i(clk25m),
      .rst_i(~rst_n),
      .sample_i(),
      .ad_data_i(AD_DB),
      .ad0_busy_i(AD_BUSY0),
      .ad1_busy_i(AD_BUSY1),
      .ad_conv_o(ad_convst_n),
      .ad0_cs_o(AD_CS0),
      .ad1_cs_o(AD_CS1),
      .ad_rd_o(AD_RD),
      .ad_os_o(),
      .ad_err_o(AD_Err),
      .ad0_ch0_o(AD0_CH0),
      .ad0_ch1_o(AD0_CH1),
      .ad0_ch2_o(AD0_CH2),
      .ad0_ch3_o(AD0_CH3),
      .ad0_ch4_o(AD0_CH4),
      .ad0_ch5_o(AD0_CH5),
      .ad0_ch6_o(AD0_CH6),
      .ad0_ch7_o(AD0_CH7),
      .ad1_ch0_o(AD1_CH0),
      .ad1_ch1_o(AD1_CH1),
      .ad1_ch2_o(AD1_CH2),
      .ad1_ch3_o(AD1_CH3),
      .ad1_ch4_o(AD1_CH4),
      .ad1_ch5_o(AD1_CH5),
      .ad1_ch6_o(AD1_CH6),
      .ad1_ch7_o(AD1_CH7)
  ); */

  BitFilterCh2_V11a BitFilterCh2_V11a_Inst (
      .g_clk(clk25m),
      .Rst_n(rst_n),
      .Pulse_4096Hz(Pulse8192Hz),
      .In0(SettingSwitchCMD0[6]),
      .In1(SettingSwitchCMD0[7]),
      .BitFltedOut0(StCMD06),
      .BitFltedOut1(StCMD07)
  );

  assign CMD1[5] = SettingSwitchCMD1[5];
  assign CMD1[6] = SettingSwitchCMD1[6];
  assign CMD1[7] = SettingSwitchCMD1[7];

  assign PwmBlock_PQ0 = ( (P_Ref_In==16'd0) & (Q_Ref_In==16'd0) ) ? (~SettingSwitchCMD1[8]) : 1'b1;
  assign CtlLoop_OnVSG = (StateCode == WORKING) & (Start_2sOn);
 // assign CtlLoop_OnNoVSG = (StateCode == WORKING) & (Start_2sOn);
  assign CtlLoop_OnNoVSG = (StateCode==WORKING) & (Start_2sOn) & (~(PQDisPWMEn&SettingSwitchCMD1[8]));// & PwmBlock;  //ADD ZJ 20220302 
  assign CtlLoop_On = (SettingSwitchCMD2[2] == 1'b1) ? CtlLoop_OnVSG : CtlLoop_OnNoVSG;
  assign VF_Mode = ((CMD1[7:6] == 2'b00 & State10[14] == 1'b0) & (State10[0]));
  assign VI_Mode = (CMD1[7:5] == 3'b010 & State10[14] == 1'b1);

  NEPCS_100_V01_FSM fsm_inst (
      .g_clk(clk25m),
      .Rst_n(rst_n),
      .StartCMD_IN(SettingSwitchCMD0[1:0]),
      //.Em_In(Em_In_flag),
	  .Em_In(1'b0),
      //.GoNext(GoNext_flag),
	  .GoNext(1'b1),
      .ToChargeOk(ToChargeOk),
      .ChargeOk(ChargeOk),
      .ToExciteOk(ToExciteOk),
      .ExciteOk(ExciteOk),
      .ToProWorkOk(ToProWorkOk),
      .ProWorkOk(ProWorkOk),
      .ToWorkOk(ToWorkOk),
      .WorkingOk(WorkingOk),
      .VF_Mode(VF_Mode),
      .BtrReverse(State5[0]),
      .VI_Mode(VI_Mode),
      .TRANSITION_TimeSet((TRANSITION_TimeSet < 16'd12) ? 12 : TRANSITION_TimeSet),
      .StateCode(StateCode),
      .StateLast1Code(StateLast1Code),
      .StateLast2Code(StateLast2Code),
      .StateLast3Code(StateLast3Code),
      .Em_In_flag(),
      .GoNext_flag(),
      .StartCMD_flag(StartCMD_flag),
      .DelayOut_flag(DelayOut_flag)
  );


reg [15:0] CarryNum_b12_Set;
  always @(posedge clk25m) begin
    if (rst_n == 1'b0) begin
      IgbtErrDlyCnt <= 0;
      IgbtErrDis    <= 0;
    end else begin
      CarryNum_b12_Set <= ((EnableARMIO==16'd1111)|(CarryNum_b12_Set<40)) ? CarryNum_b12 : CarryNum_b12_Set;
      if ((StateCode == WORKING) & (~CtlLoop_On2)) begin
        if (IgbtErrDlyCnt < 16'd41) begin
          IgbtErrDlyCnt <= Pulse4096Hz ? (IgbtErrDlyCnt + 1) : IgbtErrDlyCnt;
          IgbtErrDis    <= 1;
        end else begin
          IgbtErrDis <= 0;
        end
      end else begin
        IgbtErrDlyCnt <= 0;
        IgbtErrDis    <= 0;
      end
    end
  end
  
  wire Err_RS_ob;
  wire FaultState_ob;
  wire [31:0] FaultStateDly_ob;
  
  assign FIFO8_DATA_SEL = FIFOX_DATA_SEL[8];
  wire [15:0] EnableARMIO; //SettingParameter189
  //wire [15:0] SettingSwitchCMD3_2 =  {SettingSwitchCMD3[15:8], (EnableARMIO==16'd12321)?SettingSwitchCMD3[7:0]:8'd0};
  wire [15:0] SettingSwitchCMD3_2 =  {SettingSwitchCMD3[15:8], (EnableARMIO==16'd12321)?SettingSwitchCMD3[7:5]:3'd0,SettingSwitchCMD3[4],(EnableARMIO==16'd12321)?SettingSwitchCMD3[3:0]:4'd0};
  wire [15:0] IabcEver_OI_ref;
  
  wire PwmLockA,PwmLockB,PwmLockC; 
wire [11:0] Ilimit1p08;
wire IlimitX3en = 0;
//wire OLoadTestEn = SettingSwitchCMD3[10];
wire OLoadTestEn = SettingSwitchCMD3[14];
wire [15:0] State1_warn1,State1_warn2,OIFlgClrCnt;
wire [15:0] UpnGnd_OV_ref;
NEPCS_100_V01_PLD NEPCS_100_V01_PLD_Inst
(				 
				//.F_cnt(F_cnt),
				.ErrABC1(ErrABC1), .ErrABC2(ErrABC2), .ErrABC3(ErrABC3), .ErrABC4(ErrABC4), .UpnGnd_OV_ref( UpnGnd_OV_ref[11:0] )  ,
				.PulseCarryx1_Hz(PulseCarryx1_Hz), 
				.PwmLockA(PwmLockA), .PwmLockB(PwmLockB), .PwmLockC(PwmLockC), 
				.CarryErr(CarryErr), .Fiber_WORKING(Fiber_WORKING_flg), .RecvWORKING(RecvWORKING_flg), 
				.IlimitX3en(IlimitX3en), .OLoadTestEn(OLoadTestEn), .Ilimit1p08(Ilimit1p08),
				.State1_warn1(State1_warn1),.State1_warn2(State1_warn2), .OIFlgClrCnt(OIFlgClrCnt),
				.EnableARMIO(EnableARMIO),
				.IabcEver_OI_ref( IabcEver_OI_ref[11:0]),
				.P_ref_b16( SettingSwitchCMD1[14] ? P_ref_SetInCmp : P_ref_SetIn ),
				.Q_ref_b16( SettingSwitchCMD1[14] ? Q_ref_SetInCmp : Q_ref_SetIn ),
				.ICT_OI_ref(ICT_OI_ref[11:0]),
				.Uac_OverN_flg( Uac_OverN_flg ),
				.Iac_OverN_flg( Iac_OverN_flg ),
				.g_clk( clk25m ),
				.Rst_n( rst_n ),
				.HvrtFlg( HvrtFlg ), .LvrtFlg( LvrtFlg ),
				.PQ_ZeroBlock_r( PQ_ZeroBlock_r ),
				.Uac_Max(Uac_Max),
				.Uac_Min(Uac_Min),
				.PhaseInv(PhaseInv),

				.Pulse50x32Hz( Pulse50x32Hz ),
				.Pulse4096Hz( Pulse4096Hz ),
				.Pulse98p3477Hz(Pulse98p3477Hz),
				.PulseCarryx64_Hz( PulseCarryx64_Hz ),
				.Start_1sOn(Start_1sOn),
				.Start_5sOn(Start_5sOn),
				.Pulse50x64_Hz( Pulse50x64_Hz ),
				.Pulse50x1_Hz( Pulse50x1_Hz ),
				.FilberErr( FilberErr ),
				
				.AD0_CH0( AD0_CH0 ),
				.AD0_CH1( AD0_CH1 ),
				.AD0_CH2( AD0_CH2 ),
				.AD0_CH3( AD0_CH3 ),
				.AD0_CH4( AD0_CH4 ),
				.AD0_CH5( AD0_CH5 ),
				.AD0_CH6( AD0_CH6 ),
				.AD0_CH7( AD0_CH7 ),
				.AD1_CH0( AD1_CH0 ),
				.AD1_CH1( AD1_CH1 ),
				.AD1_CH2( AD1_CH2 ),
				.AD1_CH3( AD1_CH3 ),
				.AD1_CH4( AD1_CH4 ),
				.AD1_CH5( AD1_CH5 ), //100kW鏈哄瀷鐩存祦鐢垫祦浼犳劅鍣ㄦ柟鍚戝拰绋嬪簭�?�氫箟鐩稿弽�?00kW娌℃湁鎼炲弽
				.AD1_CH6( AD1_CH6 ),
				.AD1_CH7( AD1_CH7 ),
				.Uab_FltP32( Uab_FltP32 ),
				.Ubc_FltP32( Ubc_FltP32 ),
				.Uca_FltP32( Uca_FltP32 ),
				.Ia_FltP32(Ia_FltP32),
				.Ib_FltP32(Ib_FltP32),
				.Ic_FltP32(Ic_FltP32),
				.Idc_FltP32(Idc_FltP32),
				.Udc_FltP32(Udc_FltP32),
				.Ubtr_FltP32(Ubtr_FltP32),
				.Uab_Ever( Uab_Ever )	,
				.Ubc_Ever( Ubc_Ever )	,
				.Uca_Ever( Uca_Ever )	,
				.Ia_Ever( Ia_Ever )	,
				.Ib_Ever( Ib_Ever )	,
				.Ic_Ever( Ic_Ever )	,
				.Udc_Ever( Udc_Ever )	,
				.Idc_Ever( Idc_Ever )	,
				.Ubtr_Ever( Ubtr_Ever )	,
				.UposGnd_Ever( UposGnd_Ever )	,
				.UnegGnd_Ever( UnegGnd_Ever )	,

				.Ia_CT_Ever( Ia_CT_Ever )	,
				.Ib_CT_Ever( Ib_CT_Ever )	,
				.Ic_CT_Ever( Ic_CT_Ever )	,
				//.QF_Uab_Ever( QF_Uab_Ever )	,
				//.Ipid_Ever( Ipid_Ever )	,				
				
												
				.Uab_Zero( Uab_Zero[11:0] )	,
				.Ubc_Zero( Ubc_Zero[11:0] )	,
				.Uca_Zero( Uca_Zero[11:0] )	,
				.Ia_Zero( Ia_Zero[11:0] )	,
				.Ib_Zero( Ib_Zero[11:0] )	,
				.Ic_Zero( Ic_Zero[11:0] )	,
				.Udc_Zero( Udc_Zero[11:0] )	,
				.Idc_Zero( Idc_Zero[11:0] )	,
				.Ubtr_Zero( Ubtr_Zero[11:0] )	,
				.UposGnd_Zero( UposGnd_Zero[11:0] )	,
				.UnegGnd_Zero( UnegGnd_Zero[11:0] )	,

				.Ia_CT_Zero( Ia_CT_Zero[11:0] )	,
				.Ib_CT_Zero( Ib_CT_Zero[11:0] )	,
				.Ic_CT_Zero( Ic_CT_Zero[11:0] )	,
				//.QF_Uab_Zero( QF_Uab_Zero[11:0] )	,
				//.Ipid_Zero( Ipid_Zero[11:0] )	,
				
				.Uab( Uab )	,
				.Ubc( Ubc )	,
				.Uca( Uca )	,
				.Ia( Ia )	,
				.Ib( Ib )	,
				.Ic( Ic )	,
				.Udc( Udc )	,
				.Idc( Idc )	,
				.Ubtr( Ubtr )	,
				.UposGnd( UposGnd )	,
				.UnegGnd( UnegGnd )	,

				/*.Rly_Ua( Rly_Ua )		,
				.Rly_Ub( Rly_Ub )		,
				.Rly_Uc( Rly_Uc )		,*/
				.Ia_CT( Ia_CT )	,
				.Ib_CT( Ib_CT )	,
				.Ic_CT( Ic_CT )	,
				.Ia_CT_to_Ia( Ia_CT_to_Ia ),
				.Ib_CT_to_Ib( Ib_CT_to_Ib ),
				.Ic_CT_to_Ic( Ic_CT_to_Ic ),
				
				//.QF_Uab( QF_Uab )		,
				//.Ipid( Ipid )		,

			   .IgbtErr_Cnt_b12(IgbtErr_Cnt_b12[11:0]),
				
				.Uab_RMS( Uab_RMS )	,
				.Ubc_RMS( Ubc_RMS )	,
				.Uca_RMS( Uca_RMS )	,
				.ICT0_RMS( ICT0_RMS ),
				.Ia_RMS( Ia_RMS )	,
				.Ib_RMS( Ib_RMS )	,
				.Ic_RMS( Ic_RMS )	,

				.DeltaUdc_RMS( DeltaUdc_RMS )	,
/*				.Rly_Ua_RMS( Rly_Ua_RMS )	,
				.Rly_Ub_RMS( Rly_Ub_RMS )	,
				.Rly_Uc_RMS( Rly_Uc_RMS )	,*/
				.Ia_CT_RMS(Ia_CT_RMS),
				.Ib_CT_RMS(Ib_CT_RMS),
				.Ic_CT_RMS(Ic_CT_RMS),
				.IcomRms_b12(  IcomRms_b12 ),
				//.QF_Uab_RMS( QF_Uab_RMS )	,				
				//.Ipid_RMS( Ipid_RMS )	,	 
				
				//.w( w_b18[17:2] )	,
				.w( wb18_2[17:2] )	,
				
				.IGBTa_Temp( IGBTa_Temp[11:0] ),
				.IGBTb_Temp( IGBTb_Temp[11:0] ),
				.IGBTc_Temp( IGBTc_Temp[11:0] ),

				.Uac_OV_ref( Uac_OV_ref[11:0] )	,
				.Uac_UV_ref( Uac_UV_ref[11:0] )	,
				.Iac_OI_ref( Iac_OI_ref[11:0] )	,
				.Udc_OV_ref( Udc_OV_ref[11:0] )	,
				.Udc_UV_ref( Udc_UV_ref[11:0] )	,
				.Idc_OI_ref( Idc_OI_ref[11:0] )	,
				.Ubtr_OV_ref( Ubtr_OV_ref[11:0] )	,
				.Ubtr_UV_ref( Ubtr_UV_ref[11:0] )	,
//				.UbtrIsltn_OV_ref( UbtrIsltn_OV_ref[11:0] )	,
				.UdcDelta_OV_ref(	UdcDelta_OV_ref	)	,
				.Uac_Inst_OV_ref( Uac_Inst_OV_ref[11:0] )	,
				.Iac_Inst_OV_ref( Iac_Inst_OV_ref[11:0] )	,
				.Udc_Inst_OV_ref( Udc_Inst_OV_ref[11:0] )	,
				.Idc_Inst_OV_ref( Idc_Inst_OV_ref[11:0] )	,
				.Ubtr_Inst_OV_ref( Ubtr_Inst_OV_ref[11:0] )	,
				.I_Zero_ref( I_Zero_ref[11:0] )	,
				.ProChgDrop_ref( ProChgDrop_ref[11:0] )	,
				.IGBT_Temp_OT_ref(IGBT_Temp_OT_ref[11:0]) ,
				
				.IcomRms_OI_ref( IcomRms_OI_ref[11:0] ),
				
				.Frq_OF_ref( Frq_OF_ref )	,
				.Frq_UF_ref( Frq_UF_ref )	,

				.Uac_OV2_ref( Uac_OV2_ref[11:0] )	,
				.Uac_UV2_ref( Uac_UV2_ref[11:0] )	,
				.Uac_UV3_ref( Uac_UV3_ref[11:0] )	,
				.Frq_OF2_ref( Frq_OF2_ref )	,
				.Frq_UF2_ref( Frq_UF2_ref )	,
				.Frq_OF1_time( Frq_OF1_time )	,
				.Frq_UF1_time( Frq_UF1_time )	,
				.Frq_OF2_time( Frq_OF2_time )	,
				.Frq_UF2_time( Frq_UF2_time )	,
				.Uac_OV1_time( Uac_OV1_time )	,
				.Uac_UV1_time( Uac_UV1_time )	,
				.Uac_OV2_time( Uac_OV2_time )	,
				.Uac_UV2_time( Uac_UV2_time )	,
				.Uac_UV3_time( Uac_UV3_time )	,
				.HLvrt_StepIn_Time(HLvrt_StepIn_Time),
				.PhaseAddpSeq_i13(PhaseAddpSeq_i13),
				.SwitchOnRef_b12( SwitchOnRef_b12[11:0] ),
				.AcVolOnRef_b12( AcVolOnRef_b12[11:0] ),
				.CT2Hall_b12(CT2Hall_b12[11:0]),
				.Delta_w_b16 (Delta_w_b16),
				.Island_UacUV_b12 (Island_UacUV_b12[11:0]),
				.Island_FreqDlta_b16(Island_FreqDlta_b16),
				
				.IGBTA_ERR_1( IgbtErrDis ? 1 : IGBTA_ERR_1  ),
				.IGBTA_ERR_2( IgbtErrDis ? 1 : IGBTA_ERR_2  ),
				.IGBTA_ERR_3( IgbtErrDis ? 1 : IGBTA_ERR_3  ),
				.IGBTA_ERR_4( IgbtErrDis ? 1 : IGBTA_ERR_4  ),
				.IGBTB_ERR_1( IgbtErrDis ? 1 : IGBTB_ERR_1  ),
				.IGBTB_ERR_2( IgbtErrDis ? 1 : IGBTB_ERR_2  ),
				.IGBTB_ERR_3( IgbtErrDis ? 1 : IGBTB_ERR_3  ),
				.IGBTB_ERR_4( IgbtErrDis ? 1 : IGBTB_ERR_4  ),
				.IGBTC_ERR_1( IgbtErrDis ? 1 : IGBTC_ERR_1  ),
				.IGBTC_ERR_2( IgbtErrDis ? 1 : IGBTC_ERR_2  ),
				.IGBTC_ERR_3( IgbtErrDis ? 1 : IGBTC_ERR_3  ),
				.IGBTC_ERR_4( IgbtErrDis ? 1 : IGBTC_ERR_4  ),						
				
				.FiberTimeOut(FiberTimeOut),
				
				.StateCode	( StateCode ),
				.StateLast1Code	( StateLast1Code ),
				.StateLast2Code	( StateLast2Code ),
				.StateLast3Code	( StateLast3Code ),
				
				
//				.ToChargeOk( ToChargeOk ),
//				.ChargeOk( ChargeOk ),
//				.ToProWorkOk( ToProWorkOk ),
//				.ProWorkOk( ProWorkOk ),
//				.ToExciteOk( ToExciteOk ),
//				.ExciteOk( ExciteOk ),				
//				.ToWorkOk( ToWorkOk ),
//				.WorkingOk( WorkingOk ),

				.ToChargeOk( ToChargeOk ),
				.ChargeOk( ChargeOk ),
				.ToProWorkOk( ToProWorkOk ),
				.ProWorkOk( ProWorkOk ),
				.ToExciteOk( ToExciteOk ),
				.ExciteOk( ExciteOk ),				
				.ToWorkOk( ToWorkOk ),
				.WorkingOk( WorkingOk ),

				.Em_In_flag( Em_In_flag ),
				.GoNext_flag( GoNext_flag ),
				.StartCMD_flag( StartCMD_flag ),
				.DelayOut_flag( DelayOut_flag ),
				
				.CPLD_in( CPLD_in ),
				.CPLD_out( CPLD_out ),
				
				.State0(	State0	),
				.State1(	State1	),
				.State2(	State2	),
				.State3(	State3	),
				.State4(	State4	),
				.State5(	State5	),
				.State6(	State6	),
				.State7(	State7	),
				.State8(	State8	),
				.State9(	State9	),
				.State10(	State10	),
				.State11(	State11	),
				.State12(	State12	),
				.State13(	State13	),
				.State14(	State14	),
				.State15(	State15	),

				.Err_Lock_State0(	Err_Lock_State0),
				.Err_Lock_State1(	Err_Lock_State1),
				.Err_Lock_State2(	Err_Lock_State2),
				.Err_Lock_State3(	Err_Lock_State3),
				.Err_Lock_State4(	Err_Lock_State4	),
				.Err_Lock_State5(	Err_Lock_State5	),
				.Err_Lock_State6(	Err_Lock_State6),
				.Err_Lock_State7(	Err_Lock_State7	),
				.Err_Lock_State8(	Err_Lock_State8	),
				.Err_Lock_State9(	Err_Lock_State9	),
				.Err_Lock_State10(	Err_Lock_State10	),
				.Err_Lock_State11(	Err_Lock_State11	),
				.Err_Lock_State12(	Err_Lock_State12	),
				.Err_Lock_State13(	Err_Lock_State13	),
				.Err_Lock_State14(	Err_Lock_State14	),
				.Err_Lock_State15(	Err_Lock_State15	),

				.SettingSwitchCMD0(	SettingSwitchCMD0	),
				.SettingSwitchCMD1(	SettingSwitchCMD1	),
				.SettingSwitchCMD2(	SettingSwitchCMD2	),
				.SettingSwitchCMD3(	SettingSwitchCMD3_2	),
				.SettingSwitchCMD4(	SettingSwitchCMD4	),
				.SettingSwitchCMD5(	SettingSwitchCMD5	),
				.SettingSwitchCMD6(	SettingSwitchCMD6	),
				.SettingSwitchCMD7(	SettingSwitchCMD7	),
				.SettingSwitchCMD8(	SettingSwitchCMD8	),
				.SettingSwitchCMD9(	SettingSwitchCMD9	),
				
				.Inr_Running(     Inr_Running       ),
				.Ffr_Running(     Ffr_Running       ),
				.Fvr_Running(     Fvr_Running       ),
				
				.CtlLoop_On( CtlLoop_On2 ), 
				.First_VS( First_VS ),
				.Lvrting( Lvrting ),
				.Zvrting( Zvrting )	,
				.ILimit_b12( ILimit_b12[11:0] ),
				.ILimit_Rdced( ILimit_Rdced ),
				//.PLD_Test0( PLD_Test0 ),
				//.PLD_Test1( PLD_Test1 ),
				//.PLD_Test2( PLD_Test2 ),
				//.PLD_Test3( PLD_Test3 ),
				.PulseCarryx32_Hz( PulseCarryx32_Hz ) ,
				.VF_Mode( VF_Mode ) ,
				.Excite_On( Excite_On ),
				.AD_Err( AD_Err )	,
				.ControlLoop3L_On	( ControlLoop3L_On )	,			
				
				.P_b16( P_FltP128 ),
				.Pdc_b16( Pdc_FltP128 ),
				.Pdc2ac_co_b16( Pdc2ac_co_b16 ),
				.CabnetHeatOV_Ref( CabnetHeatOV_Ref ),
				.IcomOrgAll_b12( IcomOrgAll_b12 ),
				.CN6_7_CONNECT(CN6_7_CONNECT), //ADD ZJ 20211103
				.VSG_Uac_Inst_OV_ref(VSG_Uac_Inst_OV_ref) ,//ADD ZJ 20220217
				.VSG_InsFilter(VSG_InsFilter), //ADD ZJ 20220217
				.CMD1(CMD1),  //for PQ/VF  
				//.PwmBlock(PwmBlock),
				.Iac_Inst_OVRcy_ref(Iac_Inst_OVRcy_ref[11:0]),
				.Uac_Inst_OVRcy_ref(Uac_Inst_OVRcy_ref[11:0]),
				.PwmBlockTime(PwmBlockTime),
				.ARM_State13(ARM_State13),
				.ARM_State14(ARM_State14),
				.ARM_State15(ARM_State15),
				
				.IacLoss_Max(IacLoss_Max[11:0]),
				.IacLoss_Min(IacLoss_Min[11:0])
				
);



  OnDelay2s_V11 OnDelay2s_V11_Inst (
      .g_clk(clk25m),
      .Rst_n(rst_n),
      .Pulse50x64Hz(Pulse50x64_Hz),
      .In( (StateCode==WORKING) | (((StateCode==PROWORK) & (~State9[2])) & ( StateLast1Code==EXCITE )) ),
      .Out(Soft_Finished)
  );


  assign  Excite_On = (StateCode==EXCITE)|(((StateCode==PROWORK) & (State9[2])) & ( StateLast1Code==EXCITE ));
  assign ControlLoop3L_On = CtlLoop_On | (StateCode==EXCITE) | ((StateCode==PROWORK) & (StateLast1Code==EXCITE)) ;

  assign PWM_WORD = {
    PWMA_1, PWMA_2, PWMA_3, PWMA_4, PWMB_1, PWMB_2, PWMB_3, PWMB_4, PWMC_1, PWMC_2, PWMC_3, PWMC_4
  };

  AverFilterP32Ch8_V10 AverFilterP32Ch8_V10_Inst (
      .g_clk(clk25m),
      .Rst_n(rst_n),
      .Filter_In0(Ia_CT_to_Ia),
      .Filter_In1(Ib_CT_to_Ib),
      .Filter_In2(Ic_CT_to_Ic),
      .Pulse(PulseCarryx32_Hz),
      .Filter_Out0(Ia_CT_FltP32),
      .Filter_Out1(Ib_CT_FltP32),
      .Filter_Out2(Ic_CT_FltP32)
  );

  assign InvControlLoopOn=CtlLoop_On | (StateCode==EXCITE) | ((StateCode==PROWORK) & (StateLast1Code==EXCITE));
  assign Uab_Abs = (Uab[11]) ? -Uab : Uab;
  assign Ubc_Abs = (Ubc[11]) ? -Ubc : Ubc;
  assign Uca_Abs = (Uca[11]) ? -Uca : Uca;
  assign Umax_ins = (Uab_Abs > Ubc_Abs) ? Uab_Abs : Ubc_Abs;
  assign FlagOVins = ((Umax_ins > Uca_Abs) ? Umax_ins : Uca_Abs) > (Uac_Inst_OV_ref - 16'd20);
  //assign ILimit_In_b12 = (SettingSwitchCMD2[4] & (CMD1[7:5] == 3'b100 | State10[14]==1'b1)) ? (ILimit_Rdced) : (ILimit_b12[11:0]);
  assign ILimit_In_b12 = ILimit_Rdced;//
  assign SyncEn_Inv = 1'b0;

  assign PwmBlock = 0;

/* PVR_V10 PVR_V10_Inst (
      .g_clk(clk25m),
      .Rst_n(rst_n & (~(StateCode == STOP)) & Start_1sOn),
      .Um_ref_b12(Um_ref_Set_b12 + Um_ref_Bias_b12),
      .PVR_K_i12(PVR_K_b16[11:0]),
      .UacSoftFre_u16(UacSoftFre_b16),
      .CtlLoop_On  	((CMD1[7:5]==3'b000 && State10[14]==1'b0)&SettingSwitchCMD2[9]&CtlLoop_On&(~Excite_On)),
      .P_now_i16(P_FltP128),
      .Um_Pvr_b12(Um_ref_b12)
  );*/
  assign Um_ref_b12 = Um_ref_Set_b12 + Um_ref_Bias_b12;
//================================================
wire PwmLoadPluse;
wire [15:0] mod_sel; 
reg       m_sel_r;
reg [15:0] P4096_cnt; 
reg        P4096_Clear; 
reg [15:0] P4096_cnt1; 
reg [15:0] P4096_cntsave; 
//reg [1:0]  LoadMode_r;
always @(posedge clk25m )begin   
	m_sel_r      <= (StateCode==IDEL) ? SettingSwitchCMD1[15] : m_sel_r;
	//LoadMode_r   <= (StateCode==IDEL) ? SettingSwitchCMD1[4:3] : LoadMode_r;
	if(Pulse4096Hz) begin  
		if(P4096_cnt<4096) begin
			P4096_cnt <= P4096_cnt+1;
			P4096_Clear <= 0;
		end
		else begin 
			P4096_Clear <= 1;
		end
	end 
	else begin
		if(P4096_cnt1 == 0) begin
			P4096_Clear <= 0;
			P4096_cnt <= 0;
		end
	end
	
	if(PwmLoadPluse) begin   
		if(P4096_Clear==1)  begin
			P4096_cnt1 <= 0; 
			P4096_cntsave <= P4096_cnt1;
		end
		else begin  
			P4096_cnt1 <= P4096_cnt1 + 1; 
		end
	end
end

  wire   [15:0] Dly_u8; //142
  wire   [15:0] Kr_b16; //143
  wire   [15:0] RRLmt_b12;  //144
  wire   [11:0] mid20_out1_out;
  wire   [11:0] mid20_out1_in;
  reg   [15:0] Fiber_mid20_out1_in;
  
  wire   [15:0] In_K_b12; 
  wire   [11:0] Udc_Ref2_b12; 
  URef_V1 URef_V1_inst (
	   .g_clk(clk25m), .Rst_n(rst_n & Start_1sOn),
	   .In_b16( {{4{	Idc [11]}},	Idc} ),  .In_K_b12(In_K_b12[11:0]),
	   .Ubtr_Ref_b12(), .Udc_Ref_b12(Udc_Ref_b12[11:0]),
	   .Mpy_out_b12( ),
	   .Ubtr_Ref2_b12(), .Udc_Ref2_b12(Udc_Ref2_b12[11:0])
    );
  
  wire Soft_on;
 wire [11:0] Carryb12Out;
  InvControlLoop3L_V40b InvControlLoop_V40b_Inst (
    .g_clk(clk25m), .Rst_n(rst_n & Start_1sOn),
	.Soft_on(Soft_on),
	.PwmLockA(PwmLockA), .PwmLockB(PwmLockB), .PwmLockC(PwmLockC), .Carryb12Out(Carryb12Out),
	.MaIn_b12_2(MaIn_b12_2), 
	.MbIn_b12_2(MbIn_b12_2),
	.McIn_b12_2(McIn_b12_2),
	.NewUn( 0 ),//
	.mid20_out1_out(mid20_out1_out),
    //.mid20_out1_in( (SettingSwitchCMD2[9]==1'b1) ? mid20_out1_in : Fiber_mid20_out1_in[11:0]),
    .mid20_out1_in( mid20_out1_out ),          
    .work( (StateCode==WORKING) ),
    .Dly_u8( (Dly_u8>255) ? 8'd255 : Dly_u8[7:0]  ), //253
    .Kr_b16( (Kr_b16>10000) ? 16'd10000 : Kr_b16 ), //0.3  1024*0.3
    .RRLmt_b12( (RRLmt_b12>300) ? 12'd300 : RRLmt_b12[11:0]), //RRLmt_b12=0.1
    .Q_b12(12'd973), //0.95
	 .m_sel(m_sel_r),  .LoadMode(2'b00), .PwmLoadPluse(PwmLoadPluse), 
      .IacSoftFre2_b16(IacSoftFre2Sel_b16),
      .Udc_b12(Udc),
      .Idc_b12(Idc),
      .Uuv_b12(Uab),
      .Uvw_b12(Ubc),
      .Uwu_b12(Uca),
      .Ia_b12(Ia),
      .Ib_b12(Ib),
      .Ic_b12(Ic),
      .Uab_RMS(Uab_RMS),
      .Ubc_RMS(Ubc_RMS),
      .Uca_RMS(Uca_RMS),
      .Ia_CT(Ia_CT_to_Ia),  //??
      .Ib_CT(Ib_CT_to_Ib),  //??
      .Ic_CT(Ic_CT_to_Ic),  //??
      .UdcPos_b12((SettingSwitchCMD2[8]&(~SettingSwitchCMD2[9]))  ? Fiber_UposGnd[11:0] : UposGnd ),
      .UdcNeg_b12((SettingSwitchCMD2[8]&(~SettingSwitchCMD2[9]))  ? Fiber_UnegGnd[11:0] : UnegGnd ),

      .Udc_Ref_b12(Udc_Ref2_b12[11:0]),
      .Um_ref_b12(Um_ref_b12[11:0]),
      .Unm_ref_b12(Unm_ref_b12[11:0]),
      //.P_ref_b16( P_ref_SetIn ),
      //.Q_ref_b16( Q_ref_SetIn ),
	  .P_ref_b16( SettingSwitchCMD1[14] ? P_ref_SetInCmp : P_ref_SetIn ),
      .Q_ref_b16( SettingSwitchCMD1[14] ? Q_ref_SetInCmp : Q_ref_SetIn ),
      .ILimit_b12(ILimit_In_b12),
      .C_co_b12((CtlLoop_On) ? (C_co_b12[11:0]) : (12'd0)),
      .R_co_b12(R_co_b12[11:0]),
      .Rco_Kp_b12(Rco_Kp_b12[11:0]),
      .Rco_Ki_b12(Rco_Ki_b12[11:0]),
      .Udc_Kp_b16(Udc_Kp_b12),
      .Udc_Ki_b16(Udc_Ki_b12),
      .Pdc2ac_co_b16(Pdc2ac_co_b16),
      .ACDischgPLimit_b16(ACDischgPLimit_b16),
      .ACChargePLimit_b16(ACChargePLimit_b16),

      .Idc_Kp_b16(Idc_Kp_b12),
      .Idc_Ki_b16(Idc_Ki_b12),
      .PdcChgLimit_b16(PdcChgLimit_b16),
      .PdcDischgLimit_b16(PdcDischgLimit_b16),
      .IdcChgLimit_b12(IdcChgLimit_b12[11:0]),
      .IdcDischgLimit_b12(IdcDischgLimit_b12[11:0]),

      .L_co_b13(L_co_b13[12:0]),
      .Uin_co_b13(Uin_co_b13[12:0]),
      .InLoopKp_b16(((|CMD1[7:6]) | State10[14]) ? IacKp_b16 : UacKp_b16),
      .InLoopKi_b16(((|CMD1[7:6]) | State10[14]) ? IacKi_b16 : UacKi_b16),

      .UacSoftFre_b16(UacSoftFre_b16),
      .IacSoftFre_b16(IacSoftFre2Sel_b16),
      .UdcSoftFre_b16(UdcSoftFre_b16),
      .Sinwt_b12(SyncEn_Inv ? SinwtSyc_b12 : Sinwt),
      .Coswt_b12(SyncEn_Inv ? CoswtSyc_b12 : Coswt),
      .nSinwt_b12(nSinwt),
      .nCoswt_b12(nCoswt),
      .CarryNum_b12( CarryNum_b12_Set[11:0] ),
      .DC_Kp_b12(DC_Kp_b12[11:0]),
      .DC_Ki_b12(DC_Ki_b12[11:0]),

      .DC_Cmp_a_b16(16'd0),
      .DC_Cmp_b_b16(16'd0),
      .DCCmp_UpLmt_b16(16'd25),
      .DCCmp_LowLmt_b16(-16'd25),
      .UqpAdd_UpLimit_b12(UqpAdd_UpLimit_b12[11:0]),
      .UqpAdd_LowLimit_b12(UqpAdd_LowLimit_b12[11:0]),
      .DeadTime_b8(8'd210),
      .BlockTime_b8(8'd55),
      .DeadTmCp_b12((Ia_RMS > Iac2DTFull_b12[11:0]) ? DeadTmCp_b12[11:0] : 0),

      .LVRT_WaveThr_b12(LVRT_WaveThr_b12[11:0]),
      .LVRT_DeltaOut_b12(LVRT_DeltaOut_b12[11:0]),
      .LVRT_DeltaIn_b12(LVRT_DeltaIn_b12[11:0]),
      .LVRT_En(0),
      .UOpenLoop_En(CMD1[5]  /*(SettingSwitchCMD2[2]==1'b1) ? 1'b0 : SettingSwitchCMD1[5]*/),
      .UdcLoop_En(CMD1[6]  /*(SettingSwitchCMD2[2]==1'b1) ? 1'b0 : SettingSwitchCMD1[6]*/),
      .ILoop_En(CMD1[7]  /*(SettingSwitchCMD2[2]==1'b1) ? State10[14] : SettingSwitchCMD1[7]*/),
      .Excite_On(Excite_On),
      .SycGen_En(SyncEn_Inv),
      .DY11_En(SettingSwitchCMD2[3]),
      .IDEL(StateCode == IDEL),
      //.CtlLoop_On(CtlLoop_On2),
	  .CtlLoop_On( CtlLoop_On2 ),
      .InsOV_Block(1'b0),
      //.Pulse_4096Hz(Pulse4096Hz),
       .Pulse_4096Hz(Pulse4096x4Hz),
      .Udq_Add_b12(Udq_Add_b12[11:0]),
      .w_Add_b16(w_Add_b16),

      .Rsnc_co_b16((|CMD1[7:6] == 1'b1) ? Rsnc_co_b16 : 16'd0),

      .FilterFre_b16(FilterFre_ub16),
	  //.UdcDelta2Uo_co_b12(  UdcDelta2Uo_co_b12[11:0] ),
      .UdcDelta2Uo_co_b12( UdcDelta2Uo_co_b12[11:0] ),
      .Pm2M0m_co_b12(Pm2M0m_co_b12[11:0]),
      .RCom_b12(RCom_b12[11:0]),
      .BlcCtl_En(SettingSwitchCMD2[6]),
      .CarryShift_b12(CarryShift_b12[11:0]),
      .N3thRestrain_En( SettingSwitchCMD2[7] ),
      /////////////////////////////////////////////////////////
      .First_VS(First_VS),
      .Iq_Filtered_b12(Iq_Filtered_b12),
      .Lvrting(Lvrting),
      .Zvrting(Zvrting),
	  .PWMsync( PWMsync ),
	   .CarrySync(  (SettingSwitchCMD2[8]==1'b1) ? ((SettingSwitchCMD2[9]==1'b1) ? CarrySync : 0) : Pulse50x1_Hz_Fiber2),
      //.CarrySync(  (SettingSwitchCMD2[9]==1'b0) ? CarrySync : PWMsync),
      .BelgiumVrt(  1'b0 /*SettingSwitchCMD1[10]*/),
      .IqRef_co_Lvrt_b12(IqRef_co_Lvrt_b12[11:0]  /*12'd256*/),
      .w_b18(w_b18),
      .Pulse50x16_Hz(Pulse50x16_Hz),
      .Pulse50x64_Hz1(Pulse50x64_Hz),
      .Pulse50x128_Hz1(Pulse50x128_Hz),
      .Pulse50x256_Hz1(Pulse50x256_Hz),
      .Pulse50x512_Hz1(Pulse50x512_Hz),
      .P_b24(P_b24),
      .Q_b24(Q_b24),
      .Pdc_b24(Pdc_b24),
      .PulseCarryx1_Hz(PulseCarryx1_Hz), .PulseCarryx16_Hz(PulseCarryx16_Hz),
      .PulseCarryx32_Hz(PulseCarryx32_Hz),
      .PulseCarryx64_Hz(PulseCarryx64_Hz),
      .PulseCarryx128_Hz(PulseCarryx128_Hz),

      .Up_Mod_b12(Ump_b12),  //manu add Up_Mod_b12
      .UmRef_Soft_b12(UmRef_Soft_b12),  //manu add UmRef_Soft_b12????
      .PWMA_1(PWMA_Temp_1),
      .PWMA_2(PWMA_Temp_2),
      .PWMA_3(PWMA_Temp_3),
      .PWMA_4(PWMA_Temp_4),
	  .PWMA_5(PWMA_Temp_5),
	  .PWMA_6(PWMA_Temp_6),
      .PWMB_1(PWMB_Temp_1),
      .PWMB_2(PWMB_Temp_2),
      .PWMB_3(PWMB_Temp_3),
      .PWMB_4(PWMB_Temp_4),
	  .PWMB_5(PWMB_Temp_5),
	  .PWMB_6(PWMB_Temp_6),
      .PWMC_1(PWMC_Temp_1),
      .PWMC_2(PWMC_Temp_2),
      .PWMC_3(PWMC_Temp_3),
      .PWMC_4(PWMC_Temp_4),
	  .PWMC_5(PWMC_Temp_5),
	  .PWMC_6(PWMC_Temp_6),

      .Udp_b12(Udp_b12),
      .Uqp_b12(Uqp_b12),
      .Udn_b12(Udn_b12),
      .Uqn_b12(Uqn_b12),
      .Idp_b12(Idp_b12),
      .Iqp_b12(Iqp_b12),
      .Idn_b12(Idn_b12),
      .Iqn_b12(Iqn_b12),

      .Udp_Flted_b12(Udp_Flted_b12),
      .Uqp_Flted_b12(Uqp_Flted_b12),
      .Udn_Flted_b12(Udn_Flted_b12),
      .Uqn_Flted_b12(Uqn_Flted_b12),
      .Idp_Flted_b12(Idp_Flted_b12),
      .Iqp_Flted_b12(Iqp_Flted_b12),
      .Idn_Flted_b12(Idn_Flted_b12),
      .Iqn_Flted_b12(Iqn_Flted_b12),
      .Udp_drop_b12(Udp_drop_b12),
      .Uqp_drop_b12(Uqp_drop_b12),
      .Udn_drop_b12(Udn_drop_b12),
      .Uqn_drop_b12(Uqn_drop_b12),
      .Udp_ref_in_b12(Udp_ref_in_b12),
      .Uqp_ref_in_b12(Uqp_ref_in_b12),
      .Udn_ref_in_b12(Udn_ref_in_b12),
      .Uqn_ref_in_b12(Uqn_ref_in_b12),
      .Idp_ref_in_b12(Idp_ref_in_b12),
      .Iqp_ref_in_b12(Iqp_ref_in_b12),
      .Idn_ref_in_b12(Idn_ref_in_b12),
      .Iqn_ref_in_b12(Iqn_ref_in_b12),
      .UdpVct_Flted_b12(UdpVct_Flted_b12),
      .UqpVct_Flted_b12(UqpVct_Flted_b12),
      .UdnVct_Flted_b12(UdnVct_Flted_b12),
      .UqnVct_Flted_b12(UqnVct_Flted_b12),
      .Rco_in_b12(Rco_in_b12),
      .Mdp_b12(Mdp_b12),
      .Mqp_b12(Mqp_b12),
      .Mdn_b12(Mdn_b12),
      .Mqn_b12(Mqn_b12),
      .Ma_b12(Ma_b12),
      .Mb_b12(Mb_b12),
      .Mc_b12(Mc_b12),
      .Idca_b12(Idca_b12),
      .Idcb_b12(Idcb_b12),
      .Delta_DCa_b12(Delta_DCa_b12),
      .Delta_DCb_b12(Delta_DCb_b12),
      .PIdp_cmp_b12(PIdp_cmp_b12),
      .PIqp_cmp_b12(PIqp_cmp_b12),
      .PIdn_cmp_b12(PIdn_cmp_b12),
      .PIqn_cmp_b12(PIqn_cmp_b12),
      .U0_b12(U0_b12),
      .UdcDelta_Temp_b12(UdcDelta_Temp_b12),
      .MaIn_b12(MaIn_b12),
      .MbIn_b12(MbIn_b12),
      .McIn_b12(McIn_b12),
      .MsvA_b12(MsvA_b12),
      .MsvB_b12(MsvB_b12),
      .MsvC_b12(MsvC_b12), 
.IcomOrgAll_b12(IcomOrgAll_b12),
				//============================Xibanya Xvrt =========================
		.Idn_ref2( Iqn_ref2 ), .Iqn_ref2( -Idn_ref2 ),  .Um_dq(Um_dq),  .Un_dq(Un_dq),  
		//.Idp_ref_in_b12_LvrtLock( SettingSwitchCMD1[3] ? Fiber_Idp_ref_b16[11:0] :(SettingSwitchCMD1[10] ? Idp_ref_in_b12_LvrtLock2 : Switch66_out1_out) ), //input Idpref
		.Idp_ref_in_b12_LvrtLock( CMD1[7] ? Idp_ref2Lmt : Switch66_out1_out ), //input Idpref
		.Switch66_out1_out( Switch66_out1_out ), //ouput Idp
		//.Iqp_ref_in_b12_LvrtLock(  SettingSwitchCMD1[3] ? Fiber_Iqp_ref_b16[11:0] :(SettingSwitchCMD1[10] ? Iqp_ref_in_b12_LvrtLock2 : Switch69_out1_out) ), //input Iqpref
		.Iqp_ref_in_b12_LvrtLock( CMD1[7] ? Iqp_ref2 : Switch69_out1_out ), //input Iqpref
		.Switch69_out1_out( Switch69_out1_out ), .OneDivUpnm_b24(OneDivUpnm_b24) //ouput Iqp
		//============================Xibanya Xvrt =========================	  
  );
wire [11:0] Idp_ref2Lmt;
wire [23:0] OneDivUpnm_b24;
IacLmt_VZ1 IacLmt_VZ1_inst (
           .PdisLmt_b16( ACDischgPLimit_b16 ), .PchgLmt_b16( ACChargePLimit_b16 ), .ILimit_b12( ILimit_In_b12 ), .OneDivUpnm_b24( OneDivUpnm_b24 ), 
           .Idpref_b12( Idp_ref2 ), .IdprefLmt_b12( Idp_ref2Lmt ), 
           .IdpUpLmt_b16(  ), .IdpLowLmt_b16(  )  );
	  
//====================================
///wire [11:0] Idref2set = SettingSwitchCMD1[3] ? Fiber_Idp_ref_b16[11:0] :(SettingSwitchCMD1[10] ? Idp_ref_in_b12_LvrtLock2 : Switch66_out1_out);
//wire [11:0] Iqref2set = SettingSwitchCMD1[3] ? Fiber_Iqp_ref_b16[11:0] :(SettingSwitchCMD1[10] ? Iqp_ref_in_b12_LvrtLock2 : Switch69_out1_out); 
  //PQ_MODE
  wire FiberIrefFlg = SettingSwitchCMD1[3]&SettingSwitchCMD2[8]&(~SettingSwitchCMD2[9]);
  wire [11:0] Idp_ref2 = (StateCode==WORKING) ? ( FiberIrefFlg ? Fiber_Idp_ref_b16[11:0] : (SettingSwitchCMD2[0] ? Idp_ref_in_b12_LvrtLock2 : Switch66_out1_out)) : 0;
  wire [11:0] Iqp_ref2 = (StateCode==WORKING) ? ( FiberIrefFlg ? Fiber_Iqp_ref_b16[11:0] : (SettingSwitchCMD2[0] ? Iqp_ref_in_b12_LvrtLock2 : Switch69_out1_out)) : 0;

reg PQDisPWMEn;
reg  [7:0] PQ_ZeroDelayCnt; //master ? (
always @(posedge clk25m) begin  
	if((Idp_ref2==12'd0) && (Iqp_ref2==12'd0)) begin 
	//if((P_ref_SetIn==16'd0) && (Q_ref_SetIn==16'd0)) begin 
		if(PQ_ZeroDelayCnt > 0) begin 
			PQ_ZeroDelayCnt <= Pulse50x1_Hz ? (PQ_ZeroDelayCnt - 1) : PQ_ZeroDelayCnt;
		end
		else begin
			//PQDisPWMEn   <= 1; //|SettingSwitchCMD1[10]
			//PQDisPWMEn   <= (SettingSwitchCMD1[10]) ? (~Hvrt2)&(~Lvrt2) : 1;
			PQDisPWMEn   <= (SettingSwitchCMD2[0]) ? (~Hvrt2)&(~Lvrt2) : 1;
		end
	end
	else begin
		PQ_ZeroDelayCnt <= 8'd150; //3s
		PQDisPWMEn      <= 0;
	end 
end 
wire PQ_ZeroBlock_r = (FiberIrefFlg) ? Fiber_PQ_ZeroBlock : ((CMD1[7:5]==3'b100) & (StateCode == WORKING) & PQDisPWMEn);
//assign CtlLoop_OnNoVSG = (StateCode==WORKING) & (Start_2sOn) & (~(PQDisPWMEn&SettingSwitchCMD1[8])) & PwmBlock;  //ADD ZJ 20220302
//assign CtlLoop_On2 = CtlLoop_On | (StateCode==EXCITE) | ((StateCode==PROWORK) & (StateLast1Code==EXCITE)); 
assign CtlLoop_On2 = (CtlLoop_On | (StateCode==EXCITE) | ((StateCode==PROWORK) & (StateLast1Code==EXCITE)))&(~State13[1]) & (~PQ_ZeroBlock_r) ;
  //==================================== 
  OffDly_V1 OffDly_V1_Inst (
      .g_clk    (clk25m),
      .Rst_n    (1'b1),            //rst_n & (~(StateCode==STOP)) & Start_1sOn 
      .IN       (CtlLoop_On2),
      .BlockTime(8'd25),           //1us
      .OUT      (CtlLoop_On2_Dly)
  );
//=========================================== OUT CHECK ========================================================  
wire [7:0] DeadCheckSet = 150; //4us
wire [7:0] TimeCheckSet = 25;  //1us  
//========= ERR1
wire ErrA1 = (PWMA1DErr|PWMA2DErr|PWMA3DErr|PWMA4DErr|PWMA5DErr|PWMA6DErr); 
wire ErrB1 = (PWMB1DErr|PWMB2DErr|PWMB3DErr|PWMB4DErr|PWMB5DErr|PWMB6DErr); 
wire ErrC1 = (PWMC1DErr|PWMC2DErr|PWMC3DErr|PWMC4DErr|PWMC5DErr|PWMC6DErr); 
wire ErrABC1 = ErrA1|ErrB1|ErrC1;
//========= ERR2
wire ErrA2 = (PWMA1OnErr|PWMA1OffErr|PWMA4OnErr|PWMA4OffErr);  
wire ErrB2 = (PWMB1OnErr|PWMB1OffErr|PWMB4OnErr|PWMB4OffErr);  
wire ErrC2 = (PWMC1OnErr|PWMC1OffErr|PWMC4OnErr|PWMC4OffErr);  
wire ErrABC2 = (ErrA2|ErrB2|ErrC2);  
//========= ERR3 ERR4
wire ErrABC3 = (PWMAin_Err|PWMBin_Err|PWMCin_Err);  
wire ErrABC4 = (PWMAOut_Err|PWMBOut_Err|PWMCOut_Err); 
//============================================================================================================
wire PWMA1out,PWMA2out,PWMA3out,PWMA4out,PWMA5out,PWMA6out;  
wire PWMA1OnErr,PWMA1OffErr,PWMA4OnErr,PWMA4OffErr, PWMA1DErr,PWMA2DErr,PWMA3DErr,PWMA4DErr,PWMA5DErr,PWMA6DErr,PWMAin_Err,PWMAOut_Err;	
//ANPC
 AnpcPwmErrChk PwmErrChk_INSTA( .g_clk( clk25m ), .Rst_n( Start_1sOn ), .PWMEn( CtlLoop_On2 & (~PwmLockA) ), 
 .TimeCheckSet(TimeCheckSet[7:0]), .DeadCheckSet(DeadCheckSet[7:0]),  .PWMin_Err(PWMAin_Err),  .PWMOut_Err(PWMAOut_Err), 
 .PWM1in(PWMA_Temp_1), .PWM2in(PWMA_Temp_2), .PWM3in(PWMA_Temp_3), .PWM4in(PWMA_Temp_4), .PWM5in(PWMA_Temp_5), .PWM6in(PWMA_Temp_6),
 .PWM1out(PWMA1out), .PWM2out(PWMA2out), .PWM3out(PWMA3out), .PWM4out(PWMA4out), .PWM5out(PWMA5out), .PWM6out(PWMA6out),  
 .PWM1_OnErr(PWMA1OnErr), .PWM1_OffErr(PWMA1OffErr), .PWM4_OnErr(PWMA4OnErr), .PWM4_OffErr(PWMA4OffErr),	
 .PWM1_DeadErr(PWMA1DErr),.PWM2_DeadErr(PWMA2DErr),.PWM3_DeadErr(PWMA3DErr),.PWM4_DeadErr(PWMA4DErr),.PWM5_DeadErr(PWMA5DErr),.PWM6_DeadErr(PWMA6DErr) ); 
wire PWMB1out,PWMB2out,PWMB3out,PWMB4out,PWMB5out,PWMB6out;  
wire PWMB1OnErr,PWMB1OffErr,PWMB4OnErr,PWMB4OffErr, PWMB1DErr,PWMB2DErr,PWMB3DErr,PWMB4DErr,PWMB5DErr,PWMB6DErr,PWMBin_Err,PWMBOut_Err;	
//ANPC
 AnpcPwmErrChk PwmErrChk_INSTB( .g_clk( clk25m ), .Rst_n( Start_1sOn ), .PWMEn( CtlLoop_On2 & (~PwmLockB)  ), 
 .TimeCheckSet(TimeCheckSet[7:0]), .DeadCheckSet(DeadCheckSet[7:0]),  .PWMin_Err(PWMBin_Err),  .PWMOut_Err(PWMBOut_Err), 
 .PWM1in(PWMB_Temp_1), .PWM2in(PWMB_Temp_2), .PWM3in(PWMB_Temp_3), .PWM4in(PWMB_Temp_4), .PWM5in(PWMB_Temp_5), .PWM6in(PWMB_Temp_6),
 .PWM1out(PWMB1out), .PWM2out(PWMB2out), .PWM3out(PWMB3out), .PWM4out(PWMB4out), .PWM5out(PWMB5out), .PWM6out(PWMB6out),  
 .PWM1_OnErr(PWMB1OnErr), .PWM1_OffErr(PWMB1OffErr), .PWM4_OnErr(PWMB4OnErr), .PWM4_OffErr(PWMB4OffErr),	
 .PWM1_DeadErr(PWMB1DErr),.PWM2_DeadErr(PWMB2DErr),.PWM3_DeadErr(PWMB3DErr),.PWM4_DeadErr(PWMB4DErr),.PWM5_DeadErr(PWMB5DErr),.PWM6_DeadErr(PWMB6DErr) ); 
 
wire PWMC1out,PWMC2out,PWMC3out,PWMC4out,PWMC5out,PWMC6out;  
wire PWMC1OnErr,PWMC1OffErr,PWMC4OnErr,PWMC4OffErr, PWMC1DErr,PWMC2DErr,PWMC3DErr,PWMC4DErr,PWMC5DErr,PWMC6DErr,PWMCin_Err,PWMCOut_Err;	
//ANPC
 AnpcPwmErrChk PwmErrChk_INSTC( .g_clk( clk25m ), .Rst_n( Start_1sOn ), .PWMEn( CtlLoop_On2 & (~PwmLockC)  ), 
 .TimeCheckSet(TimeCheckSet[7:0]), .DeadCheckSet(DeadCheckSet[7:0]),  .PWMin_Err(PWMCin_Err),  .PWMOut_Err(PWMCOut_Err), 
 .PWM1in(PWMC_Temp_1), .PWM2in(PWMC_Temp_2), .PWM3in(PWMC_Temp_3), .PWM4in(PWMC_Temp_4), .PWM5in(PWMC_Temp_5), .PWM6in(PWMC_Temp_6),
 .PWM1out(PWMC1out), .PWM2out(PWMC2out), .PWM3out(PWMC3out), .PWM4out(PWMC4out), .PWM5out(PWMC5out), .PWM6out(PWMC6out),  
 .PWM1_OnErr(PWMC1OnErr), .PWM1_OffErr(PWMC1OffErr), .PWM4_OnErr(PWMC4OnErr), .PWM4_OffErr(PWMC4OffErr),	
 .PWM1_DeadErr(PWMC1DErr),.PWM2_DeadErr(PWMC2DErr),.PWM3_DeadErr(PWMC3DErr),.PWM4_DeadErr(PWMC4DErr),.PWM5_DeadErr(PWMC5DErr),.PWM6_DeadErr(PWMC6DErr) ); 

  // assign PWMA_1 = PWMA_Temp_1 & CtlLoop_On2;  //(State10[10]==0) ? PWMA_Temp_1:PWMB_Temp_1;
  // assign PWMA_2 = PWMA_Temp_2 & CtlLoop_On2_Dly;  //(State10[10]==0) ? PWMA_Temp_2:PWMB_Temp_2;
  // assign PWMA_3 = PWMA_Temp_3 & CtlLoop_On2_Dly;  //(State10[10]==0) ? PWMA_Temp_3:PWMB_Temp_3;
  // assign PWMA_4 = PWMA_Temp_4 & CtlLoop_On2;  //(State10[10]==0) ? PWMA_Temp_4:PWMB_Temp_4; 
  assign PWMA_1 = (PhaseInv == 0) ? PWMA1out : PWMB1out; //PWMA_Temp_1
  assign PWMA_2 = (PhaseInv == 0) ? PWMA2out : PWMB2out; //PWMA_Temp_2
  assign PWMA_3 = (PhaseInv == 0) ? PWMA3out : PWMB3out; //PWMA_Temp_3
  assign PWMA_4 = (PhaseInv == 0) ? PWMA4out : PWMB4out; //PWMA_Temp_4 
  assign PWMA_5 = (PhaseInv == 0) ? PWMA5out : PWMB5out; //PWMA_Temp_5
  assign PWMA_6 = (PhaseInv == 0) ? PWMA6out : PWMB6out; //PWMA_Temp_6
  
  // assign PWMB_1 = PWMB_Temp_1 & CtlLoop_On2;  //(State10[10]==0) ? PWMB_Temp_1:PWMA_Temp_1;
  // assign PWMB_2 = PWMB_Temp_2 & CtlLoop_On2_Dly;  //(State10[10]==0) ? PWMB_Temp_2:PWMA_Temp_2;
  // assign PWMB_3 = PWMB_Temp_3 & CtlLoop_On2_Dly;  //(State10[10]==0) ? PWMB_Temp_3:PWMA_Temp_3;
  // assign PWMB_4 = PWMB_Temp_4 & CtlLoop_On2;  //(State10[10]==0) ? PWMB_Temp_4:PWMA_Temp_4; 
  assign PWMB_1 = (PhaseInv == 0) ? PWMB1out : PWMA1out; //PWMB_Temp_1
  assign PWMB_2 = (PhaseInv == 0) ? PWMB2out : PWMA2out; //PWMB_Temp_2
  assign PWMB_3 = (PhaseInv == 0) ? PWMB3out : PWMA2out; //PWMB_Temp_3
  assign PWMB_4 = (PhaseInv == 0) ? PWMB4out : PWMA3out; //PWMB_Temp_4
  assign PWMB_5 = (PhaseInv == 0) ? PWMB5out : PWMA4out; //PWMB_Temp_5
  assign PWMB_6 = (PhaseInv == 0) ? PWMB6out : PWMA5out; //PWMB_Temp_6
  
  // assign PWMC_1 = PWMC_Temp_1 & CtlLoop_On2;
  // assign PWMC_2 = PWMC_Temp_2 & CtlLoop_On2_Dly;
  // assign PWMC_3 = PWMC_Temp_3 & CtlLoop_On2_Dly;
  // assign PWMC_4 = PWMC_Temp_4 & CtlLoop_On2;
  assign PWMC_1 = PWMC1out;
  assign PWMC_2 = PWMC2out;
  assign PWMC_3 = PWMC3out;
  assign PWMC_4 = PWMC4out;
  assign PWMC_5 = PWMC5out;
  assign PWMC_6 = PWMC6out;



  assign IacSoftFre2Sel_b16 = Soft_Finished ? PacSoftFre_b16 : 16'd4 ;

 
//============================PLL================================ 
						
  wire [11:0] pllpluseSet;
  reg pll_pluse2;
  always @(posedge clk25m) begin//signal active 
 
     if(pllpluseSet==0) begin
		  pll_pluse2 <= Pulse50x1_Hz;
	  end 
	  else if(pllpluseSet==4) begin
		  pll_pluse2 <= Pulse50x16_Hz;
	  end
	  else if(pllpluseSet==5) begin//5ms
		  pll_pluse2 <= Pulse50x32_Hz; 
	  end
	  else if(pllpluseSet==6) begin
		  pll_pluse2 <= Pulse50x64_Hz;
	  end
	  else if(pllpluseSet==7) begin
		  pll_pluse2 <= Pulse50x128_Hz;
	  end
	  else if(pllpluseSet==8) begin
		  pll_pluse2 <= Pulse50x256_Hz;
	  end
	  else if(pllpluseSet==9) begin
		  pll_pluse2 <= Pulse50x512_Hz;
	  end
	  else if(pllpluseSet==10)  begin//20ms
		  pll_pluse2 <= Pulse50x1024_Hz;
	  end
	  else   begin//20ms
		  pll_pluse2 <= Pulse50x1024_Hz;
	  end  	
  end 	
  
  wire VolLoop_En2;
  wire vf_pll_en  = (~(CtlLoop_On&(~Excite_On))) & (~First_VS);//VF2 0
  wire pll_dis = (~(CMD1[6]|CMD1[7]|vf_pll_en)) | CMD1[5] | ((CMD1[7:6]!=0)&(StateCode==WORKING)&Zvrting);//zero lvrt pll_dis
  assign VolLoop_En2 = pll_dis;
  //assign VolLoop_En2 = ((~((~(1'b1 & (~Excite_On))) & (~First_VS) | State10[14] | CMD1[6])) & (~CMD2_2)) |  CMD1[5];
  //======================================================
  //`ifdef VSG_ENALBE	
  assign Wref_add_b18 = 18'd68719+{{2{w_Add_b16[15]}},w_Add_b16}; //!!!!!!!! 
//`endif
reg [11:0] PLL_Kp_b12Sel;
reg [11:0] PLL_Ki_b12Sel;  
reg [3:0]  PLL_STATE;   
always @(posedge clk25m) begin 
  if(PLL_STATE==4'd0) begin
		PLL_STATE <= (Zvrting == 1) ? 4'd1 : PLL_STATE; 
		PLL_Kp_b12Sel <= PLL_Kp_b12;
	    PLL_Ki_b12Sel <= PLL_Ki_b12;
  end
  else if(PLL_STATE==4'd1) begin 
		PLL_STATE <= (Zvrting == 0) ? 4'd2 : PLL_STATE; 
		PLL_Kp_b12Sel <= 12'd0;
		PLL_Ki_b12Sel <= 12'd0;
  end 
  else if(PLL_STATE==4'd2) begin 
		PLL_STATE <= ((PLL_Kp_b12Sel>PLL_Kp_b12)&&(PLL_Ki_b12Sel>PLL_Ki_b12)) ? 4'd0 : PLL_STATE;
		PLL_Kp_b12Sel <= ((PLL_Kp_b12Sel<PLL_Kp_b12)&(1)) ? (PLL_Kp_b12Sel + 12'd1) : PLL_Kp_b12Sel; 
		PLL_Ki_b12Sel <= ((PLL_Ki_b12Sel<PLL_Ki_b12)&(1)) ? (PLL_Ki_b12Sel + 12'd1) : PLL_Ki_b12Sel;   
  end 
  else  begin
		PLL_STATE <= 4'd0;
  end  
end	
  GridPll_V20 GridPll_V10_Inst (
  //GridPll_V23_3  GridPll_V10_Inst (
           .g_clk       	( clk25m         ),
           .Rst_n       	( rst_n & (~(StateCode==STOP)) & Start_1sOn         ),
           .Uuv_b12       	( Uab         ),
           .Uvw_b12       	( Ubc         ),
           .Uwu_b12       	( Uca         ),
           .Um_ref_b12     ( Um_ref_b12[11:0]       ),
           .Wref_add_b18   ( Wref_add_b18         ),
           .PLL_Kp_b12     ( PLL_Kp_b12Sel[11:0]         ),
           .PLL_Ki_b12     ( PLL_Ki_b12Sel[11:0]         ), 
			  .Zvrting        ( Zvrting & 0),
			  .PLL_Kdiff_b16  ( PLL_Kdiff_b16            ),
           .PLL_Kx_b16     ( PLL_Kx_b16            ),
           .PLL_Ky_b16     ( PLL_Ky_b16            ),
			  .Freq_Droop_b16 ( Freq_Droop_b16  ),        
			  .Um_Droop_b12   ( (CMD1[7:6]==0) ? Iq_Filtered_b12 : 0  ),   
           .Sinwt_b12      ( Sinwt         ),
           .Coswt_b12      ( Coswt         ),
           .DY11_En       	( SettingSwitchCMD2[3]         ),
           .Pulse_4096Hz   ( /*Pulse4096Hz*/ Pulse4096x4Hz        ),
           //.Simu_On, 
           //.VolLoop_En     ( (SettingSwitchCMD2[2]==1'b1) ? (~State10[14]) : VolLoop_En2   ),//??? 
			  .VolLoop_En     ( VolLoop_En2   ),//??? 
			  .wt_b13       	( wt_tmp_b13/*wt_b13 */        ),
           .w_b18       	( w_b18         ),
           .wt_b35       	( wt_b35         ),
           .Udp_b12       	( Udp_PLL_b12         ),
           .Uqp_b12       	( Uqp_PLL_b12         ),
           .Udn_b12       	( Udn_PLL_b12         ),
           .Uqn_b12       	( Uqn_PLL_b12         ),
           .Delta_w_b16    ( Delta_w_b16         ),
			  .dwdt_b16       ( dWdt_b16            ),
           .Pulse50x1_Hz   ( Pulse50x1_Hz         ),
           .Pulse50x16_Hz  ( Pulse50x16_Hz         ),
           .Pulse50x32_Hz  ( Pulse50x32_Hz         ),
           .Pulse50x64_Hz  ( Pulse50x64_Hz         ),
           .Pulse50x128_Hz ( Pulse50x128_Hz         ),
           .Pulse50x256_Hz ( Pulse50x256_Hz         ),
           .Pulse50x512_Hz ( Pulse50x512_Hz         ),
           .Pulse50x1024_Hz( Pulse50x1024_Hz         ), 
		   .Zvrt_PQ_Working((CMD1[7:6]!=0)&(StateCode==WORKING) & Zvrting ? 1 : 0)/*,  
			.Um_s12( UpFlt ), .PLLRcvPluse( (pllpluseSet==1) ? clk25m : pll_pluse2 ), 
            .SDQEn( 0 ),  .dw18Lmt_b18( {16'd5000,2'b00} ),
			.KOut_s12( KOut_s12[11:0] ), //.SettingParameter164 = 1843 0.9
            .Kin_s12( Kin_s12[11:0] ) ,  //.SettingParameter165 = 1741 0.85
			.EnNoPLL(  1 ),  .WtLoad( Lvrt2 & 0  ),  .WtLoadOffset( 0  ), .ERR( 0 ), .Flt( 1 ),
			.Switch3_out1( Switch3_out1) */
          );
//=================================== LOAD COMP=========================================
wire [11:0] Idp_C_b12,Iqp_C_b12,Idn_C_b12,Iqn_C_b12;
ABC2DQ_V10 ABC2DQ_V10_INST  ( .g_clk( clk25m ), .Rst_n( 1 ), .DY11_En(0), .Pulse50x256Hz( Pulse50x256_Hz ), 
           .Sinwt_b12( Sinwt ), .Coswt_b12( Coswt ), .nSinwt_b12( nSinwt ),  .nCoswt_b12( nCoswt ), 
           .Uuv_b12(  ), .Uvw_b12(  ), .Uwu_b12(  ), .Ia_b12(  ),  .Ib_b12(  ),  .Ic_b12(  ),
           //.Ia_CT_b12( Ia_CT_FltP32 ), .Ib_CT_b12( Ib_CT_FltP32 ), .Ic_CT_b12( Ic_CT_FltP32 ),
		   .Ia_CT_b12( Ia_CT_FltP32 ), .Ib_CT_b12( Ib_CT_FltP32 ), .Ic_CT_b12( Ic_CT_FltP32 ),
           .Mdp_b12(  ), .Mqp_b12(  ), .Mdn_b12(  ), .Mqn_b12(  ), 
           .Udp_b12(  ), .Uqp_b12(  ), .Udn_b12(  ), .Uqn_b12(  ), .Idp_b12(  ), .Iqp_b12(  ), .Idn_b12(  ), .Iqn_b12(  ),
           .Ma_b12(  ),  .Mb_b12(  ), .Mc_b12(  ),
           .Idp_C_b12( Idp_C_b12 ), .Iqp_C_b12( Iqp_C_b12 ), .Idn_C_b12( Idn_C_b12 ), .Iqn_C_b12( Iqn_C_b12 )  );
wire [23:0] Pload_b24,Qload_b24;
UI_PQ_V1 UI_PQ_V1_inst ( .g_clk( clk25m ), .Rst_n( 1 ),
           .Udp_b12( Udp_Flted_b12 ), .Uqp_b12(Uqp_Flted_b12), .Udn_b12( Udn_Flted_b12 ), .Uqn_b12( Uqn_Flted_b12 ),
           .Idp_b12( Idp_C_b12 ), .Iqp_b12( Iqp_C_b12 ), .Idn_b12( Idn_C_b12 ), .Iqn_b12( Iqn_C_b12 ),
           .P_b24( Pload_b24 ),  .Q_b24( Qload_b24 )  );
		   
wire [15:0] Pload_b16,Qload_b16;
AverFilterP128Ch4_V11 AverFilterP128Ch4_V11_Inst222 ( .g_clk( clk25m ), .Rst_n( 1 ),  .Pulse( Pulse50x128_Hz ),
      .Filter_In0( Pload_b24[22:7] ),  .Filter_In1( Qload_b24[22:7] ), .Filter_In2(  ), .Filter_In3(  ),
      .Filter_Out0( Pload_b16 ), .Filter_Out1( Qload_b16 ), .Filter_Out2(  ),  .Filter_Out3(  )  );
reg [15:0] P_LoadCmp,Q_LoadCmp;  
always @(posedge clk25m) begin
	if(SettingSwitchCMD2[8]) begin
		if(SettingSwitchCMD2[9]) begin 
			P_LoadCmp <= (RecvWORKING==1) ? {Pload_b16[15],Pload_b16[15:1]} : Pload_b16[15:0];
			Q_LoadCmp <= (RecvWORKING==1) ? {Qload_b16[15],Qload_b16[15:1]} : Qload_b16[15:0];
		end else begin
			P_LoadCmp <= (Fiber_WORKING==1) ? {Fiber_Pload_b16[15],Fiber_Pload_b16[15:1]} : Fiber_Pload_b16[15:0];
			Q_LoadCmp <= (Fiber_WORKING==1) ? {Fiber_Qload_b16[15],Fiber_Qload_b16[15:1]} : Fiber_Qload_b16[15:0];
		end
	end else begin
		P_LoadCmp = 0;
		Q_LoadCmp = 0;
	end
end
wire [15:0] P_ref_SetInCmp,Q_ref_SetInCmp; 
// AddSub_b16_V1 AddSub_b16_V1_inst222  (
           // .AddA_b16( P_ref_SetIn ), .AddB_b16( P_LoadCmp ), .Add_b16( P_ref_SetInCmp ), 
           // .SubA_b16( Q_ref_SetIn ), .SubB_b16( -Q_LoadCmp ), .Sub_b16( Q_ref_SetInCmp ) ); 
	AddSub_b16_V1 AddSub_b16_V1_inst222  (
           .AddA_b16( P_ref_SetIn ), .AddB_b16( -P_LoadCmp ), .Add_b16( P_ref_SetInCmp ), 
           .SubA_b16( Q_ref_SetIn ), .SubB_b16( Q_LoadCmp ), .Sub_b16( Q_ref_SetInCmp ) ); 
//=================================== LOAD COMP END =========================================
  wire [15:0] Qlmt_b16;
  
//--------------------调频调压惯量-----------------///    
  wire [17:0] dwIn_s18; 
  wire [17:0] dwOut_s18;
  
  //====================================================  
/*wire [15:0] FWSel; //8s  
assign FWSel = SettingParameter[169];
wire FWPulse = (FWSel==16'd0) ? Pulse50x1024_Hz : ((FWSel==16'd1) ? Pulse50x512_Hz :  Pulse50x256_Hz);
  AverFilter1024P_b18_V1 AverFilter1024P_b18_V1_inst (  //20ms
      .g_clk(clk25m), .Rst_n( rst_n ), .Pulse( FWPulse ),
      .Filter_In0_b18( dwOut_s18  ), .Filter_Out0_b18( dwIn_s18 )
  );*/
    //====================================================  
  reg [15:0] divcnt1;  // 
  wire [15:0] FWSel2,FWSel; 
  wire [15:0] FWSel2 = (FWSel < 30) ? 30 : ((FWSel > 3052) ? 3052 : FWSel); //20ms~1000ms 滤波  
  reg        pluse1;  //500K/
  always @(posedge clk25m) begin  
		divcnt1 <= (divcnt1<FWSel2) ? (divcnt1+1) : 0;
		pluse1  <= (divcnt1<FWSel2) ? 0 : 1;   
  end
wire signed [17:0] wIn_s18; 
  AverFilter8192P_b18_V1 AverFilter8192P_b18_V1_inst2 (
      .g_clk(clk25m), .Rst_n( 1 ),  .Pulse( pluse1 ),//xw  8*0.02=160ms
      .Filter_In0_b18(w_b18[17:0]),  .Filter_Out0_b18( wIn_s18 )
  );  
  //=======================
  reg  signed [15:0] out_s16,dWS1in_s16;
  sub_18to16 sub_18to16_inst1( .IN1_s18(wIn_s18_r0), .IN2_s18(wIn_s18_r1), .out_s16(out_s16) );
  wire  [15:0] dWS1out_s16,dWoutAbs_s16,dwOut_s16;
  reg  signed [15:0] dWoutAbs_s16_r1,dWoutAbs_s16_r2,dWoutAbs_s16_r3,dWoutAbs_s16_r4,dwLock_s16,dWoutAbs_s16_lock; //8s 
  reg  signed [15:0] InrState; //8s  
  reg  signed [17:0] wIn_s18_r1,wIn_s18_r0;
  always @(posedge clk25m) begin
		if(Pulse50x1_Hz) begin 
			wIn_s18_r1 <= wIn_s18_r0; 
			wIn_s18_r0 <= wIn_s18;  
			dWoutAbs_s16_r4 <= dWoutAbs_s16_r3;  
			dWoutAbs_s16_r3 <= dWoutAbs_s16_r2;  
			dWoutAbs_s16_r2 <= dWoutAbs_s16_r1;
			dWoutAbs_s16_r1 <= dWoutAbs_s16; 
		end 
		dWS1in_s16 <= out_s16; 
		
		if(InrState == 0) begin  
			InrState   <= (dWoutAbs_s16 > 7) ? 100 : 0;  
			dwLock_s16 <= 0;
		end
		else if(InrState == 100) begin  
			InrState   <= (dWoutAbs_s16 > 7) ? 200 : 0; 
			dwLock_s16 <= (dWoutAbs_s16 > 7) ?  dwOut_s16  : 0; 
			dWoutAbs_s16_lock <= dWoutAbs_s16;
		end	 
		else if(InrState == 200) begin  
			InrState <= ((dWoutAbs_s16_r4<7)&&(dWoutAbs_s16_r3<7)&&(dWoutAbs_s16_r2<7)&&(dWoutAbs_s16_r1<7)&&(dWoutAbs_s16<7) ) ? 0 : 200; 
			if(dWoutAbs_s16>dWoutAbs_s16_lock) begin //锁存�?大的�?,效果不好
				dwLock_s16 <= dwOut_s16;
				dWoutAbs_s16_lock <= dWoutAbs_s16;
			end
		end
		else begin 
			InrState = 0; 
			dwLock_s16 <= 0;
		end	
	end
	
  //fPuQ_VZ2T fPuQ_VZ2T_INST
  fPuQ_VZ5T fPuQ_VZ5T_INST
          ( 
		   .dWS1out_s16( dWS1out_s16 ), .dWS1in_s16( dWS1out_s16 ),
		   .dWout_s16( dwOut_s16 ), .dWin_s16( dwOut_s16 ), .dWoutAbs_s16( dWoutAbs_s16 ), .dWDead_s16(), .dW2_s16(dW2_s16),  
		  
           .g_clk( clk25m ),  .Rst_n( rst_n & (~(StateCode==STOP)) & Start_1sOn ), .PluseW( Pulse50x1_Hz ), .Work( StateCode == WORKING ),  
           .Um_ref_b12(ULine_ref_b12), //param@203
		   .W0_s16( Wref_add_b18[17:2] ), .InrfdwSel( 1 ), //Fix config  
           .W_s18( /* wIn_s18 */w_b18[17:0] ), .UrmsMax_b12(Uac_Max), .UrmsMin_b12(Uac_Min), //INPUT 
           .PrefIn_s16( P_ref_b16 ), .QrefIn_s16( Q_ref_b16 ), //INPUT
			.PacdisLmt_s16( ACDischgPLimit_b16 ), .PacChgLmt_s16( ACChargePLimit_b16 ), //Fix set param@29 & 30 
			  //============F-P_1<nouse>============= 
           .Fdb1_s16( fast_Ffr_db_b16 ), //param@186
           .Kf1_s16( 0/* SettingSwitchCMD2[13] ? fast_Kf_P_inv_b16 : 0 */), //param@183 
           .PDisLmt1_s16( fast_VSGPLimit_b16 ), .PChgLmt1_s16( fast_VSGQLimit_b16 ),//param@180/181 fast_VSGQLimit_b16 use for chg
			  //============F-P_2<main>=============
           .Fdb2_s16( slow_Ffr_db_b16 ), //param@213
           .Kf2_s16( SettingSwitchCMD2[13] ? slow_Kf_P_inv_b16 : 0 ), //param@212
           .PDisLmt2_s16( slow_VSGPLimit_b16 ), .PChgLmt2_s16( slow_VSGQLimit_b16 ),  //param@190/191 slow_VSGQLimit_b16 use for chg
			  //============inr=============
           .Inrdb_s16( Inr_db_b16 ), //param@210
           .Kinr_s16( SettingSwitchCMD2[11] ? fast_Inr_K_b16 : 0 ), //param@209
           .PDisLmtInr_s16( ACDischgPLimit_b16 ), .PChgLmtInr_s16( ACChargePLimit_b16 ), //param@29/30  
		   
			  //============U-Q=============   
			.Udb_s12( Fvr_db_b12 ), //param@218
           .Kv_s16( SettingSwitchCMD2[12] ? slow_Kv_Q_inv_b16 : 0 ),  //param@217
           //.Qlmt_s16( (ACDischgPLimit_b16 < (-ACChargePLimit_b16)) ? ACDischgPLimit_b16 : (-ACChargePLimit_b16)), //param@29/30
		   .UQlmt_s16( Qlmt_b16 ),
			  //============================
           .P_ref_s16( Pref_sum_b16 ), .Q_ref_s16( Qref_sum_b16 ), //out 
           .dP1_s16( fast_dP_Ffr_b16 ), .dP2_s16( slow_dP_Ffr_b16 ), .dPinr_s16( dP_Inertia_b16 ),//debug  
           .dQ_s16( dQ_Fvr_b16 )
          ); 
	//================================================

  PluseV1 PluseV1_Inst1 (
      .g_clk (clk25m),
      .Rst_n (1'b1),
      .In_u24({4'd0, slow_pluse_b16, 4'd0}),
      .Pluse (slow_pluse_out)
  );

  PluseV1 PluseV1_Inst2 (
      .g_clk (clk25m),
      .Rst_n (1'b1),
      .In_u24({4'd0, fast_pluse_b16, 4'd0}),
      .Pluse (fast_pluse_out)
  );
  
//--------------------频率适应�?-----------------///

reg        XvrtDelayFlg;
reg [15:0] DelayCnt;   
reg        FreqDelayFlg;   
reg [1:0]  EntryState;   
always @(posedge clk25m) begin
	if(EntryState == 2'd0) begin
		if( Hvrt2 | Lvrt2 ) begin  
			DelayCnt = 16'd12000; //3s
			EntryState <= 2'd1;
		end 
		else if( FreqHigFlg | FreqLowFlg ) begin  
			DelayCnt = 16'd12000; //3s
			EntryState <= 2'd2;
		end 
		XvrtDelayFlg <= 0;
		FreqDelayFlg <= 0;
	end
	else if(EntryState == 2'd1) begin //xvrt
		XvrtDelayFlg <= 1; 
		if( (~Hvrt2) & (~Lvrt2) ) begin 
			if(DelayCnt > 16'd0) begin
				DelayCnt <= Pulse4096Hz ? (DelayCnt-1) : DelayCnt;
			end
			else begin
				EntryState <= 2'd0;
			end
		end 
	end
	else if(EntryState == 2'd2) begin //freq
		FreqDelayFlg <= 1; 
		if( (~FreqHigFlg) & (~FreqLowFlg) ) begin  
			if(DelayCnt > 16'd0) begin
				DelayCnt <= Pulse4096Hz ? (DelayCnt-1) : DelayCnt;
			end
			else begin
				EntryState <= 2'd0;
			end
		end 
	end
	else begin //freq
		EntryState <= 2'd0;
	end
end

  FreqActivePower_VZ5 FreqActivePower_VZ1_insts (
      .g_clk(clk25m),
      .Rst_n(rst_n),
      .w_b16(XvrtDelayFlg ? 16'd17179 : wIn_s18[17:2]),  //17180
      .Pulse_4096Hz(Pulse4096Hz),
      .time_b16(time_b16),  ///参数�?????
      .Freq_Hig_b16(Freq_Hig_b16  /*16'd17249*/),  //17180*50.2/50  固定�?????
      .Freq_HigRly_b16(Freq_HigRly_b16),  //17180*50.1/50  参数�?????
      .Freq_Low_b16(Freq_Low_b16  /*16'd17008*/),  //17180*49.5/50  固定�?????
      .Freq_LowRly_b16(Freq_LowRly_b16),  //17180*49.6/50  参数�?????
      .Hig_ActivePower_b16(-16'd200),  //7452=50K  200/6667*1750
      .Low_ActivePower_b16(16'd200),  //7452=50K 
      .Pref_b16(Pref_sum_b16),
      .FPref_b16(FW_P_ref_b16),  //FW_P_ref_b16替换有功给定�????? 
      .FreqHigFlg(FreqHigFlg),
      .FreqLowFlg(FreqLowFlg)
  );


  AverFilter8192P_b18_V1 AverFilter8192P_b18_V1_inst (
      .g_clk(clk25m),
      .Rst_n(rst_n),
      .Filter_In0_b18(w_b18[17:0]),
      //.Pulse(Pulse50x128_Hz),
	  .Pulse(Pulse50x1024_Hz),//xw
      .Filter_Out0_b18(w_Flted2)
  );
  wire [17:0] wb18_2;
  assign wb18_2={ w_b18 + {{2{	w_offset_b16[15]}},w_offset_b16}};//[1:0]=2'b00;
  assign wb18_Flted = {w_Flted2 + {{2{w_offset_b16[15]}}, w_offset_b16}}; //SettingParameter[176];
  
  
  assign PulseWdelaySel = (w_delaySel_b16 == 16'd0) ? Pulse50x1024_Hz : PulseWdelaySel_next1;  //0.2
  assign PulseWdelaySel_next1 = (w_delaySel_b16==16'd1) ? Pulse50x512_Hz :  PulseWdelaySel_next2; //0.32
  assign PulseWdelaySel_next2 = (w_delaySel_b16==16'd2) ? Pulse50x256_Hz :  Pulse50x128_Hz; //0.64 //1.28 
  PrdDelay256V2_0 PrdDelay256V2_0_inst (
      .g_clk(clk25m),
      .Rst_n(rst_n),
      .In_b18(wb18_Flted),
      .Pulse50x256_Hz(PulseWdelaySel),
      .Dly_u(8'd255),
      .Out_b18(),
      .OutDly_b12(wb18_FltedOut2)
  );

  //-------------------------------------///	
  wire [15:0] P_ref_SetIn;
  wire [15:0] Q_ref_SetIn;  
  assign P_ref_SetIn = SettingSwitchCMD1[13] ? FW_P_ref_b16 : Pref_sum_b16;//SettingSwitchCMD2[2] ?  (SettingSwitchCMD1[13] ? FW_P_ref_b16 : Pref_sum_b16) : P_ref_b16;
  
  //assign Q_ref_SetIn = SettingSwitchCMD2[2] ?  Qref_sum_b16 : Q_ref_b16;
	assign Q_ref_SetIn = QcRef_b16;//SettingSwitchCMD2[2] ?  Qref_sum_b16 : QcRef_b16;
  
  AverFilterP128Ch4_V11 AverFilterP128Ch4_V11_Inst (
      .g_clk(clk25m),
      .Rst_n(rst_n),
      .Pulse(Pulse50x128_Hz),
      .Filter_In0(P_b24[22:7]),
      .Filter_In1(Q_b24[22:7]),
      .Filter_In2(Pdc_b24[22:7]),
      .Filter_In3({{4{Idc[11]}}, Idc}),
      .Filter_Out0(P_FltP128),
      .Filter_Out1( Q_FltP128_t ),//Q_FltP128),
      .Filter_Out2(Pdc_FltP128),
      .Filter_Out3(Idc_FltP128)
  );
//+++++++++++++++++++++++++++++++++++++
  wire [15:0] QcRef_b16;
  wire [15:0] Q_FltP128_t; 
  AddSub_b16_V1 AddSub_b16_V1_inst //Comp
          (
           .AddA_b16( -Qref_sum_b16   ),
           .AddB_b16( C_co_b12 ),//136 <L>
			.Add_b16( QcRef_b16 ), //332 = 136
           .SubA_b16( Q_FltP128_t ),//333 = -136
           .SubB_b16( -C_co_b12 ), //-136
           .Sub_b16( Q_FltP128 ) //268 = 137  
          );

  NegSeqPhaseAdj_V11 NegSeqPhaseAdj_V10_Inst (
      .PhaseAddnSeq_ub13	(PhaseAddnSeq_Arm_ub13/*{PhaseAddnSeqSoft_ub12[10:0],PhaseAddnSeq_ub13[1:0]}*/),
      .w_co_b12(12'd0  /*w_co_b12[11:0]*/),
      .wt_b13(SyncEn_Inv ? wt_sycgen_b13 : wt_b13),
      .Inq_Filtered_b12(Idn_Flted_b12),
      .nwt_b13(nwt_b13)
  );



  SoftStartChn1b12_V10 SoftStartChn1b12_V10_Inst (
      .g_clk(clk25m),
      .Rst_n(Rst_n),
      .Init_b12(12'd0),
      .Ref_b12({1'b0, PhaseAddnSeq_ub13[12:2]}),
      .SoftFre_b16(UdcSoftFre_b16),
      .Soft_On(CtlLoop_On),
      .Ref_Sft_b12(PhaseAddnSeqSoft_ub12)
  );

  IsLandDetect_V10_block IsLandDetect_V10_block_Inst (
      .g_clk(clk25m),
      .Rst_n(Rst_n),
      .wt(wt_tmp_b13),
      .w_b18(w_b18),
      .Fre2PhaseAdd_Co_b16(Fre2PhaseAdd_Co_b16),
      .Pulse(Pulse50x128_Hz),
      .Iland_En((State10[14] | CMD1[6]) & SettingSwitchCMD2[14]),
      .wt_Island_b13(wt_b13)
  );


  SinTab8192 SinTab8192_Inst (
      .g_clk(clk25m),
      .Rst_n(rst_n),
      .wt(  /*wt*/ wt_b13),
      .Sinwt(Sinwt),
      .Coswt(Coswt),
      .SinA(SinA),
      .SinB(SinB),
      .SinC(SinC)
  );


  SinTab8192 SinTab8192_Inst2 (
      .g_clk(clk25m),
      .Rst_n(rst_n),
      .wt(nwt_b13),
      .Sinwt(nSinwt),
      .Coswt(nCoswt),
      .SinA(),
      .SinB(),
      .SinC()
  );

  SinTab8192 SinTab8192_Inst3 (
      .g_clk(clk25m),
      .Rst_n(rst_n),
      .wt(wt_sycgen_b13),
      .Sinwt(SinwtSyc_b12),
      .Coswt(CoswtSyc_b12),
      .SinA(),
      .SinB(),
      .SinC()
  );
  
  //====================================== NEW 2024 XVRT ====================================   
  wire [15:0] KOut_s12, Kin_s12; 
  wire [11:0] Um_dq, Un_dq;//, Udn_b12, Uqn_b12; 
  wire [11:0] UpFlt, UnFlt, UdnFlt, UqnFlt;

  AverFilterP128Ch4_V10 AverFilterP128Ch4_V10_inst5ms_1 //5ms  FIFO=128*4
          (
           .g_clk  ( clk25m  ), .Rst_n  ( 1'b1 ), .Pulse  ( Um_Pulse ),
           .Filter_In0(  Um_dq   ), .Filter_In1(  Un_dq ),
           .Filter_In2(  Udn_b12 ), .Filter_In3(  Uqn_b12 ), 
           .Filter_Out0( UpFlt  ),  .Filter_Out1( UnFlt ),
           .Filter_Out2( UdnFlt ),  .Filter_Out3( UqnFlt )
          );

  wire [15:0] UmpluseSet;  
  reg Um_Pulse; 
  always @(posedge clk25m) begin//signal active  
	  if(UmpluseSet==0) begin
		  Um_Pulse <= Pulse50x1024_Hz; //2.5ms 
	  end
	  else if(UmpluseSet==1) begin
		  Um_Pulse <= Pulse50x512_Hz; // 5ms 
	  end
	  else if(UmpluseSet==2) begin
		  Um_Pulse <= Pulse50x256_Hz; // 10ms 
	  end
	  else if(UmpluseSet==3) begin // 20ms
		  Um_Pulse <= Pulse50x128_Hz; 
	  end 
	  else if(UmpluseSet==4) begin // 40ms
		  Um_Pulse <= Pulse50x64_Hz; 
	  end 
	  else if(UmpluseSet==5) begin // 80ms
		  Um_Pulse <= Pulse50x32_Hz; 
	  end 
	  else begin
		  Um_Pulse <= Pulse50x256_Hz; // 80ms
	  end
  end

//wire [11:0] IdpIn_s12,IqpIn_s12,Idp_refOut_s12,Iqp_refOut_s12; 
//wire [15:0] SetExitTime; //setting XX 
  reg  Hvrt2,Lvrt2; 
  reg [3:0]  state; 
  reg [11:0]  LVRTSTATE2;
  reg [15:0] LvrtDelay;   
  always @(posedge clk25m) begin
	  if( StateCode == WORKING ) begin
		  if( state == 4'd0 ) begin 
			  state     <= SettingSwitchCMD2[0] ? (HvrtFlg ? 4'd1 : (LvrtFlg ? 4'd11 : state)) : state;  
			  LvrtDelay <= 16'd0;
			  Hvrt2     <= 0;
			  Lvrt2     <= 0;
			  LVRTSTATE2 <= 00;
		  end
		  else if( state == 4'd1 ) begin //%HVRT�?�?100ms�? 
			  if(LvrtDelay < LvrtCntSet1) begin
				  LvrtDelay <= Pulse4096Hz ? (LvrtDelay + 16'd1) : LvrtDelay; 
			  end
			  else begin
				  state <= 4'd2;
			  end  
			  Hvrt2     <= 1;
			  Lvrt2     <= 0;
			  LVRTSTATE2 <= 100;
		  end
		  else if(state == 4'd2) begin    
			  if(HvrtFlg == 1'b0) begin  //卡住  540
				  state <= 4'd3;
			  end  
			  LvrtDelay <= 16'd0;
			  Hvrt2     <= 1;
			  Lvrt2     <= 0;
			  LVRTSTATE2 <= 200;
		  end
		  else if( state == 4'd11 ) begin //%LVRT�?�?100ms�? 
			  if(LvrtDelay < LvrtCntSet1) begin
				  LvrtDelay <= Pulse4096Hz ? (LvrtDelay + 16'd1) : LvrtDelay; 
			  end
			  else begin
				  state <= 4'd12;
			  end  
			  Hvrt2     <= 0;
			  Lvrt2     <= 1;
			  LVRTSTATE2 <= 1100;
		  end 
		  else if(state == 4'd12) begin    
			  if(LvrtFlg == 1'b0) begin
				  state <= 4'd3;
			  end  
			  LvrtDelay <= 16'd0;
			  Hvrt2     <= 0;
			  Lvrt2     <= 1;
			  LVRTSTATE2 <= 1200;
		  end
		  else if(state == 4'd3) begin//%�?出，稳定�?200ms内不能重新进�? 
			  if(LvrtDelay < LvrtCntSet3) begin
				  LvrtDelay <= Pulse4096Hz ? (LvrtDelay+16'd1) : LvrtDelay;  
			  end
			  else begin
				  state <= 4'd0;
			  end
			  Hvrt2     <= 0;
			  Lvrt2     <= 0;	
			  LVRTSTATE2 <= 300;
		  end
	  end
	  else begin
		  Hvrt2     <= 0;
		  Lvrt2     <= 0;	
		  state     <= 4'd0;
		  LVRTSTATE2 <= 0;
	  end
  end 
  wire [15:0] IdpImt_s12;//SettingParameter197
  wire [15:0] Kn_s16_arm;
//wire [15:0] I1_limU_s12; //setting  198XX
//wire [15:0] I1_limL_s12; //setting  199XX
  wire [15:0] Kp_s16 = ((StateCode == WORKING) & (Hvrt2|Lvrt2) & SettingSwitchCMD2[0]) ? IqRef_co_Lvrt_b12 : 0; //setting 87  
  wire [15:0] Kn_s16 = ((StateCode == WORKING) & Lvrt2 & SettingSwitchCMD2[0]) ? Kn_s16_arm : 0;// = 0; //setting 168 
  wire [11:0] Switch66_out1_out;
  wire [11:0] Switch69_out1_out; 
  wire [11:0] Idp_ref_in_b12_LvrtLock2;
  wire [11:0] Iqp_ref_in_b12_LvrtLock2;
  wire [11:0] Idn_ref2;
  wire [11:0] Iqn_ref2;
  wire [15:0] K_Uac_OverN_s16;//setting 198
  wire [15:0] K_Iac_OverN_s16;//setting 199
  wire [11:0] DeltaU_b12;
  wire HvrtFlg_t,LvrtFlg_t;
  wire HvrtFlg =  HvrtFlg_t & (~FreqDelayFlg);
  wire LvrtFlg =  LvrtFlg_t & (~FreqDelayFlg);
  

//--------------------高低�?-----------------///
wire  [11:0] I_lim_s12 = IlimitX3en ? ILimit_In_b12[11:0] : Ilimit1p08; 
  XvrtIq_VZ6T LvrtIq_VZ6T_inst
          (
           .g_clk( clk25m ), .Rst_n( rst_n & (~(StateCode==STOP)) & Start_1sOn ), .Work( (StateCode == WORKING)&SettingSwitchCMD2[0] ),  
           .ILmt_s12( ILimit_In_b12[11:0] ), .IdpImt_s12( ILimit_In_b12[11:0] ), .QFisrt_u1( 0 ), 
			 // .NoLockEn( 0 ), .CalcSel( 0 ),  //0=DeadMode
			   //.Umref_s12( Um_ref_b12[11:0] ),
			  .UpNoflt_s12( FreqDelayFlg ? (Um_ref_b12[11:0]) : UpFlt ), //xw Um_dq加滤�?
			  .UpFlt_s12(  FreqDelayFlg ? (Um_ref_b12[11:0]) : UpFlt ), //xw Um_dq加滤�?
			  .Kp_s16( Kp_s16 ), .Kn_s16( Kn_s16 ),
			  .Ip_limU_s12( I_lim_s12[11:0] ), .Ip_limL_s12( -I_lim_s12[11:0] ),
			  .Udn_s12( UdnFlt ), .Uqn_s12( UqnFlt ), 
			  .In_limU_s12( I_lim_s12[11:0] ), .In_limL_s12( -I_lim_s12[11:0] ), 
			  
           .IdpIn_s12( Switch66_out1_out ), .IqpIn_s12( Switch69_out1_out ), .Pref_s16( P_ref_b16 ), 
			  .LvrtExit_s12( LVRT_DeltaOut_b12[11:0] ), //SettingParameter83  562
			  .LvrtEntry_s12( LVRT_DeltaIn_b12[11:0] ), //SettingParameter84   482
           .HvrtExit_s12( UmRefLow_b12[11:0]  ),  //SettingParameter96   508
			  .HvrtEntry_s12( UmRefUp_b12[11:0]  ), //SettingParameter97   598
			  .HvrtFlg( HvrtFlg_t ), 
			  .LvrtFlg( LvrtFlg_t ), //LvrtFlg
			  .Hvrt2Q( Hvrt2 ),   //FIFO8_Data4 0
			  .Lvrt2Q( Lvrt2 ),   //FIFO8_Data5 0
			  .Xvrt2D( Hvrt2 | Lvrt2 ), //Lvrt2==1
			  //======= 
           .IdpRes_s12(  ), .IqpRes_s12(  ), .DeltaU_s12( DeltaU_b12 ), 
           //.Idp_ref_s12( Idp_ref_in_b12_LvrtLock2 ), //WAV0.4
           //.Iqp_ref_s12( Iqp_ref_in_b12_LvrtLock2 ), //WAV2.2 
           //.Idn_ref_s12(  Idn_ref2), .Iqn_ref_s12( Iqn_ref2 ) 
		   .Idp_ref_lmt_s12( Idp_ref_in_b12_LvrtLock2 ), .Iqp_ref_lmt_s12( Iqp_ref_in_b12_LvrtLock2 ), //WAV0.4
		   .Idn_ref_lmt_s12(  Idn_ref2), .Iqn_ref_lmt_s12( Iqn_ref2 ) 
		             ); 
//=================Xn_Over Protect====================
  wire Uac_OverN_flg;
  wire Iac_OverN_flg;
  wire Uac_OverN_flg_t;
  wire Iac_OverN_flg_t;
  wire [11:0] Ip_b12;
  wire [11:0] In_b12;
  
  assign Uac_OverN_flg = (UpFlt>12'd100) ? Uac_OverN_flg_t : 0 ;
  assign Iac_OverN_flg = ((|CMD1[7:6]) & (Ip_b12>12'd100)) ? Iac_OverN_flg_t : 0 ;
  //wire [15:0] UproK_b12;
  //wire [15:0] IproK_b12; ?
  NegPro_V2 NegPro_V2_inst
          (
		   .g_clk(clk25m),
           .Rst_n( rst_n & (~(StateCode==STOP)) & Start_1sOn ),
           .UproK_s12( K_Uac_OverN_s16[11:0] ),
           .IproK_s12( K_Iac_OverN_s16[11:0] ),
           .Up_s12( UpFlt ),
           .Un_s12( UnFlt ),
           .Idp_s12( Idp_Flted_b12 ),
           .Iqp_s12( Iqp_Flted_b12 ),
           .Idn_s12( Idn_Flted_b12 ),
           .Iqn_s12( Iqn_Flted_b12 ),
           .Pulse_4096Hz( Pulse4096Hz ),
           .Time_b16( 5000 ),
           .UnFault( Uac_OverN_flg_t ),
           .InFault1( Iac_OverN_flg_t ),
		   .Ip_s12(Ip_b12),
		   .In_s12(In_b12)
		   );

//================================================================================== //
  wire PWMsync;
  reg Pulse50x1_Hz_Fiber;	 
  reg [31:0] SyncPulseCnt; 
  reg [15:0] SyncCntTx; 
  reg [15:0] SyncCntRx; 
  
    // wire carryShiftTime;//xw
    // assign carryShiftTime = (CarryNum_b12==12'd60) ? 16'd4166 : ((CarryNum_b12==12'd70) ? 16'd3571 : ((CarryNum_b12==12'd80) ? 16'd3125 : 0));//xw
    // OffDly_V1 OffDly_V2_Inst (//xw
      // .g_clk    (clk25m),
      // .Rst_n    (1'b1),            //rst_n & (~(StateCode==STOP)) & Start_1sOn 
      // .IN       (PWMsync),
      // .BlockTime(carryShiftTime),           //25->1us CarryNum_b12 60�?3k
	  // //.BlockTime(8'd25),           //1us CarryNum_b12 60�?3k
      // .OUT      (PWMsync1)
  // );
  reg [15:0] RecvSyncPulseCntTmp;
  reg [15:0] RecvSyncPulseCnt;
  reg        RecvWORKING;
  wire       RecvWORKING_flg;
  assign RecvWORKING_flg = RecvWORKING;
  always @(posedge clk25m) begin//signal active  10ms发�?�一次同�?
	  //if(SyncPulseCnt<16'd409) begin //1s
	  if(StateCode == WORKING) begin
		  if(SyncPulseCnt<16'd41) begin //xw 1��4Ч����һЩӰ����λ����̬ʾ����
			  SyncPulseCnt <= Pulse4096Hz ? (SyncPulseCnt + 1) : SyncPulseCnt; 
			  Pulse50x1_Hz_Fiber <= 0;
		  end
		  else begin
			  if(PWMsync==1) begin//xw
				  Pulse50x1_Hz_Fiber <= 1;
				  SyncPulseCnt <= 0;
				  SyncCntTx <= SyncCntTx+1;
			  end 
		  end
		  if(CarrySync==1) begin
			  SyncCntRx <= SyncCntRx+1;
		  end
	  end else begin
		  if(SyncPulseCnt<16'd410) begin //xw 1ºʹЧ¹ûºÒ»ЩӰϬɏλ»ú¶¯̬ʾ²¨Ʒ
			  SyncPulseCnt <= Pulse4096Hz ? (SyncPulseCnt + 1) : SyncPulseCnt; 
			  Pulse50x1_Hz_Fiber <= 0;
		  end
		  else begin
			  if(PWMsync==1) begin //xw
				  Pulse50x1_Hz_Fiber <= 1;
				  SyncPulseCnt <= 0;
				  SyncCntTx <= SyncCntTx+1;
			  end 
		  end
		  if(CarrySync==1) begin
			  SyncCntRx <= SyncCntRx+1;
		  end
	  end
	  if(CarrySync==1) begin
		  RecvSyncPulseCntTmp <= 0; 
		  RecvSyncPulseCnt    <= RecvSyncPulseCntTmp;
		  RecvWORKING         <= (RecvSyncPulseCnt>200) ? 0 : 1;
	  end else begin
	      RecvSyncPulseCntTmp <= Pulse4096Hz ? (RecvSyncPulseCntTmp + 1) : RecvSyncPulseCntTmp; 
	  end
  end
 
 
  reg  CarrySyncSignalDelay; 
  always @(posedge clk25m) //signal active
  begin : CarrySyncSignalDelay_process 
	  CarrySyncSignalDelay <= CarrySync_Fiber; 
  end 
  wire CarrySync = (CarrySync_Fiber==1'b0) & (CarrySyncSignalDelay==1'b1);	
  wire FiberMaster;  
   FiberToCarrySync_V10 FiberToCarrySync_V10_Inst (
	.g_clk( clk25m ), .Rst_n( rst_n ),
	.Rx( (FIBER_RX_IN)&(SettingSwitchCMD2[9]==1'b1) ),
	.SyncPulse( (SettingSwitchCMD2[9]==1'b0) ? Pulse50x1_Hz_Fiber : 0 ),
	//.SyncPulse( (SettingSwitchCMD2[9]==1'b0) ? PWMsync : 0 ),//xw
	//.Rx( (FIBER_RX_IN)&(SettingSwitchCMD2[9]==1'b0) ),
	//.SyncPulse( Pulse50x1_Hz_Fiber),
	.Tx( FIBER_TX_OUT1 ), .Sync_Out(CarrySync_Fiber),
	.FiberMaster(FiberMaster)
   );
	reg FIBER_RX_IN_r;	 
	reg [11:0] FilberErrCnt; 
	reg        FilberErr;  
   always @(posedge clk25m) begin//signal active  
        FIBER_RX_IN_r <= FIBER_RX_IN;
		//if(SettingSwitchCMD2[8]) begin
		if(~SettingSwitchCMD2[8]) begin
			FilberErr <= 0;
			FilberErrCnt <= 0;
		end else begin
			if(SettingSwitchCMD2[9]) begin
				if(FIBER_RX_IN_r!=FIBER_RX_IN) begin
					FilberErrCnt <= 0;
					FilberErr <= 0;
				end else begin
					if(FilberErrCnt<12'd4000) begin
						FilberErrCnt <= Pulse4096Hz ? (FilberErrCnt+1) : FilberErrCnt;
					end else begin
						FilberErr <= 1; 
					end
				end
			end else begin 
				FilberErr <= (RecvPackCntAt1ms<5) ? 1'b1 : 1'b0;
			end
		end 
	end
	  /*
wire  FilberErr_t;
wire FilberErr = SettingSwitchCMD2[8]&SettingSwitchCMD2[9]&FilberErr_t;	  
FiberSync FiberSync_inst( 
           .g_clk( clk25m ),  
           .SyncIn( (SettingSwitchCMD2[9]==1'b0) ? Pulse50x1_Hz_Fiber : 0 ), .FilberRx( (FIBER_RX_IN)&(SettingSwitchCMD2[9]==1'b1) ),  //SettingSwitchCMD2[9]
           .FilberTx( FIBER_TX_OUT1 ), .SyncOut( CarrySync_Fiber ), .FilberErr( FilberErr_t )
       );  */ 
  always @(posedge clk25m) begin
      if (~rst_n) led_cnt <= 'h0;
      else led_cnt <= led_cnt + 1'b1;
  end
  /*ILA_0 ILA_0 (
	.clk(clk25m), 


	.probe0(CarrySync_Fiber),   
	.probe1(PWMsync) 
);*/
  assign Test_Pin1 = SettingSwitchCMD2[9] ? CarrySync_Fiber : PWMsync;// ~led_cnt[23];
  assign Test_Pin2 = 0;
  assign Test_Pin3 = 0;// Pulse50x32_Hz;
//set_property PACKAGE_PIN J1 [get_ports Test_Pin1]
//set_property PACKAGE_PIN P16 [get_ports Test_Pin2]
  assign AD_CONVST = ad_convst_n;
  //assign ARM_IRQ0  = rd_itr; //dell
  reg  PhaseInv;  
  reg [15:0] PhaseLockCnt; 
  always @(posedge clk25m) begin//signal active    
	  if(SettingSwitchCMD1[9] == 1'b1) begin
		  if( (StateCode == IDEL) && (~(State0[4] | State0[3] | State0[10] | State0[9] | State0[15] | State2[0])) ) begin 
			  if( State5[2]==1) begin
				  if(PhaseLockCnt<12'd20000) begin //5s
					  PhaseLockCnt <= Pulse4096Hz ? (PhaseLockCnt+1) : PhaseLockCnt;
				  end  else begin
					  PhaseInv <= ~PhaseInv;
					  PhaseLockCnt <= 0;
				  end
			  end 
		  end 
	  end else begin
		  PhaseInv <= 0;
	  end
  end 
  
  //===========================================光纤通信================================================================
    wire Pulse50x1_Hz_Fiber2;
    Pulse50x1_V1 Pulse50x1_V1_inst  (
               .g_clk( clk25m ), .Rst_n( rst_n ), 
               .wt_b13( wt_b13 ),  .Pulse50x1_Hz( Pulse50x1_Hz_Fiber2 )
    ); 
   wire  FIBER_TX_OUT1;
   wire  FIBER_TX_OUT2;
   //assign FIBER_TX_OUT = SettingSwitchCMD2[9] ? (~FIBER_TX_OUT2) : FIBER_TX_OUT1; //熊猫使用
   assign FIBER_TX_OUT = SettingSwitchCMD2[9] ? (FIBER_TX_OUT2) : FIBER_TX_OUT1;  //调整
  // assign FIBER_TX_OUT =  FIBER_TX_OUT1;  
   //================================== clk set =============================== a
   reg [15:0] Fiber_Udc_Ref_b12; 
   reg [15:0] Fiber_Um_ref_Arm_b12;
   reg [15:0] Fiber_P_ref_Arm_b16; 
   reg [15:0] Fiber_Q_ref_Arm_b16; 
   reg [15:0] Fiber_Idp_ref_b16; 
   reg [15:0] Fiber_Iqp_ref_b16;   
   
  reg [15:0] Fiber_Pload_b16,Fiber_Qload_b16;
  reg        Fiber_WORKING ; 
    wire  Fiber_WORKING_flg;
  assign   Fiber_WORKING_flg = Fiber_WORKING;
   reg [15:0] Fiber_UposGnd;
   reg [15:0] Fiber_UnegGnd;
   reg [15:0] Fiber_Uab;
   reg [15:0] Fiber_Ubc;
   reg [15:0] Fiber_Uca; 
   reg [7:0] Fiber_CarryNum_b12;
   reg Fiber_PQ_ZeroBlock,Fiber_State9_7;
   wire  master = SettingSwitchCMD2[9] ? 1 : 0;        
   reg [15:0] Time1ms_cnt;
   reg [15:0] Time1s_cnt;
   reg [15:0] RunSecond;
   wire [15:0] uartBaud; 
    
   wire  CarryErr = (SettingSwitchCMD2[8]&(~SettingSwitchCMD2[9])&(Fiber_CarryNum_b12!=CarryNum_b12_Set)) ? 1 : 0;
	
/*always @(posedge clk25m) begin 
	//==== timer and sync check==========
	if(Time1ms_cnt<25000) begin
		Time1ms_cnt   <= Time1ms_cnt+1; 
	end
	else begin
		Time1ms_cnt   <= 0;
		Time1s_cnt    <= (Time1s_cnt<1000)  ? (Time1s_cnt+1) : 0;   
		RunSecond	  <= (Time1s_cnt<1000)  ? RunSecond : (RunSecond+1);
	end	
end*/
	
	//============================ UART send and recv ====================   
parameter IDLE              = 4'b0001;
parameter LATCH_DATA        = 4'b0010;
parameter SENDING           = 4'b0100;
parameter FRAME_END         = 4'b1000;  
parameter RECVING           = 4'b1111;   
//========================= TX ======================
//CMD1[1]

wire        uart_tx_busy;  
reg  [7:0]  uart_tx_data; //
reg         uart_tx_start;      // 
uart_tx  uart_tx_inst1( 
	.g_clk(clk25m), .rst_n(1), .param_baud( 7 ),  //9600  setting 141
	.uart_tx_start( uart_tx_start ),
	.uart_tx_data( uart_tx_data ),  
	.uart_tx_busy( uart_tx_busy ),
	.uart_tx_out( FIBER_TX_OUT2 )  
);  
reg [31:0] delay_cnt; 
reg [3:0] tx_state; 
reg [7:0] TxBufPtr;  //32   
reg [7:0] TxBuf1,TxBuf2,TxBuf3,TxBuf4,TxBuf5,TxBuf6,TxBuf7,TxBuf8,TxBuf9,TxBuf10,TxBuf11,TxBuf12,TxBuf13,TxBuf14,TxBuf15,TxBuf16;
always @(posedge clk25m) begin  //8=30K/16=15K  
	case (tx_state) 
		IDLE:   begin     
			TxBufPtr           <= 1; 
			tx_state           <= LATCH_DATA;
			TxBuf1 <= {4'b0,UposGnd[11:8]}; //DATA1 
            TxBuf2 <= UposGnd[7:0]; //DATA1   
			TxBuf3 <= {4'b0,UnegGnd[11:8]}; //DATA1 
			TxBuf4 <= UnegGnd[7:0]; //DATA1             
			TxBuf5 <= SettingSwitchCMD2[0] ? {4'b0,Idp_ref_in_b12_LvrtLock2[11:8]} : {4'b0,Switch66_out1_out[11:8]}; //DATA1 
			TxBuf6 <= SettingSwitchCMD2[0] ? Idp_ref_in_b12_LvrtLock2[7:0] : Switch66_out1_out[7:0]; //DATA1
			TxBuf7 <= SettingSwitchCMD2[0] ? {4'b0,Iqp_ref_in_b12_LvrtLock2[11:8]} : {4'b0,Switch69_out1_out[11:8]}; //DATA1 
            TxBuf8 <= SettingSwitchCMD2[0] ? Iqp_ref_in_b12_LvrtLock2[7:0] : Switch69_out1_out[7:0]; //DATA1 
           // TxBuf5 <= Udc_Ref_b12[15:8]; //DATA3
           // TxBuf6 <= Udc_Ref_b12[7:0]; //DATA3
			//TxBuf7 <= Um_ref_Arm_b12[15:8]; //DATA4
			//TxBuf8 <= Um_ref_Arm_b12[7:0]; //DATA4 
			
			TxBuf9   <= Pload_b16[15:8];//{4'b0,Uab[11:8]}; //DATA1 
			TxBuf10  <= Pload_b16[7:0];//Uab[7:0]; //DATA1
			TxBuf11  <= Qload_b16[15:8];//{4'b0,Ubc[11:8]}; //DATA1 
			TxBuf12  <= Qload_b16[7:0];//Ubc[7:0]; //DATA1
			TxBuf13  <= {6'b0,PQ_ZeroBlock_r,(StateCode==WORKING) ? 1'b1 : 1'b0};//{4'b0,Uca[11:8]}; //DATA1 
			TxBuf14  <= CarryNum_b12_Set[7:0];//Uca[7:0]; //DATA1 
			TxBuf15  <= 0;//{4'b0,Uca[11:8]}; //DATA1 
			TxBuf16  <= 0;//{4'b0,Uca[11:8]}; //DATA1 
		end  	 
		LATCH_DATA:   begin    
			case (TxBufPtr) 
				1: begin
					uart_tx_data <= 8'hA5; 
				end
				2: begin
					uart_tx_data <= TxBuf1; 
				end
				3: begin
					uart_tx_data <= TxBuf2; 
				end
				4: begin
					uart_tx_data <= TxBuf3; 
				end
				5: begin
					uart_tx_data <= TxBuf4; 
				end
				6: begin
					uart_tx_data <= TxBuf5; 
				end
				7: begin
					uart_tx_data <= TxBuf6;
				end
				8: begin
					uart_tx_data <= TxBuf7; 
				end
				9: begin
					uart_tx_data <= TxBuf8; 
				end
				//10: begin
				//	uart_tx_data <= 8'hA5+TxBuf1+TxBuf2+TxBuf3+TxBuf4+TxBuf5+TxBuf6+TxBuf7+TxBuf8; 
				//end
				10: begin
					uart_tx_data <= TxBuf9; 
				end
				11: begin
					uart_tx_data <= TxBuf10; 
				end
				12: begin
					uart_tx_data <= TxBuf11; 
				end
				13: begin
					uart_tx_data <= TxBuf12;
				end
				14: begin
					uart_tx_data <= TxBuf13; 
				end
				15: begin
					uart_tx_data <= TxBuf14; 
				end
				16: begin
					uart_tx_data <= TxBuf15; 
				end
				17: begin
					uart_tx_data <= TxBuf16; 
				end
				18: begin
					uart_tx_data <= 8'hA5+TxBuf1+TxBuf2+TxBuf3+TxBuf4+TxBuf5+TxBuf6+TxBuf7+TxBuf8+TxBuf9+TxBuf10+TxBuf11+TxBuf12+TxBuf13+TxBuf14+TxBuf15+TxBuf16; 
				end
				default:;
			endcase 
			uart_tx_start <= 1;
			if(uart_tx_busy == 1'b1) begin
				uart_tx_start <= 0;  
				TxBufPtr      <= TxBufPtr + 1;
				tx_state         <= SENDING;
			end 
			delay_cnt <= 0; 
		end  
		SENDING: begin  
			if(uart_tx_busy == 1'b0) begin 
				//tx_state   <= (TxBufPtr >= (2+8+1)) ? FRAME_END : LATCH_DATA;  //注意这里修改长度
				tx_state   <= (TxBufPtr >= (2+16+1)) ? FRAME_END : LATCH_DATA;  //注意这里修改长度
			end
		end 
		FRAME_END:   begin      
			if(delay_cnt < 32'd100) begin //100us
				delay_cnt = delay_cnt + 1;			
			end
			else begin
				tx_state   <= IDLE;
			end
			tx_state   <= IDLE;
		end  
		default:tx_state <= IDLE;
	endcase
end  

//========================= RX ======================
wire        uart_rx_vld; 
wire        uart_rx_busy;
wire [7:0]  uart_rx_data;  
uart_rx uart_uart_rx_inst1( 
	.g_clk(clk25m),  .rst_n(1), .param_baud( 7 ), //setting 141
	.uart_rx_in( FIBER_RX_IN  ),
	.uart_rx_data( uart_rx_data ),
	.uart_rx_busy( uart_rx_busy ),
	.uart_rx_vld( uart_rx_vld )
);  
reg uart_rx_vld_r0; 
wire  uart_rx_vld_posedge;
assign uart_rx_vld_posedge = (~uart_rx_vld_r0) & uart_rx_vld; //rise 
always@(posedge clk25m) begin
	uart_rx_vld_r0 <= uart_rx_vld;  
end   

reg [3:0] rx_state;   
reg [4:0] RxBufPtr;  //32
reg [7:0] RxBuf1,RxBuf2,RxBuf3,RxBuf4,RxBuf5,RxBuf6,RxBuf7,RxBuf8,RxBuf9,RxBuf10,RxBuf11,RxBuf12,RxBuf13,RxBuf14,RxBuf15,RxBuf16; 
reg [7:0] RxSum; 
reg [15:0] Time1ms_cnt;  
reg [15:0] RecvPackCnt;
reg [15:0] RecvPackCntAt1ms;
reg [15:0] RecvErrCnt;
reg FrameOK;
reg FrameErr;
always @(posedge clk25m) begin  
	//total 
	if(Time1ms_cnt<25000) begin
		Time1ms_cnt   <= Time1ms_cnt+1;  
		RecvPackCnt      <= FrameOK ? (RecvPackCnt + 1) : RecvPackCnt; 
	end
	else begin
		Time1ms_cnt   <= 0;   
		RunSecond     <= RunSecond +1;
		RecvPackCntAt1ms <= RecvPackCnt;  
		RecvPackCnt      <= 0; 
	end 
	//============================
	case (rx_state) 
		IDLE:  begin      
			if( (uart_rx_vld_posedge==1'b1) && (uart_rx_data==8'hA5) ) begin   
				RxBufPtr            <= 2; 
				RxBuf1              <= 0;  
				RxBuf2              <= 0;
				RxBuf3              <= 0;  
				RxBuf4              <= 0; 
				RxBuf5              <= 0; 
				RxBuf6              <= 0; 
				RxBuf7              <= 0; 
				RxBuf8              <= 0;
				RxBuf9              <= 0;  
				RxBuf10              <= 0; 
				RxBuf11              <= 0; 
				RxBuf12              <= 0; 
				RxBuf13              <= 0; 
				RxBuf14              <= 0;
				RxBuf15              <= 0; 
				RxBuf16              <= 0;
				rx_state            <= RECVING;
			end 
			FrameOK <= 0;
		end  
		RECVING:   begin  
			if(uart_rx_vld_posedge==1'b1) begin  
				case (RxBufPtr)  
					2: begin 
						RxBuf1            <= uart_rx_data; //4 
					end
					3: begin 
						RxBuf2            <= uart_rx_data; //4 
					end
					4: begin
						RxBuf3            <= uart_rx_data; //4  
					end
					5: begin 
						RxBuf4            <= uart_rx_data; //4 
					end
					6: begin 
						RxBuf5            <= uart_rx_data; //4 
					end
					7: begin
						RxBuf6            <= uart_rx_data; //4  
					end
					8: begin 
						RxBuf7            <= uart_rx_data; //4 
					end
					9: begin 
						RxBuf8            <= uart_rx_data; //4 
					end
					//10: begin
					//	RxSum             <= uart_rx_data; //4 
					//	rx_state  <= FRAME_END;
					//end
					10: begin
						RxBuf9            <= uart_rx_data; //4  
					end
					11: begin 
						RxBuf10            <= uart_rx_data; //4 
					end
					12: begin 
						RxBuf11            <= uart_rx_data; //4 
					end
					13: begin
						RxBuf12            <= uart_rx_data; //4  
					end
					14: begin 
						RxBuf13            <= uart_rx_data; //4 
					end
					15: begin 
						RxBuf14            <= uart_rx_data; //4 
					end
					16: begin 
						RxBuf15            <= uart_rx_data; //4 
					end
					17: begin 
						RxBuf16            <= uart_rx_data; //4 
					end
					18: begin
						RxSum             <= uart_rx_data; //4 
						rx_state          <= FRAME_END;
					end
					default:;
				endcase  
				RxBufPtr  <= RxBufPtr + 1;
			end  
			FrameOK <= 0;
		end 
		FRAME_END:   begin    
			//if(RxSum==(8'hA5+RxBuf1+RxBuf2+RxBuf3+RxBuf4+RxBuf5+RxBuf6+RxBuf7+RxBuf8)) begin 
			if(RxSum==(8'hA5+RxBuf1+RxBuf2+RxBuf3+RxBuf4+RxBuf5+RxBuf6+RxBuf7+RxBuf8+RxBuf9+RxBuf10+RxBuf11+RxBuf12+RxBuf13+RxBuf14+RxBuf15+RxBuf16)) begin 
				Fiber_UposGnd[15:8] <= RxBuf1;
				Fiber_UposGnd[7:0]  <= RxBuf2; 
				//Fiber_Q_ref_Arm_b16[15:8] <= RxBuf3;
				//Fiber_Q_ref_Arm_b16[7:0]  <= RxBuf4;
				Fiber_UnegGnd[15:8] <= RxBuf3;
				Fiber_UnegGnd[7:0] <= RxBuf4;
				Fiber_Idp_ref_b16[15:8] <= RxBuf5;
                Fiber_Idp_ref_b16[7:0] <= RxBuf6;
				Fiber_Iqp_ref_b16[15:8] <= RxBuf7;
				Fiber_Iqp_ref_b16[7:0] <= RxBuf8;

				//Fiber_Udc_Ref_b12[15:8] <= RxBuf5;
				//Fiber_Udc_Ref_b12[7:0]  <= RxBuf6;
				//Fiber_Um_ref_Arm_b12[15:8] <= RxBuf7;
				//Fiber_Um_ref_Arm_b12[7:0]  <= RxBuf8; 
				
				Fiber_Pload_b16[15:8] <= RxBuf9;
				Fiber_Pload_b16[7:0] <= RxBuf10; 
				Fiber_Qload_b16[15:8] <= RxBuf11;
				Fiber_Qload_b16[7:0] <= RxBuf12; 
				Fiber_WORKING       <= RxBuf13[0];  
				Fiber_PQ_ZeroBlock  <= RxBuf13[1];
				Fiber_CarryNum_b12  <= RxBuf14;				
				FrameOK <= 1;
			end
			else begin   
				FrameOK <= 0;
				RecvErrCnt <= RecvErrCnt + 1;
			end
			rx_state          <= IDLE;
		end  
		default:rx_state <= IDLE;
	endcase  
end  
//=====================================addddd

//============================================================================================
//============================================================================================
   //=================ADD ins fault data=============================
   reg [11:0] Uab_FltP32_r,Ubc_FltP32_r,Uca_FltP32_r;    
   reg [11:0] Ia_FltP32_r,Ib_FltP32_r,Ic_FltP32_r;
   reg [11:0] Idc_FltP32_r,Udc_FltP32_r,Ubtr_FltP32_r;
   reg [15:0] IGBTa_Temp_r,IGBTb_Temp_r,IGBTc_Temp_r;
   //reg [15:0] P_ref_SetIn_r,Q_ref_SetIn_r; 
   reg [15:0] DebugData; //331 
   reg [3:0] StateCode_rr; 
   always @(posedge clk25m )begin  
       StateCode_rr <= StateCode;
       if((StateCode_rr == WORKING)&(StateCode!=WORKING)) begin  
               IGBTa_Temp_r <= IGBTa_Temp;
               IGBTb_Temp_r <= IGBTb_Temp;
               IGBTc_Temp_r <= IGBTc_Temp; 
               Uab_FltP32_r <= Uab_FltP32;
               Ubc_FltP32_r <= Ubc_FltP32;
               Uca_FltP32_r <= Uca_FltP32;    
               Ia_FltP32_r  <= Ia_FltP32;
               Ib_FltP32_r  <= Ib_FltP32;
               Ic_FltP32_r  <= Ic_FltP32;
               Idc_FltP32_r <= Idc_FltP32;
               Udc_FltP32_r <= Udc_FltP32;
               Ubtr_FltP32_r <= Ubtr_FltP32; 
       end
       else if(FIFO8_DATA_SEL==16'd220)begin 
           DebugData <= IGBTa_Temp_r; 
       end     
       else if(FIFO8_DATA_SEL==16'd221)begin 
           DebugData <= IGBTb_Temp_r; 
       end     
       else if(FIFO8_DATA_SEL==16'd222)begin 
           DebugData <= IGBTc_Temp_r; 
       end 
       //===========================?¡¿?? 
       else if(FIFO8_DATA_SEL==16'd1000)begin 
           DebugData <= {{4{    Uab_FltP32_r    [11]}},    Uab_FltP32_r    } ;  //-591 
       end   
       else if(FIFO8_DATA_SEL==16'd1001)begin 
           DebugData <= {{4{    Ubc_FltP32_r    [11]}},    Ubc_FltP32_r    } ;  //-507 
       end 
       else if(FIFO8_DATA_SEL==16'd1002)begin 
           DebugData <= {{4{    Uca_FltP32_r    [11]}},    Uca_FltP32_r    } ;  //1116
       end 
       else if(FIFO8_DATA_SEL==16'd1003)begin 
           DebugData <= {{4{    Ia_FltP32_r    [11]}},    Ia_FltP32_r    } ; //-10
       end 
       else if(FIFO8_DATA_SEL==16'd1004)begin 
           DebugData <= {{4{    Ib_FltP32_r    [11]}},    Ib_FltP32_r    } ; 
       end 
       else if(FIFO8_DATA_SEL==16'd1005)begin 
           DebugData <= {{4{    Ic_FltP32_r    [11]}},    Ic_FltP32_r    } ; 
       end 
       else if(FIFO8_DATA_SEL==16'd1006)begin 
           DebugData <= {{4{    Idc_FltP32_r    [11]}},    Idc_FltP32_r    } ; 
       end
       else if(FIFO8_DATA_SEL==16'd1007)begin 
           DebugData <= {{4{    Udc_FltP32_r    [11]}},    Udc_FltP32_r    } ; 
       end 
       else if(FIFO8_DATA_SEL==16'd1008)begin 
           DebugData <= {{4{    Ubtr_FltP32_r    [11]}},    Ubtr_FltP32_r    } ; 
       end
	   else if(FIFO8_DATA_SEL==16'd1011)begin 
		   DebugData <= P_ref_Arm_b16 ; 
	   end 	 
	   else if(FIFO8_DATA_SEL==16'd1012)begin 
		   DebugData <= Q_ref_Arm_b16 ; 
	   end 	
	   else if(FIFO8_DATA_SEL==16'd1013)begin 
		   DebugData <= SyncCntTx ; 
	   end 	 
	   else if(FIFO8_DATA_SEL==16'd1014)begin  //126 
		   DebugData <= SyncCntRx ; 
	   end 	 

	   else if(FIFO8_DATA_SEL==16'd1015)begin 
		   DebugData <= CMD1; 
	   end  
	    else if(FIFO8_DATA_SEL==16'd1016)begin 
		   DebugData <= VolLoop_En2 ? 16'd1112 :  16'd0; 
	   end 
	   else if(FIFO8_DATA_SEL==16'd1017)begin  //9~10 
		   DebugData <= RecvPackCntAt1ms; 
	   end 
	   else if(FIFO8_DATA_SEL==16'd1018)begin 
		   DebugData <= RecvErrCnt; 
	   end 
	   else if(FIFO8_DATA_SEL==16'd1019)begin 
		   DebugData <= Ip_b12; 
	   end 
	   else if(FIFO8_DATA_SEL==16'd1020)begin 
		   DebugData <= In_b12; 
	   end 
	   else if(FIFO8_DATA_SEL==16'd1021)begin 
		   DebugData <= Uac_Max; 
	   end 
	   else if(FIFO8_DATA_SEL==16'd1022)begin 
		   DebugData <= Uac_Min; 
	   end 
   //===============================================================
       else if(FIFO8_DATA_SEL==16'd3000)begin 
           DebugData <= Fiber_Udc_Ref_b12;
       end
       else if(FIFO8_DATA_SEL==16'd3001)begin  
           DebugData <= Fiber_Um_ref_Arm_b12;
       end
       else if(FIFO8_DATA_SEL==16'd3002)begin  
           DebugData <= Fiber_P_ref_Arm_b16;
       end
       else if(FIFO8_DATA_SEL==16'd3003)begin  
           DebugData <= Fiber_Q_ref_Arm_b16;
       end
       else if(FIFO8_DATA_SEL==16'd3004)begin  
           DebugData <= P_ref_SetIn; 
       end
       else if(FIFO8_DATA_SEL==16'd3005)begin  
           DebugData <= Q_ref_SetIn;
       end
       else if(FIFO8_DATA_SEL==16'd3006)begin  
           DebugData <= P_ref_b16;
       end
       else if(FIFO8_DATA_SEL==16'd3007)begin  
           DebugData <= Q_ref_b16;
       end
	   else if(FIFO8_DATA_SEL==16'd3008)begin  
           DebugData <= Fiber_Idp_ref_b16 ;  //-507 ;
       end
       else if(FIFO8_DATA_SEL==16'd3009)begin  
           DebugData <= Fiber_Iqp_ref_b16 ;  //-507 ;
       end
	   else if(FIFO8_DATA_SEL==16'd3010)begin  
           DebugData <= {{4{    IGBT_Temp_OT_ref    [11]}},    IGBT_Temp_OT_ref    }  ;  //xw
       end
	   else if(FIFO8_DATA_SEL==16'd3011)begin  
           DebugData <= {P4096_Ac_OffPulse    }  ;  //xw
       end
	   else if(FIFO8_DATA_SEL==16'd3020)begin  
           DebugData <= ARM_State13  ;  //xw
       end
	   else if(FIFO8_DATA_SEL==16'd3021)begin  
           DebugData <= ARM_State14 ;  //xw
       end
	   else if(FIFO8_DATA_SEL==16'd3021)begin  
           DebugData <= ARM_State15 ;  //xw
       end
	   else if(FIFO8_DATA_SEL==16'd3022)begin  
           DebugData <= FaultStateDly_ob[17:2] ;  //xw
       end
	   else if(FIFO8_DATA_SEL==16'd3023)begin  
           DebugData <= FaultState_ob ? 16'd1000 : 0 ;  //xw
       end
	   else if(FIFO8_DATA_SEL==16'd3024)begin  
           DebugData <= Err_RS_ob ? 16'd1000 : 0 ;  //xw
       end
	   else if(FIFO8_DATA_SEL==16'd3025)begin  
           DebugData <= fast_dP_Ffr_b16 ;  //xw
       end
	   else if(FIFO8_DATA_SEL==16'd3026)begin  
           DebugData <= slow_dP_Ffr_b16 ;  //xw
       end
	   else if(FIFO8_DATA_SEL==16'd3027)begin  
           DebugData <= dP_Inertia_b16 ;  //xw
       end
	   else if(FIFO8_DATA_SEL==16'd3028)begin  
           DebugData <= dQ_Fvr_b16 ;  //xw
       end
	   else if(FIFO8_DATA_SEL==16'd3029)begin  
           DebugData <= Switch66_out1_out ;  //xw
       end
	   else if(FIFO8_DATA_SEL==16'd3030)begin  
           DebugData <= Idp_ref_in_b12_LvrtLock2 ;  //xw
       end
	   else if(FIFO8_DATA_SEL==16'd3031)begin  
           DebugData <= {{4{0}},Idp_ref2} ;  //xw
       end
	   else if(FIFO8_DATA_SEL==16'd3032)begin  
           DebugData <= {{4{0}},Iqp_ref2} ;  //xw
       end
	   else if(FIFO8_DATA_SEL==16'd3033)begin  
           DebugData <= {{4{0}},Idp_ref2Lmt} ;  //xw
       end
	   else if(FIFO8_DATA_SEL==16'd3034)begin  
           DebugData <= {{4{0}},Idp_C_b12} ;  //xw
       end	   
	   else if(FIFO8_DATA_SEL==16'd3033)begin  
           DebugData <= Soft_on? 16'd1000 : 0 ;  //xw
       end


	   //============================
	   else if(FIFO8_DATA_SEL==16'd4000)begin 
           DebugData <= ACDischgPLimit_b16; 
       end     
       else if(FIFO8_DATA_SEL==16'd4001)begin 
           DebugData <= ACChargePLimit_b16; 
       end     
       else if(FIFO8_DATA_SEL==16'd4002)begin 
           DebugData <= PdcChgLimit_b16; 
       end
       else if(FIFO8_DATA_SEL==16'd4003)begin 
           DebugData <= PdcDischgLimit_b16; 
       end 	 
	   else if(FIFO8_DATA_SEL==16'd4004)begin 
           DebugData <= IdcChgLimit_b12; 
       end
       else if(FIFO8_DATA_SEL==16'd4005)begin 
           DebugData <= IdcDischgLimit_b12; 
       end 
       else if(FIFO8_DATA_SEL==16'd4010)begin 
           DebugData <= SettingSwitchCMD0; 
       end 	   
	   else if(FIFO8_DATA_SEL==16'd4011)begin 
           DebugData <= SettingSwitchCMD1; 
       end  
	   else if(FIFO8_DATA_SEL==16'd4012)begin 
           DebugData <= SettingSwitchCMD2; 
       end 
	   //++++++++++++++++ Load +++++++++++++++
	   else if(FIFO8_DATA_SEL==16'd4020)begin 
           DebugData <= RecvSyncPulseCnt; 
       end  
	   else if(FIFO8_DATA_SEL==16'd4021)begin 
           DebugData <= RecvWORKING ? 1000 : 0; 
       end
	   else if(FIFO8_DATA_SEL==16'd4022)begin 
           DebugData <= Pload_b16; 
       end  
	   else if(FIFO8_DATA_SEL==16'd4023)begin 
           DebugData <= Qload_b16; 
       end 
	   else if(FIFO8_DATA_SEL==16'd4024)begin 
           DebugData <= Ia_CT_RMS; 
       end
	   else if(FIFO8_DATA_SEL==16'd4025)begin 
           DebugData <= Ib_CT_RMS; 
       end  
	   else if(FIFO8_DATA_SEL==16'd4026)begin 
           DebugData <= Ic_CT_RMS; 
       end 
	   else if(FIFO8_DATA_SEL==16'd4027)begin 
           DebugData <= Fiber_Pload_b16; 
       end  
	   else if(FIFO8_DATA_SEL==16'd4028)begin 
           DebugData <= Fiber_Qload_b16; 
       end 
	   else if(FIFO8_DATA_SEL==16'd4029)begin 
           DebugData <= Fiber_WORKING ? 1000 : 0;; 
       end  
	   else if(FIFO8_DATA_SEL==16'd4030)begin 
           DebugData <= P_LoadCmp; 
       end
	   else if(FIFO8_DATA_SEL==16'd4031)begin 
           DebugData <= Q_LoadCmp; 
       end
	   else if(FIFO8_DATA_SEL==16'd4032)begin 
           DebugData <= P_ref_SetInCmp; 
       end
	   else if(FIFO8_DATA_SEL==16'd4033)begin 
           DebugData <= Q_ref_SetInCmp; 
       end	   
	   
	   else if(FIFO8_DATA_SEL==16'd4050)begin 
           DebugData <= State1_warn1; 
       end 
	   else if(FIFO8_DATA_SEL==16'd4051)begin 
           DebugData <= State1_warn2; 
       end 
	   else if(FIFO8_DATA_SEL==16'd4052)begin 
           DebugData <= OIFlgClrCnt; 
       end
	    //==============
	   else if(FIFO8_DATA_SEL==16'd8001)begin 
           DebugData <= ADErrCNT;  //0
       end  else if(FIFO8_DATA_SEL==16'd8002)begin 
           DebugData <= ADBusyCnt;  //-13199
       end   else if(FIFO8_DATA_SEL==16'd8003)begin 
           DebugData <= ADReadyCnt;  //-13480
       end   else if(FIFO8_DATA_SEL==16'd8004)begin 
           DebugData <= ADSampleCnt;  //-13200
       end   else if(FIFO8_DATA_SEL==16'd8005)begin 
           DebugData <= ADIldeCnt;  //681
       end   else if(FIFO8_DATA_SEL==16'd8006)begin 
           DebugData <= ADStartCnt;  //
       end   else if(FIFO8_DATA_SEL==16'd8007)begin 
           DebugData <= rst_n ? 1000 : 1111;  //1000
       end   else if(FIFO8_DATA_SEL==16'd8008)begin 
           DebugData <= AD_ErrTtoal;  //
       end   else if(FIFO8_DATA_SEL==16'd8009)begin 
           DebugData <= {8'd0, ADstate};  //1000
       end 
		//==============
       else begin  
           DebugData <= 16'd12345;
       end 
   end
////////////xw
   reg [15:0] P4096_Ac_OffPulse; 
   always @(posedge clk25m )begin   
		if(Pulse4096Hz) begin  
			if(P4096_Ac_OffPulse<5000) begin
				if(CPLD_out[5]==1) begin
					P4096_Ac_OffPulse <= P4096_Ac_OffPulse+1;
				end
			end 
		end
		if(StateCode==WORKING) begin  
		    P4096_Ac_OffPulse <= 0;
		end
	end
////////////xw
   wire [11:0] MHig_b12;
   wire [11:0] MLow_b12;
   wire [11:0] M0_b12_2;
   wire [11:0] MaIn_b12_2;
   wire [11:0] MbIn_b12_2;
   wire [11:0] McIn_b12_2; 
   wire [11:0] Ma0_b12;
   wire [11:0] Mb0_b12;
   wire [11:0] Mc0_b12; 
   /*L3_UnB_VZ8   L3_UnB_VZ6_inst
             (
              .g_clk( clk25m ),  .Rst_n( 1 ),  .Fs_256x50Hz( Pulse50x256_Hz  ),
               .Uab_b12(  Uab ), .Ubc_b12(  Ubc ),  .Uca_b12(  Uca ), 
              .Ma_b12(  MsvA_b12 ), .Mb_b12(  MsvB_b12 ), .Mc_b12(  MsvC_b12 ),
              .Ia_b12( Ia  ),  .Ib_b12( Ib  ),  .Ic_b12( Ic  ),
              .Upos_b12( UposGnd ),  .Uneg_b12( UnegGnd ), .UdcCo_b16( UdcDelta2Uo_co_b12  ),
              .M0Lmt_b12( 12'd100  ),   .M0_b12( M0_b12_2  ),
              .MaM0_b12( MaIn_b12_2  ), .MbM0_b12( MbIn_b12_2  ), .McM0_b12( McIn_b12_2  )
             );*/
L3_UnB_Z13   L3_UnB_Z13_inst
          (
           .g_clk( clk25m ), .Rst_n( 1 ), .Carryx128Hz( PulseCarryx128_Hz ), //.Fs_256x50Hz( Pulse50x256_Hz  ),
           .Ma_b12(  MsvA_b12 ), .Mb_b12(  MsvB_b12 ), .Mc_b12(  MsvC_b12 ),
           .Ia_b12( Ia  ),  .Ib_b12( Ib  ),  .Ic_b12( Ic  ),
           .Upos_b12( (SettingSwitchCMD2[8]&(~SettingSwitchCMD2[9]))  ? Fiber_UposGnd[11:0] : UposGnd ), 
		   .Uneg_b12( (SettingSwitchCMD2[8]&(~SettingSwitchCMD2[9]))  ? Fiber_UnegGnd[11:0] : UnegGnd ), 
		   .UdcCo_b16( UdcDelta2Uo_co_b12  ),
           .M0Lmt_b12( 12'd50  ), .PFull_b12(12'd1000),  
           .MaM0_b12( MaIn_b12_2  ), .MbM0_b12( MbIn_b12_2  ), .McM0_b12( McIn_b12_2  ), 
		   .M0_b12( M0_b12_2  )
          );
endmodule
