-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xillydemo is
  Port ( 
    clk_100 : in STD_LOGIC;
    otg_oc : in STD_LOGIC;
    PS_GPIO : inout STD_LOGIC_VECTOR ( 55 downto 0 );
    GPIO_LED : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga4_blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga4_green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga4_red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_hsync : out STD_LOGIC;
    vga_vsync : out STD_LOGIC;
    audio_mclk : out STD_LOGIC;
    audio_dac : out STD_LOGIC;
    audio_adc : in STD_LOGIC;
    audio_bclk : in STD_LOGIC;
    audio_lrclk : in STD_LOGIC;
    smb_sclk : out STD_LOGIC;
    smb_sdata : inout STD_LOGIC;
    smbus_addr : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end xillydemo;

architecture stub of xillydemo is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
begin
end;
