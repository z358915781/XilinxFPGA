`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    ad7607  //MAX = 25000000/134=186K
// Module Name:    ad7607 ZJ@20250304 >> AD_Rst
//////////////////////////////////////////////////////////////////////////////////
module AD7607Drv_VZ10(
   input        	  g_clk      ,  // 25mhz
	input        	  Rst_n      ,           
	input  [13:0] 	  AD_DB      ,  // ad7607 AD data 
	output [2:0] 	  AD_OS      ,  // ad7607 
	output reg   	  AD_Rst     ,  // ad7607 AD reset
	output reg   	  AD_CONVST  ,  // ad7607 AD convert start
	output reg   	  AD_RD      ,  // ad7607 AD data read 
	
	input        	   AD_BUSY0    ,  
	output reg   	   AD_CS0      ,  
	output reg [13:0] AD0_CH0     ,  
	output reg [13:0] AD0_CH1     , 
	output reg [13:0] AD0_CH2     ,  
	output reg [13:0] AD0_CH3     ,  
	output reg [13:0] AD0_CH4     , 
	output reg [13:0] AD0_CH5     ,  
	output reg [13:0] AD0_CH6     ,  
	output reg [13:0] AD0_CH7     ,  
	
	input        	   AD_BUSY1    , 
	output reg   	   AD_CS1      ,  
	output reg [13:0] AD1_CH0     ,  
	output reg [13:0] AD1_CH1     ,  
	output reg [13:0] AD1_CH2     ,  
	output reg [13:0] AD1_CH3     ,  
	output reg [13:0] AD1_CH4     ,  
	output reg [13:0] AD1_CH5     ,  
	output reg [13:0] AD1_CH6     ,  
	output reg [13:0] AD1_CH7     , 
	
	output            AD_Err,    
	output reg [15:0] ADErrCNT, 
    output reg [15:0] ADBusyCnt,  	
	output reg [15:0] ADReadyCnt,  	
	output reg [15:0] ADSampleCnt,
	output reg [15:0] ADIldeCnt,
	output reg [15:0] ADStartCnt,
	output reg [15:0] AD_ErrTtoal,  
	output reg [3:0]  state
    );
reg [15:0]  tick;
reg [2:0]   pCHnum;   
reg [13:0]  ad0_ch[7:0];
reg [13:0]  ad1_ch[7:0]; 
parameter AD_IDLE      = 4'd0 ;
parameter AD_CONV      = 4'd1 ; 
parameter AD_BUSY      = 4'd2 ; 
parameter AD_READ_AD0  = 4'd3 ;
parameter AD_READ_AD1  = 4'd4 ; 
parameter AD_READ_DONE = 4'd5 ; 
parameter AD_ERR       = 4'd6 ; 
//=========================================
assign AD_OS  = 3'b000; 
assign AD_Err = (ADErrCNT>=3) ? 1 : 0;
wire ADbusy_w  = (AD_BUSY0==1'b1)&&(AD_BUSY1==1'b1);
wire ADready_w = (AD_BUSY0==1'b0)&&(AD_BUSY1==1'b0);
wire ADend_w   = (~AD_RD)&(pCHnum==7);
always @(posedge g_clk)  begin
	 if (Rst_n==1'b0) begin  
		//===========AD0=========
			 AD_CS0  <= 1'b1; 
			 AD0_CH0 <= 0;
			 AD0_CH1 <= 0;
			 AD0_CH2 <= 0;
			 AD0_CH3 <= 0;
			 AD0_CH4 <= 0;
			 AD0_CH5 <= 0;
			 AD0_CH6 <= 0;
			 AD0_CH7 <= 0;
		//===========AD1========= 
			 AD_CS1  <= 1'b1; 
			 AD1_CH0 <= 0;
			 AD1_CH1 <= 0;
			 AD1_CH2 <= 0;
			 AD1_CH3 <= 0;
			 AD1_CH4 <= 0;
			 AD1_CH5 <= 0;
			 AD1_CH6 <= 0;
			 AD1_CH7 <= 0;	
		//====================	 
		     AD_RD       <= 1'b1;  
			 AD_CONVST   <= 1'b1;
			 AD_Rst      <= 1'b1;  
			 ADErrCNT    <= 0;
			 tick        <= 0;
			 state       <= AD_IDLE; 
			 ADIldeCnt   <= ADIldeCnt+1;
			 ADStartCnt  <= 0;
			 AD_ErrTtoal <= 0;
	 end		 
	 else begin 
		  case(state)
			  AD_IDLE: begin //idle
					 AD_CS0    <= 1'b1; 
					 AD_CS1    <= 1'b1;
					 AD_RD     <= 1'b1; 
					 AD_CONVST <= 1'b1; 
					 pCHnum    <= 0;
					 tick      <= 0;	 
					 state     <= AD_CONV;
					 AD_Rst    <=1'b0;
			  end
			  AD_CONV: begin  //wait busy to high 
					if(tick<2) begin  
						 AD_CONVST <= 1'b0;  
						 tick      <= tick+1'b1;
						 ADStartCnt <= ADStartCnt+1;
					end
					else if(tick<1250) begin  //50us
						 AD_CONVST <= 1'b1;            
						 tick<=ADbusy_w ? 0 : (tick+1'b1);  
						 state<=ADbusy_w ? AD_BUSY : AD_CONV; 
						 ADBusyCnt<= ADbusy_w ? (ADBusyCnt+1): ADBusyCnt;
					 end   
					 else begin  
						 AD_CONVST <= 1'b1;
						 tick      <= 0;  
						 state     <= AD_ERR;
						 ADErrCNT <= ADErrCNT + 1; 
						 AD_ErrTtoal <= AD_ErrTtoal + 1; 
					 end
					 AD_Rst    <=1'b0;
			  end  
			  AD_BUSY: begin //wait busy to low 
					 if(tick<1250) begin   //100us  
						 tick  <= ADready_w ? 0 : (tick+1'b1); 
						 state <= ADready_w ? AD_READ_AD0 : AD_BUSY; 
						 ADReadyCnt<= ADready_w ? (ADReadyCnt+1): ADReadyCnt;
					 end
					 else begin  
						 tick   <= 0;  
						 state  <= AD_ERR;
						 ADErrCNT <= ADErrCNT + 1; 
						 AD_ErrTtoal <= AD_ErrTtoal + 1; 
					 end 
					 AD_Rst    <=1'b0;
			  end
			  AD_READ_AD0: begin    //read ad0  
					 AD_CS0  <= 1'b0;                         
					 AD_CS1  <= 1'b1;   
					 AD_RD   <= ~AD_RD;	 	
					 ad0_ch[pCHnum] <= (~AD_RD) ? AD_DB : ad0_ch[pCHnum]; 
					 pCHnum         <= ADend_w ? 0 : ((~AD_RD) ?  (pCHnum+1) : pCHnum); 
					 state          <= ADend_w ? AD_READ_AD1 : AD_READ_AD0;	//mdy  
					 AD_Rst    <=1'b0;
			  end
			  AD_READ_AD1: begin     //read ad1 
					 AD_CS0  <= 1'b1;                         
					 AD_CS1  <= 1'b0;   
					 AD_RD   <= ~AD_RD;	 	
					 ad1_ch[pCHnum] <= (~AD_RD) ? AD_DB : ad1_ch[pCHnum]; 
					 pCHnum         <= ADend_w ? 0 : ((~AD_RD) ?  (pCHnum+1) : pCHnum); 
					 state          <= ADend_w ? AD_READ_DONE : AD_READ_AD1;	//mdy   
					 ADSampleCnt       <= ADend_w ? (ADSampleCnt+1) : ADSampleCnt;	//mdy 
					 AD_Rst    <=1'b0;
			  end 
			  AD_READ_DONE:begin //data output
					 AD_CS0  <= 1'b1;   
					 AD0_CH0 <= ad0_ch[0];
					 AD0_CH1 <= ad0_ch[1];
					 AD0_CH2 <= ad0_ch[2];
					 AD0_CH3 <= ad0_ch[3];
					 AD0_CH4 <= ad0_ch[4];
					 AD0_CH5 <= ad0_ch[5];
					 AD0_CH6 <= ad0_ch[6];
					 AD0_CH7 <= ad0_ch[7];
					 AD_CS1  <= 1'b1;
					 AD1_CH0 <= ad1_ch[0];
					 AD1_CH1 <= ad1_ch[1];
					 AD1_CH2 <= ad1_ch[2];
					 AD1_CH3 <= ad1_ch[3];
					 AD1_CH4 <= ad1_ch[4];
					 AD1_CH5 <= ad1_ch[5];
					 AD1_CH6 <= ad1_ch[6];
					 AD1_CH7 <= ad1_ch[7]; 
					 
					 AD_RD   <= 1'b1; 
					 state   <= AD_IDLE;
					 ADErrCNT <= 0;
					 AD_Rst   <=1'b0;
			  end	
			  AD_ERR:begin //AD_Rst hold  2us，need > 50ns
					tick     <= tick+1'b1;
					state    <= (tick<50) ? AD_ERR : AD_IDLE;  
					//ADErrCNT <= (ADErrCNT<10) ? (ADErrCNT + 1) : ADErrCNT;
					AD_Rst    <= 1'b1;
			  end	
			  default:	state <= AD_IDLE;
		  endcase	
    end	  			 
end 
endmodule
