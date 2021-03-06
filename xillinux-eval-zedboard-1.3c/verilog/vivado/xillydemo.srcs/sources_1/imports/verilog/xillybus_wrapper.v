// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="xillybus_wrapper,hls_ip_2014_4,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.470000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=10,HLS_SYN_FF=2101,HLS_SYN_LUT=5883}" *)

module xillybus_wrapper (
        ap_clk,
        ap_rst,
        in_r_dout,
        in_r_empty_n,
        in_r_read,
        out_r_din,
        out_r_full_n,
        out_r_write,
        debug_ready,
        debug_out,
        debug_out_ap_vld
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 13'b1;
parameter    ap_ST_st2_fsm_1 = 13'b10;
parameter    ap_ST_st3_fsm_2 = 13'b100;
parameter    ap_ST_st4_fsm_3 = 13'b1000;
parameter    ap_ST_st5_fsm_4 = 13'b10000;
parameter    ap_ST_st6_fsm_5 = 13'b100000;
parameter    ap_ST_st7_fsm_6 = 13'b1000000;
parameter    ap_ST_st8_fsm_7 = 13'b10000000;
parameter    ap_ST_st9_fsm_8 = 13'b100000000;
parameter    ap_ST_st10_fsm_9 = 13'b1000000000;
parameter    ap_ST_st11_fsm_10 = 13'b10000000000;
parameter    ap_ST_st12_fsm_11 = 13'b100000000000;
parameter    ap_ST_st13_fsm_12 = 13'b1000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv32_9 = 32'b1001;
parameter    ap_const_lv32_A = 32'b1010;
parameter    ap_const_lv4_0 = 4'b0000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv2_0 = 2'b00;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_B = 32'b1011;
parameter    ap_const_lv32_C = 32'b1100;
parameter    ap_const_lv4_D = 4'b1101;
parameter    ap_const_lv4_1 = 4'b1;
parameter    ap_const_lv2_3 = 2'b11;
parameter    ap_const_lv2_1 = 2'b1;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input  [31:0] in_r_dout;
input   in_r_empty_n;
output   in_r_read;
output  [31:0] out_r_din;
input   out_r_full_n;
output   out_r_write;
input  [7:0] debug_ready;
output  [7:0] debug_out;
output   debug_out_ap_vld;

reg in_r_read;
reg[31:0] out_r_din;
reg out_r_write;
reg[7:0] debug_out;
reg debug_out_ap_vld;
wire   [3:0] p_str3_address0;
reg    p_str3_ce0;
wire   [6:0] p_str3_q0;
wire   [1:0] p_str4_address0;
reg    p_str4_ce0;
wire   [6:0] p_str4_q0;
wire   [0:0] p_str5_address0;
reg    p_str5_ce0;
wire   [3:0] p_str5_q0;
(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm = 13'b1;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_60;
wire   [0:0] tmp_i_fu_193_p2;
reg   [0:0] tmp_i_reg_286;
wire   [3:0] p_rec_i_fu_199_p2;
reg   [3:0] p_rec_i_reg_290;
wire   [7:0] p_str3_load_cast_fu_205_p1;
reg   [7:0] p_str3_load_cast_reg_295;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_bdd_74;
reg    ap_sig_bdd_81;
reg   [31:0] x1_reg_300;
wire   [31:0] x2_fu_218_p1;
reg   [31:0] x2_reg_309;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_bdd_94;
reg    ap_sig_cseq_ST_st6_fsm_5;
reg    ap_sig_bdd_105;
wire   [0:0] tmp_i3_fu_227_p2;
reg   [0:0] tmp_i3_reg_319;
wire   [1:0] p_rec_i8_fu_233_p2;
reg   [1:0] p_rec_i8_reg_323;
wire   [7:0] p_str4_load_cast_fu_239_p1;
reg   [7:0] p_str4_load_cast_reg_328;
reg    ap_sig_cseq_ST_st7_fsm_6;
reg    ap_sig_bdd_118;
reg    ap_sig_cseq_ST_st10_fsm_9;
reg    ap_sig_bdd_127;
wire   [7:0] p_str5_load_cast_fu_257_p1;
reg   [7:0] p_str5_load_cast_reg_341;
reg    ap_sig_cseq_ST_st11_fsm_10;
reg    ap_sig_bdd_136;
reg   [0:0] p_0_rec_i9_reg_145;
reg    ap_sig_bdd_143;
wire    grp_xillybus_wrapper_sinf_or_cosf_fu_160_ap_start;
wire    grp_xillybus_wrapper_sinf_or_cosf_fu_160_ap_done;
wire    grp_xillybus_wrapper_sinf_or_cosf_fu_160_ap_idle;
wire    grp_xillybus_wrapper_sinf_or_cosf_fu_160_ap_ready;
wire   [31:0] grp_xillybus_wrapper_sinf_or_cosf_fu_160_t_in;
wire   [31:0] grp_xillybus_wrapper_sinf_or_cosf_fu_160_ap_return;
wire    grp_xillybus_wrapper_xilly_decprint_fu_173_ap_start;
wire    grp_xillybus_wrapper_xilly_decprint_fu_173_ap_done;
wire    grp_xillybus_wrapper_xilly_decprint_fu_173_ap_idle;
wire    grp_xillybus_wrapper_xilly_decprint_fu_173_ap_ready;
wire   [31:0] grp_xillybus_wrapper_xilly_decprint_fu_173_val_r;
wire   [7:0] grp_xillybus_wrapper_xilly_decprint_fu_173_debug_ready;
wire   [7:0] grp_xillybus_wrapper_xilly_decprint_fu_173_debug_out;
wire    grp_xillybus_wrapper_xilly_decprint_fu_173_debug_out_ap_vld;
reg   [3:0] p_0_rec_i_reg_123;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_172;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_bdd_179;
wire   [0:0] tmp_7_fu_209_p1;
reg   [1:0] p_0_rec_i2_reg_134;
reg    ap_sig_cseq_ST_st8_fsm_7;
reg    ap_sig_bdd_193;
wire   [0:0] tmp_8_fu_243_p1;
reg    ap_sig_cseq_ST_st9_fsm_8;
reg    ap_sig_bdd_205;
reg    ap_sig_cseq_ST_st12_fsm_11;
reg    ap_sig_bdd_215;
wire   [0:0] tmp_10_fu_267_p1;
reg    grp_xillybus_wrapper_sinf_or_cosf_fu_160_ap_start_ap_start_reg = 1'b0;
reg    ap_sig_cseq_ST_st13_fsm_12;
reg    ap_sig_bdd_229;
reg    grp_xillybus_wrapper_xilly_decprint_fu_173_ap_start_ap_start_reg = 1'b0;
wire   [31:0] p_0_rec_i_cast_fu_188_p1;
wire   [31:0] p_0_rec_i2_cast_fu_222_p1;
wire   [31:0] p_0_rec_i9_cast_fu_252_p1;
wire   [31:0] y1_fu_261_p2;
wire   [31:0] y2_fu_276_p1;
reg   [12:0] ap_NS_fsm;


xillybus_wrapper_p_str3 #(
    .DataWidth( 7 ),
    .AddressRange( 14 ),
    .AddressWidth( 4 ))
p_str3_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( p_str3_address0 ),
    .ce0( p_str3_ce0 ),
    .q0( p_str3_q0 )
);

