// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module NEPCS_100_V01_PLD(
input ErrABC1, 
input ErrABC2, 
input ErrABC3, 
input ErrABC4, 
input [11:0]   UpnGnd_OV_ref,
output [11:0] Ilimit1p08,
input IlimitX3en,
input OLoadTestEn,
input CarryErr,
input RecvWORKING,
input Fiber_WORKING,
output [15:0] State1_warn1,
output [15:0] State1_warn2,
output reg [15:0] OIFlgClrCnt,
input PulseCarryx1_Hz,
output PwmLockA,
output PwmLockB,
output PwmLockC,  
input [15:0] EnableARMIO,
input [11:0] IabcEver_OI_ref,
input [11:0] sinA,
input [11:0] sinB,
input [11:0] sinC,
input [15:0] P_ref_b16,
input [15:0] Q_ref_b16,
input [15:0] TestIGBTErr,
input [11:0] ICT_OI_ref,
output PwmLock,
output Fault1_out,
output FPrefZeroSet,
input Uac_OverN_flg,
input Iac_OverN_flg,
input PhaseInv,
input g_clk,Rst_n,
input Pulse50x32Hz,Pulse4096Hz,PulseCarryx64_Hz,Pulse98p3477Hz,
input Start_1sOn,Start_5sOn,
input Pulse50x64_Hz,
input Pulse50x1_Hz,
input FilberErr,
input PQ_ZeroBlock_r,
input HvrtFlg,
input LvrtFlg,
output [11:0] Uac_Max,Uac_Min,
input [13:0] AD0_CH0,AD0_CH1,AD0_CH2,AD0_CH3,AD0_CH4,AD0_CH5,AD0_CH6,AD0_CH7,
input [13:0] AD1_CH0,AD1_CH1,AD1_CH2,AD1_CH3,AD1_CH4,AD1_CH5,AD1_CH6,AD1_CH7,
output [11:0] Uab_FltP32,Ubc_FltP32,Uca_FltP32,
output [11:0] Ia_FltP32,Ib_FltP32,Ic_FltP32,
output [11:0] Idc_FltP32,Ubtr_FltP32,Udc_FltP32,
output [11:0]	Uab_Ever	,
output [11:0]	Ubc_Ever	,
output [11:0]	Uca_Ever	,
output [11:0]	Ia_Ever	,
output [11:0]	Ib_Ever	,
output [11:0]	Ic_Ever	,
output [11:0]	Udc_Ever	,
output [11:0]	Idc_Ever	,
output [11:0]	Ubtr_Ever	,
output [11:0]	UposGnd_Ever	,
output [11:0]	UnegGnd_Ever	,
output [11:0]	Ia_CT_Ever	,
output [11:0]	Ib_CT_Ever	,
output [11:0]	Ic_CT_Ever	,
//output [11:0]	Rly_Ua_Ever	,
//output [11:0]	Rly_Ub_Ever	,
//output [11:0]	Rly_Uc_Ever	,
//output [11:0]	QF_Uab_Ever	,
//output [11:0]	Ipid_Ever	,

input [11:0]	Uab_Zero	,
input [11:0]	Ubc_Zero	,
input [11:0]	Uca_Zero	,
input [11:0]	Ia_Zero	,
input [11:0]	Ib_Zero	,
input [11:0]	Ic_Zero	,
input [11:0]	Udc_Zero	,
input [11:0]	Idc_Zero	,
input [11:0]	Ubtr_Zero	,
input [11:0]	UposGnd_Zero	,
input [11:0]	UnegGnd_Zero	,
input [11:0]	Ia_CT_Zero	,
input [11:0]	Ib_CT_Zero	,
input [11:0]	Ic_CT_Zero	,
//input [11:0]	Rly_Ua_Zero	,
//input [11:0]	Rly_Ub_Zero	,
//input [11:0]	Rly_Uc_Zero	,
//input [11:0]	QF_Uab_Zero	,
//input [11:0]	Ipid_Zero	,

output [11:0]	Uab	,
output [11:0]	Ubc	,
output [11:0]	Uca	,
output [11:0]	Ia	,
output [11:0]	Ib	,
output [11:0]	Ic	,
output [11:0]	Udc	,
output [11:0]	Idc	,
output [11:0]	Ubtr	,
output [11:0]	UposGnd	,
output [11:0]	UnegGnd	,
output [11:0]	Ia_CT	,
output [11:0]	Ib_CT	,
output [11:0]	Ic_CT	,
output [11:0]	Ia_CT_to_Ia	,
output [11:0]	Ib_CT_to_Ib	,
output [11:0]	Ic_CT_to_Ic	,
output [11:0]	ICT0_RMS,
//output [11:0]	QF_Uab	,
//output [11:0]	Ipid	,


output [11:0]	Uab_RMS	,
output [11:0]	Ubc_RMS	,
output [11:0]	Uca_RMS	,
output [11:0]	Ia_RMS	,
output [11:0]	Ib_RMS	,
output [11:0]	Ic_RMS	,
output [11:0]	DeltaUbtr_RMS	,
output [11:0]	DeltaUdc_RMS	,
output [11:0]	Ia_CT_RMS	,
output [11:0]	Ib_CT_RMS	,
output [11:0]	Ic_CT_RMS	,
//output [11:0]	Rly_Ua_RMS	,
//output [11:0]	Rly_Ub_RMS	,
//output [11:0]	Rly_Uc_RMS	,
//output [11:0]	QF_Uab_RMS	,
//output [11:0]	Ipid_RMS	,

output [11:0]	IcomRms_b12,

input	[15:0] 	w	,

input [11:0]	IGBTa_Temp	,
input [11:0]	IGBTb_Temp	,
input [11:0]	IGBTc_Temp	,

input [11:0]	Uac_OV_ref	,
input [11:0]	Uac_UV_ref	,
input [11:0]	Iac_OI_ref	,
input [11:0]	Udc_OV_ref	,
input [11:0]	Udc_UV_ref	,
input [11:0]	Idc_OI_ref	,
input [11:0]	Ubtr_OV_ref	,
input [11:0]	Ubtr_UV_ref	,
//input [11:0]	UbtrIsltn_OV_ref	,
input [11:0]	UdcDelta_OV_ref	,
input [11:0]   IGBT_Temp_OT_ref,
input [11:0]	Uac_Inst_OV_ref	,
input [11:0]	Iac_Inst_OV_ref	,
input [11:0]	Udc_Inst_OV_ref	,
input [11:0]	Idc_Inst_OV_ref	,
input [11:0]	Ubtr_Inst_OV_ref	,
input [11:0]	I_Zero_ref	,
input [11:0]	ProChgDrop_ref	,

input [11:0]	IcomRms_OI_ref,

input	[15:0]	Frq_OF_ref,
input	[15:0]	Frq_UF_ref,

input [11:0]	Uac_OV2_ref	,
input [11:0]	Uac_UV2_ref	,
input [11:0]   Uac_UV3_ref,
input	[15:0]	Frq_OF2_ref,
input	[15:0]	Frq_UF2_ref,
input	[15:0]	Frq_OF1_time,
input	[15:0]	Frq_UF1_time,
input	[15:0]	Frq_OF2_time,
input	[15:0]	Frq_UF2_time,
input	[15:0]	Uac_OV1_time,
input	[15:0]	Uac_UV1_time,
input	[15:0]	Uac_OV2_time,
input	[15:0]	Uac_UV2_time,
input	[15:0]	Uac_UV3_time,
input [15:0]   HLvrt_StepIn_Time,
input [15:0]   PhaseAddpSeq_i13,
input [15:0]   Delta_w_b16,
input [11:0]   Island_UacUV_b12,
input [15:0]   Island_FreqDlta_b16,
//input	  IGBTa_Err0	,
//input	  IGBTa_Err1	,
//input	  IGBTb_Err0	,
//input	  IGBTb_Err1	,
//input	  IGBTc_Err0	,
//input	  IGBTc_Err1	,

input [11:0]	SwitchOnRef_b12,
input [11:0]	AcVolOnRef_b12,
input [11:0]	CT2Hall_b12,

input         Inr_Running,
input         Ffr_Running,
input         Fvr_Running,
input				IGBTA_OT_ERR,
input				IGBTB_OT_ERR,
input				IGBTC_OT_ERR,
input 			IGBTA_ERR_1,
input 			IGBTA_ERR_2,
input 			IGBTA_ERR_3,
input 			IGBTA_ERR_4,
input 			IGBTB_ERR_1,
input 			IGBTB_ERR_2,
input 			IGBTB_ERR_3,
input 			IGBTB_ERR_4,
input 			IGBTC_ERR_1,
input 			IGBTC_ERR_2,
input 			IGBTC_ERR_3,
input 			IGBTC_ERR_4,	

input          FiberTimeOut,
input [11:0]   IgbtErr_Cnt_b12,

input [3:0]	StateCode	,
input [3:0]	StateLast1Code	,
input [3:0]	StateLast2Code	,
input [3:0]	StateLast3Code	,


output	ToChargeOk,
output	ChargeOk,
output	ToProWorkOk,
output	ProWorkOk,
output	ToExciteOk,
output	ExciteOk,
output	ToWorkOk,
output	WorkingOk,
//output	ToIslCheckOk	,
//output	IslCheckOk	,
//output	ToChargeOk	,
//output	ChargeOk	,
//output	ToBtrInOk	,
//output	BtrInOk	,
//output	ToExciteOk	,
//output	ExciteOk	,
//output	ToProWorkOk	,
//output	ProWorkOk	,
//output	ToWorkOk	,
//output	WorkingOk	,

input		Em_In_flag,
input		GoNext_flag,
input		StartCMD_flag,
input		DelayOut_flag,

input [15:0] 	CPLD_in,
//input [7:0] 	CPLD_in,

//output [7:0]	CPLD_out,
output [11:0]	CPLD_out,

output [15:0]	State0	,
output [15:0]	State1	,
output [15:0]	State2	,
output [15:0]	State3	,
output [15:0]	State4	,
output [15:0]	State5	,
output [15:0]	State6	,
output [15:0]	State7	,
output [15:0]	State8	,
output [15:0]	State9	,
output [15:0]	State10	,
output [15:0]	State11	,
output [15:0]	State12	,
output [15:0]	State13	,
output [15:0]	State14	,
output [15:0]	State15	,

output reg [15:0]	Err_Lock_State0	,
output reg [15:0]	Err_Lock_State1	,
output reg [15:0]	Err_Lock_State2	,
output reg [15:0]	Err_Lock_State3	,
output reg [15:0]	Err_Lock_State4	,
output reg [15:0]	Err_Lock_State5	,
output reg [15:0]	Err_Lock_State6	,
output reg [15:0]	Err_Lock_State7	,
output reg [15:0]	Err_Lock_State8	,
output reg [15:0]	Err_Lock_State9	,
output reg [15:0]	Err_Lock_State10	,
output reg [15:0]	Err_Lock_State11	,
output reg [15:0]	Err_Lock_State12	,
output reg [15:0]	Err_Lock_State13	,
output reg [15:0]	Err_Lock_State14	,
output reg [15:0]	Err_Lock_State15	,


input  [15:0]	SettingSwitchCMD0	,
input  [15:0]	SettingSwitchCMD1	,
input  [15:0]	SettingSwitchCMD2	,
input  [15:0]	SettingSwitchCMD3	,
input  [15:0]	SettingSwitchCMD4	,
input  [15:0]	SettingSwitchCMD5	,
input  [15:0]	SettingSwitchCMD6	,
input  [15:0]	SettingSwitchCMD7	,
input  [15:0]	SettingSwitchCMD8	,
input  [15:0]	SettingSwitchCMD9 ,

input  CtlLoop_On, 
input  First_VS,
input  Lvrting,
input  Zvrting,

input	 [11:0]	ILimit_b12,
output [11:0]	ILimit_Rdced,

//output reg [15:0]	PLD_Test0,PLD_Test1,PLD_Test2,PLD_Test3,
input  PulseCarryx32_Hz,
input  VF_Mode	,
input  Excite_On,
input  AD_Err,

input  ControlLoop3L_On,

input  [15:0]	P_b16,
input  [15:0]	Pdc_b16,
input  [15:0]	Pdc2ac_co_b16,
input  [15:0]	CabnetHeatOV_Ref,

input  [11:0]	IcomOrgAll_b12,


input  CN6_7_CONNECT,  //ADD ZJ 220211103
input  [15:0]	VSG_Uac_Inst_OV_ref,
input  [15:0]	VSG_InsFilter,
input  [15:0]	CMD1,
//input PwmBlock,
input  [11:0]  Iac_Inst_OVRcy_ref,
input  [11:0]  Uac_Inst_OVRcy_ref,
input  [15:0]	PwmBlockTime,
input  [15:0]	ARM_State13,
input  [15:0]	ARM_State14,
input  [15:0]	ARM_State15,

input  [11:0] IacLoss_Max,
input  [11:0] IacLoss_Min

); 

//Err Lock
parameter	IDEL		=	4'b0000	;
parameter	CHARGE	=	4'b0001	;
parameter	EXCITE	=	4'b0010	;
parameter	PROWORK	=	4'b0011	;
parameter	WORKING	=	4'b0100	;
parameter	FAULT		=	4'b0101	;
parameter	STOP		=	4'b0110	;	
parameter	TRANSITION=	4'b1000	;
//========================config==============================
wire Cfg_CtChkEn = 1; //check grid  Only JingYanDis here!!!
wire TestRunFlg = SettingSwitchCMD1[4]; //for test no fault trig   FSM need mdy
//========================config end==============================
assign State3[10] = 0;//Uac_OverN_flg;
assign State3[11] = 0;//Iac_OverN_flg;
 
assign State12[13]=Fvr_Running;
assign State12[14]=Inr_Running;
assign State12[15]=Ffr_Running;
 
