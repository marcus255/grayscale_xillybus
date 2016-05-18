// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module xillybus_wrapper_big_mult_v3small_71_24_17_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a_V,
        b_V,
        ap_return
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 14'b1;
parameter    ap_ST_st2_fsm_1 = 14'b10;
parameter    ap_ST_st3_fsm_2 = 14'b100;
parameter    ap_ST_st4_fsm_3 = 14'b1000;
parameter    ap_ST_st5_fsm_4 = 14'b10000;
parameter    ap_ST_st6_fsm_5 = 14'b100000;
parameter    ap_ST_st7_fsm_6 = 14'b1000000;
parameter    ap_ST_st8_fsm_7 = 14'b10000000;
parameter    ap_ST_st9_fsm_8 = 14'b100000000;
parameter    ap_ST_st10_fsm_9 = 14'b1000000000;
parameter    ap_ST_st11_fsm_10 = 14'b10000000000;
parameter    ap_ST_st12_fsm_11 = 14'b100000000000;
parameter    ap_ST_st13_fsm_12 = 14'b1000000000000;
parameter    ap_ST_st14_fsm_13 = 14'b10000000000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_A = 32'b1010;
parameter    ap_const_lv32_B = 32'b1011;
parameter    ap_const_lv32_C = 32'b1100;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv3_1 = 3'b1;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_const_lv32_9 = 32'b1001;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv3_5 = 3'b101;
parameter    ap_const_lv3_4 = 3'b100;
parameter    ap_const_lv7_10 = 7'b10000;
parameter    ap_const_lv7_46 = 7'b1000110;
parameter    ap_const_lv32_46 = 32'b1000110;
parameter    ap_const_lv7_1 = 7'b1;
parameter    ap_const_lv71_7FFFFFFFFFFFFFFFFF = 71'b11111111111111111111111111111111111111111111111111111111111111111111111;
parameter    ap_const_lv71_1FFFFFFFFFF = 71'b11111111111111111111111111111111111111111;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv2_3 = 2'b11;
parameter    ap_const_lv32_11 = 32'b10001;
parameter    ap_const_lv32_28 = 32'b101000;
parameter    ap_const_lv7_5E = 7'b1011110;
parameter    ap_const_lv32_5E = 32'b1011110;
parameter    ap_const_lv95_7FFFFFFFFFFFFFFFFFFFFFFF = 95'b11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111;
parameter    ap_const_lv32_D = 32'b1101;
parameter    ap_const_lv32_44 = 32'b1000100;
parameter    ap_const_lv95_0 = 95'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [70:0] a_V;
input  [23:0] b_V;
output  [94:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[94:0] ap_return;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm = 14'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_32;
wire   [40:0] tmp_fu_205_p1;
reg   [40:0] tmp_reg_618;
wire   [31:0] i_cast7_fu_209_p1;
reg   [31:0] i_cast7_reg_623;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_54;
wire   [2:0] i_4_fu_219_p2;
reg   [2:0] i_4_reg_631;
wire   [6:0] tmp_16_fu_288_p3;
reg   [6:0] tmp_16_reg_636;
wire   [0:0] exitcond2_fu_213_p2;
wire   [70:0] tmp_17_fu_296_p3;
reg   [70:0] tmp_17_reg_641;
wire   [6:0] tmp_18_fu_303_p3;
reg   [6:0] tmp_18_reg_646;
wire  signed [40:0] tmp_26_fu_346_p1;
reg  signed [40:0] tmp_26_reg_656;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_bdd_79;
wire   [31:0] i_1_cast4_fu_355_p1;
reg   [31:0] i_1_cast4_reg_661;
reg    ap_sig_cseq_ST_st9_fsm_8;
reg    ap_sig_bdd_88;
wire   [0:0] exitcond3_fu_360_p2;
wire   [2:0] i_3_fu_381_p2;
reg   [2:0] i_3_reg_679;
wire   [2:0] tmp_8_fu_419_p2;
reg   [2:0] tmp_8_reg_687;
reg    ap_sig_cseq_ST_st11_fsm_10;
reg    ap_sig_bdd_106;
wire   [0:0] exitcond_fu_413_p2;
wire   [16:0] tmp_30_fu_457_p1;
reg   [16:0] tmp_30_reg_702;
reg    ap_sig_cseq_ST_st12_fsm_11;
reg    ap_sig_bdd_124;
wire   [0:0] tmp_31_fu_461_p2;
reg   [0:0] tmp_31_reg_707;
wire   [6:0] tmp_34_fu_477_p3;
reg   [6:0] tmp_34_reg_712;
wire   [6:0] tmp_35_fu_485_p3;
reg   [6:0] tmp_35_reg_717;
wire   [6:0] tmp_36_fu_493_p3;
reg   [6:0] tmp_36_reg_722;
wire   [94:0] p_Result_2_fu_590_p2;
reg    ap_sig_cseq_ST_st13_fsm_12;
reg    ap_sig_bdd_141;
reg   [2:0] pp_V_address0;
reg    pp_V_ce0;
reg    pp_V_we0;
wire   [40:0] pp_V_d0;
wire   [40:0] pp_V_q0;
reg   [2:0] pps_V_address0;
reg    pps_V_ce0;
reg    pps_V_we0;
reg   [40:0] pps_V_d0;
wire   [40:0] pps_V_q0;
reg   [2:0] i_reg_158;
reg    ap_sig_cseq_ST_st7_fsm_6;
reg    ap_sig_bdd_169;
reg   [2:0] i_1_reg_169;
reg    ap_sig_cseq_ST_st8_fsm_7;
reg    ap_sig_bdd_180;
reg    ap_sig_cseq_ST_st10_fsm_9;
reg    ap_sig_bdd_187;
reg   [94:0] p_Val2_s_reg_180;
reg   [2:0] i_2_reg_192;
wire   [31:0] tmp_25_cast_fu_376_p1;
wire   [31:0] i_2_cast3_fu_408_p1;
wire  signed [40:0] grp_fu_350_p2;
wire   [40:0] tmp_6_fu_401_p2;
wire   [6:0] Lo_assign_fu_231_p4;
wire   [0:0] tmp_s_fu_225_p2;
wire   [6:0] tmp_2_fu_241_p2;
wire   [6:0] Ui_fu_247_p3;
wire   [0:0] tmp_11_fu_255_p2;
wire   [6:0] tmp_13_fu_270_p2;
wire   [6:0] tmp_15_fu_282_p2;
reg   [70:0] tmp_12_fu_261_p4;
wire   [6:0] tmp_14_fu_276_p2;
wire   [6:0] tmp_19_fu_311_p2;
wire   [70:0] tmp_20_fu_316_p1;
wire   [70:0] tmp_21_fu_319_p1;
wire   [70:0] tmp_23_fu_328_p2;
wire   [70:0] tmp_22_fu_323_p2;
wire   [70:0] tmp_24_fu_334_p2;
wire   [70:0] p_Result_3_fu_340_p2;
wire  signed [40:0] grp_fu_350_p0;
wire   [23:0] grp_fu_350_p1;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_bdd_292;
wire   [1:0] tmp_27_fu_366_p1;
wire   [1:0] tmp_5_fu_370_p2;
wire   [23:0] r_V_fu_387_p4;
wire   [40:0] r_V_1_fu_397_p1;
wire   [1:0] tmp_29_fu_425_p1;
wire   [5:0] Li_fu_429_p4;
wire   [6:0] Li_cast1_fu_439_p1;
wire   [6:0] Ui_1_fu_447_p2;
wire   [31:0] Li_cast_fu_443_p1;
wire   [31:0] Ui_1_cast_fu_453_p1;
wire   [6:0] tmp_32_fu_467_p1;
wire   [6:0] tmp_33_fu_471_p2;
wire   [6:0] tmp_37_fu_504_p2;
wire   [94:0] loc_V_fu_501_p1;
wire   [94:0] tmp_38_fu_509_p1;
wire   [94:0] tmp_41_fu_519_p2;
reg   [94:0] tmp_42_fu_525_p4;
wire   [94:0] tmp_39_fu_512_p1;
wire   [94:0] tmp_44_fu_542_p2;
wire   [94:0] tmp_40_fu_515_p1;
wire   [94:0] tmp_46_fu_554_p2;
wire   [94:0] tmp_45_fu_548_p2;
wire   [94:0] p_not_fu_566_p2;
wire   [94:0] tmp_47_fu_560_p2;
wire   [94:0] tmp_43_fu_535_p3;
wire   [94:0] tmp_48_fu_572_p2;
wire   [94:0] tmp_49_fu_578_p2;
wire   [94:0] tmp_50_fu_584_p2;
reg    ap_sig_cseq_ST_st14_fsm_13;
reg    ap_sig_bdd_410;
wire   [26:0] tmp_28_fu_596_p1;
wire    grp_fu_350_ce;
wire   [94:0] p_Result_s_fu_600_p5;
reg   [94:0] ap_return_preg = 95'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
reg   [13:0] ap_NS_fsm;


xillybus_wrapper_big_mult_v3small_71_24_17_s_pp_V #(
    .DataWidth( 41 ),
    .AddressRange( 5 ),
    .AddressWidth( 3 ))