xillybus_wrapper_p_str4 #(
    .DataWidth( 7 ),
    .AddressRange( 4 ),
    .AddressWidth( 2 ))
p_str4_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( p_str4_address0 ),
    .ce0( p_str4_ce0 ),
    .q0( p_str4_q0 )
);

xillybus_wrapper_p_str5 #(
    .DataWidth( 4 ),
    .AddressRange( 2 ),
    .AddressWidth( 1 ))
p_str5_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( p_str5_address0 ),
    .ce0( p_str5_ce0 ),
    .q0( p_str5_q0 )
);

xillybus_wrapper_sinf_or_cosf grp_xillybus_wrapper_sinf_or_cosf_fu_160(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst ),
    .ap_start( grp_xillybus_wrapper_sinf_or_cosf_fu_160_ap_start ),
    .ap_done( grp_xillybus_wrapper_sinf_or_cosf_fu_160_ap_done ),
    .ap_idle( grp_xillybus_wrapper_sinf_or_cosf_fu_160_ap_idle ),
    .ap_ready( grp_xillybus_wrapper_sinf_or_cosf_fu_160_ap_ready ),
    .t_in( grp_xillybus_wrapper_sinf_or_cosf_fu_160_t_in ),
    .ap_return( grp_xillybus_wrapper_sinf_or_cosf_fu_160_ap_return )
);

