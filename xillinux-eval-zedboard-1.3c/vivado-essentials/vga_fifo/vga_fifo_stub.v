// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win32) Build 1071353 Tue Nov 18 18:06:20 MST 2014
// Date        : Mon May 16 19:51:16 2016
// Host        : MarcusNotebook running 32-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/marcus255/Downloads/xillydemo_ise/xillinux-eval-zedboard-1.3c/vivado-essentials/vga_fifo/vga_fifo_stub.v
// Design      : vga_fifo
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v12_0,Vivado 2014.4" *)
module vga_fifo(rst, wr_clk, rd_clk, din, wr_en, rd_en, dout, full, empty, prog_full)
/* synthesis syn_black_box black_box_pad_pin="rst,wr_clk,rd_clk,din[35:0],wr_en,rd_en,dout[35:0],full,empty,prog_full" */;
  input rst;
  input wr_clk;
  input rd_clk;
  input [35:0]din;
  input wr_en;
  input rd_en;
  output [35:0]dout;
  output full;
  output empty;
  output prog_full;
endmodule
