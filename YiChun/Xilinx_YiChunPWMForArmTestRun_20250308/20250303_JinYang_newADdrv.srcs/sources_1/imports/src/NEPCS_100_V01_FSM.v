module	NEPCS_100_V01_FSM	(
	input			g_clk,Rst_n,
	input	[1:0]	StartCMD_IN,
	input			Em_In,GoNext,
	input			ToChargeOk,ChargeOk,ToExciteOk,ExciteOk,ToProWorkOk,ProWorkOk,ToWorkOk,WorkingOk,VF_Mode,BtrReverse,VI_Mode,
	input	[15:0] TRANSITION_TimeSet,
	output	reg	[3:0]	StateCode,
	output	reg [3:0] 	StateLast1Code,StateLast2Code,StateLast3Code,
	output		Em_In_flag,GoNext_flag,StartCMD_flag,DelayOut_flag
					);
	
parameter	IDEL		=	4'b0000	;
parameter	CHARGE	=	4'b0001	;
parameter	EXCITE	=	4'b0010	;
parameter	PROWORK	=	4'b0011	;
parameter	WORKING	=	4'b0100	;
parameter	FAULT		=	4'b0101	;
parameter	STOP		=	4'b0110	;	
parameter	TRANSITION		=	4'b1000	;

assign	Em_In_flag = Em_In;
assign	GoNext_flag = GoNext;
assign	StartCMD_flag = StartCMD;
assign	DelayOut_flag = DelayOut;

reg	StartCMD;
always @(posedge g_clk or negedge Rst_n) begin
	if(~Rst_n)begin
		StartCMD <= 1'b0;
	end
	else begin
		case(StartCMD_IN)
			2'b01: begin StartCMD <= 1'b1; end
			2'b10: begin StartCMD <= 1'b0; end
			default : begin StartCMD <= StartCMD;end
		endcase		
		end
end

