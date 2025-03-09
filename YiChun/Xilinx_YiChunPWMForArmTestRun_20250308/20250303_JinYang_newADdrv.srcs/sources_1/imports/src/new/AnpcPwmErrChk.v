`timescale 1ns / 1ps
/* zj @20241206 V1.1  pwm check and modify //(*keep*) for wire，(* preserve *) for reg */
module AnpcPwmErrChk(
   input  g_clk, //25M
	input  Rst_n,  
	input  PWMEn,  
	input  [7:0] TimeCheckSet,
	input  [7:0] DeadCheckSet,
	input  PWM1in,
	input  PWM2in,
	input  PWM3in,
	input  PWM4in,  
	input  PWM5in,
	input  PWM6in,  
	output reg PWM1_OnErr,
	output reg PWM1_OffErr,
	output reg PWM4_OnErr,
	output reg PWM4_OffErr, 
	output reg PWM1_DeadErr, 
	output reg PWM5_DeadErr,
	output reg PWM6_DeadErr,
	output reg PWM4_DeadErr,
	output reg PWM2_DeadErr,
	output reg PWM3_DeadErr,
	output reg PWM1out,
	output reg PWM2out,
	output reg PWM3out,
	output reg PWM4out,  
   output reg PWM5out,
	output reg PWM6out,  
   output PWMin_Err,	
	output PWMOut_Err
);    
reg [7:0] PWM1_offDly,PWM2_onDly,PWM3_onDly,PWM4_offDly; 
reg [7:0] PWM1_DeadDly,PWM2_DeadDly,PWM3_DeadDly,PWM4_DeadDly,PWM5_DeadDly,PWM6_DeadDly;  
reg PWM1in_r,PWM2in_r,PWM3in_r,PWM4in_r,PWM5in_r,PWM6in_r; 
reg PWM1Dead,PWM2Dead,PWM3Dead,PWM4Dead,PWM5Dead,PWM6Dead,PWM1Dead_r,PWM2Dead_r,PWM3Dead_r,PWM4Dead_r,PWM5Dead_r,PWM6Dead_r; 
reg PWM1Time,PWM2Time,PWM3Time,PWM4Time,PWM2Time_r,PWM3Time_r; 
reg PWMEnOut;

wire PWM1in_t = (~PWM5in) & PWM1in & (~PWM3in) & PWM2in;
wire PWM5in_t = (~PWM1in) & PWM5in;
wire PWM6in_t = (~PWM4in) & PWM6in;
wire PWM4in_t = (~PWM6in) & PWM4in & (~PWM2in) & PWM3in;
wire PWM2in_t = (~PWM3in) & PWM2in;
wire PWM3in_t = (~PWM2in) & PWM3in;
 
assign PWMin_Err = (PWM1in&PWM5in) | (PWM6in&PWM4in) | (PWM2in&PWM3in) | ((~PWM2in)&PWM1in) | ((~PWM3in)&PWM4in); 
always @(posedge g_clk) begin
	if( (Rst_n == 1) && (DeadCheckSet >= (TimeCheckSet+25)) ) begin //dead >= (TimeCheckSet-TimeCheckSet)
//============================== step1. Dead Check: maybe case narrow pulse ===================================  
		if( PWM1in_r & (~PWM1in_t) ) begin //PWM1in_t 1->0 
			PWM1_DeadDly   <= (PWM1_DeadDly<DeadCheckSet) ? (PWM1_DeadDly + 1) : PWM1_DeadDly; 
			PWM5_DeadErr   <= ((PWM1_DeadDly<DeadCheckSet)&PWM5in_t); 
			PWM5Dead       <= 0;  //Force Set PWM
			PWM1in_r       <= (PWM1_DeadDly<DeadCheckSet) ? PWM1in_r : PWM1in_t; 
		end 
		else begin
			PWM1_DeadDly   <= 0;
			PWM1in_r       <= PWM1in_t;
			PWM5_DeadErr   <= 0; 
			PWM5Dead       <= PWM5in_t;   
		end
		if( PWM5in_r &(~PWM5in_t) ) begin 
			PWM5_DeadDly   <= (PWM5_DeadDly<DeadCheckSet) ? (PWM5_DeadDly + 1) : PWM5_DeadDly; 
			PWM1_DeadErr   <= ((PWM5_DeadDly<DeadCheckSet)&PWM1in_t);
			PWM1Dead       <= 0;  //Force Set PWM
			PWM5in_r       <= (PWM5_DeadDly<DeadCheckSet) ? PWM5in_r : PWM5in_t; 
		end 
		else begin
			PWM5_DeadDly   <=  0;
			PWM5in_r       <= PWM5in_t;
			PWM1_DeadErr   <= 0; 
			PWM1Dead       <= PWM1in_t;   
		end 
		
		if( PWM6in_r &(~PWM6in_t) ) begin 
			PWM6_DeadDly   <= (PWM6_DeadDly<DeadCheckSet) ? (PWM6_DeadDly + 1) : PWM6_DeadDly; 
			PWM4_DeadErr   <= ((PWM6_DeadDly<DeadCheckSet)&PWM4in_t); 
			PWM4Dead       <= 0;  //Force Set PWM
			PWM6in_r       <= (PWM6_DeadDly<DeadCheckSet) ? PWM6in_r : PWM6in_t; 
		end 
		else begin 
			PWM6_DeadDly   <= 0; 
			PWM6in_r       <= PWM6in_t;
			PWM4_DeadErr   <= 0; 
			PWM4Dead       <= PWM4in_t; 
		end
		if( PWM4in_r &(~PWM4in_t) ) begin 
			PWM4_DeadDly   <= (PWM4_DeadDly<DeadCheckSet) ? (PWM4_DeadDly + 1) : PWM4_DeadDly; 
			PWM6_DeadErr   <= ((PWM4_DeadDly<DeadCheckSet)&PWM6in_t); 
			PWM6Dead       <= 0;  //Force Set PWM
			PWM4in_r       <= (PWM4_DeadDly<DeadCheckSet) ? PWM4in_r : PWM4in_t; 
		end 
		else begin 
			PWM4_DeadDly   <= 0;
			PWM4in_r       <= PWM4in_t;
			PWM6_DeadErr   <= 0; 
			PWM6Dead       <= PWM6in_t;   
		end  

		if( PWM2in_r &(~PWM2in_t) ) begin 
			PWM2_DeadDly   <= (PWM2_DeadDly<DeadCheckSet) ? (PWM2_DeadDly + 1) : PWM2_DeadDly; 
			PWM3_DeadErr   <= ((PWM2_DeadDly<DeadCheckSet)&PWM3in_t); 
			PWM3Dead       <= 0;  //Force Set PWM
			PWM2in_r       <= (PWM2_DeadDly<DeadCheckSet) ? PWM2in_r : PWM2in_t; 
		end 
		else begin 
			PWM2_DeadDly   <= 0; 
			PWM2in_r       <= PWM2in_t;
			PWM3_DeadErr   <= 0; 
			PWM3Dead       <= PWM3in_t; 
		end
		if( PWM3in_r &(~PWM3in_t) ) begin 
			PWM3_DeadDly   <= (PWM3_DeadDly<DeadCheckSet) ? (PWM3_DeadDly + 1) : PWM3_DeadDly; 
			PWM2_DeadErr   <= ((PWM3_DeadDly<DeadCheckSet)&PWM2in_t); 
			PWM2Dead       <= 0;  //Force Set PWM
			PWM3in_r       <= (PWM3_DeadDly<DeadCheckSet) ? PWM3in_r : PWM3in_t; 
		end 
		else begin 
			PWM3_DeadDly   <= 0;
			PWM3in_r       <= PWM3in_t;
			PWM2_DeadErr   <= 0; 
			PWM2Dead       <= PWM2in_t;   
		end
//============================== step2. Time Check: maybe case Dead 1&4 less =================================== 
		//Check 1 & 2 ==================
		if( (~PWM2Dead_r)&PWM2Dead )  begin  //PWM2 0->1  < ----- > 
			PWM2_onDly    <= (PWM2_onDly<TimeCheckSet) ? (PWM2_onDly + 1) : PWM2_onDly;   
			PWM1_OnErr    <= ((PWM2_onDly<TimeCheckSet)&PWM1Dead);  
			PWM2Dead_r    <= (PWM2_onDly<TimeCheckSet) ? PWM2Dead_r : PWM2Dead;
			PWM1Time      <= 0;//Force Set PWM
			PWM2Time      <= 1;//Force Set PWM    
		end
		else if( PWM1Dead_r&(~PWM1Dead) )  begin   
			PWM1_offDly   <= (PWM1_offDly<TimeCheckSet) ? (PWM1_offDly + 1) : PWM1_offDly;   
			PWM1_OffErr   <= ((PWM1_offDly<TimeCheckSet)&(~PWM2Dead));  
			PWM1Dead_r    <= (PWM1_offDly<TimeCheckSet) ? PWM1Dead_r : PWM1Dead;
			PWM1Time      <= 0;//Force Set PWM
			PWM2Time      <= 1;//Force Set PWM   
		end
		else begin
			PWM2_onDly    <= 0; 
			PWM1_offDly   <= 0; 
			PWM1_OnErr    <= 0; 
			PWM1_OffErr   <= 0; 
			PWM1Dead_r    <= PWM1Dead;
			PWM2Dead_r    <= PWM2Dead;
			PWM1Time      <= PWM1Dead;
			PWM2Time      <= PWM2Dead;  	
		end 
		//Check 3 & 4 ==================
		if( (~PWM3Dead_r)&PWM3Dead )  begin  //PWM3 0->1  < ----- > 
			PWM3_onDly    <= (PWM3_onDly<TimeCheckSet) ? (PWM3_onDly + 1) : PWM3_onDly;   
			PWM4_OnErr    <= ((PWM3_onDly<TimeCheckSet)&PWM4Dead);  
			PWM3Dead_r    <= (PWM3_onDly<TimeCheckSet) ? PWM3Dead_r : PWM3Dead;
			PWM4Time      <= 0;//Force Set PWM
			PWM3Time      <= 1;//Force Set PWM   
		end
		else if( PWM4Dead_r&(~PWM4Dead) )  begin   
			PWM4_offDly   <= (PWM4_offDly<TimeCheckSet) ? (PWM4_offDly + 1) : PWM4_offDly;   
			PWM4_OffErr   <= ((PWM4_offDly<TimeCheckSet)&(~PWM3Dead));  
			PWM4Dead_r    <= (PWM4_offDly<TimeCheckSet) ? PWM4Dead_r : PWM4Dead;
			PWM4Time      <= 0;//Force Set PWM
			PWM3Time      <= 1;//Force Set PWM   
		end
		else begin
			PWM3_onDly    <= 0; 
			PWM4_offDly   <= 0; 
			PWM4_OnErr    <= 0; 
			PWM4_OffErr   <= 0; 
			PWM4Dead_r    <= PWM4Dead;
			PWM3Dead_r    <= PWM3Dead;
			PWM4Time      <= PWM4Dead;
			PWM3Time      <= PWM3Dead;  	
		end  
		PWM2Time_r <= PWM2Time;
		PWM3Time_r <= PWM3Time;  
		//======================= OUT PWM ========================= 
		/*PWM1out <= PWM1Time;
		PWM2out <= PWM2Time;
		PWM3out <= PWM3Time;
		PWM4out <= PWM4Time;
		PWM5out <= PWM5Dead;
		PWM6out <= PWM6Dead;*/
		//======================= OUT PWM =========================
		if(PWMEnOut==0) begin //0->1
			PWMEnOut <= (((PWM6Dead&(~PWM4Time)) | (PWM5Dead&(~PWM1Time))) & (PWMEn)) ? 1 : 0; 
		end else begin //1->0
			PWMEnOut <= ((~PWM1Time)&(~PWM2Time)&(~PWM3Time)&(~PWM4Time)&(~PWM5Dead)&(~PWM6Dead)&(~PWMEn)) ? 0 : 1; 
		end 	
		PWM1out <= PWMEnOut & PWM1Time;
		PWM2out <= PWMEnOut & PWM2Time;
		PWM3out <= PWMEnOut & PWM3Time;
		PWM4out <= PWMEnOut & PWM4Time;
		PWM5out <= PWMEnOut & PWM5Dead;
		PWM6out <= PWMEnOut & PWM6Dead;
	end
	else begin
		PWM1_offDly <= 0; 
		PWM2_onDly  <= 0;  
		PWM3_onDly  <= 0; 
		PWM4_offDly <= 0;    
		PWM1_OnErr  <= 0; 
		PWM1_OffErr <= 0;  
		PWM4_OnErr  <= 0; 
		PWM4_OffErr <= 0;  
		PWM1in_r <= 0; 
		PWM2in_r <= 0;  
		PWM3in_r <= 0;
		PWM4in_r <= 0;  
		PWM5in_r <= 0; //++ 
		PWM6in_r <= 0; //++ 
		PWM1_DeadDly <= 0; 
		PWM2_DeadDly <= 0; 
		PWM3_DeadDly <= 0; 
		PWM4_DeadDly <= 0;  
      PWM5_DeadDly <= 0; //++ 
		PWM6_DeadDly <= 0; //++ 		
		PWM1_DeadErr <= 0; 
		PWM6_DeadErr <= 0;  
		PWM5_DeadErr <= 0; 
		PWM4_DeadErr <= 0; 
	   PWM2_DeadErr <= 0; //++ 
		PWM3_DeadErr <= 0; //++ 	
		PWM1Dead <= 0;
		PWM2Dead <= 0;
		PWM3Dead <= 0;
		PWM4Dead <= 0;
		PWM5Dead <= 0; //++ 
		PWM6Dead <= 0; //++ 
		PWM1Dead_r <= 0;
		PWM2Dead_r <= 0;
		PWM3Dead_r <= 0;
		PWM4Dead_r <= 0;
		PWM5Dead_r <= 0; //++ 
		PWM6Dead_r <= 0; //++ 
		PWM1Time <= 0;
		PWM2Time <= 0;
		PWM3Time <= 0;
		PWM4Time <= 0; 
		PWM2Time_r <= 0;
		PWM3Time_r <= 0; 
		PWM1out <= 0;
		PWM2out <= 0;
		PWM3out <= 0;
		PWM4out <= 0; 
		PWM5out <= 0; //++ 
		PWM6out <= 0; //++ 
		PWMEnOut <= 0; 
	end
end
//assign PWMOut_Err = (PWM1out&PWM3out) | (PWM2out&PWM4out) | ( ((~PWM2out)&(~PWM3out)) & (PWM1out|PWM4out) ); 
assign PWMOut_Err = (PWM1out&PWM5out) | (PWM6out&PWM4out) | (PWM2out&PWM3out) | ((~PWM2out)&PWM1out) | ((~PWM3out)&PWM4out); 
endmodule
