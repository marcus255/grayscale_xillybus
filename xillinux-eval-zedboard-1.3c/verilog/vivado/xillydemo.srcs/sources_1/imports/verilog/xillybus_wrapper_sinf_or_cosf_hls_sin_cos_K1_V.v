// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps
(* rom_style = "distributed" *) module xillybus_wrapper_sinf_or_cosf_hls_sin_cos_K1_V_rom (
addr0, ce0, q0, clk);

parameter DWIDTH = 23;
parameter AWIDTH = 8;
parameter MEM_SIZE = 256;

input[AWIDTH-1:0] addr0;
input ce0;
output reg[DWIDTH-1:0] q0;
input clk;

(* ram_style = "distributed" *)reg [DWIDTH-1:0] ram[MEM_SIZE-1:0];

initial begin
    $readmemh("./xillybus_wrapper_sinf_or_cosf_hls_sin_cos_K1_V_rom.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram[addr0];
    end
end



endmodule


`timescale 1 ns / 1 ps
module xillybus_wrapper_sinf_or_cosf_hls_sin_cos_K1_V(
    reset,
    clk,
    address0,
    ce0,
    q0);

parameter DataWidth = 32'd23;
parameter AddressRange = 32'd256;
parameter AddressWidth = 32'd8;
input reset;
input clk;
input[AddressWidth - 1:0] address0;
input ce0;
output[DataWidth - 1:0] q0;



xillybus_wrapper_sinf_or_cosf_hls_sin_cos_K1_V_rom xillybus_wrapper_sinf_or_cosf_hls_sin_cos_K1_V_rom_U(
    .clk( clk ),
    .addr0( address0 ),
    .ce0( ce0 ),
    .q0( q0 ));

endmodule
