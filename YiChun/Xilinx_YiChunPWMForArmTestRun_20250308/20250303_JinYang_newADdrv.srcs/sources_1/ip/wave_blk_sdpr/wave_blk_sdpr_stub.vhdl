-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Mon Jul 15 16:18:09 2024
-- Host        : DESKTOP-NT14HU6 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/FPGA/2024.7.15xinbanjian/xinbanjian_2024.7.15/xinbanjian_2024.7.15.srcs/sources_1/ip/wave_blk_sdpr/wave_blk_sdpr_stub.vhdl
-- Design      : wave_blk_sdpr
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s75fgga484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity wave_blk_sdpr is
  Port ( 
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end wave_blk_sdpr;

architecture stub of wave_blk_sdpr is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,ena,wea[0:0],addra[8:0],dina[15:0],clkb,enb,addrb[8:0],doutb[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_1,Vivado 2018.2";
begin
end;
