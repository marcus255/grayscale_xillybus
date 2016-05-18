// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win32) Build 1071353 Tue Nov 18 18:06:20 MST 2014
// Date        : Mon May 16 19:54:58 2016
// Host        : MarcusNotebook running 32-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/marcus255/Downloads/xillydemo_ise/xillinux-eval-zedboard-1.3c/vivado-essentials/fifo_8x2048/fifo_8x2048_stub.v
// Design      : fifo_8x2048
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v12_0,Vivado 2014.4" *)
module fifo_8x2048(clk, srst, din, wr_en, rd_en, dout, full, empty)
/* synthesis syn_black_box black_box_pad_pin="clk,srst,din[7:0],wr_en,rd_en,dout[7:0],full,empty" */;
  input clk;
  input srst;
  input [7:0]din;
  input wr_en;
  input rd_en;
  output [7:0]dout;
  output full;
  output empty;
endmodule