pp_V_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( pp_V_address0 ),
    .ce0( pp_V_ce0 ),
    .we0( pp_V_we0 ),
    .d0( pp_V_d0 ),
    .q0( pp_V_q0 )
);

xillybus_wrapper_big_mult_v3small_71_24_17_s_pp_V #(
    .DataWidth( 41 ),
    .AddressRange( 5 ),
    .AddressWidth( 3 ))
pps_V_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( pps_V_address0 ),
    .ce0( pps_V_ce0 ),
    .we0( pps_V_we0 ),
    .d0( pps_V_d0 ),
    .q0( pps_V_q0 )
);

xillybus_wrapper_mul_41s_24ns_41_4 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 41 ),
    .din1_WIDTH( 24 ),
    .dout_WIDTH( 41 ))
xillybus_wrapper_mul_41s_24ns_41_4_U5(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( grp_fu_350_p0 ),
    .din1( grp_fu_350_p1 ),
    .ce( grp_fu_350_ce ),
    .dout( grp_fu_350_p2 )
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

/// ap_return_preg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_return_preg
    if (ap_rst == 1'b1) begin
        ap_return_preg <= ap_const_lv95_0;
    end else begin
        if ((ap_const_logic_1 == ap_sig_cseq_ST_st14_fsm_13)) begin
            ap_return_preg <= p_Result_s_fu_600_p5;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st10_fsm_9)) begin
        i_1_reg_169 <= i_3_reg_679;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        i_1_reg_169 <= ap_const_lv3_1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_8) & ~(ap_const_lv1_0 == exitcond3_fu_360_p2))) begin
        i_2_reg_192 <= ap_const_lv3_0;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st13_fsm_12)) begin
        i_2_reg_192 <= tmp_8_reg_687;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        i_reg_158 <= ap_const_lv3_0;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        i_reg_158 <= i_4_reg_631;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        i_1_cast4_reg_661[0] <= i_1_cast4_fu_355_p1[0];