xillybus_wrapper_xilly_decprint grp_xillybus_wrapper_xilly_decprint_fu_173(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst ),
    .ap_start( grp_xillybus_wrapper_xilly_decprint_fu_173_ap_start ),
    .ap_done( grp_xillybus_wrapper_xilly_decprint_fu_173_ap_done ),
    .ap_idle( grp_xillybus_wrapper_xilly_decprint_fu_173_ap_idle ),
    .ap_ready( grp_xillybus_wrapper_xilly_decprint_fu_173_ap_ready ),
    .val_r( grp_xillybus_wrapper_xilly_decprint_fu_173_val_r ),
    .debug_ready( grp_xillybus_wrapper_xilly_decprint_fu_173_debug_ready ),
    .debug_out( grp_xillybus_wrapper_xilly_decprint_fu_173_debug_out ),
    .debug_out_ap_vld( grp_xillybus_wrapper_xilly_decprint_fu_173_debug_out_ap_vld )
);



/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// grp_xillybus_wrapper_sinf_or_cosf_fu_160_ap_start_ap_start_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_grp_xillybus_wrapper_sinf_or_cosf_fu_160_ap_start_ap_start_reg
    if (ap_rst == 1'b1) begin
        grp_xillybus_wrapper_sinf_or_cosf_fu_160_ap_start_ap_start_reg <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st11_fsm_10) & ~(ap_const_lv1_0 == p_0_rec_i9_reg_145) & ~ap_sig_bdd_143)) begin
            grp_xillybus_wrapper_sinf_or_cosf_fu_160_ap_start_ap_start_reg <= ap_const_logic_1;
        end else if ((ap_const_logic_1 == grp_xillybus_wrapper_sinf_or_cosf_fu_160_ap_ready)) begin
            grp_xillybus_wrapper_sinf_or_cosf_fu_160_ap_start_ap_start_reg <= ap_const_logic_0;
        end
    end
end

