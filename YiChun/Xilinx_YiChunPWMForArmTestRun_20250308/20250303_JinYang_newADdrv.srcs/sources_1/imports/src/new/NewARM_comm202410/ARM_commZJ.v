// -------------------------------------------------------------
// 
// Module: FSMC_commZJ
// Source Path: FSMC_commZJ
// Hierarchy Level: 0
// ZJ: 20241019 Ver 1.4
// -------------------------------------------------------------
`timescale 1 ns / 1 ns
//`define EnFaultRecord	
//`define RUN_Altera
`define RUN_Xilinx
//`define RUN_Xilinx_ILA0
module ARM_commZJ(    
		input  [3:0] StateCode,
		input  [15:0] Fault_in0,
		input  [15:0] Fault_in1,
		input  [15:0] Fault_in2,
		input  [15:0] Fault_in3,
		input  [15:0] Fault_in4,
		input  [15:0] Fault_in5,
		input  [15:0] Fault_in6,
		input  [15:0] Fault_in7,
		input  [15:0] Fault_in8,
	    input  [15:0] Fault_in9, 
		input  [15:0] Fault_in10,
		input  [15:0] Fault_in11,
		input  [15:0] Fault_in12, 
		input  [15:0] Fault_in13,
		input  [15:0] Fault_in14, 
		input  [15:0] Fault_in15, 
		input  [15:0] Fault_in16, 
		input  [15:0] Fault_in17,	
		input  [15:0] PWMWORD1,
		input  [15:0] PWMWORD2, 
		input  [15:0] PWMWORD3, 
		output reg  [15:0] FIFO_Read_cnt_Sec,
		output reg  [15:0] FIFO_Write_cnt_Sec,
		output reg  [15:0] TIME_Sec,
		output [15:0]   FSMC_DATA_rd, //for debug buf
		input           g_clk,				
		input           Rst_n,	 
		input           FSMC_CLK,
		inout  [15:0]   FSMC_DATA,				
		input  [9:0]    FSMC_ADD,	 //[A10:1  A9:0]
		input			FSMC_NE1, 
		input			FSMC_NE2, 
		input			FSMC_NE3, 
		input			FSMC_NE4, 
		input			FSMC_NOE,
		input			FSMC_NWE,  
		input			FSMC_NBL1,
		input			FSMC_NBL0, 
		
		input	[15:0] FIFO0_Data0, 
		input	[15:0] FIFO1_Data0, 
		input	[15:0] FIFO2_Data0,  
		input	[15:0] FIFO3_Data0,  
		input	[15:0] FIFO4_Data0, 
		input	[15:0] FIFO5_Data0, 
		input	[15:0] FIFO6_Data0, 
		input	[15:0] FIFO7_Data0, 
		input	[15:0] FIFO8_Data0,  
		//========FIFO interface========	
		input [15:0] FIFO_SmpFreq_Set,  // int16	 
		input FIFO_Start,
		output  FIFO_Read_Akn,   //~OUT  
		//========ARM->FPGA FPGA-->ARM============ 
output [15:0] 	SettingParameter0,
output [15:0] 	SettingParameter1,
output [15:0] 	SettingParameter2,
output [15:0] 	SettingParameter3,
output [15:0] 	SettingParameter4,
output [15:0] 	SettingParameter5,
output [15:0] 	SettingParameter6,
output [15:0] 	SettingParameter7,
output [15:0] 	SettingParameter8,
output [15:0] 	SettingParameter9, 	
output [15:0] 	SettingParameter10,
output [15:0] 	SettingParameter11,
output [15:0] 	SettingParameter12,
output [15:0] 	SettingParameter13,
output [15:0] 	SettingParameter14,
output [15:0] 	SettingParameter15,
output [15:0] 	SettingParameter16,
output [15:0] 	SettingParameter17,
output [15:0] 	SettingParameter18,
output [15:0] 	SettingParameter19, 
output [15:0] 	SettingParameter20,
output [15:0] 	SettingParameter21,
output [15:0] 	SettingParameter22,
output [15:0] 	SettingParameter23,
output [15:0] 	SettingParameter24,
output [15:0] 	SettingParameter25,
output [15:0] 	SettingParameter26,
output [15:0] 	SettingParameter27,
output [15:0] 	SettingParameter28,
output [15:0] 	SettingParameter29, 
output [15:0] 	SettingParameter30,
output [15:0] 	SettingParameter31,
output [15:0] 	SettingParameter32,
output [15:0] 	SettingParameter33,
output [15:0] 	SettingParameter34,
output [15:0] 	SettingParameter35,
output [15:0] 	SettingParameter36,
output [15:0] 	SettingParameter37,
output [15:0] 	SettingParameter38,
output [15:0] 	SettingParameter39, 
output [15:0] 	SettingParameter40,
output [15:0] 	SettingParameter41,
output [15:0] 	SettingParameter42,
output [15:0] 	SettingParameter43,
output [15:0] 	SettingParameter44,
output [15:0] 	SettingParameter45,
output [15:0] 	SettingParameter46,
output [15:0] 	SettingParameter47,
output [15:0] 	SettingParameter48,
output [15:0] 	SettingParameter49, 
output [15:0] 	SettingParameter50,
output [15:0] 	SettingParameter51,
output [15:0] 	SettingParameter52,
output [15:0] 	SettingParameter53,
output [15:0] 	SettingParameter54,
output [15:0] 	SettingParameter55,
output [15:0] 	SettingParameter56,
output [15:0] 	SettingParameter57,
output [15:0] 	SettingParameter58,
output [15:0] 	SettingParameter59, 
output [15:0] 	SettingParameter60,
output [15:0] 	SettingParameter61,
output [15:0] 	SettingParameter62,
output [15:0] 	SettingParameter63,
output [15:0] 	SettingParameter64,
output [15:0] 	SettingParameter65,
output [15:0] 	SettingParameter66,
output [15:0] 	SettingParameter67,
output [15:0] 	SettingParameter68,
output [15:0] 	SettingParameter69, 
output [15:0] 	SettingParameter70,
output [15:0] 	SettingParameter71,
output [15:0] 	SettingParameter72,
output [15:0] 	SettingParameter73,
output [15:0] 	SettingParameter74,
output [15:0] 	SettingParameter75,
output [15:0] 	SettingParameter76,
output [15:0] 	SettingParameter77,
output [15:0] 	SettingParameter78,
output [15:0] 	SettingParameter79, 
output [15:0] 	SettingParameter80,
output [15:0] 	SettingParameter81,
output [15:0] 	SettingParameter82,
output [15:0] 	SettingParameter83,
output [15:0] 	SettingParameter84,
output [15:0] 	SettingParameter85,
output [15:0] 	SettingParameter86,
output [15:0] 	SettingParameter87,
output [15:0] 	SettingParameter88,
output [15:0] 	SettingParameter89, 
output [15:0] 	SettingParameter90,
output [15:0] 	SettingParameter91,
output [15:0] 	SettingParameter92,
output [15:0] 	SettingParameter93,
output [15:0] 	SettingParameter94,
output [15:0] 	SettingParameter95,
output [15:0] 	SettingParameter96,
output [15:0] 	SettingParameter97,
output [15:0] 	SettingParameter98,
output [15:0] 	SettingParameter99, 	
output [15:0] 	SettingParameter100,
output [15:0] 	SettingParameter101,
output [15:0] 	SettingParameter102,
output [15:0] 	SettingParameter103,
output [15:0] 	SettingParameter104,
output [15:0] 	SettingParameter105,
output [15:0] 	SettingParameter106,
output [15:0] 	SettingParameter107,
output [15:0] 	SettingParameter108,
output [15:0] 	SettingParameter109, 	
output [15:0] 	SettingSwitchCMD0,
output [15:0] 	SettingSwitchCMD1,
output [15:0] 	SettingSwitchCMD2,
output [15:0] 	SettingSwitchCMD3,
output [15:0] 	SettingSwitchCMD4,
output [15:0] 	SettingSwitchCMD5,
output [15:0] 	SettingSwitchCMD6,
output [15:0] 	SettingSwitchCMD7,
output [15:0] 	SettingSwitchCMD8,
output [15:0] 	SettingSwitchCMD9, 
output [15:0] 	SettingParameter120,
output [15:0] 	SettingParameter121,
output [15:0] 	SettingParameter122,
output [15:0] 	SettingParameter123,
output [15:0] 	SettingParameter124,
output [15:0] 	SettingParameter125,
output [15:0] 	SettingParameter126,
output [15:0] 	SettingParameter127,
output [15:0] 	SettingParameter128,
output [15:0] 	SettingParameter129, 
output [15:0] 	SettingParameter130,
output [15:0] 	SettingParameter131,
output [15:0] 	SettingParameter132,
output [15:0] 	SettingParameter133,
output [15:0] 	SettingParameter134,
output [15:0] 	SettingParameter135,
output [15:0] 	SettingParameter136,
output [15:0] 	SettingParameter137,
output [15:0] 	SettingParameter138,
output [15:0] 	SettingParameter139, 
output [15:0] 	SettingParameter140,
output [15:0] 	SettingParameter141,
output [15:0] 	SettingParameter142,
output [15:0] 	SettingParameter143,
output [15:0] 	SettingParameter144,
output [15:0] 	SettingParameter145,
output [15:0] 	SettingParameter146,
output [15:0] 	SettingParameter147,
output [15:0] 	SettingParameter148,
output [15:0] 	SettingParameter149, 
output [15:0] 	SettingParameter150,
output [15:0] 	SettingParameter151,
output [15:0] 	SettingParameter152,
output [15:0] 	SettingParameter153,
output [15:0] 	SettingParameter154,
output [15:0] 	SettingParameter155,
output [15:0] 	SettingParameter156,
output [15:0] 	SettingParameter157,
output [15:0] 	SettingParameter158,
output [15:0] 	SettingParameter159, 
output [15:0] 	SettingParameter160,
output [15:0] 	SettingParameter161,
output [15:0] 	SettingParameter162,
output [15:0] 	SettingParameter163,
output [15:0] 	SettingParameter164,
output [15:0] 	SettingParameter165,
output [15:0] 	SettingParameter166,
output [15:0] 	SettingParameter167,
output [15:0] 	SettingParameter168,
output [15:0] 	SettingParameter169, 
output [15:0] 	SettingParameter170,
output [15:0] 	SettingParameter171,
output [15:0] 	SettingParameter172,
output [15:0] 	SettingParameter173,
output [15:0] 	SettingParameter174,
output [15:0] 	SettingParameter175,
output [15:0] 	SettingParameter176,
output [15:0] 	SettingParameter177,
output [15:0] 	SettingParameter178,
output [15:0] 	SettingParameter179, 
output [15:0] 	SettingParameter180,
output [15:0] 	SettingParameter181,
output [15:0] 	SettingParameter182,
output [15:0] 	SettingParameter183,
output [15:0] 	SettingParameter184,
output [15:0] 	SettingParameter185,
output [15:0] 	SettingParameter186,
output [15:0] 	SettingParameter187,
output [15:0] 	SettingParameter188,
output [15:0] 	SettingParameter189, 
output [15:0] 	SettingParameter190,
output [15:0] 	SettingParameter191,
output [15:0] 	SettingParameter192,
output [15:0] 	SettingParameter193,
output [15:0] 	SettingParameter194,
output [15:0] 	SettingParameter195,
output [15:0] 	SettingParameter196,
output [15:0] 	SettingParameter197,
output [15:0] 	SettingParameter198,
output [15:0] 	SettingParameter199, 
output [15:0] 	SettingParameter200,
output [15:0] 	SettingParameter201,
output [15:0] 	SettingParameter202,
output [15:0] 	SettingParameter203,
output [15:0] 	SettingParameter204,
output [15:0] 	SettingParameter205,
output [15:0] 	SettingParameter206,
output [15:0] 	SettingParameter207,
output [15:0] 	SettingParameter208,
output [15:0] 	SettingParameter209, 	
output [15:0] 	SettingParameter210,
output [15:0] 	SettingParameter211,
output [15:0] 	SettingParameter212,
output [15:0] 	SettingParameter213,
output [15:0] 	SettingParameter214,
output [15:0] 	SettingParameter215,
output [15:0] 	SettingParameter216,
output [15:0] 	SettingParameter217,
output [15:0] 	SettingParameter218,
output [15:0] 	SettingParameter219, 
output [15:0] 	ARM_Data0,
output [15:0] 	ARM_Data1,
output [15:0] 	ARM_Data2,
output [15:0] 	ARM_Data3,
output [15:0] 	ARM_Data4,
output [15:0] 	ARM_Data5,
output [15:0] 	ARM_Data6,
output [15:0] 	ARM_Data7,
output [15:0] 	ARM_Data8,
output [15:0] 	ARM_Data9, 
output [15:0] 	ARM_Data10,
output [15:0] 	ARM_Data11,
output [15:0] 	ARM_Data12,
output [15:0] 	ARM_Data13,
output [15:0] 	ARM_Data14,
output [15:0] 	ARM_Data15,
output [15:0] 	ARM_Data16,
output [15:0] 	ARM_Data17,
output [15:0] 	ARM_Data18,
output [15:0] 	ARM_Data19,  
output [15:0] 	ARM_Data20,
output [15:0] 	ARM_Data21,
output [15:0] 	ARM_Data22,
output [15:0] 	ARM_Data23,
output [15:0] 	ARM_Data24,
output [15:0] 	ARM_Data25,
output [15:0] 	ARM_Data26,
output [15:0] 	ARM_Data27,
output [15:0] 	ARM_Data28,
output [15:0] 	ARM_Data29, 
output [15:0] 	ARM_Data30,
output [15:0] 	ARM_Data31,
output [15:0] 	ARM_Data32,
output [15:0] 	SettingParameter253,
output [15:0] 	SettingParameter254,
output [15:0] 	SettingParameter255,	
input  [15:0]  MonitorData0,   
input  [15:0]  MonitorData1,   
input  [15:0]  MonitorData2,   
input  [15:0]  MonitorData3,   
input  [15:0]  MonitorData4,   
input  [15:0]  MonitorData5,
input  [15:0]  MonitorData6,
input  [15:0]  MonitorData7,   
input  [15:0]  MonitorData8,   
input  [15:0]  MonitorData9,  
input  [15:0]  MonitorData10,   
input  [15:0]  MonitorData11,   
input  [15:0]  MonitorData12,   
input  [15:0]  MonitorData13,   
input  [15:0]  MonitorData14,   
input  [15:0]  MonitorData15,
input  [15:0]  MonitorData16,
input  [15:0]  MonitorData17,   
input  [15:0]  MonitorData18,   
input  [15:0]  MonitorData19,		
input  [15:0]  MonitorData20,   
input  [15:0]  MonitorData21,   
input  [15:0]  MonitorData22,   
input  [15:0]  MonitorData23,   
input  [15:0]  MonitorData24,   
input  [15:0]  MonitorData25,
input  [15:0]  MonitorData26,
input  [15:0]  MonitorData27,   
input  [15:0]  MonitorData28,   
input  [15:0]  MonitorData29,
input  [15:0]  MonitorData30,   
input  [15:0]  MonitorData31,   
input  [15:0]  MonitorData32,   
input  [15:0]  MonitorData33,   
input  [15:0]  MonitorData34,   
input  [15:0]  MonitorData35,
input  [15:0]  MonitorData36,
input  [15:0]  MonitorData37,   
input  [15:0]  MonitorData38,   
input  [15:0]  MonitorData39,
input  [15:0]  MonitorData40,   
input  [15:0]  MonitorData41,   
input  [15:0]  MonitorData42,   
input  [15:0]  MonitorData43,   
input  [15:0]  MonitorData44,   
input  [15:0]  MonitorData45,
input  [15:0]  MonitorData46,
input  [15:0]  MonitorData47,   
input  [15:0]  MonitorData48,   
input  [15:0]  MonitorData49,
input  [15:0]  MonitorData50,   
input  [15:0]  MonitorData51,   
input  [15:0]  MonitorData52,   
input  [15:0]  MonitorData53,   
input  [15:0]  MonitorData54,   
input  [15:0]  MonitorData55,
input  [15:0]  MonitorData56,
input  [15:0]  MonitorData57,   
input  [15:0]  MonitorData58,   
input  [15:0]  MonitorData59,
input  [15:0]  MonitorData60,   
input  [15:0]  MonitorData61,   
input  [15:0]  MonitorData62,   
input  [15:0]  MonitorData63,   
input  [15:0]  MonitorData64,   
input  [15:0]  MonitorData65,
input  [15:0]  MonitorData66,
input  [15:0]  MonitorData67,   
input  [15:0]  MonitorData68,   
input  [15:0]  MonitorData69,
input  [15:0]  MonitorData70,   
input  [15:0]  MonitorData71,   
input  [15:0]  MonitorData72,   
input  [15:0]  MonitorData73,   
input  [15:0]  MonitorData74,   
input  [15:0]  MonitorData75,
input  [15:0]  MonitorData76,
input  [15:0]  MonitorData77,   
input  [15:0]  MonitorData78,   
input  [15:0]  MonitorData79,
input  [15:0]  MonitorData80,   
input  [15:0]  MonitorData81,   
input  [15:0]  MonitorData82,   
input  [15:0]  MonitorData83,   
input  [15:0]  MonitorData84,   
input  [15:0]  MonitorData85,
input  [15:0]  MonitorData86,
input  [15:0]  MonitorData87,   
input  [15:0]  MonitorData88,   
input  [15:0]  MonitorData89,
input  [15:0]  MonitorData90,   
input  [15:0]  MonitorData91,   
input  [15:0]  MonitorData92,   
input  [15:0]  MonitorData93,   
input  [15:0]  MonitorData94,   
input  [15:0]  MonitorData95,
input  [15:0]  MonitorData96,
input  [15:0]  MonitorData97,   
input  [15:0]  MonitorData98,   
input  [15:0]  MonitorData99, 	
input  [15:0]  MonitorData100,   
input  [15:0]  MonitorData101,   
input  [15:0]  MonitorData102,   
input  [15:0]  MonitorData103,   
input  [15:0]  MonitorData104,   
input  [15:0]  MonitorData105,
input  [15:0]  MonitorData106,
input  [15:0]  MonitorData107,   
input  [15:0]  MonitorData108,   
input  [15:0]  MonitorData109,  
input  [15:0]  CarryNum_b12_Set, 
		//========debug===========
		output [15:0] WR_ADD_b16,
		output [15:0] RD_ADD_b16,
		output [15:0] DLen_b16,
		output reg  [15:0] FullCnt,
		output reg  [15:0] EmptyCnt
);  

	reg  [15:0] FSMC_DATA_r1, FSMC_DATA_CHK; 
	reg  [9:0]  FSMC_ADD_r1, FSMC_ADD_CHK; 
	reg  FSMC_NE2_r1,FSMC_NOE_r1,FSMC_NWE_r1; 
	//reg [15:0] dataBuffer[511:0]; 
	//(* ram_style = "block" *) reg [15:0] dataBuffer[511:0]; 
	reg  [15:0] SettingBuffer [255:0];   
	wire [15:0] FIFO_out [8:0]; 
	reg  [15:0] DATA_Temp; 
	//====================== Xilinx need  same clk ===================================	