i_1_cast4_reg_661[1] <= i_1_cast4_fu_355_p1[1];
i_1_cast4_reg_661[2] <= i_1_cast4_fu_355_p1[2];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_8) & (ap_const_lv1_0 == exitcond3_fu_360_p2))) begin
        i_3_reg_679 <= i_3_fu_381_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        i_4_reg_631 <= i_4_fu_219_p2;
        i_cast7_reg_623[0] <= i_cast7_fu_209_p1[0];
i_cast7_reg_623[1] <= i_cast7_fu_209_p1[1];
i_cast7_reg_623[2] <= i_cast7_fu_209_p1[2];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st13_fsm_12)) begin
        p_Val2_s_reg_180 <= p_Result_2_fu_590_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond2_fu_213_p2 == ap_const_lv1_0))) begin
        tmp_16_reg_636 <= tmp_16_fu_288_p3;
        tmp_17_reg_641 <= tmp_17_fu_296_p3;
        tmp_18_reg_646 <= tmp_18_fu_303_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        tmp_26_reg_656 <= tmp_26_fu_346_p1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st12_fsm_11)) begin
        tmp_30_reg_702 <= tmp_30_fu_457_p1;
        tmp_31_reg_707 <= tmp_31_fu_461_p2;
        tmp_34_reg_712 <= tmp_34_fu_477_p3;
        tmp_35_reg_717 <= tmp_35_fu_485_p3;
        tmp_36_reg_722 <= tmp_36_fu_493_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st11_fsm_10)) begin
        tmp_8_reg_687 <= tmp_8_fu_419_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        tmp_reg_618[0] <= tmp_fu_205_p1[0];
