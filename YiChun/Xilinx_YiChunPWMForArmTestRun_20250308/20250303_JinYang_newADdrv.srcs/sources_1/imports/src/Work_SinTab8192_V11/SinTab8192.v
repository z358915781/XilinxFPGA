


module SinTab8192 
          (
           input g_clk,
           input Rst_n,
           input [12:0] wt,
           output [11:0] Sinwt,
           output [11:0] Coswt,
			  output [11:0] SinA,
			  output [11:0] SinB,
			  output [11:0] SinC
			  );
			 
wire [10:0]  address;			 
SinTab8192_V11  SinTab8192_V11_Inst
          (
           .g_clk( g_clk ),
           .Rst_n( Rst_n ),
           .wt( wt ),
           .q( q ),
           .address( address ),
           .Sinwt( Sinwt ),
           .Coswt( Coswt ),
           .SinA( SinA ),
           .SinB( SinB ),
           .SinC( SinC )
          );			 
			 
wire [11:0] q;
RomP8192  RomP8192_Inst
	(
	.address( address ),
	.clock( g_clk ),
	.q( q )
	);		 
			 
endmodule