`timescale 1ns / 1ns
module pulse (
    clk_i,
    rst_i,
    pulse_o,
    clk_cnt_o
);
  parameter reg [31:0] PULSE_FALLING = 500;
  parameter reg [31:0] PULSE_RISING = 250;
  input clk_i, rst_i;
  output pulse_o;
  output [31:0] clk_cnt_o;
  reg [31:0] clk_cnt;
  reg pulse;

  always @(posedge clk_i)
    if (rst_i) clk_cnt <= 0;
    else begin
      if (clk_cnt == PULSE_FALLING) clk_cnt <= 0;
      else clk_cnt <= clk_cnt + 1'b1;
    end

  //Âö³å³¤¶È¿ØÖÆ
  always @(posedge clk_i)
    if (rst_i) pulse <= 1'b0;
    else begin
      if (clk_cnt == PULSE_RISING) pulse <= 1'b1;
      else if (clk_cnt == PULSE_FALLING) pulse <= 1'b0;
    end

  assign pulse_o   = pulse;
  assign clk_cnt_o = clk_cnt;

endmodule
