// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module xillydemo(clk_100, otg_oc, PS_GPIO, GPIO_LED, vga4_blue, vga4_green, vga4_red, vga_hsync, vga_vsync, audio_mclk, audio_dac, audio_adc, audio_bclk, audio_lrclk, smb_sclk, smb_sdata, smbus_addr);
  input clk_100;
  input otg_oc;
  inout [55:0]PS_GPIO;
  output [3:0]GPIO_LED;
  output [3:0]vga4_blue;
  output [3:0]vga4_green;
  output [3:0]vga4_red;
  output vga_hsync;
  output vga_vsync;
  output audio_mclk;
  output audio_dac;
  input audio_adc;
  input audio_bclk;
  input audio_lrclk;
  output smb_sclk;
  inout smb_sdata;
  output [1:0]smbus_addr;
endmodule