/// grp_xillybus_wrapper_xilly_decprint_fu_173_ap_start_ap_start_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_grp_xillybus_wrapper_xilly_decprint_fu_173_ap_start_ap_start_reg
    if (ap_rst == 1'b1) begin
        grp_xillybus_wrapper_xilly_decprint_fu_173_ap_start_ap_start_reg <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_6) & ~(ap_const_lv1_0 == tmp_i3_reg_319))) begin
            grp_xillybus_wrapper_xilly_decprint_fu_173_ap_start_ap_start_reg <= ap_const_logic_1;
        end else if ((ap_const_logic_1 == grp_xillybus_wrapper_xilly_decprint_fu_173_ap_ready)) begin
            grp_xillybus_wrapper_xilly_decprint_fu_173_ap_start_ap_start_reg <= ap_const_logic_0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st8_fsm_7) & ~(ap_const_lv1_0 == tmp_8_fu_243_p1))) begin
        p_0_rec_i2_reg_134 <= p_rec_i8_reg_323;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4) & ~(in_r_empty_n == ap_const_logic_0))) begin
        p_0_rec_i2_reg_134 <= ap_const_lv2_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st12_fsm_11) & ~(ap_const_lv1_0 == tmp_10_fu_267_p1))) begin
        p_0_rec_i9_reg_145 <= ap_const_lv1_1;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_8) & ~(ap_const_logic_0 == grp_xillybus_wrapper_xilly_decprint_fu_173_ap_done))) begin
        p_0_rec_i9_reg_145 <= ap_const_lv1_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & ~(ap_const_lv1_0 == tmp_7_fu_209_p1))) begin
        p_0_rec_i_reg_123 <= p_rec_i_reg_290;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0)) begin
        p_0_rec_i_reg_123 <= ap_const_lv4_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        p_rec_i8_reg_323 <= p_rec_i8_fu_233_p2;
        tmp_i3_reg_319 <= tmp_i3_fu_227_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        p_rec_i_reg_290 <= p_rec_i_fu_199_p2;
        tmp_i_reg_286 <= tmp_i_fu_193_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_bdd_81)) begin
        p_str3_load_cast_reg_295[0] <= p_str3_load_cast_fu_205_p1[0];
p_str3_load_cast_reg_295[1] <= p_str3_load_cast_fu_205_p1[1];
p_str3_load_cast_reg_295[2] <= p_str3_load_cast_fu_205_p1[2];
p_str3_load_cast_reg_295[3] <= p_str3_load_cast_fu_205_p1[3];
p_str3_load_cast_reg_295[4] <= p_str3_load_cast_fu_205_p1[4];
p_str3_load_cast_reg_295[5] <= p_str3_load_cast_fu_205_p1[5];
p_str3_load_cast_reg_295[6] <= p_str3_load_cast_fu_205_p1[6];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        p_str4_load_cast_reg_328[0] <= p_str4_load_cast_fu_239_p1[0];
p_str4_load_cast_reg_328[1] <= p_str4_load_cast_fu_239_p1[1];
p_str4_load_cast_reg_328[2] <= p_str4_load_cast_fu_239_p1[2];
p_str4_load_cast_reg_328[3] <= p_str4_load_cast_fu_239_p1[3];
p_str4_load_cast_reg_328[4] <= p_str4_load_cast_fu_239_p1[4];
p_str4_load_cast_reg_328[5] <= p_str4_load_cast_fu_239_p1[5];
p_str4_load_cast_reg_328[6] <= p_str4_load_cast_fu_239_p1[6];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st11_fsm_10) & ~ap_sig_bdd_143)) begin
        p_str5_load_cast_reg_341[0] <= p_str5_load_cast_fu_257_p1[0];
p_str5_load_cast_reg_341[1] <= p_str5_load_cast_fu_257_p1[1];
p_str5_load_cast_reg_341[2] <= p_str5_load_cast_fu_257_p1[2];
p_str5_load_cast_reg_341[3] <= p_str5_load_cast_fu_257_p1[3];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) & ~(tmp_i_reg_286 == ap_const_lv1_0) & ~ap_sig_bdd_81)) begin
        x1_reg_300 <= in_r_dout;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4) & ~(in_r_empty_n == ap_const_logic_0))) begin
        x2_reg_309 <= x2_fu_218_p1;
    end
end

/// ap_sig_cseq_ST_st10_fsm_9 assign process. ///
always @ (ap_sig_bdd_127)
begin
    if (ap_sig_bdd_127) begin
        ap_sig_cseq_ST_st10_fsm_9 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st10_fsm_9 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st11_fsm_10 assign process. ///
always @ (ap_sig_bdd_136)
begin
    if (ap_sig_bdd_136) begin
        ap_sig_cseq_ST_st11_fsm_10 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st11_fsm_10 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st12_fsm_11 assign process. ///
always @ (ap_sig_bdd_215)
begin
    if (ap_sig_bdd_215) begin
        ap_sig_cseq_ST_st12_fsm_11 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st12_fsm_11 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st13_fsm_12 assign process. ///