tmp_reg_618[1] <= tmp_fu_205_p1[1];
tmp_reg_618[2] <= tmp_fu_205_p1[2];
tmp_reg_618[3] <= tmp_fu_205_p1[3];
tmp_reg_618[4] <= tmp_fu_205_p1[4];
tmp_reg_618[5] <= tmp_fu_205_p1[5];
tmp_reg_618[6] <= tmp_fu_205_p1[6];
tmp_reg_618[7] <= tmp_fu_205_p1[7];
tmp_reg_618[8] <= tmp_fu_205_p1[8];
tmp_reg_618[9] <= tmp_fu_205_p1[9];
tmp_reg_618[10] <= tmp_fu_205_p1[10];
tmp_reg_618[11] <= tmp_fu_205_p1[11];
tmp_reg_618[12] <= tmp_fu_205_p1[12];
tmp_reg_618[13] <= tmp_fu_205_p1[13];
tmp_reg_618[14] <= tmp_fu_205_p1[14];
tmp_reg_618[15] <= tmp_fu_205_p1[15];
tmp_reg_618[16] <= tmp_fu_205_p1[16];
tmp_reg_618[17] <= tmp_fu_205_p1[17];
tmp_reg_618[18] <= tmp_fu_205_p1[18];
tmp_reg_618[19] <= tmp_fu_205_p1[19];
tmp_reg_618[20] <= tmp_fu_205_p1[20];
tmp_reg_618[21] <= tmp_fu_205_p1[21];
tmp_reg_618[22] <= tmp_fu_205_p1[22];
tmp_reg_618[23] <= tmp_fu_205_p1[23];
    end
end

/// ap_done assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0 or ap_sig_cseq_ST_st14_fsm_13)
begin
    if (((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0)) | (ap_const_logic_1 == ap_sig_cseq_ST_st14_fsm_13))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_sig_cseq_ST_st14_fsm_13)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st14_fsm_13)) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_return assign process. ///
always @ (ap_sig_cseq_ST_st14_fsm_13 or p_Result_s_fu_600_p5 or ap_return_preg)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st14_fsm_13)) begin
        ap_return = p_Result_s_fu_600_p5;
    end else begin
        ap_return = ap_return_preg;
    end
end

/// ap_sig_cseq_ST_st10_fsm_9 assign process. ///
always @ (ap_sig_bdd_187)
begin
    if (ap_sig_bdd_187) begin
        ap_sig_cseq_ST_st10_fsm_9 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st10_fsm_9 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st11_fsm_10 assign process. ///
always @ (ap_sig_bdd_106)
begin
    if (ap_sig_bdd_106) begin
        ap_sig_cseq_ST_st11_fsm_10 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st11_fsm_10 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st12_fsm_11 assign process. ///
always @ (ap_sig_bdd_124)
begin
    if (ap_sig_bdd_124) begin
        ap_sig_cseq_ST_st12_fsm_11 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st12_fsm_11 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st13_fsm_12 assign process. ///
always @ (ap_sig_bdd_141)
begin
    if (ap_sig_bdd_141) begin
        ap_sig_cseq_ST_st13_fsm_12 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st13_fsm_12 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st14_fsm_13 assign process. ///
always @ (ap_sig_bdd_410)
begin
    if (ap_sig_bdd_410) begin
        ap_sig_cseq_ST_st14_fsm_13 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st14_fsm_13 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_32)
begin
    if (ap_sig_bdd_32) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st2_fsm_1 assign process. ///
always @ (ap_sig_bdd_54)
begin
    if (ap_sig_bdd_54) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st3_fsm_2 assign process. ///
always @ (ap_sig_bdd_79)
begin
    if (ap_sig_bdd_79) begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st4_fsm_3 assign process. ///
always @ (ap_sig_bdd_292)
begin
    if (ap_sig_bdd_292) begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st7_fsm_6 assign process. ///