always @(posedge g_clk or negedge Rst_n)begin
	if(~Rst_n)begin
		StateCode <= IDEL;
		StateLast1Code <= IDEL;
		StateLast2Code <= IDEL;
		StateLast3Code <= IDEL;
	end
	else begin
		case(StateCode)
			IDEL:begin
				if((Em_In)|(StartCMD & (~ToProWorkOk) & (~ToExciteOk) & (~ToChargeOk) &DelayOut)|BtrReverse)begin
					StateCode <= FAULT;
					StateLast1Code <= StateCode;
					StateLast2Code <= StateLast1Code;
					StateLast3Code <= StateLast2Code;
				end
				else begin
					if(StartCMD & ToChargeOk & DelayOut)begin 
						StateCode <= CHARGE;
						StateLast1Code <= StateCode;
						StateLast2Code <= StateLast1Code;
						StateLast3Code <= StateLast2Code;	
					end
					else begin
						if( (StartCMD & ToProWorkOk & DelayOut) & (VF_Mode || VI_Mode) )begin
							//StateCode <= PROWORK;
							StateCode <= VI_Mode ? PROWORK : EXCITE;
							StateLast1Code <= StateCode;
							StateLast2Code <= StateLast1Code;
							StateLast3Code <= StateLast2Code;				
						end
						else begin
							if( (StartCMD & ToExciteOk & DelayOut) & (~VF_Mode) )begin
								//StateCode <= EXCITE;;
								StateCode <= VI_Mode ? PROWORK : EXCITE;
								StateLast1Code <= StateCode;
								StateLast2Code <= StateLast1Code;
								StateLast3Code <= StateLast2Code;	
							end
							else begin
								if((StartCMD & ToChargeOk & DelayOut)&(~VF_Mode))begin
									StateCode <= CHARGE;
									StateLast1Code <= StateCode;
									StateLast2Code <= StateLast1Code;
									StateLast3Code <= StateLast2Code;	
								end
							end
						end
					end
				end			
			end
			
			CHARGE:begin
				if( (Em_In)|(~ChargeOk)|(StartCMD & (~ToProWorkOk) & ChargeOk & DelayOut) )begin
					StateCode <= FAULT;
					StateLast1Code <= StateCode;
					StateLast2Code <= StateLast1Code;
					StateLast3Code <= StateLast2Code;
				end
				else begin
					if( (StartCMD & (ToProWorkOk) & ChargeOk & DelayOut )&(GoNext) )begin
						StateCode <= TRANSITION;//PROWORK;
						StateLast1Code <= StateCode;
						StateLast2Code <= StateLast1Code;
						StateLast3Code <= StateLast2Code;				
					end
					else begin
						if( (~StartCMD)&(ChargeOk)&(~DelayOut) )begin
							StateCode <= STOP;
							StateLast1Code <= StateCode;
							StateLast2Code <= StateLast1Code;
							StateLast3Code <= StateLast2Code;
						end
					end
				end
			end	
			EXCITE:begin
				if( (Em_In)|(~ExciteOk)|(StartCMD & (~ToProWorkOk) & ExciteOk & DelayOut) )begin
					StateCode <= FAULT;
					StateLast1Code <= StateCode;
					StateLast2Code <= StateLast1Code;
					StateLast3Code <= StateLast2Code;
				end
				else begin
					if( (StartCMD & (ToProWorkOk) & ExciteOk & DelayOut)&(GoNext) )begin
						StateCode <= PROWORK;
						StateLast1Code <= StateCode;
						StateLast2Code <= StateLast1Code;
						StateLast3Code <= StateLast2Code;				
					end
					else begin
						if( (~StartCMD)&(ExciteOk)&(~DelayOut) )begin
							StateCode <= STOP;
							StateLast1Code <= StateCode;
							StateLast2Code <= StateLast1Code;
							StateLast3Code <= StateLast2Code;
						end
					end
				end
			end			
			PROWORK:begin
				if( (Em_In)|(~ProWorkOk)|(StartCMD &(ProWorkOk)& (~ToWorkOk)&DelayOut) )begin
					StateCode <= FAULT;
					StateLast1Code <= StateCode;
					StateLast2Code <= StateLast1Code;
					StateLast3Code <= StateLast2Code;
				end
				else begin
					if( (StartCMD)&(ProWorkOk)&(ToWorkOk)&(DelayOut)&(GoNext) )begin
						StateCode <= WORKING;
						StateLast1Code <= StateCode;
						StateLast2Code <= StateLast1Code;
						StateLast3Code <= StateLast2Code;				
					end
					else begin
						if( (~StartCMD)&(ProWorkOk)&(~DelayOut) )begin
							StateCode <= STOP;
							StateLast1Code <= StateCode;
							StateLast2Code <= StateLast1Code;
							StateLast3Code <= StateLast2Code;
						end
					end
				end			
			end
			
			WORKING:begin
				if((Em_In)|(~WorkingOk))begin
					StateCode <= FAULT;
					StateLast1Code <= StateCode;
					StateLast2Code <= StateLast1Code;
					StateLast3Code <= StateLast2Code;
				end
				else begin
					if((~StartCMD)&(WorkingOk))begin
						StateCode <= STOP;
						StateLast1Code <= StateCode;
						StateLast2Code <= StateLast1Code;
						StateLast3Code <= StateLast2Code;				
					end
				end			
			end
			FAULT:begin
				if((~StartCMD)&(DelayOut))begin
					StateCode <= STOP;
					StateLast1Code <= StateCode;
					StateLast2Code <= StateLast1Code;
					StateLast3Code <= StateLast2Code;				
				end
			end
			STOP:begin
				if(DelayOut)begin
					StateCode <= IDEL;
					StateLast1Code <= StateCode;
					StateLast2Code <= StateLast1Code;
					StateLast3Code <= StateLast2Code;					
				end			
			end			
			TRANSITION:begin
				if( (Em_In)|(~ChargeOk)|(StartCMD & (~ToProWorkOk) & ChargeOk & DelayOut) )begin
					StateCode <= FAULT;
					StateLast1Code <= StateCode;
					StateLast2Code <= StateLast1Code;
					StateLast3Code <= StateLast2Code;
				end
				else begin
					if( (StartCMD & (ToProWorkOk) & ChargeOk & DelayOut )&(GoNext) )begin
						StateCode <= PROWORK;
						//StateCode <= EXCITE;
						StateLast1Code <= StateCode;
						StateLast2Code <= StateLast1Code;
						StateLast3Code <= StateLast2Code;				
					end
					else begin
						if( (~StartCMD)&(ChargeOk)&(~DelayOut) )begin
							StateCode <= STOP;
							StateLast1Code <= StateCode;
							StateLast2Code <= StateLast1Code;
							StateLast3Code <= StateLast2Code;
						end
					end
				end
			end			
		endcase
	end
end