always @ (ap_sig_bdd_229)
begin
    if (ap_sig_bdd_229) begin
        ap_sig_cseq_ST_st13_fsm_12 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st13_fsm_12 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_172)
begin
    if (ap_sig_bdd_172) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st2_fsm_1 assign process. ///
always @ (ap_sig_bdd_60)
begin
    if (ap_sig_bdd_60) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st3_fsm_2 assign process. ///
always @ (ap_sig_bdd_74)
begin
    if (ap_sig_bdd_74) begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st4_fsm_3 assign process. ///
always @ (ap_sig_bdd_179)
begin
    if (ap_sig_bdd_179) begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st5_fsm_4 assign process. ///
always @ (ap_sig_bdd_94)
begin
    if (ap_sig_bdd_94) begin
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st6_fsm_5 assign process. ///
always @ (ap_sig_bdd_105)
begin
    if (ap_sig_bdd_105) begin
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st7_fsm_6 assign process. ///
always @ (ap_sig_bdd_118)
begin
    if (ap_sig_bdd_118) begin
        ap_sig_cseq_ST_st7_fsm_6 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st7_fsm_6 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st8_fsm_7 assign process. ///
always @ (ap_sig_bdd_193)
begin
    if (ap_sig_bdd_193) begin
        ap_sig_cseq_ST_st8_fsm_7 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st8_fsm_7 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st9_fsm_8 assign process. ///
always @ (ap_sig_bdd_205)
begin
    if (ap_sig_bdd_205) begin
        ap_sig_cseq_ST_st9_fsm_8 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st9_fsm_8 = ap_const_logic_0;
    end
end

/// debug_out assign process. ///
always @ (p_str3_load_cast_reg_295 or tmp_i3_reg_319 or p_str4_load_cast_reg_328 or ap_sig_cseq_ST_st7_fsm_6 or p_str5_load_cast_reg_341 or grp_xillybus_wrapper_xilly_decprint_fu_173_debug_out or grp_xillybus_wrapper_xilly_decprint_fu_173_debug_out_ap_vld or ap_sig_cseq_ST_st4_fsm_3 or tmp_7_fu_209_p1 or ap_sig_cseq_ST_st8_fsm_7 or tmp_8_fu_243_p1 or ap_sig_cseq_ST_st9_fsm_8 or ap_sig_cseq_ST_st12_fsm_11 or tmp_10_fu_267_p1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st12_fsm_11) & ~(ap_const_lv1_0 == tmp_10_fu_267_p1))) begin
        debug_out = p_str5_load_cast_reg_341;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st8_fsm_7) & ~(ap_const_lv1_0 == tmp_8_fu_243_p1))) begin
        debug_out = p_str4_load_cast_reg_328;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & ~(ap_const_lv1_0 == tmp_7_fu_209_p1))) begin
        debug_out = p_str3_load_cast_reg_295;
    end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_6) & ~(ap_const_lv1_0 == tmp_i3_reg_319) & (ap_const_logic_1 == grp_xillybus_wrapper_xilly_decprint_fu_173_debug_out_ap_vld)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_8) & (ap_const_logic_1 == grp_xillybus_wrapper_xilly_decprint_fu_173_debug_out_ap_vld)))) begin
        debug_out = grp_xillybus_wrapper_xilly_decprint_fu_173_debug_out;
    end else begin
        debug_out = 'bx;
    end
end