always @ (ap_sig_bdd_169)
begin
    if (ap_sig_bdd_169) begin
        ap_sig_cseq_ST_st7_fsm_6 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st7_fsm_6 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st8_fsm_7 assign process. ///
always @ (ap_sig_bdd_180)
begin
    if (ap_sig_bdd_180) begin
        ap_sig_cseq_ST_st8_fsm_7 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st8_fsm_7 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st9_fsm_8 assign process. ///
always @ (ap_sig_bdd_88)
begin
    if (ap_sig_bdd_88) begin
        ap_sig_cseq_ST_st9_fsm_8 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st9_fsm_8 = ap_const_logic_0;
    end
end

/// pp_V_address0 assign process. ///
always @ (i_cast7_reg_623 or ap_sig_cseq_ST_st2_fsm_1 or i_1_cast4_fu_355_p1 or ap_sig_cseq_ST_st9_fsm_8 or ap_sig_cseq_ST_st7_fsm_6)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        pp_V_address0 = i_cast7_reg_623;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        pp_V_address0 = i_1_cast4_fu_355_p1;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        pp_V_address0 = ap_const_lv32_0;
    end else begin
        pp_V_address0 = 'bx;
    end
end

/// pp_V_ce0 assign process. ///
always @ (ap_sig_cseq_ST_st2_fsm_1 or ap_sig_cseq_ST_st9_fsm_8 or ap_sig_cseq_ST_st7_fsm_6)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) | (ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_8) | (ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_6))) begin
        pp_V_ce0 = ap_const_logic_1;
    end else begin
        pp_V_ce0 = ap_const_logic_0;
    end
end

/// pp_V_we0 assign process. ///
always @ (ap_sig_cseq_ST_st7_fsm_6)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        pp_V_we0 = ap_const_logic_1;
    end else begin
        pp_V_we0 = ap_const_logic_0;
    end
end

/// pps_V_address0 assign process. ///
always @ (i_1_cast4_reg_661 or ap_sig_cseq_ST_st9_fsm_8 or ap_sig_cseq_ST_st11_fsm_10 or exitcond_fu_413_p2 or ap_sig_cseq_ST_st8_fsm_7 or ap_sig_cseq_ST_st10_fsm_9 or tmp_25_cast_fu_376_p1 or i_2_cast3_fu_408_p1)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st10_fsm_9)) begin
        pps_V_address0 = i_1_cast4_reg_661;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        pps_V_address0 = ap_const_lv32_0;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st11_fsm_10) & ~(ap_const_lv1_0 == exitcond_fu_413_p2))) begin
        pps_V_address0 = ap_const_lv32_4;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st11_fsm_10) & (ap_const_lv1_0 == exitcond_fu_413_p2))) begin
        pps_V_address0 = i_2_cast3_fu_408_p1;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        pps_V_address0 = tmp_25_cast_fu_376_p1;
    end else begin
        pps_V_address0 = 'bx;
    end
end

/// pps_V_ce0 assign process. ///
always @ (ap_sig_cseq_ST_st9_fsm_8 or ap_sig_cseq_ST_st11_fsm_10 or exitcond_fu_413_p2 or ap_sig_cseq_ST_st8_fsm_7 or ap_sig_cseq_ST_st10_fsm_9)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_8) | ((ap_const_logic_1 == ap_sig_cseq_ST_st11_fsm_10) & (ap_const_lv1_0 == exitcond_fu_413_p2)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st11_fsm_10) & ~(ap_const_lv1_0 == exitcond_fu_413_p2)) | (ap_const_logic_1 == ap_sig_cseq_ST_st8_fsm_7) | (ap_const_logic_1 == ap_sig_cseq_ST_st10_fsm_9))) begin
        pps_V_ce0 = ap_const_logic_1;
    end else begin
        pps_V_ce0 = ap_const_logic_0;
    end
end

/// pps_V_d0 assign process. ///
always @ (pp_V_q0 or ap_sig_cseq_ST_st8_fsm_7 or ap_sig_cseq_ST_st10_fsm_9 or tmp_6_fu_401_p2)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st10_fsm_9)) begin
        pps_V_d0 = tmp_6_fu_401_p2;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        pps_V_d0 = pp_V_q0;
    end else begin
        pps_V_d0 = 'bx;
    end