reg	[3:0]	State_Reg;
always @(posedge g_clk or negedge Rst_n)begin
	if(~Rst_n)begin
		State_Reg <= 4'd0;
	end
	else begin
		State_Reg <= StateCode;
	end
end

reg	[33:0]	DelayCnt;
always @(posedge g_clk or negedge Rst_n)begin
	if(~Rst_n)begin
		DelayCnt <= 34'd0;
	end
	else begin
		if(State_Reg != StateCode)begin
			DelayCnt <= 34'd0;
		end
		else begin
			if((DelayCnt != DelayTime))begin
				DelayCnt <= DelayCnt + 34'd1;
			end
		end
	end
end
wire [33:0]	DelayTime;
`define TEST_RUN
`ifdef TEST_RUN	
parameter	P_500MS		=	34'd1;
parameter	P_8000MS		=	34'd1;
parameter	P_3000MS		=	34'd1;
parameter	P_5000MS		=	34'd1;
parameter	P_1000MS		=	34'd1;
parameter	P_1500MS		=	34'd1;
parameter	P_15000MS	=	34'd1;
parameter	P_20000MS	=	34'd1; //34'd5-0000-0000
parameter	P_30000MS	=	34'd1; //34'd5-0000-0000
`else
parameter	P_500MS		=	34'd12500000;
parameter	P_8000MS		=	34'd200000000;
parameter	P_3000MS		=	34'd75000000;
parameter	P_5000MS		=	34'd125000000;
parameter	P_1000MS		=	34'd25000000;
parameter	P_1500MS		=	34'd37500000;
parameter	P_15000MS	=	34'd375000000;
parameter	P_20000MS	=	34'd500000000; //34'd5-0000-0000
parameter	P_30000MS	=	34'd750000000; //34'd5-0000-0000
`endif	
//assign	DelayTime = (StateCode == IDEL )? P_3000MS : ((StateCode == FAULT )? P_5000MS :((StateCode == STOP )? P_3000MS :(29'd0)));
//assign	DelayTime = (StateCode == IDEL )? P_3000MS : (	(StateCode == PROWORK )? P_1000MS :(	(StateCode == FAULT )? P_3000MS :(	(StateCode == STOP )? P_1000MS :(	29'd0))))	;		
//assign	DelayTime = (StateCode == IDEL )? P_3000MS : ((StateCode == EXCITE )? P_3000MS : ((StateCode == PROWORK )? P_1000MS :(			(StateCode == FAULT )? P_3000MS :(			(StateCode == STOP )? P_1000MS :(			29'd0)))))	;		 //TRANSITION
//assign	DelayTime = (StateCode == IDEL )? P_3000MS : (			(StateCode == CHARGE )? P_20000MS : (			(StateCode == EXCITE )? P_5000MS : (			(StateCode == PROWORK )? P_1000MS :(			(StateCode == FAULT )? P_3000MS :(			(StateCode == STOP )? P_1000MS :((StateCode == PROWORK )? P_30000MS :P_3000MS))))));		
//assign DelayTime = (StateCode == IDEL )? P_3000MS : (			(StateCode == CHARGE )? P_20000MS : (			(StateCode == EXCITE )? P_5000MS : (			(StateCode == PROWORK )? P_1000MS :(			(StateCode == FAULT )? P_3000MS :(			(StateCode == STOP )? P_1000MS :((StateCode == PROWORK )? P_30000MS :((StateCode == TRANSITION )? P_15000MS :P_3000MS)))))));		
assign DelayTime =   (StateCode == IDEL )? P_3000MS : (   (StateCode == CHARGE )? P_20000MS : (   (StateCode == EXCITE )? P_5000MS : (   (StateCode == PROWORK )? P_1000MS :(   (StateCode == FAULT )? P_3000MS :(   (StateCode == STOP )? P_1000MS :((StateCode == PROWORK )? P_30000MS :((StateCode == TRANSITION )? TRANSITION_Time :P_3000MS)))))));  


wire	DelayOut;
assign 	DelayOut = (DelayCnt == DelayTime) & (~(State_Reg != StateCode));

 

//=========================================
//input [15:0] TRANSITION_TimeSetï¼? set max vaule 512*1.34s
reg  [33:0] TRANSITION_Time;  
always @(posedge g_clk)begin  
 TRANSITION_Time <= {TRANSITION_TimeSet[8:0],25'd0}; 
end



endmodule