/// debug_out_ap_vld assign process. ///
always @ (tmp_i3_reg_319 or ap_sig_cseq_ST_st7_fsm_6 or grp_xillybus_wrapper_xilly_decprint_fu_173_debug_out_ap_vld or ap_sig_cseq_ST_st4_fsm_3 or tmp_7_fu_209_p1 or ap_sig_cseq_ST_st8_fsm_7 or tmp_8_fu_243_p1 or ap_sig_cseq_ST_st9_fsm_8 or ap_sig_cseq_ST_st12_fsm_11 or tmp_10_fu_267_p1)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & ~(ap_const_lv1_0 == tmp_7_fu_209_p1)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st8_fsm_7) & ~(ap_const_lv1_0 == tmp_8_fu_243_p1)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st12_fsm_11) & ~(ap_const_lv1_0 == tmp_10_fu_267_p1)))) begin
        debug_out_ap_vld = ap_const_logic_1;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_8) | ((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_6) & ~(ap_const_lv1_0 == tmp_i3_reg_319)))) begin
        debug_out_ap_vld = grp_xillybus_wrapper_xilly_decprint_fu_173_debug_out_ap_vld;
    end else begin
        debug_out_ap_vld = ap_const_logic_0;
    end
end

/// in_r_read assign process. ///
always @ (in_r_empty_n or tmp_i_reg_286 or ap_sig_cseq_ST_st3_fsm_2 or ap_sig_bdd_81 or ap_sig_cseq_ST_st5_fsm_4)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) & ~(tmp_i_reg_286 == ap_const_lv1_0) & ~ap_sig_bdd_81) | ((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4) & ~(in_r_empty_n == ap_const_logic_0)))) begin
        in_r_read = ap_const_logic_1;
    end else begin
        in_r_read = ap_const_logic_0;
    end
end

/// out_r_din assign process. ///
always @ (out_r_full_n or ap_sig_cseq_ST_st11_fsm_10 or p_0_rec_i9_reg_145 or ap_sig_bdd_143 or grp_xillybus_wrapper_sinf_or_cosf_fu_160_ap_done or ap_sig_cseq_ST_st13_fsm_12 or y1_fu_261_p2 or y2_fu_276_p1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st13_fsm_12) & ~((out_r_full_n == ap_const_logic_0) | (ap_const_logic_0 == grp_xillybus_wrapper_sinf_or_cosf_fu_160_ap_done)))) begin
        out_r_din = y2_fu_276_p1;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st11_fsm_10) & ~(ap_const_lv1_0 == p_0_rec_i9_reg_145) & ~ap_sig_bdd_143)) begin
        out_r_din = y1_fu_261_p2;
    end else begin
        out_r_din = 'bx;
    end
end

/// out_r_write assign process. ///
always @ (out_r_full_n or ap_sig_cseq_ST_st11_fsm_10 or p_0_rec_i9_reg_145 or ap_sig_bdd_143 or grp_xillybus_wrapper_sinf_or_cosf_fu_160_ap_done or ap_sig_cseq_ST_st13_fsm_12)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_st11_fsm_10) & ~(ap_const_lv1_0 == p_0_rec_i9_reg_145) & ~ap_sig_bdd_143) | ((ap_const_logic_1 == ap_sig_cseq_ST_st13_fsm_12) & ~((out_r_full_n == ap_const_logic_0) | (ap_const_logic_0 == grp_xillybus_wrapper_sinf_or_cosf_fu_160_ap_done))))) begin
        out_r_write = ap_const_logic_1;
    end else begin
        out_r_write = ap_const_logic_0;
    end
end

/// p_str3_ce0 assign process. ///
always @ (ap_sig_cseq_ST_st2_fsm_1)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        p_str3_ce0 = ap_const_logic_1;
    end else begin
        p_str3_ce0 = ap_const_logic_0;
    end
end

/// p_str4_ce0 assign process. ///
always @ (ap_sig_cseq_ST_st6_fsm_5)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        p_str4_ce0 = ap_const_logic_1;
    end else begin
        p_str4_ce0 = ap_const_logic_0;
    end
end