end

/// pps_V_we0 assign process. ///
always @ (ap_sig_cseq_ST_st8_fsm_7 or ap_sig_cseq_ST_st10_fsm_9)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st8_fsm_7) | (ap_const_logic_1 == ap_sig_cseq_ST_st10_fsm_9))) begin
        pps_V_we0 = ap_const_logic_1;
    end else begin
        pps_V_we0 = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_start or ap_CS_fsm or exitcond2_fu_213_p2 or exitcond3_fu_360_p2 or exitcond_fu_413_p2)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~(ap_start == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : 
        begin
            if (~(exitcond2_fu_213_p2 == ap_const_lv1_0)) begin
                ap_NS_fsm = ap_ST_st8_fsm_7;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st3_fsm_2 : 
        begin
            ap_NS_fsm = ap_ST_st4_fsm_3;
        end
        ap_ST_st4_fsm_3 : 
        begin
            ap_NS_fsm = ap_ST_st5_fsm_4;
        end
        ap_ST_st5_fsm_4 : 
        begin
            ap_NS_fsm = ap_ST_st6_fsm_5;
        end
        ap_ST_st6_fsm_5 : 
        begin
            ap_NS_fsm = ap_ST_st7_fsm_6;
        end
        ap_ST_st7_fsm_6 : 
        begin
            ap_NS_fsm = ap_ST_st2_fsm_1;
        end
        ap_ST_st8_fsm_7 : 
        begin
            ap_NS_fsm = ap_ST_st9_fsm_8;
        end
        ap_ST_st9_fsm_8 : 
        begin
            if (~(ap_const_lv1_0 == exitcond3_fu_360_p2)) begin
                ap_NS_fsm = ap_ST_st11_fsm_10;
            end else begin
                ap_NS_fsm = ap_ST_st10_fsm_9;
            end
        end
        ap_ST_st10_fsm_9 : 
        begin
            ap_NS_fsm = ap_ST_st9_fsm_8;
        end
        ap_ST_st11_fsm_10 : 
        begin
            if (~(ap_const_lv1_0 == exitcond_fu_413_p2)) begin
                ap_NS_fsm = ap_ST_st14_fsm_13;
            end else begin
                ap_NS_fsm = ap_ST_st12_fsm_11;
            end
        end
        ap_ST_st12_fsm_11 : 
        begin
            ap_NS_fsm = ap_ST_st13_fsm_12;
        end
        ap_ST_st13_fsm_12 : 
        begin
            ap_NS_fsm = ap_ST_st11_fsm_10;
        end
        ap_ST_st14_fsm_13 : 
        begin
            ap_NS_fsm = ap_ST_st1_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Li_cast1_fu_439_p1 = Li_fu_429_p4;
assign Li_cast_fu_443_p1 = Li_fu_429_p4;
assign Li_fu_429_p4 = {{{{tmp_29_fu_425_p1}, {ap_const_lv1_0}}}, {i_2_reg_192}};
assign Lo_assign_fu_231_p4 = {{{{i_reg_158}, {ap_const_lv1_0}}}, {i_reg_158}};
assign Ui_1_cast_fu_453_p1 = Ui_1_fu_447_p2;
assign Ui_1_fu_447_p2 = (Li_cast1_fu_439_p1 + ap_const_lv7_10);
assign Ui_fu_247_p3 = ((tmp_s_fu_225_p2)? ap_const_lv7_46: tmp_2_fu_241_p2);

/// ap_sig_bdd_106 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_106 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_A]);
end

/// ap_sig_bdd_124 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_124 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_B]);
end

/// ap_sig_bdd_141 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_141 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_C]);
end

/// ap_sig_bdd_169 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_169 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_6]);
end

/// ap_sig_bdd_180 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_180 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_7]);
end

/// ap_sig_bdd_187 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_187 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_9]);
end

/// ap_sig_bdd_292 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_292 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_3]);
end

/// ap_sig_bdd_32 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_32 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_410 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_410 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_D]);
end

/// ap_sig_bdd_54 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_54 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end

/// ap_sig_bdd_79 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_79 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end

/// ap_sig_bdd_88 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_88 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_8]);
end
assign exitcond2_fu_213_p2 = (i_reg_158 == ap_const_lv3_5? 1'b1: 1'b0);
assign exitcond3_fu_360_p2 = (i_1_reg_169 == ap_const_lv3_5? 1'b1: 1'b0);
assign exitcond_fu_413_p2 = (i_2_reg_192 == ap_const_lv3_4? 1'b1: 1'b0);
assign grp_fu_350_ce = ap_const_logic_1;
assign grp_fu_350_p0 = tmp_26_reg_656;
assign grp_fu_350_p1 = tmp_reg_618;
assign i_1_cast4_fu_355_p1 = i_1_reg_169;
assign i_2_cast3_fu_408_p1 = i_2_reg_192;
assign i_3_fu_381_p2 = (i_1_reg_169 + ap_const_lv3_1);
assign i_4_fu_219_p2 = (i_reg_158 + ap_const_lv3_1);
assign i_cast7_fu_209_p1 = i_reg_158;
assign loc_V_fu_501_p1 = tmp_30_reg_702;
assign p_Result_2_fu_590_p2 = (tmp_49_fu_578_p2 | tmp_50_fu_584_p2);
assign p_Result_3_fu_340_p2 = (tmp_22_fu_323_p2 & tmp_24_fu_334_p2);
assign p_Result_s_fu_600_p5 = {{tmp_28_fu_596_p1}, {p_Val2_s_reg_180[32'd67 : 32'd0]}};
assign p_not_fu_566_p2 = (tmp_46_fu_554_p2 ^ ap_const_lv95_7FFFFFFFFFFFFFFFFFFFFFFF);
assign pp_V_d0 = grp_fu_350_p2;
assign r_V_1_fu_397_p1 = r_V_fu_387_p4;
assign r_V_fu_387_p4 = {{pps_V_q0[ap_const_lv32_28 : ap_const_lv32_11]}};
assign tmp_11_fu_255_p2 = (Lo_assign_fu_231_p4 > Ui_fu_247_p3? 1'b1: 1'b0);

integer ap_tvar_int_0;

always @ (a_V) begin
    for (ap_tvar_int_0 = 71 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > ap_const_lv32_46 - ap_const_lv32_0) begin
            tmp_12_fu_261_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            tmp_12_fu_261_p4[ap_tvar_int_0] = a_V[ap_const_lv32_46 - ap_tvar_int_0];
        end
    end
end


assign tmp_13_fu_270_p2 = (Lo_assign_fu_231_p4 - Ui_fu_247_p3);
assign tmp_14_fu_276_p2 = ($signed(ap_const_lv7_46) - $signed(Lo_assign_fu_231_p4));
assign tmp_15_fu_282_p2 = (Ui_fu_247_p3 - Lo_assign_fu_231_p4);
assign tmp_16_fu_288_p3 = ((tmp_11_fu_255_p2)? tmp_13_fu_270_p2: tmp_15_fu_282_p2);
assign tmp_17_fu_296_p3 = ((tmp_11_fu_255_p2)? tmp_12_fu_261_p4: a_V);
assign tmp_18_fu_303_p3 = ((tmp_11_fu_255_p2)? tmp_14_fu_276_p2: Lo_assign_fu_231_p4);
assign tmp_19_fu_311_p2 = (tmp_16_reg_636 + ap_const_lv7_1);
assign tmp_20_fu_316_p1 = tmp_18_reg_646;
assign tmp_21_fu_319_p1 = tmp_19_fu_311_p2;
assign tmp_22_fu_323_p2 = tmp_17_reg_641 >> tmp_20_fu_316_p1;
assign tmp_23_fu_328_p2 = ap_const_lv71_7FFFFFFFFFFFFFFFFF << tmp_21_fu_319_p1;
assign tmp_24_fu_334_p2 = (tmp_23_fu_328_p2 ^ ap_const_lv71_1FFFFFFFFFF);
assign tmp_25_cast_fu_376_p1 = tmp_5_fu_370_p2;
assign tmp_26_fu_346_p1 = p_Result_3_fu_340_p2[40:0];
assign tmp_27_fu_366_p1 = i_1_reg_169[1:0];
assign tmp_28_fu_596_p1 = pps_V_q0[26:0];
assign tmp_29_fu_425_p1 = i_2_reg_192[1:0];
assign tmp_2_fu_241_p2 = (Lo_assign_fu_231_p4 + ap_const_lv7_10);
assign tmp_30_fu_457_p1 = pps_V_q0[16:0];
assign tmp_31_fu_461_p2 = (Li_cast_fu_443_p1 > Ui_1_cast_fu_453_p1? 1'b1: 1'b0);
assign tmp_32_fu_467_p1 = Li_fu_429_p4;
assign tmp_33_fu_471_p2 = ($signed(ap_const_lv7_5E) - $signed(tmp_32_fu_467_p1));
assign tmp_34_fu_477_p3 = ((tmp_31_fu_461_p2)? tmp_32_fu_467_p1: Ui_1_fu_447_p2);
assign tmp_35_fu_485_p3 = ((tmp_31_fu_461_p2)? Ui_1_fu_447_p2: tmp_32_fu_467_p1);
assign tmp_36_fu_493_p3 = ((tmp_31_fu_461_p2)? tmp_33_fu_471_p2: tmp_32_fu_467_p1);
assign tmp_37_fu_504_p2 = (tmp_34_reg_712 + ap_const_lv7_1);
assign tmp_38_fu_509_p1 = tmp_36_reg_722;
assign tmp_39_fu_512_p1 = tmp_35_reg_717;
assign tmp_40_fu_515_p1 = tmp_37_fu_504_p2;
assign tmp_41_fu_519_p2 = loc_V_fu_501_p1 << tmp_38_fu_509_p1;

integer ap_tvar_int_1;

always @ (tmp_41_fu_519_p2) begin
    for (ap_tvar_int_1 = 95 - 1; ap_tvar_int_1 >= 0; ap_tvar_int_1 = ap_tvar_int_1 - 1) begin
        if (ap_tvar_int_1 > ap_const_lv32_5E - ap_const_lv32_0) begin
            tmp_42_fu_525_p4[ap_tvar_int_1] = 1'b0;
        end else begin
            tmp_42_fu_525_p4[ap_tvar_int_1] = tmp_41_fu_519_p2[ap_const_lv32_5E - ap_tvar_int_1];
        end
    end
end


assign tmp_43_fu_535_p3 = ((tmp_31_reg_707)? tmp_42_fu_525_p4: tmp_41_fu_519_p2);
assign tmp_44_fu_542_p2 = ap_const_lv95_7FFFFFFFFFFFFFFFFFFFFFFF << tmp_39_fu_512_p1;
assign tmp_45_fu_548_p2 = (tmp_44_fu_542_p2 ^ ap_const_lv95_7FFFFFFFFFFFFFFFFFFFFFFF);
assign tmp_46_fu_554_p2 = ap_const_lv95_7FFFFFFFFFFFFFFFFFFFFFFF << tmp_40_fu_515_p1;
assign tmp_47_fu_560_p2 = (tmp_46_fu_554_p2 | tmp_45_fu_548_p2);
assign tmp_48_fu_572_p2 = (tmp_44_fu_542_p2 & p_not_fu_566_p2);
assign tmp_49_fu_578_p2 = (p_Val2_s_reg_180 & tmp_47_fu_560_p2);
assign tmp_50_fu_584_p2 = (tmp_43_fu_535_p3 & tmp_48_fu_572_p2);
assign tmp_5_fu_370_p2 = ($signed(tmp_27_fu_366_p1) + $signed(ap_const_lv2_3));
assign tmp_6_fu_401_p2 = (pp_V_q0 + r_V_1_fu_397_p1);
assign tmp_8_fu_419_p2 = (i_2_reg_192 + ap_const_lv3_1);
assign tmp_fu_205_p1 = b_V;
assign tmp_s_fu_225_p2 = (i_reg_158 == ap_const_lv3_4? 1'b1: 1'b0);
always @ (posedge ap_clk)
begin
    tmp_reg_618[40:24] <= 17'b00000000000000000;
    i_cast7_reg_623[31:3] <= 29'b00000000000000000000000000000;
    i_1_cast4_reg_661[31:3] <= 29'b00000000000000000000000000000;
end



endmodule //xillybus_wrapper_big_mult_v3small_71_24_17_s
