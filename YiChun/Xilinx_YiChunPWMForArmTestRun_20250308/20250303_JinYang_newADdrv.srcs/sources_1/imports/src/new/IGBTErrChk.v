`timescale 1ns / 1ps

module IGBTErrChk(
   input  			   g_clk, 
	input  			   Rst_n,  
	input             ErrIn,  
	input      [11:0] ErrSet_u12,
	output reg [11:0] ErrCnt_u12,  
	output reg        ErrOut
);    
parameter ErrCntDec = 1000;
always @(posedge g_clk) begin
	if(Rst_n == 1) begin  
		if(ErrOut == 0) begin
			if(ErrIn) begin
				ErrCnt_u12 <= (ErrCnt_u12<ErrSet_u12) ? (ErrCnt_u12 + 1) : ErrCnt_u12;   
				ErrOut <= (ErrCnt_u12<ErrSet_u12) ? 0 : 1; 
			end  else begin
				ErrCnt_u12 <= (ErrCnt_u12>ErrCntDec) ? (ErrCnt_u12 - ErrCntDec) : 0;   
			end
		end else begin
			ErrOut <= ErrIn;
		end
	end else begin
		ErrOut     <= 0;   
		ErrCnt_u12 <= 0; 
	end
end
 
endmodule