/////////////////////////////////////////////////////
AverFilterP32Ch16_V10 AverFilterP32Ch16_V10_Inst
          (
				.g_clk( g_clk ),
				.Rst_n( Rst_n ),
				.Module_On( Start_1sOn ),
				.Pulse( Pulse50x32Hz ),
				.Filter_In0(	AD0_CH3[13:2]	),
				.Filter_In1(	AD0_CH0[13:2]	),
				.Filter_In2(	AD0_CH1[13:2]	),
				.Filter_In3(	AD1_CH4[13:2]	),
				.Filter_In4(	AD1_CH7[13:2]	),
				.Filter_In5(	AD1_CH6[13:2]	),
				.Filter_In6(	AD0_CH6[13:2]	),
				.Filter_In7(	AD1_CH5[13:2]	),
				.Filter_In8(	AD0_CH2[13:2]/*AD0_CH7[13:2] + AD0_CH4[13:2]*/	),
				.Filter_In9(	AD0_CH7[13:2]	),
				.Filter_In10(	AD0_CH4[13:2]	),
				.Filter_In11(	AD1_CH1[13:2]	),
				.Filter_In12(	AD1_CH0[13:2]	),
				.Filter_In13(	AD1_CH3[13:2]	),
				.Filter_In14(	12'd36	),
				.Filter_In15(	12'd37	),
						
				.Filter_Out0(	Uab_Ever	),
				.Filter_Out1(	Ubc_Ever	),
				.Filter_Out2(	Uca_Ever	),
				.Filter_Out3(	Ia_Ever	),
				.Filter_Out4(	Ib_Ever	),
				.Filter_Out5(	Ic_Ever	),
				.Filter_Out6(	Udc_Ever	),
				.Filter_Out7(	Idc_Ever	),
				.Filter_Out8(	Ubtr_Ever	),
				.Filter_Out9(	UposGnd_Ever	),
				.Filter_Out10(	UnegGnd_Ever	),
				.Filter_Out11(	Ia_CT_Ever	),
				.Filter_Out12(	Ib_CT_Ever	),
				.Filter_Out13(	Ic_CT_Ever	),
				.Filter_Out14(	 	),
				.Filter_Out15(	 	)

          );
//AdSubZero_V1 AdSubZero_V1_Inst1( .AD_b12(AD0_CH3[13:2]), .Zero_b12(Uab_Zero), .out_b12(Uab) );
//AdSubZero_V1 AdSubZero_V1_Inst2( .AD_b12(AD0_CH0[13:2]), .Zero_b12(Ubc_Zero), .out_b12(Ubc) );
AdSubZero_V1 AdSubZero_V1_Inst1( .AD_b12( PhaseInv ? AD0_CH0[13:2]:AD0_CH3[13:2] ),.Zero_b12( PhaseInv ? Ubc_Zero:Uab_Zero), .out_b12(Uab) );
AdSubZero_V1 AdSubZero_V1_Inst2( .AD_b12( PhaseInv ? AD0_CH3[13:2]:AD0_CH0[13:2] ),.Zero_b12( PhaseInv ? Uab_Zero:Ubc_Zero), .out_b12(Ubc) );
AdSubZero_V1 AdSubZero_V1_Inst3( .AD_b12(AD0_CH1[13:2]), .Zero_b12(Uca_Zero), .out_b12(Uca) );
// AdSubZero_V1 AdSubZero_V1_Inst1( .AD_b12(sinA), .Zero_b12(Uab_Zero), .out_b12(Uab) );
// AdSubZero_V1 AdSubZero_V1_Inst2( .AD_b12(sinB), .Zero_b12(Uab_Zero), .out_b12(Ubc) );
// AdSubZero_V1 AdSubZero_V1_Inst3( .AD_b12(sinC), .Zero_b12(Uab_Zero), .out_b12(Uca) );
//AdSubZero_V1 AdSubZero_V1_Inst4( .AD_b12(AD1_CH4[13:2]), .Zero_b12(Ia_Zero), .out_b12(Ia) );
//AdSubZero_V1 AdSubZero_V1_Inst5( .AD_b12(AD1_CH7[13:2]), .Zero_b12(Ib_Zero), .out_b12(Ib) );
AdSubZero_V1 AdSubZero_V1_Inst4( .AD_b12( PhaseInv ? AD1_CH7[13:2]:AD1_CH4[13:2]), .Zero_b12( PhaseInv ? Ib_Zero : Ia_Zero), .out_b12(Ia) );
AdSubZero_V1 AdSubZero_V1_Inst5( .AD_b12( PhaseInv ? AD1_CH4[13:2]:AD1_CH7[13:2]), .Zero_b12( PhaseInv ? Ia_Zero : Ib_Zero), .out_b12(Ib) );
AdSubZero_V1 AdSubZero_V1_Inst6( .AD_b12(AD1_CH6[13:2]), .Zero_b12(Ic_Zero), .out_b12(Ic) );
AdSubZero_V1 AdSubZero_V1_Inst7( .AD_b12(AD0_CH6[13:2]), .Zero_b12(Udc_Zero), .out_b12(Udc) );
AdSubZero_V1 AdSubZero_V1_Inst8( .AD_b12(AD1_CH5[13:2]), .Zero_b12(Idc_Zero), .out_b12(Idc) );

AdSubZero_V1 AdSubZero_V1_Inst9( .AD_b12(AD0_CH7[13:2]), .Zero_b12(UposGnd_Zero), .out_b12(UposGnd) );
AdSubZero_V1 AdSubZero_V1_Inst10( .AD_b12(AD0_CH4[13:2]), .Zero_b12(UnegGnd_Zero), .out_b12(UnegGnd) );
//AdSubZero_V1 AdSubZero_V1_Inst11( .AD_b12(Ia_CT_Zero), .Zero_b12(AD1_CH1[13:2]), .out_b12(Ia_CT) );
//AdSubZero_V1 AdSubZero_V1_Inst12( .AD_b12(Ib_CT_Zero), .Zero_b12(AD1_CH0[13:2]), .out_b12(Ib_CT) );
AdSubZero_V1 AdSubZero_V1_Inst11(.AD_b12(PhaseInv ? Ib_CT_Zero:Ia_CT_Zero),.Zero_b12(PhaseInv ? AD1_CH0[13:2]:AD1_CH1[13:2]), .out_b12(Ia_CT) );
AdSubZero_V1 AdSubZero_V1_Inst12(.AD_b12(PhaseInv ? Ia_CT_Zero:Ib_CT_Zero),.Zero_b12(PhaseInv ? AD1_CH1[13:2]:AD1_CH0[13:2]), .out_b12(Ib_CT) );
AdSubZero_V1 AdSubZero_V1_Inst13( .AD_b12(Ic_CT_Zero), .Zero_b12(AD1_CH3[13:2]), .out_b12(Ic_CT) );
AdSubZero_V1 AdSubZero_V1_Inst14( .AD_b12(AD0_CH2[13:2]), .Zero_b12(Ubtr_Zero), .out_b12(Ubtr) );

assign   IacLkg	= Ia_CT+Ib_CT+Ic_CT; //500kW设备取消了交流互感器，增加了交流漏电流检测，对应原来的Ia_CT口；

RMSP64Ch8_V10 RMSP64Ch8_V10_Inst
          (
           .g_clk( g_clk ),
           .Rst_n( Rst_n ),
           .Pulse( Pulse50x64_Hz/*Pulse50x32Hz*/ ),
           .RMS_In0( Uab ),
           .RMS_In1( Ubc ),
           .RMS_In2( Uca ),
           .RMS_In3( Ia ),
           .RMS_In4( Ib ),
           .RMS_In5( Ic ),
           .RMS_In6( UposGnd_FltP32-UnegGnd_FltP32 ),
           .RMS_In7( Idc ),
           .RMS_Out0( Uab_RMS ),
           .RMS_Out1( Ubc_RMS ),
           .RMS_Out2( Uca_RMS ),
           .RMS_Out3( Ia_RMS ),
           .RMS_Out4( Ib_RMS ),
           .RMS_Out5( Ic_RMS ),
           .RMS_Out6( DeltaUdc_RMS ),
           .RMS_Out7( Idc_RMS  )
          );

RMSP64Ch4_V10 RMSP64Ch4_V10_Inst
          (
           .g_clk( g_clk ),
           .Rst_n( Rst_n ),
           .Pulse( Pulse50x64_Hz/*Pulse50x32Hz*/ ),
           .RMS_In0( Ia_CT_to_Ia/*Rly_Ua*/ ),
           .RMS_In1( Ib_CT_to_Ib/*Rly_Ub*/ ),
           .RMS_In2( Ic_CT_to_Ic/*Rly_Uc*/ ),
           .RMS_In3( (Ia_CT_to_Ia+Ib_CT_to_Ib+Ic_CT_to_Ic) ),
           .RMS_Out0( Ia_CT_RMS/*Rly_Ua_RMS*/ ),
           .RMS_Out1( Ib_CT_RMS/*Rly_Ub_RMS*/ ),
           .RMS_Out2( Ic_CT_RMS/*Rly_Uc_RMS*/ ),
           .RMS_Out3( ICT0_RMS )
          );			  
//wire [11:0] IcomRms_b12		;	 
RMSP64Ch4_V10 RMSP64Ch4_V10_Inst1
          (
           .g_clk( g_clk ),
           .Rst_n( Rst_n ),
           .Pulse( PulseCarryx64_Hz ),
           .RMS_In0( (Ia+Ib+Ic) ),
           //.RMS_In1(  ),
           //.RMS_In2(  ),
           //.RMS_In3(  ),
           .RMS_Out0( IcomRms_b12 )
           //.RMS_Out1(  ),
           //.RMS_Out2(  ),
           //.RMS_Out3(  )
          );

			 
wire [11:0]	Uac_OVx11_ref	;
wire [11:0]	Uac_OVx12_ref	;
wire [11:0]	Uac_UVx09_ref	;
wire [11:0]	Uac_UVx08_ref	;
wire [11:0]	Iac_OIx11_ref	;
wire [11:0]	Iac_OIx12_ref	;
wire [11:0]	Udc_OVx11_ref	;
wire [11:0]	Udc_OVx12_ref	;
wire [11:0]	Udc_UVx09_ref	;
wire [11:0]	Udc_UVx08_ref	;
wire [11:0]	Idc_OIx11_ref	;
wire [11:0]	Idc_OIx12_ref	;
wire [11:0]	Ubtr_OVx11_ref	;
wire [11:0]	Ubtr_OVx12_ref	;
wire [11:0]	Ubtr_UVx09_ref	;
wire [11:0]	Ubtr_UVx08_ref	;
wire [11:0]	Ubtr_UVx05_ref	; //ADD ZJ20180711
wire [11:0]	Udc_UVx05_ref	; //ADD ZJ20180711


parameter Par_1p1 = 12'd563;
parameter Par_1p2 = 12'd614;
parameter Par_0p9 = 12'd461;
parameter Par_0p8 = 12'd410;
parameter Par_0p5 = 12'd256;

MulMpy_V10 MulMpy_V10_Inst
(
.g_clk( g_clk ),.Rst_n( Rst_n ),					
//.InA0(	Uac_OV_ref	),	.InB0(	Par_1p1	),
//.InA1(	Uac_OV_ref	),	.InB1(	Par_1p2	),
//.InA2(	Uac_UV_ref	),	.InB2(	Par_0p9	),
//.InA3(	Uac_UV_ref	),	.InB3(	Par_0p8	),
.InA4(	Iac_OI_ref	),	.InB4(	Par_1p1	),
.InA5(	Iac_OI_ref	),	.InB5(	Par_1p2	),
.InA6(	Udc_OV_ref	),	.InB6(	Par_1p1	),
.InA7(	Udc_OV_ref	),	.InB7(	Par_1p2	),
.InA8(	Udc_UV_ref	),	.InB8(	Par_0p9	),
.InA9(	Udc_UV_ref	),	.InB9(	Par_0p8	),
.InA10(	Idc_OI_ref	),	.InB10(	Par_1p1	),
.InA11(	Idc_OI_ref	),	.InB11(	Par_1p2	),
.InA12(	Ubtr_OV_ref	),	.InB12(	Par_1p1	),
.InA13(	Ubtr_OV_ref	),	.InB13(	Par_1p2	),
.InA14(	Ubtr_UV_ref	),	.InB14(	Par_0p9	),
.InA15(	Ubtr_UV_ref	),	.InB15(	Par_0p8	),
.InA16(	Ubtr_UV_ref	),	.InB16(	Par_0p5	),
.InA17(	Udc_UV_ref	),	.InB17(	Par_0p5	),
//.InA18(		),	.InB18(		),
//.InA19(		),	.InB19(		),
//.InA20(		),	.InB20(		),
//.InA21(		),	.InB21(		),
//.InA22(		),	.InB22(		),
//.InA23(		),	.InB23(		),
//.InA24(		),	.InB24(		),
//.InA25(		),	.InB25(		),
//.InA26(		),	.InB26(		),
//.InA27(		),	.InB27(		),
//.InA28(		),	.InB28(		),
.InA29(	Ia_CT	),	.InB29(	CT2Hall_b12	),
//.InA30(	Ib_CT	),	.InB30(	CT2Hall_b12	),
.InA30(	(-Ia_CT-Ic_CT)	),	.InB30(	CT2Hall_b12	),
.InA31(	Ic_CT	),	.InB31(	CT2Hall_b12	),
//.MpyOut0(	Uac_OVx11_ref	),			
//.MpyOut1(	Uac_OVx12_ref	),			
//.MpyOut2(	Uac_UVx09_ref	),			
//.MpyOut3(	Uac_UVx08_ref	),			
.MpyOut4(	Iac_OIx11_ref	),			
.MpyOut5(	Iac_OIx12_ref	),			
.MpyOut6(	Udc_OVx11_ref	),			
.MpyOut7(	Udc_OVx12_ref	),			
.MpyOut8(	Udc_UVx09_ref	),			
.MpyOut9(	Udc_UVx08_ref	),			
.MpyOut10(	Idc_OIx11_ref	),			
.MpyOut11(	Idc_OIx12_ref	),			
.MpyOut12(	Ubtr_OVx11_ref	),			
.MpyOut13(	Ubtr_OVx12_ref	),			
.MpyOut14(	Ubtr_UVx09_ref	),			
.MpyOut15(	Ubtr_UVx08_ref	),			
.MpyOut16(	Ubtr_UVx05_ref	),			
.MpyOut17(	Udc_UVx05_ref	),			
//.MpyOut18(		),			
//.MpyOut19(		),			
//.MpyOut20(		),			
//.MpyOut21(		),			
//.MpyOut22(		),			
//.MpyOut23(		),			
//.MpyOut24(		),			
//.MpyOut25(		),			
//.MpyOut26(		),			
//.MpyOut27(		),			
//.MpyOut28(		),			
.MpyOut29(	Ia_CT_to_Ia	),			
.MpyOut30(	Ib_CT_to_Ib	),			
.MpyOut31(	Ic_CT_to_Ic	)			
		
);


//MulMpy_V11 MulMpy_V11_Inst
//          (
//           .g_clk( g_clk ),
//           .Rst_n( Rst_n ),
//           .InA0( ILimit_b12 ),
//           .InB0( PwrRdc_co ),
//           //.InA1(  ),
//           //.InB1(  ),
//           //.InA2(  ),
//          // .InB2(  ),
//           //.InA3(  ),
//          // .InB3(  ),
//           .MpyOut0( ILimit_Rdced ),
//          // .MpyOut1(  ),
//          // .MpyOut2(  ),
//          // .MpyOut3(  )
//          );

//			 
//wire [11:0] Uab_FltP32,Ubc_FltP32,Uca_FltP32;
//wire [11:0] Ia_FltP32,Ib_FltP32,Ic_FltP32;
//wire [11:0] Idc_FltP32;
		 
AverFilterP32Ch8_V10 AverFilterP32Ch8_V10_Inst
//AverFilterP128Ch8_V11 AverFilterP32Ch8_V10_Inst
          (
           .g_clk( g_clk ),
           .Rst_n( Rst_n ),
           .Filter_In0( Uab ),
           .Filter_In1( Ubc ),
           .Filter_In2( Uca ),
           .Filter_In3( Ia ),
           .Filter_In4( Ib ),
           .Filter_In5( Ic ),
           .Filter_In6( Idc ),
           .Filter_In7(  ),
           .Pulse( PulseCarryx32_Hz ),
           .Filter_Out0( Uab_FltP32 ),
           .Filter_Out1( Ubc_FltP32 ),
           .Filter_Out2( Uca_FltP32 ),
           .Filter_Out3( Ia_FltP32 ),
           .Filter_Out4( Ib_FltP32 ),
           .Filter_Out5( Ic_FltP32 ),
           .Filter_Out6( Idc_FltP32 ),
           .Filter_Out7(  )
          );			
			 
wire [11:0] UposGnd_FltP32,UnegGnd_FltP32;
//wire [11:0] Ubtr_FltP32,Udc_FltP32;
//AverFilterP32Ch8_V10 AverFilterP32Ch8_V10_Inst1
AverFilterP128Ch8_V11 AverFilterP32Ch8_V10_Inst1
          (
           .g_clk( g_clk ),
           .Rst_n( Rst_n ),
           .Filter_In0( UposGnd ),
           .Filter_In1( UnegGnd ),
           .Filter_In2( Ubtr ),
           .Filter_In3( Udc ),
          // .Filter_In4(  ),
          // .Filter_In5(  ),
          // .Filter_In6(  ),
          // .Filter_In7(  ),
           .Pulse( PulseCarryx32_Hz ),
           .Filter_Out0( UposGnd_FltP32 ),
           .Filter_Out1( UnegGnd_FltP32 ),
           .Filter_Out2( Ubtr_FltP32  ),
           .Filter_Out3( Udc_FltP32 )
          // .Filter_Out4(  ),
          // .Filter_Out5(  ),
          // .Filter_Out6(  ),
          // .Filter_Out7(  )
          );	
			 
parameter T_0p5s = 16'd49;	//0.5/(1/98.347663879394531)
parameter T_0p2s = 16'd20;	//0.2/(1/98.347663879394531)
parameter T_0p1s = 16'd10;	//0.1/(1/98.347663879394531)
parameter T_0p05s = 16'd5;
parameter T_0p01s = 16'd1;

wire Uac_UV_En,Uac_UV_En_Temp;
OnDelay4s_V11 OnDelay4s_V11_Inst
          (
           .g_clk( g_clk ),
           .Rst_n( Rst_n ),
           .Pulse50x64Hz( Pulse50x64_Hz ),
           .In( CtlLoop_On  ),
           .First_VS( First_VS ),
           .Out( Uac_UV_En_Temp )
          );

//----assign Uac_UV_En = (SettingSwitchCMD1[7:5]==3'd0) ? (Uac_UV_En_Temp) : (1'b1);
wire Uac_UV_En_Temp1;  
assign Uac_UV_En_Temp1 = (SettingSwitchCMD1[7:6]==2'b00) ? (Uac_UV_En_Temp) : (1'b1);
//assign Uac_UV_En = (SettingSwitchCMD2[2]==1'b1) ? (State10[14]) : Uac_UV_En_Temp1;
assign Uac_UV_En = (SettingSwitchCMD2[2]==1'b1) ? (1'b0) : Uac_UV_En_Temp1;
//wire[11:0] Udc_Add_Bias,Ubtr_Add_Bias;
wire[12:0] Udc_Ubtr_Diff_i13;
wire[12:0] Udc_Ubtr_Diff;
assign Udc_Ubtr_Diff_i13 = {Udc[11],Udc}-{Ubtr[11],Ubtr};//(Udc>Ubtr)? (Udc-Ubtr):(Ubtr-Udc);
assign Udc_Ubtr_Diff = Udc_Ubtr_Diff_i13[12]? -Udc_Ubtr_Diff_i13:Udc_Ubtr_Diff_i13;
wire Udc_Ubtr_Diff_State;
assign State5[10] = Udc_Ubtr_Diff_State & (DcBrker_SwOn|((StateCode>CHARGE & StateCode<=WORKING)|(StateCode==TRANSITION)));
//======================================================================================================
//=====================================Overload=================================================================
//============== if  W1 ================================================
wire [11:0] Idc_RMS;
//wire [15:0] State1;  
wire SimOn = 0;
//wire IlimitX3en = (SettingSwitchCMD1[14] & (ILimit_b12<=12'd600)) ? 1 : 0;
//wire OLoadTestEn = SettingSwitchCMD3[10];
assign IacOI_1p10_ref = SimOn ? 550 : Iac_OI_ref;
assign IdcOI_1p15_ref = SimOn ? 550 : Idc_OI_ref;
//wire [11:0] ILimit_b12= SimOn ? 500 : 500;
//wire [11:0] Ia_RMS = (SettingParameter43 > IlimitOut2) ? IlimitOut2 : SettingParameter43;
//wire [11:0] Ib_RMS = 0;//(SettingParameter43 > IlimitOut2) ? IlimitOut2 : SettingParameter43;
//wire [11:0] Ic_RMS = 0;//(SettingParameter43 > IlimitOut2) ? IlimitOut2 : SettingParameter43; 
reg [31:0] g_clk_divcnt1;
reg        clk_0p1Hz;
always @(posedge g_clk)  begin
    g_clk_divcnt1  <= (g_clk_divcnt1<32'd2500000) ? (g_clk_divcnt1+1) : 0;
    clk_0p1Hz      <= SimOn ? (~clk_0p1Hz) : ((g_clk_divcnt1<32'd2500000) ? 0 : 1); 
end	
wire [11:0] IacOI_1p05_ref,IacOI_1p10_ref,IacOI_1p15_ref,IacOI_1p20_ref,IacOI_1p25_ref,IacOI_1p30_ref; 
wire [11:0] IdcOI_1p15_ref,IdcOI_1p25_ref,IdcOI_1p35_ref; 
wire [11:0] Ilimit1p05, Ilimit1p12, Ilimit1p22, Ilimit3p05; 
MulMpy_V10 MulMpy_V10Warn_Inst ( .g_clk( g_clk ), .Rst_n( 1 ),	 
.InA0( IacOI_1p10_ref ), .InB0( 488 ),  .MpyOut0( IacOI_1p05_ref ), //  1.05/1.1*512 	
.InA1( IacOI_1p10_ref ), .InB1( 535 ),  .MpyOut1( IacOI_1p15_ref ), //  Iac_OI_ref=1.1*Irate
.InA2( IacOI_1p10_ref ), .InB2( 558 ),  .MpyOut2( IacOI_1p20_ref ), //  1.20/1.1*512
.InA3( IacOI_1p10_ref ), .InB3( 582 ),  .MpyOut3( IacOI_1p25_ref ), //  1.25/1.1*512
.InA4( IacOI_1p10_ref ), .InB4( 605 ),  .MpyOut4( IacOI_1p30_ref ), //  1.30/1.1*512 7  
.InA5( IdcOI_1p15_ref ), .InB5( 534 ),  .MpyOut5( IdcOI_1p25_ref ), //  1.20/1.15*512 
.InA6( IdcOI_1p15_ref ), .InB6( 601 ),  .MpyOut6( IdcOI_1p35_ref ), //  1.35/1.15*512
.InA7(  ILimit_b12 ), .InB7(  538  ), .MpyOut7(  Ilimit1p05 ),  
.InA8(  ILimit_b12 ), .InB8(  573  ), .MpyOut8(  Ilimit1p12 ),
.InA9(  ILimit_b12 ), .InB9(  624  ), .MpyOut9(  Ilimit1p22 ),
.InA10( ILimit_b12 ), .InB10( 1561 ), .MpyOut10( Ilimit3p05 ),
.InA11( ILimit_b12 ), .InB11( 552  ), .MpyOut11( Ilimit1p08 ) 
);  
wire [15:0] State1_tmp1,State1_tmp2;
wire SimOnTime=0;

AnalogMonitorWarn_V10 AnalogMonitorWarn_V10_inst1  ( .g_clk(g_clk),  .Rst_n(1), .Pulse_4096Hz(clk_0p1Hz),  .Monitor_Reset( (StateCode == STOP) ),
	.In0(  Ia_RMS ), .Reference0( 2047 ), .Delay0( 18600 ), .Warn0( 18000 ), .MonitorOut0(	State1_tmp1[2]	), .Warn_Out0( State1_warn1[2] ),
	.In1(  Ia_RMS ), .Reference1( IacOI_1p10_ref ), .Delay1( SimOnTime ? 1250 : 6600  ), .Warn1( SimOnTime ? 1200 : 6300	 ), .MonitorOut1(	State1_tmp2[2]	), .Warn_Out1( State1_warn2[2] ),
	.In2(  Ia_RMS ), .Reference2( OLoadTestEn ? 2047:IacOI_1p15_ref ), .Delay2( SimOnTime ? 950 : 3300  ), .Warn2( SimOnTime ? 900 : 3000	 ), .MonitorOut2(	State1_tmp1[5]	), .Warn_Out2( State1_warn1[5] ),
	.In3(  Ia_RMS ), .Reference3( IacOI_1p20_ref ), .Delay3( 700   ), .Warn3( 650   ), .MonitorOut3(	State1_tmp2[5]	), .Warn_Out3( State1_warn2[5] ),
	.In4(  Ia_RMS ), .Reference4( OLoadTestEn ? 2047:IacOI_1p25_ref ), .Delay4( IlimitX3en ? 250:50 ), .Warn4( IlimitX3en ? 200:30 ), .MonitorOut4( State1_tmp1[8]	), .Warn_Out4( State1_warn1[8] ),
	.In5(  Ia_RMS ), .Reference5( IacOI_1p30_ref ), .Delay5( IlimitX3en ? 150:10 ), .Warn5( IlimitX3en ? 120:5  ), .MonitorOut5( State1_tmp2[8]	), .Warn_Out5( State1_warn2[8] ),
	
	.In6(  Ib_RMS ), .Reference6( 2047 ), .Delay6( 18600 ), .Warn6( 18000 ), .MonitorOut6(	State1_tmp1[3]	), .Warn_Out6( State1_warn1[3] ),
	.In7(  Ib_RMS ), .Reference7( IacOI_1p10_ref ), .Delay7( SimOnTime ? 1250 : 6600  ), .Warn7( SimOnTime ? 1200 : 6300	 ), .MonitorOut7(	State1_tmp2[3]	), .Warn_Out7( State1_warn2[3] ),
	.In8(  Ib_RMS ), .Reference8( OLoadTestEn ? 2047:IacOI_1p15_ref ), .Delay8( SimOnTime ? 950 : 3300  ), .Warn8( SimOnTime ? 900 : 3000	 ), .MonitorOut8(	State1_tmp1[6]	), .Warn_Out8( State1_warn1[6] ),
	.In9(  Ib_RMS ), .Reference9( IacOI_1p20_ref ), .Delay9( 700   ), .Warn9( 650   ), .MonitorOut9(	State1_tmp2[6]	), .Warn_Out9( State1_warn2[6] ),
	.In10( Ib_RMS ), .Reference10( OLoadTestEn ? 2047:IacOI_1p25_ref ), .Delay10( IlimitX3en ? 250:50     ), .Warn10( IlimitX3en ? 200:30 ), .MonitorOut10( State1_tmp1[9] ), .Warn_Out10( State1_warn1[9] ),
	.In11( Ib_RMS ), .Reference11( IacOI_1p30_ref ), .Delay11( IlimitX3en ? 150:10	  ), .Warn11( IlimitX3en ? 120:5	 ), .MonitorOut11( State1_tmp2[9] ), .Warn_Out11( State1_warn2[9] ),
	
	.In12( Ic_RMS ), .Reference12( 2047 ), .Delay12( 18600 ), .Warn12( 18000 ), .MonitorOut12( State1_tmp1[4] ), .Warn_Out12( State1_warn1[4] ),
	.In13( Ic_RMS ), .Reference13( IacOI_1p10_ref ), .Delay13( SimOnTime ? 1250 : 6600  ), .Warn13( SimOnTime ? 1200 : 6300  ), .MonitorOut13( State1_tmp2[4] ), .Warn_Out13( State1_warn2[4] ),
	.In14( Ic_RMS ), .Reference14( OLoadTestEn ? 2047:IacOI_1p15_ref ), .Delay14( SimOnTime ? 950 : 3300  ), .Warn14( SimOnTime ? 900 : 3000  ), .MonitorOut14( State1_tmp1[7] ), .Warn_Out14( State1_warn1[7] ),
	.In15( Ic_RMS ), .Reference15( IacOI_1p20_ref ), .Delay15( 700   ), .Warn15( 650   ), .MonitorOut15( State1_tmp2[7] ), .Warn_Out15( State1_warn2[7] ),
	.In16( Ic_RMS ), .Reference16( OLoadTestEn ? 2047:IacOI_1p25_ref ), .Delay16( IlimitX3en ? 250:50     ), .Warn16( IlimitX3en ? 200:30  ), .MonitorOut16( State1_tmp1[10] ), .Warn_Out16( State1_warn1[10] ),
	.In17( Ic_RMS ), .Reference17( IacOI_1p30_ref ), .Delay17( IlimitX3en ? 150:10	  ), .Warn17( IlimitX3en ? 120:5	  ), .MonitorOut17( State1_tmp2[10] ), .Warn_Out17( State1_warn2[10] ),

	.In21( Idc_RMS	),	.Reference21( IdcOI_1p15_ref ), .Delay21(	6600 ), .MonitorOut21( State2[0]	),	
	.In22( Idc_RMS	),	.Reference22( IdcOI_1p25_ref ), .Delay22(	700  ), .MonitorOut22( State2[1]	),		
	.In23( Idc_RMS	),	.Reference23( IdcOI_1p35_ref ), .Delay23(	OLoadTestEn ? 150:50	 ), .MonitorOut23( State2[2]	) 
);	

assign State1[2]  = State1_tmp1[2]  | State1_tmp2[2]; //1.05+1.10
assign State1[3]  = State1_tmp1[3]  | State1_tmp2[3]; //1.15+1.20
assign State1[4]  = State1_tmp1[4]  | State1_tmp2[4]; //1.25+1.30 
assign State1[5]  = State1_tmp1[5]  | State1_tmp2[5];
assign State1[6]  = State1_tmp1[6]  | State1_tmp2[6];
assign State1[7]  = State1_tmp1[7]  | State1_tmp2[7];
assign State1[8]  = State1_tmp1[8]  | State1_tmp2[8];
assign State1[9]  = State1_tmp1[9]  | State1_tmp2[9];
assign State1[10] = State1_tmp1[10] | State1_tmp2[10];
reg  OIFlg2;
reg [11:0] IlimitOut2;
//reg [15:0] OIFlgClrCnt;
always @(posedge clk_0p1Hz)  begin  
	 if(OIFlg2==0) begin
	    // OIFlg2      <= SettingSwitchCMD3[9] ? ((|State1_warn1[10:2])|(|State1_warn2[10:2])) : 0; 
         OIFlg2      <= SettingSwitchCMD3[12] ? ((|State1_warn1[10:2])|(|State1_warn2[10:2])) : 0;		 
		 IlimitOut2  <= (IlimitX3en ? Ilimit3p05 : (OLoadTestEn ? Ilimit1p22 : Ilimit1p12) ); //3X  1X 4
		 OIFlgClrCnt <= 0;
	 end else begin 
		 IlimitOut2  <= IlimitX3en ? Ilimit1p12 : Ilimit1p05; //3X  1X  
		 OIFlgClrCnt <= (OIFlgClrCnt<1200) ? (OIFlgClrCnt+1) : OIFlgClrCnt; 
		 OIFlg2      <= (OIFlgClrCnt<1200) ? 1 : ((|State1_warn1[10:2])|(|State1_warn2[10:2]));  
	 end
end 
assign ILimit_Rdced = IlimitOut2;
assign	State12[12]	=	OIFlg2;
//=====================================Overload=================================================================
//======================================================================================================

wire IaEver_OI,IbEver_OI,IcEver_OI;
assign State4[15] = ErrABC1 | ErrABC2 | ErrABC3 | ErrABC4 | CarryErr; 
assign State7[12] = ErrABC1;
assign State7[13] = ErrABC2;
assign State7[14] = ErrABC3;
assign State7[15] = ErrABC4;

wire [15:0] State6_tmp; 
assign State6[15:13] = Cfg_CtChkEn ? State6_tmp[15:13] : 3'b000; 

AnalogMonitor_V10 AnalogMonitor_V10_Inst
(
	.g_clk( g_clk ),.Rst_n( Rst_n ),.Pulse_4096Hz( Pulse98p3477Hz/*Pulse4096Hz*/ ),.Monitor_Reset( (StateCode == STOP) ),
	.In2(	Ia_CT_RMS	),	.Reference2(	ICT_OI_ref	),	.Delay2(	T_0p01s	),
	.In5(	Ib_CT_RMS	),	.Reference5(	ICT_OI_ref	),	.Delay5(	T_0p01s	),
	.In8(	Ic_CT_RMS	),	.Reference8(	ICT_OI_ref	),	.Delay8(	T_0p01s	),
	.In11(	(Ia_Ever[11])?(-Ia_Ever):(Ia_Ever) 	),	.Reference11(	IabcEver_OI_ref		),	    .Delay11(	T_0p5s	),
	.In14(	(Ib_Ever[11])?(-Ib_Ever):(Ib_Ever)	),	.Reference14(	IabcEver_OI_ref		),	    .Delay14(	T_0p5s	),
	.In17(	(Ic_Ever[11])?(-Ic_Ever):(Ic_Ever)	),	.Reference17(	IabcEver_OI_ref		),	    .Delay17(	T_0p5s	),

	.In0(	Uab_RMS	),	.Reference0(	Uac_OV_ref	),	.Delay0(	Uac_OV1_time/*T_0p5s*/	),
	.In1(	Uab_RMS	),	.Reference1(	Uac_OV2_ref/*Uac_OVx11_ref*/	),	.Delay1(	Uac_OV2_time/*T_0p05s*/	),
	//.In2(	/*Uab_RMS*/	),	.Reference2(	Uac_OVx12_ref	),	.Delay2(	T_0p01s	),
	.In3(	Uac_UV_En ? Uac_UV_ref : (-12'd2)	),	.Reference3(	Uab_RMS	),	.Delay3(	Uac_UV1_time/*T_0p5s*/	),
	.In4(	Uac_UV_En ? Uac_UV2_ref : (-12'd2)	),	.Reference4(	Uab_RMS	),	.Delay4(	Uac_UV2_time/*T_0p05s*/	),
	//.In5(	/*Uac_UV_En ? Uac_UVx08_ref : (-12'd2)*/	),	.Reference5(	Uab_RMS	),	.Delay5(	T_0p01s	),
	.In6(	Ubc_RMS	),	.Reference6(	Uac_OV_ref	),	.Delay6(	Uac_OV1_time/*T_0p5s*/	),
	.In7(	Ubc_RMS	),	.Reference7(	Uac_OV2_ref/*Uac_OVx11_ref*/	),	.Delay7(Uac_OV2_time/*	T_0p05s*/	),
	//.In8(	/*Ubc_RMS*/	),	.Reference8(	Uac_OVx12_ref	),	.Delay8(	T_0p01s	),
	.In9(	Uac_UV_En ? Uac_UV_ref : (-12'd2)	),	.Reference9(	Ubc_RMS	),	.Delay9(	Uac_UV1_time/*T_0p5s*/	),
	.In10(	Uac_UV_En ? Uac_UV2_ref : (-12'd2)	),	.Reference10(	Ubc_RMS	),	.Delay10(	Uac_UV2_time/*T_0p05s*/	),
	///.In11(	/*Uac_UV_En ? Uac_UVx08_ref : (-12'd2)*/	),	.Reference11(	Ubc_RMS	),	.Delay11(	T_0p01s	),
	.In12(	Uca_RMS	),	.Reference12(	Uac_OV_ref	),	.Delay12(	Uac_OV1_time/*T_0p5s*/	),
	.In13(	Uca_RMS	),	.Reference13(	Uac_OV2_ref/*Uac_OVx11_ref*/	),	.Delay13(	Uac_OV2_time/*T_0p05s*/	),
	//.In14(	/*Uca_RMS*/	),	.Reference14(	Uac_OVx12_ref	),	.Delay14(	T_0p01s	),
	.In15(	Uac_UV_En ? Uac_UV_ref : (-12'd2)	),	.Reference15(	Uca_RMS	),	.Delay15(	Uac_UV1_time/*T_0p5s*/	),
	.In16(	Uac_UV_En ? Uac_UV2_ref : (-12'd2)	),	.Reference16(	Uca_RMS	),	.Delay16(	Uac_UV2_time/*T_0p05s*/	),
	//.In17(	/*Uac_UV_En ? Uac_UVx08_ref : (-12'd2)*/	),	.Reference17(	Uca_RMS	),	.Delay17(	T_0p01s	),
	.In18(	Ia_RMS	),	.Reference18(	Iac_OI_ref	),	.Delay18(	T_0p5s	),
	.In19(	Ia_RMS	),	.Reference19(	Iac_OIx11_ref	),	.Delay19(	T_0p2s	),
	.In20(	Ia_RMS	),	.Reference20(	Iac_OIx12_ref	),	.Delay20(	T_0p1s	),
	.In21(	Ib_RMS	),	.Reference21(	Iac_OI_ref	),	.Delay21(	T_0p5s	),
	.In22(	Ib_RMS	),	.Reference22(	Iac_OIx11_ref	),	.Delay22(	T_0p2s	),
	.In23(	Ib_RMS	),	.Reference23(	Iac_OIx12_ref	),	.Delay23(	T_0p1s	),
	.In24(	Ic_RMS	),	.Reference24(	Iac_OI_ref	),	.Delay24(	T_0p5s	),
	.In25(	Ic_RMS	),	.Reference25(	Iac_OIx11_ref	),	.Delay25(	T_0p2s	),
	.In26(	Ic_RMS	),	.Reference26(	Iac_OIx12_ref	),	.Delay26(	T_0p1s	),
	.In27(	Udc	),	.Reference27(	Udc_OV_ref	),	.Delay27(	T_0p5s	),
	.In28(	Udc	),	.Reference28(	Udc_OVx11_ref	),	.Delay28(	T_0p05s	),
	.In29(	Udc	),	.Reference29(	Udc_OVx12_ref	),	.Delay29(	T_0p01s	),
	.In30(	Udc_UV_ref	),	.Reference30(	Udc	),	.Delay30(	T_0p5s	),
	.In31(	Udc_UVx09_ref	),	.Reference31(	Udc	),	.Delay31(	T_0p05s	),
	.In32(	Udc_UVx08_ref	),	.Reference32(	Udc	),	.Delay32(	T_0p01s	),
	.In33(	/*Idc*/(Idc[11])?(-Idc):(Idc)	),	.Reference33(	Idc_OI_ref	),	.Delay33(	T_0p5s	),
	.In34(	/*Idc*/(Idc[11])?(-Idc):(Idc)	),	.Reference34(	Idc_OIx11_ref	),	.Delay34(	T_0p05s	),
	.In35(	/*Idc*/(Idc[11])?(-Idc):(Idc)	),	.Reference35(	Idc_OIx12_ref	),	.Delay35(	T_0p01s	),
	.In36(	Ubtr	),	.Reference36(	Ubtr_OV_ref	),	.Delay36(	T_0p5s	),
	.In37(	Ubtr	),	.Reference37(	Ubtr_OVx11_ref	),	.Delay37(	T_0p05s	),
	.In38(	Ubtr	),	.Reference38(	Ubtr_OVx12_ref	),	.Delay38(	T_0p01s	),
	.In39(	(WorkDelayFlg&(SettingSwitchCMD1[7:5]==3'b010)) ? -12'd100 :Ubtr_UV_ref	),	.Reference39(	Ubtr	),	.Delay39(	T_0p5s	),
	.In40(	(WorkDelayFlg&(SettingSwitchCMD1[7:5]==3'b010)) ? -12'd100 :Ubtr_UVx09_ref	),	.Reference40(	Ubtr	),	.Delay40(	T_0p05s	),
	.In41(	(WorkDelayFlg&(SettingSwitchCMD1[7:5]==3'b010)) ? -12'd100 :Ubtr_UVx08_ref	),	.Reference41(	Ubtr	),	.Delay41(	T_0p01s	),

	.In42(	/*正负极对地电压之差*/DeltaUdc_RMS	),	.Reference42(	UdcDelta_OV_ref	),	.Delay42(	T_0p05s	),
	.In43(	-12'd60	),	.Reference43(	Ubtr	),	.Delay43(	T_0p01s	),
	.In44(	Udc_Ubtr_Diff[11:0]/*Ubtr*/	),	.Reference44(	ProChgDrop_ref/*Udc_Add_Bias*/),	.Delay44(	T_0p05s	),
	.In45(	/*Udc*/ICT0_RMS	),	.Reference45(	IcomRms_OI_ref	),	.Delay45(	T_0p01s	),
	.In46(	IcomRms_b12	),	.Reference46(	IcomRms_OI_ref	),	.Delay46(	T_0p01s	),
	.In47(	Uac_UV_En ? Uac_UV3_ref : (-12'd2)	),	.Reference47(	Uac_Min	),	.Delay47(	Uac_UV3_time	),
									
	.In_Inst0(	Uab_FltP32	),	.Ref_Inst0(	Uac_Inst_OV_ref	),			//(SettingSwitchCMD2[2]==1'b1) ? Uab_FltP32 : 
	.In_Inst1(	Ubc_FltP32	),	.Ref_Inst1(	Uac_Inst_OV_ref	),				
	.In_Inst2(	Uca_FltP32	),	.Ref_Inst2(	Uac_Inst_OV_ref	),				
	.In_Inst3(	Ia_FltP32	),	.Ref_Inst3(	Iac_Inst_OV_ref	),				
	.In_Inst4(	Ib_FltP32	),	.Ref_Inst4(	Iac_Inst_OV_ref	),				
	.In_Inst5(	Ic_FltP32	),	.Ref_Inst5(	Iac_Inst_OV_ref	),				
	.In_Inst6(	Udc_FltP32	),	.Ref_Inst6(	Udc_Inst_OV_ref	),				
	.In_Inst7(	Idc_FltP32	),	.Ref_Inst7(	Idc_Inst_OV_ref	),				
	.In_Inst8(	Ubtr_FltP32	),	.Ref_Inst8(	Ubtr_Inst_OV_ref	),				
	.In_Inst9(		),	.Ref_Inst9(		),				
	//.In_Inst10(		Udc_UVx05_ref ),	.Ref_Inst10(	Udc_FltP32	),				
	//.In_Inst11(		Ubtr_UVx05_ref ),	.Ref_Inst11(	Ubtr_FltP32	),	
	.In_Inst10(		UposGnd_FltP32 ),	.Ref_Inst10(	UpnGnd_OV_ref	),				
	.In_Inst11(		UnegGnd_FltP32 ),	.Ref_Inst11(	UpnGnd_OV_ref	),			
									
	.MonitorOut0(	State0[0]	),						
	.MonitorOut1(	State0[1]	),						
	.MonitorOut2(	/*State0[2]*/State6_tmp[13]	),						
	.MonitorOut3(	State0[3]	),						
	.MonitorOut4(	State0[4]	),						
	.MonitorOut5(	/*State0[5]*/State6_tmp[14]	),						
	.MonitorOut6(	State0[6]	),						
	.MonitorOut7(	State0[7]	),						
	.MonitorOut8(	/*State0[8]*/State6_tmp[15]	),						
	.MonitorOut9(	State0[9]	),						
	.MonitorOut10(	State0[10]	),						
	.MonitorOut11(	/*State0[11]*/ IaEver_OI	),						
	.MonitorOut12(	State0[12]	),						
	.MonitorOut13(	State0[13]	),						
	.MonitorOut14(	/*State0[14]*/ IbEver_OI	),						
	.MonitorOut15(	State0[15]	),						
	.MonitorOut16(	State1[0]	),						
	.MonitorOut17(	/*State1[1]*/  IcEver_OI	),						
	//.MonitorOut18(	State1[2]	),	 //DEL OIload					
	//.MonitorOut19(	State1[3]	),	 //DEL OIload							
	//.MonitorOut20(	State1[4]	),	 //DEL OIload							
	//.MonitorOut21(	State1[5]	),	 //DEL OIload							
	//.MonitorOut22(	State1[6]	),	 //DEL OIload							
	//.MonitorOut23(	State1[7]	),	 //DEL OIload							
	//.MonitorOut24(	State1[8]	),	 //DEL OIload							
	//.MonitorOut25(	State1[9]	),	 //DEL OIload							
	//.MonitorOut26(	State1[10]	),	 //DEL OIload							
	.MonitorOut27(	State1[11]	),						
	.MonitorOut28(	/*State1[12]*/	),						
	.MonitorOut29(	/*State1[13]*/	),						
	.MonitorOut30(	State1[14]	),						
	.MonitorOut31(	State1[15]	),						
	//.MonitorOut32(	State2[0]	),	 //DEL OIload							
	//.MonitorOut33(	State2[1]	),	 //DEL OIload							
	//.MonitorOut34(	State2[2]	),	 //DEL OIload						
	.MonitorOut35(	State2[3]	),						
	.MonitorOut36(	State2[4]	),						
	.MonitorOut37(	State2[5]	),						
	.MonitorOut38(	State2[6]	),						
	.MonitorOut39(	State2[7]	),						
	.MonitorOut40(	State2[8]	),						
	.MonitorOut41(	State2[9]	),						
	.MonitorOut42(	State2[10]	),						
	.MonitorOut43(	State5[0]	),						
	.MonitorOut44(Udc_Ubtr_Diff_State),						
	.MonitorOut45(	State5[1]/*State7[5]*/	),						
	.MonitorOut46(	State4[1]	),						
	.MonitorOut47(	State3[9]	),						
									
	.Out_Inst0(	/*State2[11]*/	State2_11),						
	.Out_Inst1(	/*State2[12]*/	State2_12),						
	.Out_Inst2(	/*State2[13]*/	State2_13),						
	.Out_Inst3(	State2_14/*State2[14]*/	),						
	.Out_Inst4(	State2_15/*State2[15]*/	),						
	.Out_Inst5(	State3_0/*State3[0]*/	),						
	.Out_Inst6(	State3[1]	),						
	.Out_Inst7(	State3_2/*State3[2]*/	),						
	.Out_Inst8(	State3[3]	),						
	.Out_Inst9(	/*State4[1]*/	),	 
	.Out_Inst10(	State1[12] ),			
	.Out_Inst11(	State1[13] )
);	 
//.Out_Inst10(	Udc_UV05_Flag	),						
//.Out_Inst11(	Ubtr_UV05_Flag	)	

wire State2_14;
wire State2_15;
wire State3_0;
wire State3_2;

wire State2_11;
wire State2_12;
wire State2_13;
//assign State0[2] = (SettingSwitchCMD2[2]==1'b0) ? State0_2 : 1'b0;
//assign State0[5] = (SettingSwitchCMD2[2]==1'b0) ? State0_5 : 1'b0;
//assign State0[8] = (SettingSwitchCMD2[2]==1'b0) ? State0_8 : 1'b0;
//assign State0[11] = (SettingSwitchCMD2[2]==1'b0) ? State0_11 : 1'b0;
//assign State0[14] = (SettingSwitchCMD2[2]==1'b0) ? State0_14 : 1'b0;
//assign State1[1] = (SettingSwitchCMD2[2]==1'b0) ? State1_1 : 1'b0;
//(SettingSwitchCMD2[10]==1'b0) ? State2_11 : 1'b0;
//assign State2[11] = (~SettingSwitchCMD2[10]) & (SettingSwitchCMD1[7:6] == 2'b00) & State2_11;
//assign State2[12] = (~SettingSwitchCMD2[10]) & (SettingSwitchCMD1[7:6] == 2'b00) & State2_12;
//assign State2[13] = (~SettingSwitchCMD2[10]) & (SettingSwitchCMD1[7:6] == 2'b00) & State2_13;
assign State2[11] = (SettingSwitchCMD2[10] | (SettingSwitchCMD1[7:6] == 2'b00))  ?  State2_11 : 0;
assign State2[12] = (SettingSwitchCMD2[10] | (SettingSwitchCMD1[7:6] == 2'b00))  ?  State2_12 : 0;
assign State2[13] = (SettingSwitchCMD2[10] | (SettingSwitchCMD1[7:6] == 2'b00))  ?  State2_13 : 0;
wire Ac_OVins;
assign Ac_OVins = State2_11 | State2_12 | State2_13;
//assign State4[2] = State7[4]|State7[5];

wire[11:0] Uac_Max_Temp,Uac_Min_Temp;
//wire[11:0] Uac_Max,Uac_Min;
assign Uac_Max_Temp = (Uab_RMS>Ubc_RMS)?Uab_RMS:Ubc_RMS;
assign Uac_Min_Temp = (Uab_RMS>Ubc_RMS)?Ubc_RMS:Uab_RMS;
assign Uac_Max      = (Uac_Max_Temp>Uca_RMS)?Uac_Max_Temp:Uca_RMS;
assign Uac_Min      = (Uac_Min_Temp>Uca_RMS)?Uca_RMS:Uac_Min_Temp;
//assign Uabc_abs_max = Uac_Max;
/*AnalogMonitor_V10 AnalogMonitor_V10_Inst1(
				.g_clk( g_clk ),.Rst_n( Rst_n ),.Pulse_4096Hz( Pulse4096Hz ),.Monitor_Reset( (StateCode == STOP) ),
            .In0(Uac_Max),.Reference0(Uac_OV_ref), .Delay0(HLvrt_StepIn_Time),
            .In1(Uac_Max),.Reference1(Uac_OV2_ref),.Delay1(HLvrt_StepIn_Time),
            .In2(Uac_UV_ref),.Reference2(Uac_Min), .Delay2(HLvrt_StepIn_Time),
            .In3(Uac_UV2_ref),.Reference3(Uac_Min),.Delay3(HLvrt_StepIn_Time),
            .In4(Uac_UV3_ref),.Reference4(Uac_Min),.Delay4(HLvrt_StepIn_Time),
            .MonitorOut0(State7[8]),	//HV1
            .MonitorOut1(State7[9]),	//HV2
            .MonitorOut2(State7[10]),	//LV1
            .MonitorOut3(State7[11]),	//LV2
            .MonitorOut4(State7[12])	//LV3
          );	*/	 
			 
wire Ubtr_UV05_Flag;
wire Udc_UV05_Flag;
//assign State4[15] = Ubtr_UV05_Flag | Udc_UV05_Flag;
wire State4_12;
CabinetHeatOV_V10 CabinetHeatOV_V10_Inst
          (
           .g_clk( g_clk ),
           .Rst_n( Rst_n ),
           .P_b16( P_b16 ),
           .Pdc_b16( Pdc_b16 ),
           .Pdc2ac_co_b16( Pdc2ac_co_b16 ),
           .CabnetHeatOV_Ref( CabnetHeatOV_Ref ),
           .Delay( 16'd4096 ),
           .Pulse_4096Hz( Pulse4096Hz ),
           .Monitor_Reset( (StateCode == STOP) ),
           .Out( State4_12/*State4[12]*/ )
          );	
//assign State4[12] = 0;//State4_12;// & SettingSwitchCMD3[14];
assign State0[2]=0;
assign State0[5]=0;
assign State0[8]=0;
assign State0[11]=0;
assign State0[14]=0;
assign State1[1]=0;
assign State3[12]=0;
//assign State4[5]=0;
//assign State4[8]=0;
assign State5[12]=0;
//assign State6[15:12]=0; //Need DEL

FrequencyMonitor_V10 FrequencyMonitor_V10_Inst
          (
           .g_clk( g_clk ),
           .Rst_n( Rst_n ),
           .Pulse_4096Hz( Pulse98p3477Hz/*Pulse4096Hz*/ ),
           .Monitor_Reset( (StateCode == STOP) ),
           .In0( w ),
           .Reference0( Frq_OF_ref ),
           .Delay0( Frq_OF1_time/*T_0p5s*/ ),
           .In1( w ),
           .Reference1( Frq_OF2_ref/*Frq_OF_ref + 16'd344*/ ),
           .Delay1( Frq_OF2_time/*T_0p2s*/ ),
           .In2( /*w*/ ),	//3级过频取消
           .Reference2( Frq_OF_ref + 16'd688 ),
           .Delay2( T_0p05s ),
           .In3( Frq_UF_ref ),
           .Reference3( w ),
           .Delay3( Frq_UF1_time/*T_0p5s*/ ),
           .In4( Frq_UF2_ref/*Frq_UF_ref - 16'd344*/ ),
           .Reference4( w ),
           .Delay4( Frq_UF2_time/*T_0p2s*/ ),
           .In5( /*Frq_UF_ref - 16'd688*/ ),//3级欠频取消
           .Reference5( /*w*/ ),
           .Delay5( /*T_0p05s*/ ),
           .Out0( /*State4[3]*/ State4_3 ),
           .Out1( /*State4[4]*/ State4_4 ),
           .Out2( /*State4[5]*/ State4_5 ),
           .Out3( /*State4[6]*/ State4_6 ),
           .Out4( /*State4[7]*/ State4_7 ),
           .Out5( /*State4[8]*/ State4_8 )
          );
wire State4_3;
wire State4_4;
wire State4_5;
wire State4_6;
wire State4_7;
wire State4_8;
assign State4[3] = State4_3 ;
assign State4[4] = State4_4 ;
assign State4[5] = State4_5 ;
assign State4[6] = State4_6 ;
assign State4[7] = State4_7 ;
assign State4[8] = State4_8 ; 

wire	IGBTA_ERR;
wire	IGBTB_ERR;
wire	IGBTC_ERR;

assign IGBTA_ERR = IGBTA_ERR_1 & IGBTA_ERR_2 & IGBTA_ERR_3 & IGBTA_ERR_4;
assign IGBTB_ERR = IGBTB_ERR_1 & IGBTB_ERR_2 & IGBTB_ERR_3 & IGBTB_ERR_4;
assign IGBTC_ERR = IGBTC_ERR_1 & IGBTC_ERR_2 & IGBTC_ERR_3 & IGBTC_ERR_4;
//assign IGBTA_ERR = IGBTA_ERR_2 & IGBTA_ERR_3;
//assign IGBTB_ERR = IGBTB_ERR_2 & IGBTB_ERR_3;
//assign IGBTC_ERR = IGBTC_ERR_2 & IGBTC_ERR_3;
//1/(25e6/8/20)=6.4us,1/(25e6/8/10)=3.2us
//assign State11[15] = CN6_7_CONNECT;
//assign State11[14] = IGBTA_ERR;
//assign State11[13] = IGBTB_ERR;
//assign State11[12] = IGBTC_ERR;


//assign State3[8] = SettingSwitchCMD3[4];//~CN6_7_CONNECT;
//BitFilter_V16 BitFilter_V16_Inst
/*BitFilter_VZ16 BitFilter_V16_Inst
(
	.g_clk( g_clk ),.Rst_n( Rst_n),.Filter_Reset( 1'b0 ),
	//驱动板正常时对应的ERR信号输出高电平
	.In0(	  ( ~IGBTA_ERR)	), 
	.In1(	  ( ~IGBTB_ERR)	),
	.In2(	  ( ~IGBTC_ERR)	),
	.In3(	  ~CN6_7_CONNECT	), //ADD ZJ 20211103
	.In4(	  	), 
	.In5(	 	),
	.In6(	  	),
	.In7(	  	), 
	.BitFltedOut0(	State3[4]	),
	.BitFltedOut1(	State3[5]	),
	.BitFltedOut2(	State3[6]	),
	.BitFltedOut3(	 ),//ADD ZJ 20211103
	.BitFltedOut4(		),
	.BitFltedOut5(		),  //无反应
	.BitFltedOut6(		),
	.BitFltedOut7(		), 
	.CNT_b12(IgbtErr_Cnt_b12/) 
);  */

reg  [2:0] g_clk2cnt; 
reg  g_clk2;
always @(posedge g_clk ) begin 
	g_clk2cnt <= g_clk2cnt+1; 
	g_clk2    <= (g_clk2cnt==3'd0) ? 1 : 0;
end
wire [11:0] ErrSet_u12 = (IgbtErr_Cnt_b12[11:0]>12'd2000) ? 12'd2000 : ((IgbtErr_Cnt_b12[11:0]<12'd10) ? 12'd10 : IgbtErr_Cnt_b12[11:0]);
wire IGBTErrChkEn = CtlLoop_On | (IgbtErr_Cnt_b12[11:0]==12'd2046); //for test
IGBTErrChk IGBTErr_A1(.g_clk(g_clk2),.Rst_n(IGBTErrChkEn),.ErrIn((~IGBTA_ERR_1)),.ErrSet_u12(ErrSet_u12),.ErrOut(State6[0])); 
IGBTErrChk IGBTErr_A2(.g_clk(g_clk2),.Rst_n(IGBTErrChkEn),.ErrIn((~IGBTA_ERR_2)),.ErrSet_u12(ErrSet_u12),.ErrOut(State6[1])); 
IGBTErrChk IGBTErr_A3(.g_clk(g_clk2),.Rst_n(IGBTErrChkEn),.ErrIn((~IGBTA_ERR_3)),.ErrSet_u12(ErrSet_u12),.ErrOut(State6[2])); 
IGBTErrChk IGBTErr_A4(.g_clk(g_clk2),.Rst_n(IGBTErrChkEn),.ErrIn((~IGBTA_ERR_4)),.ErrSet_u12(ErrSet_u12),.ErrOut(State6[3])); 
IGBTErrChk IGBTErr_B1(.g_clk(g_clk2),.Rst_n(IGBTErrChkEn),.ErrIn((~IGBTB_ERR_1)),.ErrSet_u12(ErrSet_u12),.ErrOut(State6[4])); 
IGBTErrChk IGBTErr_B2(.g_clk(g_clk2),.Rst_n(IGBTErrChkEn),.ErrIn((~IGBTB_ERR_2)),.ErrSet_u12(ErrSet_u12),.ErrOut(State6[5])); 
IGBTErrChk IGBTErr_B3(.g_clk(g_clk2),.Rst_n(IGBTErrChkEn),.ErrIn((~IGBTB_ERR_3)),.ErrSet_u12(ErrSet_u12),.ErrOut(State6[6])); 
IGBTErrChk IGBTErr_B4(.g_clk(g_clk2),.Rst_n(IGBTErrChkEn),.ErrIn((~IGBTB_ERR_4)),.ErrSet_u12(ErrSet_u12),.ErrOut(State6[7]));
IGBTErrChk IGBTErr_C1(.g_clk(g_clk2),.Rst_n(IGBTErrChkEn),.ErrIn((~IGBTC_ERR_1)),.ErrSet_u12(ErrSet_u12),.ErrOut(State6[8]));
IGBTErrChk IGBTErr_C2(.g_clk(g_clk2),.Rst_n(IGBTErrChkEn),.ErrIn((~IGBTC_ERR_2)),.ErrSet_u12(ErrSet_u12),.ErrOut(State6[9]));
IGBTErrChk IGBTErr_C3(.g_clk(g_clk2),.Rst_n(IGBTErrChkEn),.ErrIn((~IGBTC_ERR_3)),.ErrSet_u12(ErrSet_u12),.ErrOut(State6[10]));
IGBTErrChk IGBTErr_C4(.g_clk(g_clk2),.Rst_n(IGBTErrChkEn),.ErrIn((~IGBTC_ERR_4)),.ErrSet_u12(ErrSet_u12),.ErrOut(State6[11]));

assign State3[4] = (IgbtErr_Cnt_b12[11:0]==12'd2047) ? 0 : ( IgbtErr_Cnt_b12[0] ? (|State6[2:1]) : (|State6[3:0]) );
assign State3[5] = (IgbtErr_Cnt_b12[11:0]==12'd2047) ? 0 : ( IgbtErr_Cnt_b12[0] ? (|State6[6:5]) : (|State6[7:4]) );
assign State3[6] = (IgbtErr_Cnt_b12[11:0]==12'd2047) ? 0 : ( IgbtErr_Cnt_b12[0] ? (|State6[10:9]) : (|State6[11:8]) );

BitFilter_VC1 BitFilter_VC1
          (
           .g_clk( g_clk ),.Rst_n( Rst_n ),.Filter_Reset( 1'b0 ),  //1=Reset
           .Pulse_4096Hz(Pulse4096Hz),  .CNT(16'd1227),
           .In0(~CN6_7_CONNECT),  
           .BitFltedOut0(State3[8]) 
          );
/*			 
reg        State3_8;
assign State3[8] = State3_8;
always @(posedge g_clk) begin 
	if ( State11[8] == 1'b0) begin//State11[8]==CN6_7_CONNECT
		if(F_cnt < SetCONNECTTime) begin //300ms
			F_cnt <= Pulse4096Hz ? (F_cnt + 1) : F_cnt;
		end
		else begin
			State3_8 <= 1;
		end
	end
	else begin
		if(F_cnt > 0) begin
			F_cnt <= Pulse4096Hz ? (F_cnt - 1) : F_cnt;
		end
		else begin
			State3_8 <= 0;
		end
	end
end*/
//assign State3[4] =~IGBTA_ERR;
//assign State3[5] =~IGBTB_ERR;
//assign State3[6] =~IGBTC_ERR;

assign State3[7] = FilberErr;


//
wire[11:0] Iac_Max_Temp,Iac_Min_Temp;
wire[11:0] Iac_Max,Iac_Min;
assign Iac_Max_Temp = (Ia_RMS>Ib_RMS)?Ia_RMS:Ib_RMS;
assign Iac_Min_Temp = (Ia_RMS>Ib_RMS)?Ib_RMS:Ia_RMS;
assign Iac_Max      = (Iac_Max_Temp>Ic_RMS)?Iac_Max_Temp:Ic_RMS;
assign Iac_Min      = (Iac_Min_Temp>Ic_RMS)?Ic_RMS:Iac_Min_Temp;
//assign Iabc_abs_max = Iac_Max;

reg IacLoss_Flag;
reg[11:0] IacLoss_ChkCnt;//200:4s

always @(posedge g_clk) begin 
	if (Rst_n == 1'b0) begin
		IacLoss_Flag <= 1'b0;
		IacLoss_ChkCnt <= 0;
	end
	else begin 
		if(StateCode > IDEL) begin
	 
			if(IacLoss_ChkCnt > 12'd200) begin
				IacLoss_Flag <= (~PQ_ZeroBlock_r);  
			end
			else begin 
				if((Iac_Max>IacLoss_Max) & (Iac_Min<IacLoss_Min)) begin
					IacLoss_ChkCnt <= Pulse50x1_Hz ? (IacLoss_ChkCnt + 1) : IacLoss_ChkCnt;
				end
				else begin 
					IacLoss_ChkCnt <= 0;
				end
			end 
			
		end
		else begin
			IacLoss_Flag <= 1'b0;
			IacLoss_ChkCnt <= 0;
		end
		
	end
end 
//=================================================
reg [31:0] WorkDelay3s; 
reg        WorkDelayFlg; 
always @(posedge g_clk)begin 
	if(StateCode==WORKING) begin
		if(WorkDelay3s < 4096) begin //1s
			WorkDelay3s<= Pulse4096Hz ? (WorkDelay3s+1) : WorkDelay3s;
			WorkDelayFlg <= 0;
		end
		else begin
			WorkDelayFlg <= 1;
		end 
	end
	else begin
		WorkDelay3s <= 0;
		WorkDelayFlg <= 0;
	end
end
//
//assign State3[13] = CMD1[7:5]? IacLoss_Flag:0;

assign State3[13] = (CMD1[7:6]==0) ? 0: IacLoss_Flag;

/*
assign State6[0] = State3[4] & (~IGBTA_ERR_1);
assign State6[1] = State3[4] & (~IGBTA_ERR_2);
assign State6[2] = State3[4] & (~IGBTA_ERR_3);
assign State6[3] = State3[4] & (~IGBTA_ERR_4);
assign State6[4] = State3[5] & (~IGBTB_ERR_1);
assign State6[5] = State3[5] & (~IGBTB_ERR_2);
assign State6[6] = State3[5] & (~IGBTB_ERR_3);
assign State6[7] = State3[5] & (~IGBTB_ERR_4);
assign State6[8] = State3[6] & (~IGBTC_ERR_1);
assign State6[9] = State3[6] & (~IGBTC_ERR_2);
assign State6[10] = State3[6] & (~IGBTC_ERR_3);
assign State6[11] = State3[6] & (~IGBTC_ERR_4);
*/
/*assign State6[0] = (~IGBTA_ERR_1);
assign State6[1] = (~IGBTA_ERR_2);
assign State6[2] = (~IGBTA_ERR_3);
assign State6[3] = (~IGBTA_ERR_4);
assign State6[4] = (~IGBTB_ERR_1);
assign State6[5] = (~IGBTB_ERR_2);
assign State6[6] = (~IGBTB_ERR_3);
assign State6[7] = (~IGBTB_ERR_4);
assign State6[8] = (~IGBTC_ERR_1);
assign State6[9] = (~IGBTC_ERR_2);
assign State6[10] = (~IGBTC_ERR_3);
assign State6[11] = (~IGBTC_ERR_4);*/

wire IN0,IN1,IN2,IN3,IN4,IN5,IN6,IN7,IN8,IN9,IN10,IN11,IN12,IN13,IN14,IN15;
/*BitFilter_V11 BitFilter_V11_Inst //4096/20  5MS
(
	.g_clk( g_clk ),.Rst_n( Rst_n ),.Pulse_4096Hz( Pulse4096Hz ),.Filter_Reset( 1'b0 ),
	//输入逻辑在硬件上有反相
	.In0(	~CPLD_in[0]	), 
	.In1(	~CPLD_in[1]	), 
	.In2(	~CPLD_in[2]	), 
	.In3(	~CPLD_in[3]	), 
	.In4(	~CPLD_in[4]	), 
	.In5(	~CPLD_in[5]	), 
	.In6(	~CPLD_in[6]	), 
	.In7(	~CPLD_in[7]	),
	.In8(	~CPLD_in[8]	),
	.In9(	~CPLD_in[9]	), 
	.In10(	~CPLD_in[10]	), 
	.In11(	~CPLD_in[11]	), 
	.In12(	~CPLD_in[12]	), 
	.In13(	~CPLD_in[13]	), 
	.In14(	~CPLD_in[14]	), 
	.In15(	~CPLD_in[15]	), 
	.BitFltedOut0(	IN8	), 
	.BitFltedOut1(	IN15	), 
	.BitFltedOut2(	IN10 	), 
	.BitFltedOut3(	IN11	), 
	.BitFltedOut4(	IN12	), 
	.BitFltedOut5(	IN13	), 
	.BitFltedOut6(	IN14	),	
	.BitFltedOut7(	IN9	),	
	.BitFltedOut8(	IN0	),//断路器安全链
	.BitFltedOut9(	IN2	),//主接触器状态反馈（0：吸合）
	.BitFltedOut10(IN4		),//外部开关信号
	.BitFltedOut11(IN6		),//外部开关信号
	.BitFltedOut12(IN7		),//开关门信号（0：吸合）
	.BitFltedOut13(IN5		),//急停信号（0：按下）
	.BitFltedOut14(IN3		),//温度状态反馈
	.BitFltedOut15(IN1   ) //防雷器状态反馈
);*/
BitFilter_V11 BitFilter_V11_Inst
(
	.g_clk( g_clk ),.Rst_n( Rst_n ),.Pulse_4096Hz( Pulse4096Hz ),.Filter_Reset( 1'b0 ),
	//输入逻辑在硬件上有反相
	.In0(	~CPLD_in[0]	), 
	.In1(	~CPLD_in[1]	), 
	.In2(	~CPLD_in[2]	), 
	.In3(	~CPLD_in[3]	), 
	.In4(	~CPLD_in[4]	), 
	.In5(	~CPLD_in[5]	), 
	.In6(	~CPLD_in[6]	), 
	.In7(	~CPLD_in[7]	),
	.In8(	~CPLD_in[8]	),
	.In9(	~CPLD_in[9]	), 
	.In10(~CPLD_in[10]		), 
	.In11(~CPLD_in[11]		), 
	.In12(~CPLD_in[12]		), 
	.In13(~CPLD_in[13]		), 
	.In14(~CPLD_in[14]		), 
	.In15(~CPLD_in[15]		), 
	.BitFltedOut0(	IN8	), 
	.BitFltedOut1(	IN9	), 
	.BitFltedOut2(	IN10	), 
	.BitFltedOut3(	IN11	), 
	.BitFltedOut4(	IN12	), 
	.BitFltedOut5(	IN13	), 
	.BitFltedOut6(	IN14	),	
	.BitFltedOut7(	IN15	),	
	
	.BitFltedOut8(	IN0	),	//断路器安全链
	.BitFltedOut9(	IN1	),	//主接触器状态反馈（0：吸合）
	.BitFltedOut10( IN2	),  //外部开关信号
	.BitFltedOut11( IN3	),  //外部开关信号
	.BitFltedOut12( IN4	),  //开关门信号（0：吸合）
	.BitFltedOut13( IN5	),  //急停信号（0：按下）
	.BitFltedOut14( IN6	),  //温度状态反馈
	.BitFltedOut15( IN7	)   //防雷器状态反馈
); 
/*
BitFilter_V11 BitFilter_V11_Inst
(
	.g_clk( g_clk ),.Rst_n( Rst_n ),.Pulse_4096Hz( Pulse4096Hz ),.Filter_Reset( 1'b0 ),
	//输入逻辑在硬件上有反相
	.In0(	~CPLD_in[0]	), 
	.In1(	~CPLD_in[1]	), 
	.In2(	~CPLD_in[2]	), 
	.In3(	~CPLD_in[3]	), 
	.In4(	~CPLD_in[4]	), 
	.In5(	~CPLD_in[5]	), 
	.In6(	~CPLD_in[6]	), 
	.In7(	~CPLD_in[7]	),
	.In8(	~CPLD_in[8]	),
	.In9(	~CPLD_in[9]	), 
	.In10(~CPLD_in[10]		), 
	.In11(~CPLD_in[11]		), 
	.In12(~CPLD_in[12]		), 
	.In13(~CPLD_in[13]		), 
	.In14(~CPLD_in[14]		), 
	.In15(~CPLD_in[15]		), 
	.BitFltedOut0(	IN0	), //断路器安全链
	.BitFltedOut1(	IN1	), //防雷器状态反馈
	.BitFltedOut2(	IN2	), //主接触器状态反馈（0：吸合）
	.BitFltedOut3(	IN3	), //温度状态反馈
	.BitFltedOut4(	IN4	), //预留
	.BitFltedOut5(	IN5	), //急停信号
	.BitFltedOut6(	IN6	),	//预留
	.BitFltedOut7(	IN7	),	//直流断路器
	
	.BitFltedOut8(	IN8	),	//预留
	.BitFltedOut9(	IN9	),	//直流预充
	.BitFltedOut10(IN10	),
	.BitFltedOut11(IN11	),
	.BitFltedOut12(IN12	),
	.BitFltedOut13(IN13	),
	.BitFltedOut14(IN14	),
	.BitFltedOut15(IN15	)
); */
//assign State5[13] = (SettingSwitchCMD3[11]==1'b0) ? IN4 : (~IN4);
//assign State5[13] = IN8;//(~IN8);//(SettingSwitchCMD3[11]==1'b0) ? IN8 : (~IN8);
assign State5[13] = (~IN8);//(~IN8);//(SettingSwitchCMD3[11]==1'b0) ? IN8 : (~IN8);
assign State5[14] = (~IN6);//(SettingSwitchCMD3[12]==1'b0) ? IN6 : (~IN6);
//assign State5[15] = (SettingSwitchCMD3[13]==1'b0) ? IN8 : (~IN8);
assign State5[15] = (~IN4);//(SettingSwitchCMD3[13]==1'b0) ? IN4 : (~IN4);

//assign State5[15] = ~IN8;
//wire OUT0,OUT1,OUT2,OUT3,OUT4,OUT5,OUT6,OUT7;
wire OUT0,OUT1,OUT2,OUT3,OUT4,OUT5,OUT6,OUT7,OUT8,OUT9,OUT10,OUT11;
wire SeriousFault;
assign SeriousFault = Err_Lock_State2[10] | (|Err_Lock_State3[9:4]) | Err_Lock_State3[15] | Err_Lock_State4[2] | Err_Lock_State4[0] | Err_Lock_State4[12] | Err_Lock_State4[13] | Err_Lock_State4[14] | Err_Lock_State4[15] | Err_Lock_State4[15] ;


//wire AcBrker_SwOff,AcBrker_OffPulse;
wire AcBrker_SwOn,AcBrker_SwOff,AcBrker_OnPulse,AcBrker_OffPulse;
wire DcBrker_SwOn,DcBrker_SwOff,DcBrker_OnPulse,DcBrker_OffPulse;
wire AcContactor;
wire DcSoftContactor;
//PQ: 2-3-4
//VF: 1-8-3-4
assign AcContactor = ((~WorkDelayFlg)&SettingSwitchCMD3[1]) |	((StateCode == PROWORK) | (StateCode == WORKING));
assign DcSoftContactor = ((~WorkDelayFlg)&SettingSwitchCMD3[0]) |( (StateCode>=CHARGE & StateCode<WORKING)|(StateCode==TRANSITION) );
assign DcBrker_SwOn = (SettingSwitchCMD3[6]|(((StateCode>CHARGE & StateCode<=WORKING)|(StateCode==TRANSITION)) & State7[4]) | (IN7&(State2[9:7]==3'b000)))&(~SettingSwitchCMD3[7]);
//assign AcBrker_SwOff = SettingSwitchCMD3[5] | 1'b0;
assign DcBrker_SwOff = SettingSwitchCMD3[7] | (DcBrker_SwOn==1'b0);
assign AcBrker_SwOn  = AcContactor;
assign AcBrker_SwOff = (~Rst_n) | SettingSwitchCMD3[5] | (AcBrker_SwOn==1'b0);
//1-OFF-STAT9.1=1  0-ON-STAT9.1=0
assign OUT0 = 	DcSoftContactor;//直流预充
//assign OUT4 =	SettingSwitchCMD3[4]   美新
//assign OUT4 = 	DcSoftContactor;//OUT0,OUT4同时驱动预充
assign OUT4 = 	SettingSwitchCMD3[4]|DcSoftContactor;//OUT0,OUT4同时驱动预充
//assign OUT1 =	AcContactor;//交流接触器控制
assign OUT1 =	AcContactor_OnPulse;//交流接触器控制

assign OUT2 = SettingSwitchCMD3[2];//| (StateCode == FAULT); //常规
assign OUT8 = SettingSwitchCMD3[8] | (StateCode == WORKING);//运行指示 - 宜春
assign OUT9 = SettingSwitchCMD3[9] | (StateCode == FAULT);//故障指示 - 宜春
assign OUT10 = SettingSwitchCMD3[10];
assign OUT11 = SettingSwitchCMD3[11];

//assign OUT2 = SettingSwitchCMD3[14] ?  PQTrigout : (SettingSwitchCMD3[2] |	(StateCode == FAULT));//故障指示
reg [15:0] P_ref_b16_r1;
reg [15:0] Q_ref_b16_r1;
reg        PQTrigout;
always @(posedge g_clk) begin
	P_ref_b16_r1 <= P_ref_b16;
	Q_ref_b16_r1 <= Q_ref_b16;
	if( (P_ref_b16_r1 != P_ref_b16) | (Q_ref_b16_r1 != Q_ref_b16) ) begin //2 set
		PQTrigout <= ~PQTrigout; 
	end
end
//assign OUT3 =	SettingSwitchCMD3[3] |	(PhaseAddpSeq_i13!=16'b0);//硬件无定义
//assign OUT4 =	SettingSwitchCMD3[4] |	1'b0;//交流柜散热

//assign OUT5 =	AcBrker_OffPulse;	//交流开关分闸
//fix
reg checksta;
reg [15:0] checkstaCnt;
//assign checksta = (~((State9[2])|(|State0)|(|State1)|(|State2)|(|State3)|(|State4[15:0])|(|State5[15:0])|(StateCode == STOP)));
always @(posedge g_clk) begin
  if (checksta == 1) begin 
	 checksta <= ~((State9[2])|(|State0)|(|State1)|(|State2)|(|State3)|(|State4)|(|State5)|(StateCode == STOP)); //存在分闸反馈或停机或故障则响应分断信号
	 checkstaCnt <= 16'd12000;
  end
  else begin
	if(checkstaCnt>0) begin
		checksta <= 0;
		checkstaCnt <= Pulse4096Hz ? (checkstaCnt-1) : checkstaCnt;
	end
	else begin
		checksta <= ~((State9[2])|(|State0)|(|State1)|(|State2)|(|State3)|(|State4)|(|State5)|(StateCode == STOP)); //存在分闸反馈或停机或故障则响应分断信号
	end
  end
end
assign OUT5 =  (checksta) ? (1'b0) : (AcBrker_OffPulse);	
assign OUT6 =	DcBrker_OnPulse;  //直流开关合闸
assign OUT7 =	DcBrker_OffPulse; //直流开关分闸
//assign	State11[15]	=	DcBrker_SwOff;
//assign	State11[14]	=	AcBrker_SwOff; //1
//assign	State11[15]	=	AcBrker_SwOn;
//assign	State11[14]	=	AcBrker_SwOff;
//assign	State11[13]	=	DcBrker_SwOn;
//assign	State11[12]	=	DcBrker_SwOff;

wire PreChgOutEn;
wire PreChgOut;
assign PreChgOutEn = (SettingSwitchCMD1[7:5] == 3'b010)&( (StateCode>=CHARGE & StateCode<WORKING)|(StateCode==TRANSITION) ); // yes
assign PreChgOut = ((PreChgOutEn==1'b1) | (SettingSwitchCMD3[3])) ? 1'b1 :  1'b0;
assign OUT3 = PreChgOut;

//assign CPLD_out = {OUT7,OUT6,OUT5,OUT4,OUT3,OUT2,OUT1,OUT0}; //Board 3NET
//assign CPLD_out = {OUT0,OUT1,OUT2,OUT3,OUT4,OUT5,OUT6,OUT7};//Board 5NET
//assign CPLD_out = {OUT0,OUT1,OUT2,OUT3,OUT4,OUT5,OUT6,OUT7};
assign CPLD_out = {OUT11,OUT10,OUT9,OUT8,OUT0,OUT1,OUT2,OUT3,OUT4,OUT5,OUT6,OUT7};
RelayPulseCtrl_CH4_V10 RelayPulseCtrl_CH4_V10_Inst
          (
           .g_clk         (   g_clk     ),
           .Rst_n         (   Rst_n     ),
           .Drv_On1       (AcBrker_SwOff==1'b1),
           .Drv_LevelTime1(16'd4096     ),	//round(4096/1000*500),PULSE_4096HZ,500ms 
           .Drv_On2       (DcBrker_SwOn==1'b1),
           .Drv_LevelTime2(16'd4096     ),	//round(4096/1000*500),PULSE_4096HZ,500ms 
           .Drv_On3      (DcBrker_SwOff==1'b1),
           .Drv_LevelTime3(16'd4096     ),	//round(4096/1000*500),PULSE_4096HZ,500ms 
           .Drv_On4       (AcBrker_SwOn==1'b1),
           .Drv_LevelTime4(16'd4096 ),
           .Pulse4096Hz( Pulse4096Hz ),
           .Drv_OnPulse1( /*AcBrker_OffPulse*/AcBrker_OffPulse_t ),
           .Drv_OnPulse2(DcBrker_OnPulse),
           .Drv_OnPulse3(DcBrker_OffPulse ),
           .Drv_OnPulse4(AcContactor_OnPulse)
          );
wire AcBrker_OffPulse_t;
assign AcBrker_OffPulse = AcBrker_SwOff_r2 | AcBrker_OffPulse_t;
//========================ADD 20230828=====================================	 
reg [31:0] AcBrker_Cnt;
reg AcBrker_SwOff_r2;
always @(posedge g_clk) begin
	if(AcBrker_Cnt<4096) begin
		AcBrker_Cnt <= Pulse4096Hz ? (AcBrker_Cnt+1) : (AcBrker_Cnt);
		AcBrker_SwOff_r2 <= 1;
	end
	else begin
		AcBrker_SwOff_r2 <= 0;
	end
end 
//==========================ADD 20230828 END===================================	 
StateOnCheck_CH8_V10  StateOnCheck_CH8_V10_Inst
          (
           .g_clk         (   g_clk     ),
           .Rst_n         (   Rst_n     ),
           .State_On1     (AcBrker_SwOff==1'b1 & IN0==1'b1 & ~SettingSwitchCMD3[15]),//right:AcBrker_SwOff=1,IN0=0;AcBrker_SwOff=0,IN0=1
           .Fault_Time1   (16'd8192     ),	//round(4096/1000*100),PULSE_4096HZ,100ms 
           //.State_On2     (DcBrker_SwOn==1'b1 & IN7==1'b0 & ~SettingSwitchCMD3[15]),	//right:DcBrker_SwOn=1,IN7=1;DcBrker_SwOn=0,IN0=0
           //.Fault_Time2   (16'd8192     ),	//round(4096/1000*100),PULSE_4096HZ,100ms 
           //.State_On3     (DcBrker_SwOn==1'b0 & IN7==1'b1 & ~SettingSwitchCMD3[15]),
           //.Fault_Time3   (16'd8192     ),	//round(4096/1000*100),PULSE_4096HZ,100ms 
           //.State_On4	  (AcContactor==1'b1 & IN2==1'b1 & ~SettingSwitchCMD3[15]),	//right:AcContactor=1,IN2=0;AcContactor=0,IN2=1
           //.Fault_Time4   (16'd8192     ),	//round(4096/1000*100),PULSE_4096HZ,100ms 
           //.State_On5     (AcContactor==1'b0 & IN2==1'b0 & ~SettingSwitchCMD3[15]),
           //.Fault_Time5   (16'd8192     ),	//round(4096/1000*100),PULSE_4096HZ,100ms 
           .State_On6	  (DcSoftContactor==1'b1 & IN9==1'b0 & ~SettingSwitchCMD3[15]),	//right:DcSoftContactor=1,IN9=1;DcSoftContactor=0,IN9=0
           .Fault_Time6   (16'd8192     ),	//round(4096/1000*100),PULSE_4096HZ,100ms 			
           .State_On7	  (DcSoftContactor==1'b0 & IN9==1'b1 & ~SettingSwitchCMD3[15]),	
           .Fault_Time7   (16'd8192     ),	//round(4096/1000*100),PULSE_4096HZ,100ms 		
	        .State_On8	  ( Udc_Ubtr_Diff_State==1'b0    ),	
           .Fault_Time8   (16'd8192          ),	//round(4096/1000*1000),PULSE_4096HZ,1000ms 			  
           .Pulse4096Hz   ( Pulse4096Hz ),
           .Drv_Fault1    (/*State5[3]*/),
           .Drv_Fault2	  (/*State5[4]*/),
           .Drv_Fault3	  (/*State5[5]*/),
           .Drv_Fault4	  (/*State5[6]*/),
           .Drv_Fault5	  (/*State5[7]*/),
           .Drv_Fault6	  (State5[8]),//State5[8]
           .Drv_Fault7	  (State5[9]),
           .Drv_Fault8    (State7[4])		 //直流开关吸合允许：预充完成，压差满足条件后延迟1s 
          );
reg [11:0] AcContactorCnt; //Max=1s
reg [11:0] DcBrker_SwOnCnt; //Max=1s
reg        AcContactor_r;
reg        DcBrker_SwOn_r; 
reg        State5_4_r;
reg        State5_5_r;
reg        State5_6_r;
reg        State5_7_r;
reg        AcContactorEn;
reg        DcBrker_SwOnEn; 
always @(posedge g_clk)begin 
	AcContactor_r <= AcContactor;
	DcBrker_SwOn_r <= DcBrker_SwOn;
	if(AcContactor_r!=AcContactor) begin
		AcContactorCnt <= 0;
		AcContactorEn <= 0;
		State5_6_r <= 0;
		State5_7_r <= 0; 
	end
	else begin 
		if(AcContactorCnt < 2048) begin //3s
			AcContactorCnt <= Pulse4096Hz ? (AcContactorCnt+1) : AcContactorCnt; 
			State5_6_r <= 0;
			State5_7_r <= 0;
			AcContactorEn <= 0; 
		end
		else begin  
			State5_6_r <= (AcContactor==1'b1) & (IN2==1'b1) & (~SettingSwitchCMD3[15]); 
			State5_7_r <= (AcContactor==1'b0) & (IN2==1'b0) & (~SettingSwitchCMD3[15]);  
			AcContactorEn <= 1;
		end 
	end
	if(DcBrker_SwOn_r!=DcBrker_SwOn) begin
		DcBrker_SwOnCnt <= 0; 
		State5_4_r <= 0; 
		State5_5_r <= 0; 
		DcBrker_SwOnEn <= 0;
	end
	else begin 
		if(DcBrker_SwOnCnt < 2048) begin //1s
			DcBrker_SwOnCnt <= Pulse4096Hz ? (DcBrker_SwOnCnt+1) : DcBrker_SwOnCnt; 
			State5_4_r <= 0; 
			State5_5_r <= 0; 
			DcBrker_SwOnEn <= 0; 
		end
		else begin
			State5_4_r <= (DcBrker_SwOn==1'b1) & (IN7==1'b0) & (~SettingSwitchCMD3[15]); 
			State5_5_r <= (DcBrker_SwOn==1'b0) & (IN7==1'b1) & (~SettingSwitchCMD3[15]); 
			DcBrker_SwOnEn <= 1;
		end 
	end
end
assign State5[4] = State5_4_r; 
assign State5[5] = State5_5_r; 
assign State5[6] = State5_6_r;  
assign State5[7] = State5_7_r;  
			  
wire 	FanOn_Drv,HotOn_Drv;	
wire [11:0]	PwrRdc_co;

wire [11:0]	Uabc_abs_max	; //ADD ZJ20180711
wire [11:0]	Iabc_abs_max	; //ADD ZJ20180711 

InsVoltCurrMonitor_V21  InsVoltCurrMonitor_V20_Inst
          (
           .g_clk(          g_clk                      ),
           .Rst_n(          Rst_n                      ),
           .Uuv_b12(        Uab/*_FltP32*/                 ),
           .Uvw_b12(        Ubc/*_FltP32*/                 ),
           .Uwu_b12(        Uca/*_FltP32*/                 ),
           .Ia_b12(         Ia/*_FltP32*/                ),
           .Ib_b12(         Ib/*_FltP32 */               ),
           .Ic_b12(         Ic/*_FltP32*/                ),
           .Iac_OB_ref(     Iac_Inst_OV_ref          ),
           .Iac_OB_En(      SettingSwitchCMD1[11]    ),
           .Uac_OB_ref(     Uac_Inst_OV_ref          ),  //VSG_
           .Uac_OB_En(      SettingSwitchCMD1[12]     ),
           .InsOV_PrtTime_b12(    12'd1000             ),	//250ms
           .InsOV_BlockTime_b12(   12'd5               ),   //1.2ms
           .Pulse4096_Hz(    Pulse4096Hz               ),
           .InsOV_Block(     /*State13[1]*/                ),
           .InsOV_Fault(     /*State5[11]*/                 ),
           .Uac_Ins_OV(                     ), //
           //.Uabc_abs_max(    Uabc_abs_max              ),
			  .uabc_abs_max(    Uabc_abs_max              ),
           .Iabc_abs_max(    Iabc_abs_max              ) 
          );
//OI 
wire OIPwmBlock,OVPwmBlock;
wire OIFault,OVFault;

reg [15:0]	LvrtFlgDly;//xw
reg 	    LvrtFlg_r;
reg 	    LvrtPwmBlock;
assign OVPwmBlock = LvrtPwmBlock;
always @(posedge g_clk) begin
	if(StateCode == WORKING) begin  
		if( LvrtFlg_r != LvrtFlg ) begin 
			if( LvrtFlgDly<PwmBlockTime ) begin
				LvrtFlgDly   <= Pulse4096Hz ? (LvrtFlgDly + 1) : LvrtFlgDly; 
				LvrtPwmBlock       <= 1;
			end	
			else begin
				LvrtFlg_r    <= LvrtFlg;
			end			
		end 
		else begin
			LvrtFlgDly   <= 0;
			LvrtFlg_r       <= LvrtFlg;
			LvrtPwmBlock       <= 0;			
		end	
	end
	else begin
  			LvrtFlgDly   <= 0;
			LvrtFlg_r       <= LvrtFlg;
			LvrtPwmBlock       <= 0;
	end
end



//assign State13[1] = (SettingSwitchCMD1[11] & OIPwmBlock);// | (SettingSwitchCMD1[12] & OVPwmBlock); 
assign State13[1] = (SettingSwitchCMD1[11] & OIPwmBlock);// | (SettingSwitchCMD1[12] & OVPwmBlock);

assign State2[14] =  SettingSwitchCMD1[11] ? 1'b0 : State2_14;
assign State2[15] =  SettingSwitchCMD1[11] ? 1'b0 : State2_15;
assign State3[0] =  SettingSwitchCMD1[11] ? 1'b0 : State3_0;
assign State3[2] =  SettingSwitchCMD1[11] ? 1'b0 : State3_2; //IDC
//assign State2[11] =  SettingSwitchCMD1[12] ? 1'b0 : State2_11;
//assign State2[12] =  SettingSwitchCMD1[12] ? 1'b0 : State2_12;
//assign State2[13] =  SettingSwitchCMD1[12] ? 1'b0 : State2_13; 

//assign State5[11] =  (SettingSwitchCMD1[11] & OIFault);// | (SettingSwitchCMD1[12] & OVFault);

wire OIins = (State2_14 | State2_15 | State3_0 | State3_2); 
wire Fault1 = OIins;
wire FaultLock;  
FaultRey_VZ2 FaultRey_VZ2_inst
          (
           .g_clk( g_clk ),  .Rst_n( Rst_n ),
           .Pluse50Hz( Pulse50x1_Hz ), .Pluse4096Hz( Pulse4096Hz ), .Work( (StateCode == WORKING)   ), //!!!! 
           .Fault1( Fault1 ), .Fault2( 1'b0 ), .Fault3( 1'b0 ), .OIins( OIins ),
           .Cnt1( 8'd10 ), .Cnt2( 8'd3 ), .Cnt3( 8'd5 ), .FaultRcyDly( PwmBlockTime), //FaultRcyDly  3s 4096*1  
		   .PwmLock( OIPwmBlock ), .FaultLock( OIFault ), .PrefZeroSet()
			  //.State_s8(  )
           //.Fault1Cnt( Fault1Cnt ), .Fault2Cnt( Fault2Cnt ), .Fault3Cnt( Fault3Cnt ), 
          ); 
//assign	State11[8]	=	PwmLockALock;
//assign	State11[9]	=	PwmLockBLock;
//assign	State11[13]	=	PwmLockCLock;

wire [11:0] Ia_abs_FltP32,Ib_abs_FltP32,Ic_abs_FltP32; 
Abs_b12_V3 Abs_b12_V3_instA ( .in1_b12( Ia_FltP32 ), .in2_b12( Ib_FltP32 ), .Out1Abs_b12( Ia_abs_FltP32 ), .Out2Abs_b12( Ib_abs_FltP32 ) );
Abs_b12_V3 Abs_b12_V3_instB ( .in1_b12( Ic_FltP32 ), .Out1Abs_b12( Ic_abs_FltP32 ) );
assign CBC_OIinsA = (Ia_abs_FltP32 > Iac_Inst_OVRcy_ref);
assign CBC_OIinsB = (Ib_abs_FltP32 > Iac_Inst_OVRcy_ref);
assign CBC_OIinsC = (Ic_abs_FltP32 > Iac_Inst_OVRcy_ref);
assign State5[11] = (PwmLockALock | PwmLockBLock | PwmLockCLock) | (SettingSwitchCMD1[11]&OIFault);
wire PwmLockALock,PwmLockBLock,PwmLockCLock;//PwmLockA,PwmLockB,PwmLockC, 
CBC_V1 CBC_V1_A ( .g_clk(  g_clk ), .Rst_n( Rst_n ), .MinLockTimeSet(16'd5000), 
	   .Pluse50Hz( Pulse50x1_Hz ),  .PulseCarryx1_Hz( PulseCarryx1_Hz ),  .LockCnt( 4'd6 ),   
	   .Work( (StateCode == WORKING) ),   .OIins( CBC_OIinsA ), 
	   .PwmLock( PwmLockA),  .FaultLock( PwmLockALock ),  .State()
	  ); 	
CBC_V1 CBC_V1_B ( .g_clk(  g_clk ), .Rst_n( Rst_n ), .MinLockTimeSet(16'd5000),
	   .Pluse50Hz( Pulse50x1_Hz ),  .PulseCarryx1_Hz( PulseCarryx1_Hz ),  .LockCnt( 4'd6 ),   
	   .Work( (StateCode == WORKING) ),   .OIins( CBC_OIinsB ), 
	   .PwmLock( PwmLockB),  .FaultLock( PwmLockBLock ),  .State()
	  ); 	
CBC_V1 CBC_V1_C ( .g_clk(  g_clk ), .Rst_n( Rst_n ), .MinLockTimeSet(16'd5000),
	   .Pluse50Hz( Pulse50x1_Hz ),  .PulseCarryx1_Hz( PulseCarryx1_Hz ),  .LockCnt( 4'd6 ),   
	   .Work( (StateCode == WORKING) ),   .OIins( CBC_OIinsC ), 
	   .PwmLock( PwmLockC),  .FaultLock( PwmLockCLock ),  .State()
	  ); 		
	  
/*ProtectOI_V1 ProtectOI_V1_instV
          (
           .g_clk(      g_clk             ),
           .Rst_n(      Rst_n            ),
           .Ia_b12(      Uab             ),
           .Ib_b12(      Ubc             ),
           .Ic_b12(      Uca             ),
           .OI_Iac_Inst (     (State2_11 | State2_12 | State2_13)            ),
           .Iac_Inst_OVRcy_ref (      Uac_Inst_OVRcy_ref           ),
           .Pulse50x1_Hz(      Pulse50x1_Hz            ),
           .Fs_4096Hz (      Pulse4096Hz           ),
           .BlockTime_b16 (     PwmBlockTime            ),//4096hz  5ms
           .DecTime_b16(     16'd3000            ), //50x1hz  60s
           .Working (      (StateCode == WORKING)           ),
           .FaultCnt_b4(       4'd3           ),
           .PwmBlock (      OVPwmBlock           ),
           .Fault (        OVFault         )
          );*/
			 
assign State13[2] = 0;//OVPwmBlock; 	  
wire State10_14;
IsLandDetectLogic_V30 IsLandDetectLogic_V30_Inst
          (
           .g_clk(                g_clk   			),
           .Rst_n(                Rst_n   			),
			  .Uabc_abs_max(         Uabc_abs_max     ),
           .Delta_w_b16(          /*Delta_w_b16*/16'd0       	),//0
           .Island_UacUV_b12(     Island_UacUV_b12         ),
           .Island_FreqDlta_b16(  /*Island_FreqDlta_b16*/ 16'd1768      ),
           .Gridon_Force(         SettingSwitchCMD2[15]       	), //1
           .PQVF_SW_En(           SettingSwitchCMD2[2]   		), //1
           .PQ_En(                SettingSwitchCMD1[7] 					),
			  .CtlLoopOn(            CtlLoop_On 			),
			  //.Uac_Ins_OV(           /*State13[2]*//*Ac_OVins */  Ac_OVins & (~SettingSwitchCMD1[14])      ), //can't moni
			  .Uac_Ins_OV(           /*State13[2]*//*Ac_OVins */ Ac_OVins & (SettingSwitchCMD1[13])  /*1'b0*/      ), //for debug set Ovins
			  .Pulse_4096Hz(         Pulse4096Hz ),
           .VF0PQ1(               /*State10[14]*/State10_14 			)  
			  );
wire check = (StateCode == STOP) | (StateCode == IDEL) | ((StateCode == WORKING)&(SettingSwitchCMD2[10]==1'b1)); 
assign State10[14] = (check) ? State10_14 : State10[14];
//reg	[1:0] 	VF2PQ_State;//StartCMD_reg;
//reg	[31:0]	VF2PQ_Dleay;//StartCMD_reg; 
PhaseSequenceDetect_V10 PhaseSequenceDetect_V10_Inst
          (
           .g_clk( g_clk ),
           .Rst_n( Rst_n ),
           .Ua_b12( Uab ),
           .Ub_b12( Ubc ),
           .Uc_b12( Uca ),
           .Sequence_State_Pos( State10[9] )
          );
/*
SequenceAdjust_V10 SequenceAdjust_V10_Inst
          (
           .g_clk( g_clk ),
           .Rst_n( Rst_n ),
           .Sequence_State_Pos( State10[9]&(StateCode == IDEL)&SettingSwitchCMD1[9]),
           .Pulse_50Hz(Pulse50x1_Hz),
           .SequenceAdjust(State10[10])
          );*/
//assign State3[14] = 1'b0;
//----assign State10[10] = 1'b0;			 
//----assign State5[2] = ((~First_VS)|(SettingSwitchCMD1[7:6] != 2'b00)) & (~State10[9]) & (StateCode == IDEL)	 ;
//ADD FOR PQVF 20211229
wire State5_2;
assign State5_2 = ((~First_VS)|(SettingSwitchCMD1[7:6] != 2'b00)) & (~State10[9]) & (StateCode == IDEL)	 ;
wire State5_2a;
assign State5_2a = ( State10[14] ) ? ((~State10[9]) & (StateCode == IDEL)) : 1'b0;
assign State5[2] = (SettingSwitchCMD2[2]==1'b1) ? State5_2a : State5_2; 
//		
Temp2DrvLogic_V12_3L Temp2DrvLogic_V12_Inst
		 (
	  .g_clk( g_clk ),
	  .Rst_n( Rst_n ),
	  .Pulse_4096Hz( Pulse4096Hz ),
	  .IGBTa_Temp( IGBTa_Temp ),
	  .IGBTb_Temp( IGBTb_Temp ),
	  .IGBTc_Temp( IGBTc_Temp ), 
	  .IGBTTmepFanOn_Thr( 12'd2264 /*12'd2427*/ ),//45℃
	  .IGBTTmepFanOff_Thr( 12'd1934/*12'd2700*/ ),//37℃ //35  1850-(1850-2061)*0.4  
	  .IGBTTmepHotOn_Thr( 12'd197 /*12'd3972*/ ),//-20℃
	  .IGBTTmepHotOff_Thr( 12'd344/*12'd3884*/ ),//-10℃
	  //.IGBT_OT_Thr( (IGBT_Temp_OT_ref>12'd3578) ? 12'd3578 : IGBT_Temp_OT_ref ),//95℃
	  .IGBT_OT_Thr( (IGBT_Temp_OT_ref>12'd2435) ? 12'd2435 : IGBT_Temp_OT_ref ),//95℃ xw
	  //.IGBTTemp_RdcPwr_Thr( ),//85℃
	  .FanOn_Drv( FanOn_Drv ),
	  .HotOn_Drv( HotOn_Drv ),
	  .IGBTOT_Err( State4[9] )
	  //.PwrRdc_co(  ),
	  //.PwrRdc_On(  )
	 ); 
		 
//		
assign	State3[15] 	= (SettingSwitchCMD1[1]==0)&~IN0;//主断路器故障
assign	State4[0] 	= (SettingSwitchCMD1[1]==0)&~IN1; //防雷器故障
assign	State4[2] 	= (SettingSwitchCMD1[1]==0)&(~DcBrker_SwOn) & (StateCode>CHARGE) & (StateCode<WORKING); //直流预充故障:预充完成，但不满足直流断路器闭合条件
assign	State4[10] 	= (SettingSwitchCMD1[1]==0)&AD_Err;
assign	State4[11] 	= 0;
assign	State4[13] 	= ~IN5; //按钮急停故障
assign	State4[14] 	= ~IN3; //电抗过温

assign	State8 = {StateLast3Code,StateLast2Code,StateLast1Code,StateCode};

assign	State9 = {IN15,IN14,IN13,IN12,IN11,IN10,IN9,IN8,IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0};

assign	State10[0]	=	First_VS	;
assign	State10[1]	=	Lvrting	;
assign	State10[2]	=	Zvrting	;

assign	State10[4]	=	CtlLoop_On	; 
assign	State10[5]	=	Uac_UV_En	;
assign	State10[6]	=	VF_Mode	;
assign	State10[7]	=	Excite_On	;
assign	State10[8]	=	ControlLoop3L_On	;
assign	State11[0]	=	OUT0	;
assign	State11[1]	=	OUT1	;
assign	State11[2]	=	OUT2	;
assign	State11[3]	=	OUT3	;
assign	State11[4]	=	OUT4	;
assign	State11[5]	=	OUT5	;
assign	State11[6]	=	OUT6	;
assign	State11[7]	=	OUT7	;
assign	State11[8]	=	CN6_7_CONNECT;
assign	State11[9]	=	PhaseInv;
assign  State11[12] =   RecvWORKING;
assign  State11[13] =   Fiber_WORKING;
assign	State11[14]	=	HvrtFlg;
assign	State11[15]	=	LvrtFlg;

assign	State12[0]	=	ToChargeOk	;
assign	State12[1]	=	ChargeOk	;
assign	State12[2]	=	ToProWorkOk	;
assign	State12[3]	=	ProWorkOk	;
assign	State12[4]	=	ToExciteOk	;
assign	State12[5]	=	ExciteOk	;
assign	State12[6]	=	ToWorkOk	;//0
assign	State12[7]	=	WorkingOk	;//0
assign	State12[8]	=	Em_In_flag	;
assign	State12[9]	=	GoNext_flag	;
assign	State12[10]	=	StartCMD_flag	;
assign	State12[11]	=	DelayOut_flag	;
assign	State12[15]	=	PQ_ZeroBlock_r;
//assign	State13[15:0]	= ARM_State13;// ARM_State13[15:0];
assign	State14[15:0]	= ARM_State14;// ARM_State14[15:0];
assign	State15[15:0]	= ARM_State15;
 

//assign	State15[15:0]	= SettingSwitchCMD1[2] ? 16'd0 : (ARM_State15[15:0] & ARM_State14[15:0] & ARM_State13[15:0]);
//assign	State15[15:0]	= ARM_State15[15:0];


wire ArmUVFault; 
assign ArmUVFault = (State13|State14|State15);
//assign ArmUVFault = Uac_UV_En ? (|State15) : ((|State15[15:6])|(State15[0])|(State15[2])|(State15[4]));

//assign ToChargeOk		=	(~(ArmUVFault|(|State0)|(|State1[13:0])|(|State2[15:10])|(|State2[6:1])|(|State3)|(|State4[15:0])|(|State5[15:0])))&(State9[2])  &    ((|State1[15:14])|State2[0]|Udc_Ubtr_Diff_State);															
assign ToChargeOk		=	TestRunFlg | (~(ArmUVFault|(|State0)|(|State1[13:0])|(|State2[15:10])|(|State2[6:1])|(|State3)|(|State4[15:0])|(|State5[15:0])|(|State6[15:0])))  &    ((|State1[15:14])|State2[0]|Udc_Ubtr_Diff_State);
//assign ChargeOk		=	(~(ArmUVFault|(|State0)|(|State1[13:0])|(|State2[15:10])|(|State2[6:1])|(|State3)|(|State4[15:0])))&(State9[2]);
assign ChargeOk		=	TestRunFlg | (~(ArmUVFault|(|State0)|(|State1[13:0])|(|State2[15:10])|(|State2[6:1])|(|State3)|(|State4[15:0])|(|State6[15:0])));																
//assign ToProWorkOk	=	(~(ArmUVFault|(|State0)|(|State1)|(|State2)|(|State3)|(|State4[15:0])|(|State5[15:0])))&(State9[2]);	
assign ToProWorkOk	=	TestRunFlg | (~(ArmUVFault|(|State0)|(|State1)|(|State2)|(|State3)|(|State4[15:0])|(|State5[15:0])|(|State6[15:0])|(|State6[15:0])));											
assign ProWorkOk		=	TestRunFlg | (~(ArmUVFault|(|State0)|(|State1)|(|State2)|(|State3)|(|State4[15:0])|(|State5[15:3])|(|State5[1:0])|(|State6[15:0])));	
//assign ToExciteOk		=	(~(ArmUVFault|(|State0)|(|State1)|(|State2)|(|State3)|(|State4[15:0])|(|State5[15:0])))&(State9[2]);
assign ToExciteOk		=	TestRunFlg | (~(ArmUVFault|(|State0)|(|State1)|(|State2)|(|State3)|(|State4[15:0])|(|State5[15:0])|(|State6[15:0])));														
//assign ExciteOk		=	(~(ArmUVFault|(|State0)|(|State1)|(|State2)|(|State3)|(|State4[15:0])|(|State5[15:3])|(|State5[1:0])))&(State9[2]);
assign ExciteOk		=	TestRunFlg | (~(ArmUVFault|(|State0)|(|State1)|(|State2)|(|State3)|(|State4[15:0])|(|State5[15:3])|(|State5[1:0])|(|State6[15:0])));																						
assign ToWorkOk		=	TestRunFlg | (~((|State15)|(|State0)|(|State1)|(|State2)|(|State3)|(|State4[15:0])|(|State5[15:3])|(|State5[1:0])|(|State6[15:0])));												
assign WorkingOk		=	TestRunFlg | (~((|State15)|(|State0)|(|State1)|(|State2)|(|State3)|(|State4[15:0])|(|State5[15:3])|(|State5[1:0])|(|State6[15:0])));		

/*
always@(posedge g_clk) begin

	if(StateCode == STOP)begin
		PLD_Test2 <= 0; 
	end
	else begin
		if(ARM_State15 != 0) begin
			PLD_Test2 <= ARM_State15[15:0]; 
		end
		else begin
			PLD_Test2 <= PLD_Test2; 
		end
	end
	
end
*/




	
	
	reg [15:0] 	State0_reg;
	reg [15:0] 	State1_reg;
	reg [15:0] 	State2_reg;
	reg [15:0] 	State3_reg;
	reg [15:0] 	State4_reg;
	reg [15:0] 	State5_reg;
	reg [15:0] 	State6_reg;
	reg [15:0] 	State7_reg;
	//reg [15:0] 	State8_reg;
	reg [15:0] 	State9_reg;
	reg [15:0] 	State10_reg;
	reg [15:0] 	State11_reg;
	reg [15:0] 	State12_reg;
	reg [15:0] 	State13_reg;
	reg [15:0] 	State14_reg;
	reg [15:0] 	State15_reg;

	//System error set and rest signal	
	wire	Err_RS;
	reg		ErrLocked;
	   //================================== FaultLock ===============================
    reg [31:0] 	FaultStateDly;
	reg         FaultState_r;
	reg         FaultState;
	always@(posedge g_clk) begin
		FaultState_r <= FaultState;
		if(FaultState==0) begin  
			FaultStateDly   <= 0;
			//FaultState <= (StateCode==FAULT | ((StateCode==IDEL) & ((|State0)|(|State1)|(|State2)|(|State3)|(|State4)|(|State5)|(|State6)))) ?  1 : 0;
			FaultState <= StateCode==FAULT ?  1 : 0;
		end
		else if(FaultState==1) begin  
			if(FaultStateDly<(4096*30)) begin //最少保持30s 	
				FaultStateDly <= Pulse4096Hz ? (FaultStateDly + 1) : FaultStateDly; 
			end
			else begin
				FaultState <= (StateCode != FAULT) ?  0 : 1;
			end
		end 
	end 
	//assign Err_RS = Rst_n & (~(StateCode == STOP));
	assign Err_RS = Rst_n & (~(FaultState_r&(~FaultState))); //为1保持故障信息
	assign FaultStateDly_ob = FaultStateDly;
	assign FaultState_ob = FaultState;
	assign Err_RS_ob = Err_RS;
	//When system begin to work, reset all error lcks
	//assign Err_RS = Rst_n & (~(StateCode == STOP));
	
	
	
	//Lock the error state
	always @(posedge g_clk or negedge Err_RS) begin
		if(!Err_RS)begin
			Err_Lock_State0	<=	16'd0;
			Err_Lock_State1	<=	16'd0;
			Err_Lock_State2	<=	16'd0;
			Err_Lock_State3	<=	16'd0;
			Err_Lock_State4	<=	16'd0;
			Err_Lock_State5	<=	16'd0;
			Err_Lock_State6	<=	16'd0;
			Err_Lock_State7	<=	16'd0;
			Err_Lock_State8	<=	16'd0;
			Err_Lock_State9	<=	16'd0;
			Err_Lock_State10	<=	16'd0;
			Err_Lock_State11	<=	16'd0;
			Err_Lock_State12	<=	16'd0;
			Err_Lock_State13	<=	16'd0;
			Err_Lock_State14	<=	16'd0;
			Err_Lock_State15	<=	16'd0;
				//PLD_Test3<=0;
			ErrLocked <= 1'b0;												
		end
		else begin
			if((StateCode == FAULT) && (~ErrLocked))begin  
				Err_Lock_State0	<=	State0_reg;
				Err_Lock_State1	<=	State1_reg;
				Err_Lock_State2	<=	State2_reg;
				Err_Lock_State3	<=	State3_reg;
				Err_Lock_State4	<=	State4_reg;
				Err_Lock_State5	<=	State5_reg;
				Err_Lock_State6	<=	State6_reg;
				Err_Lock_State7	<=	State7_reg;
				Err_Lock_State8	<=	State8;
				Err_Lock_State9	<=	State9_reg;
				Err_Lock_State10	<=	State10_reg;
				Err_Lock_State11	<=	State11_reg;
				Err_Lock_State12	<=	State12_reg;
				Err_Lock_State13	<=	State13_reg;
				Err_Lock_State14	<=	State14_reg;
				Err_Lock_State15	<=	State15_reg;
				//PLD_Test3 <= State15_reg;
				ErrLocked <= 1'b1;
			end	
			State0_reg	<=	State0;
			State1_reg	<=	State1;
			State2_reg	<=	State2;
			State3_reg	<=	State3;
			State4_reg	<=	State4;
			State5_reg	<=	State5;
			State6_reg	<=	State6;
			State7_reg	<=	State7;
			//State8_reg	<=	State8;
			State9_reg	<=	State9;
			State10_reg	<=	State10;
			State11_reg	<=	State11;
			State12_reg	<=	State12;
			State13_reg	<=	State13;
			State14_reg	<=	State14;
			State15_reg	<=	State15;
		end
	end	
endmodule

//NTC温度计算(分压电阻为3K,源电压为2.5V)					
//温度	对应系数	对应阻值	分压比	Vout	AD计算值
//-40	33.65	336.5	0.991163476	2.477908689	4058.814433
//-35	24.26	242.6	0.987785016	2.469462541	4044.979642
//-30	17.7	177	0.983333333	2.458333333	4026.75
//-25	13.04	130.4	0.977511244	2.443778111	4002.908546
//-20	9.707	97.07	0.970020985	2.425052463	3972.235935
//-15	7.293	72.93	0.960489925	2.401224812	3933.206243
//-10	5.533	55.33	0.94856849	2.371421224	3884.387965
//-5	4.232	42.32	0.93380406	2.33451015	3823.927626
//0	3.265	32.65	0.915848527	2.289621318	3750.399719
//5	2.539	25.39	0.894328989	2.235822473	3662.27721
//10	1.99	19.9	0.868995633	2.172489083	3558.537118
//15	1.571	15.71	0.839657937	2.099144842	3438.399252
//20	1.249	12.49	0.806326662	2.015816656	3301.907682
//25	1	10	0.769230769	1.923076923	3150
//30	0.8057	8.057	0.728678665	1.821696663	2983.939134
//35	0.6531	6.531	0.685237646	1.713094114	2806.048159
//40	0.5327	5.327	0.639726192	1.59931548	2619.678756
//45	0.4369	4.369	0.59288913	1.482222825	2427.880988
//50	0.3603	3.603	0.545661063	1.364152658	2234.482054
//55	0.2986	2.986	0.498830605	1.247076512	2042.711326
//60	0.2488	2.488	0.45335277	1.133381924	1856.479592
//65	0.2083	2.083	0.409797364	1.024493409	1678.120205
//70	0.1752	1.752	0.368686869	0.921717172	1509.772727
//75	0.1481	1.481	0.330506583	0.826266458	1353.424459
//80	0.1258	1.258	0.29544387	0.738609676	1209.842649
//85	0.1072	1.072	0.263261297	0.658153242	1078.05501
//90	0.09177	0.9177	0.234244582	0.585611456	959.2315644
//95	0.07885	0.7885	0.208129867	0.520324667	852.2918041
//100	0.068	0.68	0.184782609	0.461956522	756.6847826