`ifdef RUN_Xilinx_ILA0	
	ila_0 ila_0_INST1(
		.clk( FSMC_CLK ),
		.probe0( FSMC_NE2 ),
		.probe1( FSMC_NOE ),
		.probe2( FSMC_NWE ),
		.probe3( FIFO_Read_Akn ),  //FIFO_Read_Akn
		.probe4( FIFOWr_flg  ),  //FIFOWr_flg
		.probe5( FIFORdNext_flg ),  //FIFORd_flg
		.probe6( OUT_TRI_En  ),  //
		.probe7( DLen_b16  ),  //OUT_TRI_En
		.probe8( {2'd0,FSMC_ADD[9:0]} ),
		.probe9(  12'd0 ),
		.probe10( 12'd0 ),
		.probe11( 12'd0 ), 
		.probe12( OUT_TRI_En_cnt ),
		.probe13( RD_ADD_b16     ),
		.probe14( WR_ADD_b16     ),
		.probe15( FSMC_DATA_rd    )
	);  
`endif
	//========================WAV=================================	
	reg  [8:0] WR_ADD, RD_ADD, FIFO_Read_cnt;  
	reg  [24:0] SmpFreqCnt, SmpFreqCnt_r; //100M: 100000000/(2^25/1000)=2980    
	wire FIFOWr_flg = (SmpFreqCnt < SmpFreqCnt_r) ? 1 : 0; 
	reg  WR_EN;  
	reg  FIFO_RD_END, FIFO_RD_END_r, FIFO_Read_Akn_r;  
	wire FIFORdNext_flg = ((~FIFO_RD_END) & FIFO_RD_END_r) ? 1 : 0; //%511下降沿时刻    
	assign WR_ADD_b16 = {7'b0, WR_ADD}; 
	assign RD_ADD_b16 = {7'b0, RD_ADD};
	assign DLen_b16 = (WR_ADD_b16<RD_ADD_b16) ? (16'd512+WR_ADD_b16-RD_ADD_b16) : (WR_ADD_b16-RD_ADD_b16);
	assign FIFO_Read_Akn = FIFO_Read_Akn_r; //wire Read_Akn; 
  //========================fault=================================	
	parameter WORKING = 4'b0100;
    parameter FAULT   = 4'b0101;
	wire [15:0] FaultFIFO_out[17:0];
	reg  [3:0] StateCode_r; 
	reg  FaultFIFO_RD_END, FaultFIFO_RD_END_r, NoFault; 
	wire FaultFIFORdNext_flg = ((~FaultFIFO_RD_END) & FaultFIFO_RD_END_r) ? 1 : 0; //%417下降沿时刻  
	reg  [8:0] FaultRD_ADD, FaultWR_Cnt;  
	//========================PWM=================================	
	wire [15:0] PWMFaultFIFO_out[2:0];
	reg  PWM_FaultRD_ADD_END,PWM_FaultRD_ADD_END_r, PWM_NoFault;
	wire PWM_FaultFIFORdNext_flg = ((~PWM_FaultRD_ADD_END) & PWM_FaultRD_ADD_END_r) ? 1 : 0; //%417下降沿时刻  
	reg  [15:0] PWM_FaultRD_ADD, PWM_WR_ADD, PWM_FaultWR_Cnt;
	//================================= io =====================================================
	wire  OUT_TRI_En = OUT_TRI_En_r & (~FSMC_NE2);   
	reg   OUT_TRI_En_r;	  
	reg  [15:0] OUT_TRI_En_cnt;
	reg  [7:0]  FSMC_DATA_CHK254_L8;
	always@(posedge FSMC_CLK) begin   
		//========================
		FSMC_NE2_r1  <= FSMC_NE2;
		FSMC_NOE_r1  <= FSMC_NOE;
		FSMC_NWE_r1  <= FSMC_NWE;
		FSMC_ADD_r1  <= FSMC_ADD;
		FSMC_DATA_r1 <= FSMC_DATA_rd;//FSMC_DATA; 
		//======================================read L8==============================
		//FSMC_ADD[10:1]
		if((~FSMC_NE2) & (~FSMC_NOE) & (FSMC_ADD[8:0]<9'd256) )  begin  //read1 Setting 
			DATA_Temp <= (FSMC_ADD[8:0]==77) ? CarryNum_b12_Set : SettingBuffer[FSMC_ADD[8:0]];   
		end
		else if((~FSMC_NE2) & (~FSMC_NOE) & (FSMC_ADD[8:0]<9'd503) ) begin  //read2 Monitor
		//else if(FSMC_ADD[8:0]<9'd503 ) begin
			case(FSMC_ADD[8:0])   
				 (9'd256+0): begin DATA_Temp[15:0]<=MonitorData0; end
				 (9'd256+1): begin DATA_Temp[15:0]<=MonitorData1; end
				 (9'd256+2): begin DATA_Temp[15:0]<=MonitorData2; end 
				 (9'd256+3): begin DATA_Temp[15:0]<=MonitorData3; end
				 (9'd256+4): begin DATA_Temp[15:0]<=MonitorData4; end
				 (9'd256+5): begin DATA_Temp[15:0]<=MonitorData5; end 
				 (9'd256+6): begin DATA_Temp[15:0]<=MonitorData6; end
				 (9'd256+7): begin DATA_Temp[15:0]<=MonitorData7; end
				 (9'd256+8): begin DATA_Temp[15:0]<=MonitorData8; end 
				 (9'd256+9): begin DATA_Temp[15:0]<=MonitorData9; end 
				 (9'd256+10): begin DATA_Temp[15:0]<=MonitorData10; end
				 (9'd256+11): begin DATA_Temp[15:0]<=MonitorData11; end
				 (9'd256+12): begin DATA_Temp[15:0]<=MonitorData12; end 
				 (9'd256+13): begin DATA_Temp[15:0]<=MonitorData13; end
				 (9'd256+14): begin DATA_Temp[15:0]<=MonitorData14; end
				 (9'd256+15): begin DATA_Temp[15:0]<=MonitorData15; end 
				 (9'd256+16): begin DATA_Temp[15:0]<=MonitorData16; end
				 (9'd256+17): begin DATA_Temp[15:0]<=MonitorData17; end
				 (9'd256+18): begin DATA_Temp[15:0]<=MonitorData18; end 
				 (9'd256+19): begin DATA_Temp[15:0]<=MonitorData19; end
				 (9'd256+20): begin DATA_Temp[15:0]<=MonitorData20; end
				 (9'd256+21): begin DATA_Temp[15:0]<=MonitorData21; end
				 (9'd256+22): begin DATA_Temp[15:0]<=MonitorData22; end 
				 (9'd256+23): begin DATA_Temp[15:0]<=MonitorData23; end
				 (9'd256+24): begin DATA_Temp[15:0]<=MonitorData24; end
				 (9'd256+25): begin DATA_Temp[15:0]<=MonitorData25; end 
				 (9'd256+26): begin DATA_Temp[15:0]<=MonitorData26; end
				 (9'd256+27): begin DATA_Temp[15:0]<=MonitorData27; end
				 (9'd256+28): begin DATA_Temp[15:0]<=MonitorData28; end 
				 (9'd256+29): begin DATA_Temp[15:0]<=MonitorData29; end
				 (9'd256+30): begin DATA_Temp[15:0]<=MonitorData30; end
				 (9'd256+31): begin DATA_Temp[15:0]<=MonitorData31; end
				 (9'd256+32): begin DATA_Temp[15:0]<=MonitorData32; end 
				 (9'd256+33): begin DATA_Temp[15:0]<=MonitorData33; end
				 (9'd256+34): begin DATA_Temp[15:0]<=MonitorData34; end
				 (9'd256+35): begin DATA_Temp[15:0]<=MonitorData35; end 
				 (9'd256+36): begin DATA_Temp[15:0]<=MonitorData36; end
				 (9'd256+37): begin DATA_Temp[15:0]<=MonitorData37; end
				 (9'd256+38): begin DATA_Temp[15:0]<=MonitorData38; end 
				 (9'd256+39): begin DATA_Temp[15:0]<=MonitorData39; end
				 (9'd256+40): begin DATA_Temp[15:0]<=MonitorData40; end
				 (9'd256+41): begin DATA_Temp[15:0]<=MonitorData41; end
				 (9'd256+42): begin DATA_Temp[15:0]<=MonitorData42; end 
				 (9'd256+43): begin DATA_Temp[15:0]<=MonitorData43; end
				 (9'd256+44): begin DATA_Temp[15:0]<=MonitorData44; end
				 (9'd256+45): begin DATA_Temp[15:0]<=MonitorData45; end 
				 (9'd256+46): begin DATA_Temp[15:0]<=MonitorData46; end
				 (9'd256+47): begin DATA_Temp[15:0]<=MonitorData47; end
				 (9'd256+48): begin DATA_Temp[15:0]<=MonitorData48; end 
				 (9'd256+49): begin DATA_Temp[15:0]<=MonitorData49; end
				 (9'd256+50): begin DATA_Temp[15:0]<=MonitorData50; end
				 (9'd256+51): begin DATA_Temp[15:0]<=MonitorData51; end
				 (9'd256+52): begin DATA_Temp[15:0]<=MonitorData52; end 
				 (9'd256+53): begin DATA_Temp[15:0]<=MonitorData53; end
				 (9'd256+54): begin DATA_Temp[15:0]<=MonitorData54; end
				 (9'd256+55): begin DATA_Temp[15:0]<=MonitorData55; end 
				 (9'd256+56): begin DATA_Temp[15:0]<=MonitorData56; end
				 (9'd256+57): begin DATA_Temp[15:0]<=MonitorData57; end
				 (9'd256+58): begin DATA_Temp[15:0]<=MonitorData58; end 
				 (9'd256+59): begin DATA_Temp[15:0]<=MonitorData59; end
				 (9'd256+60): begin DATA_Temp[15:0]<=MonitorData60; end
				 (9'd256+61): begin DATA_Temp[15:0]<=MonitorData61; end
				 (9'd256+62): begin DATA_Temp[15:0]<=MonitorData62; end 
				 (9'd256+63): begin DATA_Temp[15:0]<=MonitorData63; end
				 (9'd256+64): begin DATA_Temp[15:0]<=MonitorData64; end
				 (9'd256+65): begin DATA_Temp[15:0]<=MonitorData65; end 
				 (9'd256+66): begin DATA_Temp[15:0]<=MonitorData66; end
				 (9'd256+67): begin DATA_Temp[15:0]<=MonitorData67; end
				 (9'd256+68): begin DATA_Temp[15:0]<=MonitorData68; end 
				 (9'd256+69): begin DATA_Temp[15:0]<=MonitorData69; end					 
				 (9'd256+70): begin DATA_Temp[15:0]<=MonitorData70; end
				 (9'd256+71): begin DATA_Temp[15:0]<=MonitorData71; end
				 (9'd256+72): begin DATA_Temp[15:0]<=MonitorData72; end 
				 (9'd256+73): begin DATA_Temp[15:0]<=MonitorData73; end
				 (9'd256+74): begin DATA_Temp[15:0]<=MonitorData74; end
				 (9'd256+75): begin DATA_Temp[15:0]<=MonitorData75; end 
				 (9'd256+76): begin DATA_Temp[15:0]<=MonitorData76; end
				 (9'd256+77): begin DATA_Temp[15:0]<=MonitorData77; end
				 (9'd256+78): begin DATA_Temp[15:0]<=MonitorData78; end 
				 (9'd256+79): begin DATA_Temp[15:0]<=MonitorData79; end 
				 (9'd256+80): begin DATA_Temp[15:0]<=MonitorData80; end
				 (9'd256+81): begin DATA_Temp[15:0]<=MonitorData81; end
				 (9'd256+82): begin DATA_Temp[15:0]<=MonitorData82; end 
				 (9'd256+83): begin DATA_Temp[15:0]<=MonitorData83; end
				 (9'd256+84): begin DATA_Temp[15:0]<=MonitorData84; end
				 (9'd256+85): begin DATA_Temp[15:0]<=MonitorData85; end 
				 (9'd256+86): begin DATA_Temp[15:0]<=MonitorData86; end
				 (9'd256+87): begin DATA_Temp[15:0]<=MonitorData87; end
				 (9'd256+88): begin DATA_Temp[15:0]<=MonitorData88; end 
				 (9'd256+89): begin DATA_Temp[15:0]<=MonitorData89; end 
				 (9'd256+90): begin DATA_Temp[15:0]<=MonitorData90; end
				 (9'd256+91): begin DATA_Temp[15:0]<=MonitorData91; end
				 (9'd256+92): begin DATA_Temp[15:0]<=MonitorData92; end 
				 (9'd256+93): begin DATA_Temp[15:0]<=MonitorData93; end
				 (9'd256+94): begin DATA_Temp[15:0]<=MonitorData94; end
				 (9'd256+95): begin DATA_Temp[15:0]<=MonitorData95; end 
				 (9'd256+96): begin DATA_Temp[15:0]<=MonitorData96; end
				 (9'd256+97): begin DATA_Temp[15:0]<=MonitorData97; end
				 (9'd256+98): begin DATA_Temp[15:0]<=MonitorData98; end 
				 (9'd256+99): begin DATA_Temp[15:0]<=MonitorData99; end 
				 (9'd256+100): begin DATA_Temp[15:0]<=MonitorData100; end
				 (9'd256+101): begin DATA_Temp[15:0]<=MonitorData101; end
				 (9'd256+102): begin DATA_Temp[15:0]<=MonitorData102; end 
				 (9'd256+103): begin DATA_Temp[15:0]<=MonitorData103; end
				 (9'd256+104): begin DATA_Temp[15:0]<=MonitorData104; end
				 (9'd256+105): begin DATA_Temp[15:0]<=MonitorData105; end 
				 (9'd256+106): begin DATA_Temp[15:0]<=MonitorData106; end
				 (9'd256+107): begin DATA_Temp[15:0]<=MonitorData107; end
				 (9'd256+108): begin DATA_Temp[15:0]<=MonitorData108; end 
				 (9'd256+109): begin DATA_Temp[15:0]<=MonitorData109; end 
`ifdef EnFaultRecord					 
				 (9'd400): begin DATA_Temp[15:0]<=FaultFIFO_out[0]; end 
				 (9'd401): begin DATA_Temp[15:0]<=FaultFIFO_out[1]; end 
				 (9'd402): begin DATA_Temp[15:0]<=FaultFIFO_out[2]; end 
				 (9'd403): begin DATA_Temp[15:0]<=FaultFIFO_out[3]; end 
				 (9'd404): begin DATA_Temp[15:0]<=FaultFIFO_out[4]; end 
				 (9'd405): begin DATA_Temp[15:0]<=FaultFIFO_out[5]; end 
				 (9'd406): begin DATA_Temp[15:0]<=FaultFIFO_out[6]; end 
				 (9'd407): begin DATA_Temp[15:0]<=FaultFIFO_out[7]; end 
				 (9'd408): begin DATA_Temp[15:0]<=FaultFIFO_out[8]; end 
			  	 (9'd409): begin DATA_Temp[15:0]<=FaultFIFO_out[9]; end 
				 (9'd410): begin DATA_Temp[15:0]<=FaultFIFO_out[10]; end 
				 (9'd411): begin DATA_Temp[15:0]<=FaultFIFO_out[11]; end 
				 (9'd412): begin DATA_Temp[15:0]<=FaultFIFO_out[12]; end 
				 (9'd413): begin DATA_Temp[15:0]<=FaultFIFO_out[13]; end 
				 (9'd414): begin DATA_Temp[15:0]<=FaultFIFO_out[14]; end 
				 (9'd415): begin DATA_Temp[15:0]<=FaultFIFO_out[15]; end 
				 (9'd416): begin DATA_Temp[15:0]<=FaultFIFO_out[16]; end 
				 (9'd417): begin DATA_Temp[15:0]<=FaultFIFO_out[17]; end   
`endif		
				 (9'd450): begin DATA_Temp[15:0]<=PWMFaultFIFO_out[0]; end 
				 (9'd451): begin DATA_Temp[15:0]<=PWMFaultFIFO_out[1]; end  
				 (9'd452): begin DATA_Temp[15:0]<=PWM_FaultRD_ADD; end  
				 (9'd502): begin DATA_Temp[15:0] <= FIFO_Read_Akn ? 16'h4000 : 16'h0000; end 
			endcase  
		end
		else if((~FSMC_NE2) & (~FSMC_NOE) & (FSMC_ADD[8:0]<=9'd511) ) begin //read3 wave 
			case(FSMC_ADD[8:0])   
				 (9'd503): begin DATA_Temp[15:0]<=FIFO_out[0]; end
				 (9'd504): begin DATA_Temp[15:0]<=FIFO_out[1]; end
				 (9'd505): begin DATA_Temp[15:0]<=FIFO_out[2]; end  
				 (9'd506): begin DATA_Temp[15:0]<=FIFO_out[3]; end
				 (9'd507): begin DATA_Temp[15:0]<=FIFO_out[4]; end
				 (9'd508): begin DATA_Temp[15:0]<=FIFO_out[5]; end 
				 (9'd509): begin DATA_Temp[15:0]<=FIFO_out[6]; end
				 (9'd510): begin DATA_Temp[15:0]<=FIFO_out[7]; end
				 (9'd511): begin DATA_Temp[15:0]<=FIFO_out[8]; end
				//(9'd511): begin DATA_Temp[15:0]<={7'd0,FIFO_Read_cnt}; end
			endcase	 
		end 
		//======================================write======================================
		else if((~FSMC_NE2_r1) & (~FSMC_NWE_r1) & (FSMC_ADD_r1[8:0]<10'd254))   begin  //write1  
			if(FSMC_ADD_r1[9]) begin
				FSMC_DATA_CHK[15:8] <= FSMC_DATA_r1[15:8];
			end
			else begin
				FSMC_DATA_CHK[7:0] <= FSMC_DATA_r1[15:8]; 
			end 
			FSMC_ADD_CHK[9:0] <= {1'b0,FSMC_ADD_r1[8:0]}; 
			
			
			
`ifdef RUN_Altera 	
			SettingBuffer[FSMC_ADD_r1] <= FSMC_DATA_r1; //3NET NEW 
`endif	
		end 
		else if((~FSMC_NE2_r1) & (~FSMC_NWE_r1) & (FSMC_ADD_r1[8:0]==9'd254) & (FSMC_ADD_r1[9]==1'b0))   begin  //write2 check write1 data
`ifdef RUN_Xilinx	
			FSMC_DATA_CHK254_L8[7:0] <= FSMC_DATA_r1[15:8]; 
//`endif			
		end 
		else if((~FSMC_NE2_r1) & (~FSMC_NWE_r1) & (FSMC_ADD_r1[8:0]==9'd254) & (FSMC_ADD_r1[9]==1'b1))   begin  //write2 check write1 data
//`ifdef RUN_Xilinx	
			if({FSMC_DATA_r1[15:8],FSMC_DATA_CHK254_L8[7:0]}==(~FSMC_DATA_CHK)) begin 
				SettingBuffer[FSMC_ADD_CHK] <= FSMC_DATA_CHK; //xilinx need use 
			end 
`endif			
		end 
		//else if((~FSMC_NE2_r1) & (~FSMC_NWE_r1) & (FSMC_ADD_r1==10'd255))   begin  //write3..rsv 
		//end   
		/* //===============================单网口256点位=====================================
		if((~FSMC_NE_r1) & (~FSMC_NOE_r1) )  begin  //read 256point
			DATA_Temp <= (FSMC_ADD_r1<10'd247) ? dataBuffer[FSMC_ADD_r1] : FIFO_out[FSMC_ADD_r1-10'd247];
		end 
		else if((~FSMC_NE_r1) & (~FSMC_NWE_r1) & (FSMC_ADD_r1<10'd120))  begin  //write 256point 
			dataBuffer[FSMC_ADD_r1] <= FSMC_DATA_r1;
		end  */
		else begin 
		end 
//========================================================================================================
		//==================== wave READ =======================
		//FIFO_RD_END <= (FIFO_RD_END==0) ? ((~FSMC_NE2)&(~FSMC_NOE)&(FSMC_ADD==10'd511)) : (~FSMC_NE2); 
		FIFO_RD_END <= (FIFO_RD_END==0) ? ((~FSMC_NE2)&(~FSMC_NOE)&(FSMC_ADD[9]==1'b1)&(FSMC_ADD[8:0]==9'd511)) : (~FSMC_NE2); 
		
		FIFO_RD_END_r <= FIFO_RD_END;
		if( FIFORdNext_flg ) begin
			if((RD_ADD + 1)==WR_ADD) begin //读取最后个FIFO自动地址切换下个地址，数据准备
				EmptyCnt <= EmptyCnt + 1;
			end 
			else begin
				RD_ADD <= RD_ADD + 1; 
				FIFO_Read_cnt <= FIFO_Read_cnt + 1;  
		   end	
		end 
		else begin
`ifdef RUN_Xilinx 	
			if( FIFO_Read_Akn_r == 0) begin
				FIFO_Read_Akn_r <= (DLen_b16>=16'd250) ? 1 : 0; 
				FIFO_Read_cnt <= 0;
			end
			else begin 
				FIFO_Read_Akn_r <= (FIFO_Read_cnt>=16'd128) ? 0 : 1; 		
			end
			//FIFO_Read_Akn_r <= (DLen_b16>16'd250) ? 1 : 0;

`else		
		/*	if( FIFO_Read_Akn_r == 0) begin
				FIFO_Read_Akn_r <= (DLen_b16>16'd256) ? 1 : 0;  
			end
			else begin 
				FIFO_Read_Akn_r <= (FIFO_Read_cnt>=16'd5) ? 0 : 1; 
			end*/ 
			FIFO_Read_Akn_r <= (DLen_b16>16'd256) ? 1 : 0;  //老方法注意宽度，太窄会导致发不出信号
`endif		
		end  
		//==================== FAULT DATA READ =======================
		//FaultFIFO_RD_END <= (FaultFIFO_RD_END==0) ? ((~FSMC_NE2)&(~FSMC_NOE)&(FSMC_ADD==10'd417)) : (~FSMC_NE2);  
		FaultFIFO_RD_END <= (FaultFIFO_RD_END==0) ? ((~FSMC_NE2)&(~FSMC_NOE)&(FSMC_ADD[9]==1'b1)&(FSMC_ADD[8:0]==9'd417)) : (~FSMC_NE2);  
		FaultFIFO_RD_END_r <= FaultFIFO_RD_END; 
		if(StateCode==WORKING) begin
			FaultRD_ADD <= (WR_ADD<9'd210) ? (9'd511+WR_ADD-9'd210) : (WR_ADD-9'd210); //故障前210点后300点  512 
		end
		else begin 
			FaultRD_ADD <= (FaultFIFORdNext_flg) ? (FaultRD_ADD + 1) : FaultRD_ADD; 
		end  
		//==================== PWM DATA READ =======================
		if(PWM_NoFault) begin
			PWM_FaultRD_ADD <= PWM_WR_ADD + 1;  //start pos,write adress next
		end else begin  
			//PWM_FaultRD_ADD_END <= (PWM_FaultRD_ADD_END==0) ? ((~FSMC_NE2)&(~FSMC_NOE)&(FSMC_ADD==10'd452)) : (~FSMC_NE2);  
			PWM_FaultRD_ADD_END <= (PWM_FaultRD_ADD_END==0) ? ((~FSMC_NE2)&(~FSMC_NOE)&(FSMC_ADD[9]==1'b1)&(FSMC_ADD[8:0]==9'd452)) : (~FSMC_NE2);  
			PWM_FaultRD_ADD_END_r <= PWM_FaultRD_ADD_END; 
			PWM_FaultRD_ADD <= (PWM_FaultFIFORdNext_flg) ? (PWM_FaultRD_ADD + 1) : PWM_FaultRD_ADD; 
		end  
//======================================== OUT_TRI =========================================== 
		OUT_TRI_En_r <= (OUT_TRI_En_r==0) ? ((~FSMC_NE2)&(FSMC_NWE)&(~FSMC_NOE)&(~FSMC_NOE_r1)) : (~FSMC_NE2);  
		//OUT_TRI_En_r <= (OUT_TRI_En_r==0) ? ((~FSMC_NE2)&(FSMC_NWE)&(~FSMC_NOE)&(~FSMC_NOE_r1)) : (~(FSMC_NE2 | (OUT_TRI_En_cnt>=16'd9)) );  
		if(~FSMC_NE2) begin
			OUT_TRI_En_cnt <= ((OUT_TRI_En_cnt<16'd9)&OUT_TRI_En_r) ? (OUT_TRI_En_cnt+1) : OUT_TRI_En_cnt;
		end
		else begin
			OUT_TRI_En_cnt<= 0;
		end
	end   
	//======================= total ====================
	reg  [15:0] FIFO_Read_cnt_SecCnt,FIFO_Write_cnt_SecCnt;
	reg  [31:0] TIME_Cnt;  
	wire DPRAMZ_clk = g_clk;
	always@(posedge DPRAMZ_clk) begin  
		if(TIME_Cnt<32'd25000000) begin //1s
			TIME_Cnt <= TIME_Cnt +1; 
			if( FIFOWr_flg ) begin
				FIFO_Write_cnt_SecCnt <= FIFO_Write_cnt_SecCnt + 1; 
			end
			if( FIFORdNext_flg ) begin
				FIFO_Read_cnt_SecCnt  <= FIFO_Read_cnt_SecCnt + 1; 
			end	
		end 
		else begin
			TIME_Cnt <= 0;
			TIME_Sec <= TIME_Sec + 1;
			FIFO_Write_cnt_SecCnt <= 0; 
			FIFO_Write_cnt_Sec <= FIFO_Write_cnt_SecCnt; 
			FIFO_Read_cnt_SecCnt <= 0; 
			FIFO_Read_cnt_Sec  <= FIFO_Read_cnt_SecCnt;  
		end 
		//======================= WAVE WRITE ============= .g_clk(FSMC_CLK) 修改 
		SmpFreqCnt   <= SmpFreqCnt + {FIFO_SmpFreq_Set}; //25000000/(2^25/1000)=2980  采样频率上限8000Hz=25e6/((2^23-1)/2684)  3K
		SmpFreqCnt_r <= SmpFreqCnt;   
		if( FIFOWr_flg ) begin
			if((WR_ADD + 1)==RD_ADD) begin //下次写将会发生覆盖，停止写入，留出一个空位不写【511】
				FullCnt <= FullCnt + 1; //=+++
				WR_EN <= 0;
			end
			else begin
				WR_ADD <= WR_ADD + 1;	
				WR_EN <= 1; 
			end
		end 
		else begin
			WR_EN <= 0;
		end
		//==================== FAULT DATA WRITE ======================= 
		if(StateCode==WORKING) begin 
			FaultWR_Cnt <= 9'd0;
			NoFault <= 1;
		end
		else begin
			if( FIFOWr_flg ) begin
				if(FaultWR_Cnt<9'd300) begin
					FaultWR_Cnt <= FaultWR_Cnt + 1;
					NoFault <= 1;
				end
				else begin
					NoFault <= 0;
				end
			end 
		end 
		//==================== PWM DATA WRITE 15K =======================
		/*if(StateCode==WORKING) begin 
			PWM_FaultWR_Cnt <= 16'd0;
			PWM_NoFault <= 1;
			//PWM_WR_ADD <= g_clk ? (PWM_WR_ADD+1) : PWM_WR_ADD;
			PWM_WR_ADD <= PWM_WR_ADD+1;
		end
		else begin  
			if(PWM_FaultWR_Cnt<16'd30000) begin
				PWM_FaultWR_Cnt <= PWM_FaultWR_Cnt + 1;
				PWM_NoFault <= 1;
				//PWM_WR_ADD <= g_clk ? (PWM_WR_ADD+1) : PWM_WR_ADD;
				PWM_WR_ADD <= PWM_WR_ADD+1;
			end
			else begin
				PWM_NoFault <= 0;
			end 
		end 	*/	
	end  
	//======================= WAVE fifo<503-511> (* ramstyle = "M10K" *) ==================
	DPRAMZ DramInst0(.g_clk(DPRAMZ_clk),.In(FIFO0_Data0),.WR_EN(WR_EN),.WR_ADD(WR_ADD),.RD_ADD(RD_ADD),.Out(FIFO_out[0]));
	DPRAMZ DramInst1(.g_clk(DPRAMZ_clk),.In(FIFO1_Data0),.WR_EN(WR_EN),.WR_ADD(WR_ADD),.RD_ADD(RD_ADD),.Out(FIFO_out[1]));
	DPRAMZ DramInst2(.g_clk(DPRAMZ_clk),.In(FIFO2_Data0),.WR_EN(WR_EN),.WR_ADD(WR_ADD),.RD_ADD(RD_ADD),.Out(FIFO_out[2]));
	DPRAMZ DramInst3(.g_clk(DPRAMZ_clk),.In(FIFO3_Data0),.WR_EN(WR_EN),.WR_ADD(WR_ADD),.RD_ADD(RD_ADD),.Out(FIFO_out[3]));
	DPRAMZ DramInst4(.g_clk(DPRAMZ_clk),.In(FIFO4_Data0),.WR_EN(WR_EN),.WR_ADD(WR_ADD),.RD_ADD(RD_ADD),.Out(FIFO_out[4]));
	DPRAMZ DramInst5(.g_clk(DPRAMZ_clk),.In(FIFO5_Data0),.WR_EN(WR_EN),.WR_ADD(WR_ADD),.RD_ADD(RD_ADD),.Out(FIFO_out[5]));
	DPRAMZ DramInst6(.g_clk(DPRAMZ_clk),.In(FIFO6_Data0),.WR_EN(WR_EN),.WR_ADD(WR_ADD),.RD_ADD(RD_ADD),.Out(FIFO_out[6]));
	DPRAMZ DramInst7(.g_clk(DPRAMZ_clk),.In(FIFO7_Data0),.WR_EN(WR_EN),.WR_ADD(WR_ADD),.RD_ADD(RD_ADD),.Out(FIFO_out[7]));
	DPRAMZ DramInst8(.g_clk(DPRAMZ_clk),.In(FIFO8_Data0),.WR_EN(WR_EN),.WR_ADD(WR_ADD),.RD_ADD(RD_ADD),.Out(FIFO_out[8])); 
//======================= Fault ====================	
`ifdef EnFaultRecord	
	DPRAMZ FaultDramInst0 (.g_clk(DPRAMZ_clk),.In(Fault_in0), .WR_EN(NoFault),.WR_ADD(WR_ADD),.RD_ADD(FaultRD_ADD),.Out(FaultFIFO_out[0]));
	DPRAMZ FaultDramInst1 (.g_clk(DPRAMZ_clk),.In(Fault_in1), .WR_EN(NoFault),.WR_ADD(WR_ADD),.RD_ADD(FaultRD_ADD),.Out(FaultFIFO_out[1]));
	DPRAMZ FaultDramInst2 (.g_clk(DPRAMZ_clk),.In(Fault_in2), .WR_EN(NoFault),.WR_ADD(WR_ADD),.RD_ADD(FaultRD_ADD),.Out(FaultFIFO_out[2]));
	DPRAMZ FaultDramInst3 (.g_clk(DPRAMZ_clk),.In(Fault_in3), .WR_EN(NoFault),.WR_ADD(WR_ADD),.RD_ADD(FaultRD_ADD),.Out(FaultFIFO_out[3]));
	DPRAMZ FaultDramInst4 (.g_clk(DPRAMZ_clk),.In(Fault_in4), .WR_EN(NoFault),.WR_ADD(WR_ADD),.RD_ADD(FaultRD_ADD),.Out(FaultFIFO_out[4]));
	DPRAMZ FaultDramInst5 (.g_clk(DPRAMZ_clk),.In(Fault_in5), .WR_EN(NoFault),.WR_ADD(WR_ADD),.RD_ADD(FaultRD_ADD),.Out(FaultFIFO_out[5]));
	DPRAMZ FaultDramInst6 (.g_clk(DPRAMZ_clk),.In(Fault_in6), .WR_EN(NoFault),.WR_ADD(WR_ADD),.RD_ADD(FaultRD_ADD),.Out(FaultFIFO_out[6]));
	DPRAMZ FaultDramInst7 (.g_clk(DPRAMZ_clk),.In(Fault_in7), .WR_EN(NoFault),.WR_ADD(WR_ADD),.RD_ADD(FaultRD_ADD),.Out(FaultFIFO_out[7]));
	DPRAMZ FaultDramInst8 (.g_clk(DPRAMZ_clk),.In(Fault_in8), .WR_EN(NoFault),.WR_ADD(WR_ADD),.RD_ADD(FaultRD_ADD),.Out(FaultFIFO_out[8])); 
	DPRAMZ FaultDramInst9 (.g_clk(DPRAMZ_clk),.In(Fault_in9), .WR_EN(NoFault),.WR_ADD(WR_ADD),.RD_ADD(FaultRD_ADD),.Out(FaultFIFO_out[9]));
	DPRAMZ FaultDramInst10(.g_clk(DPRAMZ_clk),.In(Fault_in10),.WR_EN(NoFault),.WR_ADD(WR_ADD),.RD_ADD(FaultRD_ADD),.Out(FaultFIFO_out[10]));
	DPRAMZ FaultDramInst11(.g_clk(DPRAMZ_clk),.In(Fault_in11),.WR_EN(NoFault),.WR_ADD(WR_ADD),.RD_ADD(FaultRD_ADD),.Out(FaultFIFO_out[11]));
	DPRAMZ FaultDramInst12(.g_clk(DPRAMZ_clk),.In(Fault_in12),.WR_EN(NoFault),.WR_ADD(WR_ADD),.RD_ADD(FaultRD_ADD),.Out(FaultFIFO_out[12]));
	DPRAMZ FaultDramInst13(.g_clk(DPRAMZ_clk),.In(Fault_in13),.WR_EN(NoFault),.WR_ADD(WR_ADD),.RD_ADD(FaultRD_ADD),.Out(FaultFIFO_out[13]));
	DPRAMZ FaultDramInst14(.g_clk(DPRAMZ_clk),.In(Fault_in14),.WR_EN(NoFault),.WR_ADD(WR_ADD),.RD_ADD(FaultRD_ADD),.Out(FaultFIFO_out[14]));
	DPRAMZ FaultDramInst15(.g_clk(DPRAMZ_clk),.In(Fault_in15),.WR_EN(NoFault),.WR_ADD(WR_ADD),.RD_ADD(FaultRD_ADD),.Out(FaultFIFO_out[15]));
	DPRAMZ FaultDramInst16(.g_clk(DPRAMZ_clk),.In(Fault_in16),.WR_EN(NoFault),.WR_ADD(WR_ADD),.RD_ADD(FaultRD_ADD),.Out(FaultFIFO_out[16]));
	DPRAMZ FaultDramInst17(.g_clk(DPRAMZ_clk),.In(Fault_in17),.WR_EN(NoFault),.WR_ADD(WR_ADD),.RD_ADD(FaultRD_ADD),.Out(FaultFIFO_out[17]));
`endif 
reg  [2:0] g_clk3cnt; 
reg  PWM_clk;
always @(posedge g_clk ) begin 
	g_clk3cnt  <= g_clk3cnt+1; 
	PWM_clk    <= (g_clk3cnt==3'd0) ? 1 : 0;
	//PWM_WR_ADD <= (g_clk3cnt==3'd0) ? (PWM_WR_ADD+1) : 0;
	if(StateCode==WORKING) begin 
		PWM_FaultWR_Cnt <= 16'd0;
		PWM_NoFault <= 1;
		//PWM_WR_ADD <= g_clk ? (PWM_WR_ADD+1) : PWM_WR_ADD;
		PWM_WR_ADD <= (g_clk3cnt==3'd0) ? (PWM_WR_ADD+1) : (PWM_WR_ADD);
	end else begin  
		if(PWM_FaultWR_Cnt<16'd30000) begin
			PWM_FaultWR_Cnt <= PWM_FaultWR_Cnt + 1;
			PWM_NoFault <= 1;
			//PWM_WR_ADD <= g_clk ? (PWM_WR_ADD+1) : PWM_WR_ADD;
			//PWM_WR_ADD <= PWM_WR_ADD+1;
			PWM_WR_ADD <= (g_clk3cnt==3'd0) ? (PWM_WR_ADD+1) : (PWM_WR_ADD);
		end else begin
			PWM_NoFault <= 0;
		end  
	end 
end  //3*6
//65536*40*8=20_971_520ns  
	DPRAM_LONG_Z FaultDramInstPWMW1(.g_clk(PWM_clk),.In(PWMWORD1),.WR_EN(PWM_NoFault),.WR_ADD(PWM_WR_ADD),.RD_ADD(PWM_FaultRD_ADD),.Out(PWMFaultFIFO_out[0]));
	DPRAM_LONG_Z FaultDramInstPWMW2(.g_clk(PWM_clk),.In(PWMWORD2),.WR_EN(PWM_NoFault),.WR_ADD(PWM_WR_ADD),.RD_ADD(PWM_FaultRD_ADD),.Out(PWMFaultFIFO_out[1])); 
    //DPRAM_LONG_Z FaultDramInstPWMW3(.g_clk(PWM_clk),.In(PWMWORD3),.WR_EN(PWM_NoFault),.WR_ADD(PWM_WR_ADD),.RD_ADD(PWM_FaultRD_ADD),.Out(PWMFaultFIFO_out[2]));	
//========================================== Altera =========================================================== 
`ifdef RUN_Altera 	
	assign FSMC_DATA_rd = FSMC_DATA;
	TRI DSP_DATA0	(.in(DATA_Temp[0]), .oe(   OUT_TRI_En	), .out(FSMC_DATA[0])); 
	TRI DSP_DATA1	(.in(DATA_Temp[1]), .oe(	OUT_TRI_En	), .out(FSMC_DATA[1]));
	TRI DSP_DATA2	(.in(DATA_Temp[2]), .oe(	OUT_TRI_En	), .out(FSMC_DATA[2]));
	TRI DSP_DATA3	(.in(DATA_Temp[3]), .oe(	OUT_TRI_En	), .out(FSMC_DATA[3]));
	TRI DSP_DATA4	(.in(DATA_Temp[4]), .oe(	OUT_TRI_En	), .out(FSMC_DATA[4]));
	TRI DSP_DATA5	(.in(DATA_Temp[5]), .oe(	OUT_TRI_En	), .out(FSMC_DATA[5]));
	TRI DSP_DATA6	(.in(DATA_Temp[6]), .oe(	OUT_TRI_En	), .out(FSMC_DATA[6]));
	TRI DSP_DATA7	(.in(DATA_Temp[7]), .oe(	OUT_TRI_En	), .out(FSMC_DATA[7]));
	TRI DSP_DATA8	(.in(DATA_Temp[8]), .oe(	OUT_TRI_En	), .out(FSMC_DATA[8]));
	TRI DSP_DATA9	(.in(DATA_Temp[9]), .oe(	OUT_TRI_En	), .out(FSMC_DATA[9]));
	TRI DSP_DATA10	(.in(DATA_Temp[10]), .oe(	OUT_TRI_En	), .out(FSMC_DATA[10]));
	TRI DSP_DATA11	(.in(DATA_Temp[11]), .oe(	OUT_TRI_En	), .out(FSMC_DATA[11]));
	TRI DSP_DATA12	(.in(DATA_Temp[12]), .oe(	OUT_TRI_En	), .out(FSMC_DATA[12]));
	TRI DSP_DATA13	(.in(DATA_Temp[13]), .oe(	OUT_TRI_En	), .out(FSMC_DATA[13]));
	TRI DSP_DATA14	(.in(DATA_Temp[14]), .oe(	OUT_TRI_En	), .out(FSMC_DATA[14]));
	TRI DSP_DATA15	(.in(DATA_Temp[15]), .oe(	OUT_TRI_En	), .out(FSMC_DATA[15]));
`endif
//====================================== Xilinx=============================================================== 
`ifdef RUN_Xilinx	 
	/*IOBUF IOBUF0 ( .I(DATA_Temp[0]), .T (~OUT_TRI_En ), .IO(FSMC_DATA[0]), .O(FSMC_DATA_rd[0]));
	IOBUF IOBUF1 ( .I(DATA_Temp[1]), .T (~OUT_TRI_En ), .IO(FSMC_DATA[1]), .O(FSMC_DATA_rd[1]));
	IOBUF IOBUF2 ( .I(DATA_Temp[2]), .T (~OUT_TRI_En ), .IO(FSMC_DATA[2]), .O(FSMC_DATA_rd[2]));
	IOBUF IOBUF3 ( .I(DATA_Temp[3]), .T (~OUT_TRI_En ), .IO(FSMC_DATA[3]), .O(FSMC_DATA_rd[3]));
	IOBUF IOBUF4 ( .I(DATA_Temp[4]), .T (~OUT_TRI_En ), .IO(FSMC_DATA[4]), .O(FSMC_DATA_rd[4]));
	IOBUF IOBUF5 ( .I(DATA_Temp[5]), .T (~OUT_TRI_En ), .IO(FSMC_DATA[5]), .O(FSMC_DATA_rd[5]));
	IOBUF IOBUF6 ( .I(DATA_Temp[6]), .T (~OUT_TRI_En ), .IO(FSMC_DATA[6]), .O(FSMC_DATA_rd[6]));
	IOBUF IOBUF7 ( .I(DATA_Temp[7]), .T (~OUT_TRI_En ), .IO(FSMC_DATA[7]), .O(FSMC_DATA_rd[7]));*/
	assign FSMC_DATA[7:0]=8'bzzzzzzzz;
	wire  DataHLSel;
	assign DataHLSel = FSMC_ADD[9];
	//FSMC_DATA    Top的IO接口
	//FSMC_DATA_rd 从总线上获取的数据
	//DATA_Temp    要写到总线的数据
	IOBUF IOBUF8  ( .I(DataHLSel ? DATA_Temp[8]  : DATA_Temp[0]), .T (~OUT_TRI_En ), .IO(FSMC_DATA[8]),  .O(FSMC_DATA_rd[8]));
	IOBUF IOBUF9  ( .I(DataHLSel ? DATA_Temp[9]  : DATA_Temp[1]), .T (~OUT_TRI_En ), .IO(FSMC_DATA[9]),  .O(FSMC_DATA_rd[9]));
	IOBUF IOBUF10 ( .I(DataHLSel ? DATA_Temp[10] : DATA_Temp[2]), .T (~OUT_TRI_En ), .IO(FSMC_DATA[10]), .O(FSMC_DATA_rd[10]));
	IOBUF IOBUF11 ( .I(DataHLSel ? DATA_Temp[11] : DATA_Temp[3]), .T (~OUT_TRI_En ), .IO(FSMC_DATA[11]), .O(FSMC_DATA_rd[11]));
	IOBUF IOBUF12 ( .I(DataHLSel ? DATA_Temp[12] : DATA_Temp[4]), .T (~OUT_TRI_En ), .IO(FSMC_DATA[12]), .O(FSMC_DATA_rd[12]));
	IOBUF IOBUF13 ( .I(DataHLSel ? DATA_Temp[13] : DATA_Temp[5]), .T (~OUT_TRI_En ), .IO(FSMC_DATA[13]), .O(FSMC_DATA_rd[13]));
	IOBUF IOBUF14 ( .I(DataHLSel ? DATA_Temp[14] : DATA_Temp[6]), .T (~OUT_TRI_En ), .IO(FSMC_DATA[14]), .O(FSMC_DATA_rd[14]));
	IOBUF IOBUF15 ( .I(DataHLSel ? DATA_Temp[15] : DATA_Temp[7]), .T (~OUT_TRI_En ), .IO(FSMC_DATA[15]), .O(FSMC_DATA_rd[15]));


`endif
//===================================================================================================== 
	assign SettingParameter0 = SettingBuffer[0];
	assign SettingParameter1 = SettingBuffer[1];
	assign SettingParameter2 = SettingBuffer[2];
	assign SettingParameter3 = SettingBuffer[3];
	assign SettingParameter4 = SettingBuffer[4];
	assign SettingParameter5 = SettingBuffer[5];
	assign SettingParameter6 = SettingBuffer[6];
	assign SettingParameter7 = SettingBuffer[7];
	assign SettingParameter8 = SettingBuffer[8];
	assign SettingParameter9 = SettingBuffer[9]; 
	assign SettingParameter10 = SettingBuffer[10];
	assign SettingParameter11 = SettingBuffer[11];
	assign SettingParameter12 = SettingBuffer[12];
	assign SettingParameter13 = SettingBuffer[13];
	assign SettingParameter14 = SettingBuffer[14];
	assign SettingParameter15 = SettingBuffer[15];
	assign SettingParameter16 = SettingBuffer[16];
	assign SettingParameter17 = SettingBuffer[17];
	assign SettingParameter18 = SettingBuffer[18];
	assign SettingParameter19 = SettingBuffer[19]; 
	assign SettingParameter20 = SettingBuffer[20];
	assign SettingParameter21 = SettingBuffer[21];
	assign SettingParameter22 = SettingBuffer[22];
	assign SettingParameter23 = SettingBuffer[23];
	assign SettingParameter24 = SettingBuffer[24];
	assign SettingParameter25 = SettingBuffer[25];
	assign SettingParameter26 = SettingBuffer[26];
	assign SettingParameter27 = SettingBuffer[27];
	assign SettingParameter28 = SettingBuffer[28];
	assign SettingParameter29 = SettingBuffer[29]; 
	assign SettingParameter30 = SettingBuffer[30];
	assign SettingParameter31 = SettingBuffer[31];
	assign SettingParameter32 = SettingBuffer[32];
	assign SettingParameter33 = SettingBuffer[33];
	assign SettingParameter34 = SettingBuffer[34];
	assign SettingParameter35 = SettingBuffer[35];
	assign SettingParameter36 = SettingBuffer[36];
	assign SettingParameter37 = SettingBuffer[37];
	assign SettingParameter38 = SettingBuffer[38];
	assign SettingParameter39 = SettingBuffer[39]; 
	assign SettingParameter40 = SettingBuffer[40];
	assign SettingParameter41 = SettingBuffer[41];
	assign SettingParameter42 = SettingBuffer[42];
	assign SettingParameter43 = SettingBuffer[43];
	assign SettingParameter44 = SettingBuffer[44];
	assign SettingParameter45 = SettingBuffer[45];
	assign SettingParameter46 = SettingBuffer[46];
	assign SettingParameter47 = SettingBuffer[47];
	assign SettingParameter48 = SettingBuffer[48];
	assign SettingParameter49 = SettingBuffer[49]; 
	assign SettingParameter50 = SettingBuffer[50];
	assign SettingParameter51 = SettingBuffer[51];
	assign SettingParameter52 = SettingBuffer[52];
	assign SettingParameter53 = SettingBuffer[53];
	assign SettingParameter54 = SettingBuffer[54];
	assign SettingParameter55 = SettingBuffer[55];
	assign SettingParameter56 = SettingBuffer[56];
	assign SettingParameter57 = SettingBuffer[57];
	assign SettingParameter58 = SettingBuffer[58];
	assign SettingParameter59 = SettingBuffer[59]; 
	assign SettingParameter60 = SettingBuffer[60];
	assign SettingParameter61 = SettingBuffer[61];
	assign SettingParameter62 = SettingBuffer[62];
	assign SettingParameter63 = SettingBuffer[63];
	assign SettingParameter64 = SettingBuffer[64];
	assign SettingParameter65 = SettingBuffer[65];
	assign SettingParameter66 = SettingBuffer[66];
	assign SettingParameter67 = SettingBuffer[67];
	assign SettingParameter68 = SettingBuffer[68];
	assign SettingParameter69 = SettingBuffer[69]; 
	assign SettingParameter70 = SettingBuffer[70];
	assign SettingParameter71 = SettingBuffer[71];
	assign SettingParameter72 = SettingBuffer[72];
	assign SettingParameter73 = SettingBuffer[73];
	assign SettingParameter74 = SettingBuffer[74];
	assign SettingParameter75 = SettingBuffer[75];
	assign SettingParameter76 = SettingBuffer[76];
	assign SettingParameter77 = SettingBuffer[77];
	assign SettingParameter78 = SettingBuffer[78];
	assign SettingParameter79 = SettingBuffer[79]; 
	assign SettingParameter80 = SettingBuffer[80];
	assign SettingParameter81 = SettingBuffer[81];
	assign SettingParameter82 = SettingBuffer[82];
	assign SettingParameter83 = SettingBuffer[83];
	assign SettingParameter84 = SettingBuffer[84];
	assign SettingParameter85 = SettingBuffer[85];
	assign SettingParameter86 = SettingBuffer[86];
	assign SettingParameter87 = SettingBuffer[87];
	assign SettingParameter88 = SettingBuffer[88];
	assign SettingParameter89 = SettingBuffer[89]; 
	assign SettingParameter90 = SettingBuffer[90];
	assign SettingParameter91 = SettingBuffer[91];
	assign SettingParameter92 = SettingBuffer[92];
	assign SettingParameter93 = SettingBuffer[93];
	assign SettingParameter94 = SettingBuffer[94];
	assign SettingParameter95 = SettingBuffer[95];
	assign SettingParameter96 = SettingBuffer[96];
	assign SettingParameter97 = SettingBuffer[97];
	assign SettingParameter98 = SettingBuffer[98];
	assign SettingParameter99 = SettingBuffer[99]; 
	assign SettingParameter100 = SettingBuffer[100];
	assign SettingParameter101 = SettingBuffer[101];
	assign SettingParameter102 = SettingBuffer[102];
	assign SettingParameter103 = SettingBuffer[103];
	assign SettingParameter104 = SettingBuffer[104];
	assign SettingParameter105 = SettingBuffer[105];
	assign SettingParameter106 = SettingBuffer[106];
	assign SettingParameter107 = SettingBuffer[107];
	assign SettingParameter108 = SettingBuffer[108];
	assign SettingParameter109 = SettingBuffer[109]; 
	assign SettingSwitchCMD0 = SettingBuffer[110];
	assign SettingSwitchCMD1 = SettingBuffer[111];
	assign SettingSwitchCMD2 = SettingBuffer[112];
	assign SettingSwitchCMD3 = SettingBuffer[113];
	assign SettingSwitchCMD4 = SettingBuffer[114];
	assign SettingSwitchCMD5 = SettingBuffer[115];
	assign SettingSwitchCMD6 = SettingBuffer[116];
	assign SettingSwitchCMD7 = SettingBuffer[117];
	assign SettingSwitchCMD8 = SettingBuffer[118];
	assign SettingSwitchCMD9 = SettingBuffer[119]; 
	assign SettingParameter120 = SettingBuffer[120];
	assign SettingParameter121 = SettingBuffer[121];
	assign SettingParameter122 = SettingBuffer[122];
	assign SettingParameter123 = SettingBuffer[123];
	assign SettingParameter124 = SettingBuffer[124];
	assign SettingParameter125 = SettingBuffer[125];
	assign SettingParameter126 = SettingBuffer[126];
	assign SettingParameter127 = SettingBuffer[127];
	assign SettingParameter128 = SettingBuffer[128];
	assign SettingParameter129 = SettingBuffer[129]; 
	assign SettingParameter130 = SettingBuffer[130];
	assign SettingParameter131 = SettingBuffer[131];
	assign SettingParameter132 = SettingBuffer[132];
	assign SettingParameter133 = SettingBuffer[133];
	assign SettingParameter134 = SettingBuffer[134];
	assign SettingParameter135 = SettingBuffer[135];
	assign SettingParameter136 = SettingBuffer[136];
	assign SettingParameter137 = SettingBuffer[137];
	assign SettingParameter138 = SettingBuffer[138];
	assign SettingParameter139 = SettingBuffer[139]; 
	assign SettingParameter140 = SettingBuffer[140];
	assign SettingParameter141 = SettingBuffer[141];
	assign SettingParameter142 = SettingBuffer[142];
	assign SettingParameter143 = SettingBuffer[143];
	assign SettingParameter144 = SettingBuffer[144];
	assign SettingParameter145 = SettingBuffer[145];
	assign SettingParameter146 = SettingBuffer[146];
	assign SettingParameter147 = SettingBuffer[147];
	assign SettingParameter148 = SettingBuffer[148];
	assign SettingParameter149 = SettingBuffer[149]; 
	assign SettingParameter150 = SettingBuffer[150];
	assign SettingParameter151 = SettingBuffer[151];
	assign SettingParameter152 = SettingBuffer[152];
	assign SettingParameter153 = SettingBuffer[153];
	assign SettingParameter154 = SettingBuffer[154];
	assign SettingParameter155 = SettingBuffer[155];
	assign SettingParameter156 = SettingBuffer[156];
	assign SettingParameter157 = SettingBuffer[157];
	assign SettingParameter158 = SettingBuffer[158];
	assign SettingParameter159 = SettingBuffer[159]; 
	assign SettingParameter160 = SettingBuffer[160];
	assign SettingParameter161 = SettingBuffer[161];
	assign SettingParameter162 = SettingBuffer[162];
	assign SettingParameter163 = SettingBuffer[163];
	assign SettingParameter164 = SettingBuffer[164];
	assign SettingParameter165 = SettingBuffer[165];
	assign SettingParameter166 = SettingBuffer[166];
	assign SettingParameter167 = SettingBuffer[167];
	assign SettingParameter168 = SettingBuffer[168];
	assign SettingParameter169 = SettingBuffer[169]; 
	assign SettingParameter170 = SettingBuffer[170];
	assign SettingParameter171 = SettingBuffer[171];
	assign SettingParameter172 = SettingBuffer[172];
	assign SettingParameter173 = SettingBuffer[173];
	assign SettingParameter174 = SettingBuffer[174];
	assign SettingParameter175 = SettingBuffer[175];
	assign SettingParameter176 = SettingBuffer[176];
	assign SettingParameter177 = SettingBuffer[177];
	assign SettingParameter178 = SettingBuffer[178];
	assign SettingParameter179 = SettingBuffer[179]; 
	assign SettingParameter180 = SettingBuffer[180];
	assign SettingParameter181 = SettingBuffer[181];
	assign SettingParameter182 = SettingBuffer[182];
	assign SettingParameter183 = SettingBuffer[183];
	assign SettingParameter184 = SettingBuffer[184];
	assign SettingParameter185 = SettingBuffer[185];
	assign SettingParameter186 = SettingBuffer[186];
	assign SettingParameter187 = SettingBuffer[187];
	assign SettingParameter188 = SettingBuffer[188];
	assign SettingParameter189 = SettingBuffer[189]; 
	assign SettingParameter190 = SettingBuffer[190];
	assign SettingParameter191 = SettingBuffer[191];
	assign SettingParameter192 = SettingBuffer[192];
	assign SettingParameter193 = SettingBuffer[193];
	assign SettingParameter194 = SettingBuffer[194];
	assign SettingParameter195 = SettingBuffer[195];
	assign SettingParameter196 = SettingBuffer[196];
	assign SettingParameter197 = SettingBuffer[197];
	assign SettingParameter198 = SettingBuffer[198];
	assign SettingParameter199 = SettingBuffer[199]; 
	assign SettingParameter200 = SettingBuffer[200];
	assign SettingParameter201 = SettingBuffer[201];
	assign SettingParameter202 = SettingBuffer[202];
	assign SettingParameter203 = SettingBuffer[203];
	assign SettingParameter204 = SettingBuffer[204];
	assign SettingParameter205 = SettingBuffer[205];
	assign SettingParameter206 = SettingBuffer[206];
	assign SettingParameter207 = SettingBuffer[207];
	assign SettingParameter208 = SettingBuffer[208];
	assign SettingParameter209 = SettingBuffer[209]; 
	assign SettingParameter210 = SettingBuffer[210];
	assign SettingParameter211 = SettingBuffer[211];
	assign SettingParameter212 = SettingBuffer[212];
	assign SettingParameter213 = SettingBuffer[213];
	assign SettingParameter214 = SettingBuffer[214];
	assign SettingParameter215 = SettingBuffer[215];
	assign SettingParameter216 = SettingBuffer[216];
	assign SettingParameter217 = SettingBuffer[217];
	assign SettingParameter218 = SettingBuffer[218];
	assign SettingParameter219 = SettingBuffer[219]; 
	assign ARM_Data0 = SettingBuffer[220];
	assign ARM_Data1 = SettingBuffer[221];
	assign ARM_Data2 = SettingBuffer[222];
	assign ARM_Data3 = SettingBuffer[223];
	assign ARM_Data4 = SettingBuffer[224];
	assign ARM_Data5 = SettingBuffer[225];
	assign ARM_Data6 = SettingBuffer[226];
	assign ARM_Data7 = SettingBuffer[227];
	assign ARM_Data8 = SettingBuffer[228];
	assign ARM_Data9 = SettingBuffer[229]; 
	assign ARM_Data10 = SettingBuffer[230];
	assign ARM_Data11 = SettingBuffer[231];
	assign ARM_Data12 = SettingBuffer[232];
	assign ARM_Data13 = SettingBuffer[233];
	assign ARM_Data14 = SettingBuffer[234];
	assign ARM_Data15 = SettingBuffer[235];
	assign ARM_Data16 = SettingBuffer[236];
	assign ARM_Data17 = SettingBuffer[237];
	assign ARM_Data18 = SettingBuffer[238];
	assign ARM_Data19 = SettingBuffer[239]; 
	assign ARM_Data20 = SettingBuffer[240];
	assign ARM_Data21 = SettingBuffer[241];
	assign ARM_Data22 = SettingBuffer[242];
	assign ARM_Data23 = SettingBuffer[243];
	assign ARM_Data24 = SettingBuffer[244];
	assign ARM_Data25 = SettingBuffer[245];
	assign ARM_Data26 = SettingBuffer[246];
	assign ARM_Data27 = SettingBuffer[247];
	assign ARM_Data28 = SettingBuffer[248];
	assign ARM_Data29 = SettingBuffer[249]; 
	assign ARM_Data30 = SettingBuffer[250];
	assign ARM_Data31 = SettingBuffer[251];
	assign ARM_Data32 = SettingBuffer[252];
	assign SettingParameter253 = SettingBuffer[253];
	assign SettingParameter254 = SettingBuffer[254];
	assign SettingParameter255 = SettingBuffer[255]; 
endmodule  // FIFOLEN_V1