/// p_str5_ce0 assign process. ///
always @ (ap_sig_cseq_ST_st10_fsm_9)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st10_fsm_9)) begin
        p_str5_ce0 = ap_const_logic_1;
    end else begin
        p_str5_ce0 = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (in_r_empty_n or out_r_full_n or ap_CS_fsm or tmp_i_reg_286 or ap_sig_bdd_81 or tmp_i3_reg_319 or p_0_rec_i9_reg_145 or ap_sig_bdd_143 or grp_xillybus_wrapper_sinf_or_cosf_fu_160_ap_done or grp_xillybus_wrapper_xilly_decprint_fu_173_ap_done or tmp_7_fu_209_p1 or tmp_8_fu_243_p1 or tmp_10_fu_267_p1)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            ap_NS_fsm = ap_ST_st2_fsm_1;
        end
        ap_ST_st2_fsm_1 : 
        begin
            ap_NS_fsm = ap_ST_st3_fsm_2;
        end
        ap_ST_st3_fsm_2 : 
        begin
            if ((~(tmp_i_reg_286 == ap_const_lv1_0) & ~ap_sig_bdd_81)) begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end else if (((tmp_i_reg_286 == ap_const_lv1_0) & ~ap_sig_bdd_81)) begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st4_fsm_3 : 
        begin
            if (~(ap_const_lv1_0 == tmp_7_fu_209_p1)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end
        end
        ap_ST_st5_fsm_4 : 
        begin
            if (~(in_r_empty_n == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_st6_fsm_5;
            end else begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end
        end
        ap_ST_st6_fsm_5 : 
        begin
            ap_NS_fsm = ap_ST_st7_fsm_6;
        end
        ap_ST_st7_fsm_6 : 
        begin
            if (~(ap_const_lv1_0 == tmp_i3_reg_319)) begin
                ap_NS_fsm = ap_ST_st9_fsm_8;
            end else begin
                ap_NS_fsm = ap_ST_st8_fsm_7;
            end
        end
        ap_ST_st8_fsm_7 : 
        begin
            if (~(ap_const_lv1_0 == tmp_8_fu_243_p1)) begin
                ap_NS_fsm = ap_ST_st6_fsm_5;
            end else begin
                ap_NS_fsm = ap_ST_st8_fsm_7;
            end
        end
        ap_ST_st9_fsm_8 : 
        begin
            if (~(ap_const_logic_0 == grp_xillybus_wrapper_xilly_decprint_fu_173_ap_done)) begin
                ap_NS_fsm = ap_ST_st10_fsm_9;
            end else begin
                ap_NS_fsm = ap_ST_st9_fsm_8;
            end
        end
        ap_ST_st10_fsm_9 : 
        begin
            ap_NS_fsm = ap_ST_st11_fsm_10;
        end
        ap_ST_st11_fsm_10 : 
        begin
            if ((~(ap_const_lv1_0 == p_0_rec_i9_reg_145) & ~ap_sig_bdd_143)) begin
                ap_NS_fsm = ap_ST_st13_fsm_12;
            end else if (((ap_const_lv1_0 == p_0_rec_i9_reg_145) & ~ap_sig_bdd_143)) begin
                ap_NS_fsm = ap_ST_st12_fsm_11;
            end else begin
                ap_NS_fsm = ap_ST_st11_fsm_10;
            end
        end
        ap_ST_st12_fsm_11 : 
        begin
            if (~(ap_const_lv1_0 == tmp_10_fu_267_p1)) begin
                ap_NS_fsm = ap_ST_st10_fsm_9;
            end else begin
                ap_NS_fsm = ap_ST_st12_fsm_11;
            end
        end
        ap_ST_st13_fsm_12 : 
        begin
            if (~((out_r_full_n == ap_const_logic_0) | (ap_const_logic_0 == grp_xillybus_wrapper_sinf_or_cosf_fu_160_ap_done))) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st13_fsm_12;
            end
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end


/// ap_sig_bdd_105 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_105 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_5]);
end

/// ap_sig_bdd_118 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_118 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_6]);
end

/// ap_sig_bdd_127 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_127 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_9]);
end

/// ap_sig_bdd_136 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_136 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_A]);
end

/// ap_sig_bdd_143 assign process. ///
always @ (out_r_full_n or p_0_rec_i9_reg_145)
begin
    ap_sig_bdd_143 = ((out_r_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == p_0_rec_i9_reg_145));
end

/// ap_sig_bdd_172 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_172 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_0]);
end

/// ap_sig_bdd_179 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_179 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_3]);
end

/// ap_sig_bdd_193 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_193 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_7]);
end

/// ap_sig_bdd_205 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_205 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_8]);
end

/// ap_sig_bdd_215 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_215 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_B]);
end

/// ap_sig_bdd_229 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_229 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_C]);
end

/// ap_sig_bdd_60 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_60 = (ap_CS_fsm[ap_const_lv32_1] == ap_const_lv1_1);
end

/// ap_sig_bdd_74 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_74 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end

/// ap_sig_bdd_81 assign process. ///
always @ (in_r_empty_n or tmp_i_reg_286)
begin
    ap_sig_bdd_81 = ((in_r_empty_n == ap_const_logic_0) & ~(tmp_i_reg_286 == ap_const_lv1_0));
end

/// ap_sig_bdd_94 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_94 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_4]);
end
assign grp_xillybus_wrapper_sinf_or_cosf_fu_160_ap_start = grp_xillybus_wrapper_sinf_or_cosf_fu_160_ap_start_ap_start_reg;
assign grp_xillybus_wrapper_sinf_or_cosf_fu_160_t_in = x2_reg_309;
assign grp_xillybus_wrapper_xilly_decprint_fu_173_ap_start = grp_xillybus_wrapper_xilly_decprint_fu_173_ap_start_ap_start_reg;
assign grp_xillybus_wrapper_xilly_decprint_fu_173_debug_ready = debug_ready;
assign grp_xillybus_wrapper_xilly_decprint_fu_173_val_r = x1_reg_300;
assign p_0_rec_i2_cast_fu_222_p1 = p_0_rec_i2_reg_134;
assign p_0_rec_i9_cast_fu_252_p1 = p_0_rec_i9_reg_145;
assign p_0_rec_i_cast_fu_188_p1 = p_0_rec_i_reg_123;
assign p_rec_i8_fu_233_p2 = (p_0_rec_i2_reg_134 + ap_const_lv2_1);
assign p_rec_i_fu_199_p2 = (p_0_rec_i_reg_123 + ap_const_lv4_1);
assign p_str3_address0 = p_0_rec_i_cast_fu_188_p1;
assign p_str3_load_cast_fu_205_p1 = p_str3_q0;
assign p_str4_address0 = p_0_rec_i2_cast_fu_222_p1;
assign p_str4_load_cast_fu_239_p1 = p_str4_q0;
assign p_str5_address0 = p_0_rec_i9_cast_fu_252_p1;
assign p_str5_load_cast_fu_257_p1 = p_str5_q0;
assign tmp_10_fu_267_p1 = debug_ready[0:0];
assign tmp_7_fu_209_p1 = debug_ready[0:0];
assign tmp_8_fu_243_p1 = debug_ready[0:0];
assign tmp_i3_fu_227_p2 = (p_0_rec_i2_reg_134 == ap_const_lv2_3? 1'b1: 1'b0);
assign tmp_i_fu_193_p2 = (p_0_rec_i_reg_123 == ap_const_lv4_D? 1'b1: 1'b0);
assign x2_fu_218_p1 = in_r_dout;
assign y1_fu_261_p2 = (x1_reg_300 + ap_const_lv32_1);
assign y2_fu_276_p1 = grp_xillybus_wrapper_sinf_or_cosf_fu_160_ap_return;
always @ (posedge ap_clk)
begin
    p_str3_load_cast_reg_295[7] <= 1'b0;
    p_str4_load_cast_reg_328[7] <= 1'b0;
    p_str5_load_cast_reg_341[7:4] <= 4'b0000;
end



endmodule //xillybus_wrapper

