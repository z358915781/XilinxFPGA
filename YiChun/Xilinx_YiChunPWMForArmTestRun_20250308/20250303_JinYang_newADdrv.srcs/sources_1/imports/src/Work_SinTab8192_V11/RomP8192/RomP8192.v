`timescale 1 ps / 1 ps
module RomP8192 (
    address,
    clock,
    q
);

  input [10:0] address;
  input clock;
  output [11:0] q;

  sintab sintab_inst (
      .clk(clock),
      .a(address),
      .qspo(q)
  );
endmodule
