
`timescale 1 ns / 1 ns 
module DPRAMZ
          (
           input   g_clk,
           input   [15:0] In,
           input   [9:0]  WR_ADD,
           input   WR_EN,
           input   [9:0]  RD_ADD,
           output  reg [15:0] Out
          );   
  
  reg  [15:0] ram [2**9:0];  
  always @(posedge g_clk)  begin
      if (WR_EN == 1'b1) begin
        ram[WR_ADD] <= In;
      end
		//ram[WR_ADD] <= WR_EN ? In : ram[WR_ADD]; 
      Out <= ram[RD_ADD]; 
  end  
endmodule  // SimpleDualPortRAM_generic

