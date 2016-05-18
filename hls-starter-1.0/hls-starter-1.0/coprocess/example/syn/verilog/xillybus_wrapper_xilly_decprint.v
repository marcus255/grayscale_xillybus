// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module xillybus_wrapper_xilly_decprint (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        val_r,
        debug_ready,
        debug_out,
        debug_out_ap_vld
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 7'b1;
parameter    ap_ST_st2_fsm_1 = 7'b10;
parameter    ap_ST_st3_fsm_2 = 7'b100;
parameter    ap_ST_st4_fsm_3 = 7'b1000;
parameter    ap_ST_st5_fsm_4 = 7'b10000;
parameter    ap_ST_st6_fsm_5 = 7'b100000;
parameter    ap_ST_st7_fsm_6 = 7'b1000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv32_9 = 32'b1001;
parameter    ap_const_lv4_0 = 4'b0000;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv32_A = 32'b1010;
parameter    ap_const_lv4_A = 4'b1010;
parameter    ap_const_lv4_1 = 4'b1;
parameter    ap_const_lv8_1 = 8'b1;
parameter    ap_const_lv8_30 = 8'b110000;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] val_r;
input  [7:0] debug_ready;
output  [7:0] debug_out;
output   debug_out_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg debug_out_ap_vld;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm = 7'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_25;
wire   [3:0] powers10_address0;
reg    powers10_ce0;
wire   [27:0] powers10_q0;
wire   [31:0] first_2_cast1_fu_142_p1;
reg   [31:0] first_2_cast1_reg_272;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_48;
wire   [3:0] i_fu_153_p2;
reg   [3:0] i_reg_282;
wire   [0:0] exitcond_fu_147_p2;
wire   [4:0] tmp_4_fu_159_p1;
reg   [4:0] tmp_4_reg_292;
wire   [31:0] powers10_load_cast_fu_167_p1;
reg   [31:0] powers10_load_cast_reg_297;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_bdd_69;
wire   [7:0] x_1_fu_179_p2;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_bdd_78;
wire   [31:0] first_1_fu_219_p3;
wire   [0:0] tmp_fu_174_p2;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_bdd_93;
wire   [31:0] p_rec_i_fu_240_p2;
reg   [31:0] p_rec_i_reg_321;
wire   [7:0] out_q0;
reg   [7:0] out_load_reg_326;
reg    ap_sig_cseq_ST_st6_fsm_5;
reg    ap_sig_bdd_104;
reg   [3:0] out_address0;
reg    out_ce0;
reg    out_we0;
reg   [7:0] out_d0;
reg   [31:0] first_reg_87;
reg   [3:0] first_2_reg_99;
reg   [7:0] x_reg_110;
reg   [31:0] p_0_rec_i_reg_121;
reg    ap_sig_cseq_ST_st7_fsm_6;
reg    ap_sig_bdd_135;
wire   [0:0] tmp_9_fu_256_p1;
wire   [31:0] sum_i_cast_fu_235_p1;
reg   [31:0] v_fu_34;
wire   [31:0] v_1_fu_133_p1;
wire   [31:0] v_2_fu_185_p2;
wire   [7:0] tmp_6_fu_195_p2;
wire  signed [29:0] powers10_load_cast2_fu_163_p1;
wire   [0:0] tmp_7_fu_202_p2;
wire   [0:0] tmp_8_fu_208_p2;
wire   [0:0] or_cond_fu_213_p2;
wire   [4:0] tmp_5_fu_226_p1;
wire   [4:0] sum_i_fu_230_p2;
wire   [0:0] tmp_i_fu_246_p2;
reg   [6:0] ap_NS_fsm;


xillybus_wrapper_xilly_decprint_powers10 #(
    .DataWidth( 28 ),
    .AddressRange( 10 ),
    .AddressWidth( 4 ))
powers10_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( powers10_address0 ),
    .ce0( powers10_ce0 ),
    .q0( powers10_q0 )
);

xillybus_wrapper_xilly_decprint_out #(
    .DataWidth( 8 ),
    .AddressRange( 11 ),
    .AddressWidth( 4 ))
out_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( out_address0 ),
    .ce0( out_ce0 ),
    .we0( out_we0 ),
    .d0( out_d0 ),
    .q0( out_q0 )
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

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & ~(ap_const_lv1_0 == tmp_fu_174_p2))) begin
        first_2_reg_99 <= i_reg_282;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        first_2_reg_99 <= ap_const_lv4_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & ~(ap_const_lv1_0 == tmp_fu_174_p2))) begin
        first_reg_87 <= first_1_fu_219_p3;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        first_reg_87 <= ap_const_lv32_9;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_6) & ~(ap_const_lv1_0 == tmp_9_fu_256_p1))) begin
        p_0_rec_i_reg_121 <= p_rec_i_reg_321;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond_fu_147_p2 == ap_const_lv1_0))) begin
        p_0_rec_i_reg_121 <= ap_const_lv32_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & (ap_const_lv1_0 == tmp_fu_174_p2))) begin
        v_fu_34 <= v_2_fu_185_p2;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        v_fu_34 <= v_1_fu_133_p1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        x_reg_110 <= ap_const_lv8_0;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & (ap_const_lv1_0 == tmp_fu_174_p2))) begin
        x_reg_110 <= x_1_fu_179_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        first_2_cast1_reg_272[0] <= first_2_cast1_fu_142_p1[0];
first_2_cast1_reg_272[1] <= first_2_cast1_fu_142_p1[1];
first_2_cast1_reg_272[2] <= first_2_cast1_fu_142_p1[2];
first_2_cast1_reg_272[3] <= first_2_cast1_fu_142_p1[3];
        i_reg_282 <= i_fu_153_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        out_load_reg_326 <= out_q0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        p_rec_i_reg_321 <= p_rec_i_fu_240_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        powers10_load_cast_reg_297[0] <= powers10_load_cast_fu_167_p1[0];
powers10_load_cast_reg_297[1] <= powers10_load_cast_fu_167_p1[1];
powers10_load_cast_reg_297[2] <= powers10_load_cast_fu_167_p1[2];
powers10_load_cast_reg_297[3] <= powers10_load_cast_fu_167_p1[3];
powers10_load_cast_reg_297[4] <= powers10_load_cast_fu_167_p1[4];
powers10_load_cast_reg_297[5] <= powers10_load_cast_fu_167_p1[5];
powers10_load_cast_reg_297[6] <= powers10_load_cast_fu_167_p1[6];
powers10_load_cast_reg_297[7] <= powers10_load_cast_fu_167_p1[7];
powers10_load_cast_reg_297[8] <= powers10_load_cast_fu_167_p1[8];
powers10_load_cast_reg_297[9] <= powers10_load_cast_fu_167_p1[9];
powers10_load_cast_reg_297[10] <= powers10_load_cast_fu_167_p1[10];
powers10_load_cast_reg_297[11] <= powers10_load_cast_fu_167_p1[11];
powers10_load_cast_reg_297[12] <= powers10_load_cast_fu_167_p1[12];
powers10_load_cast_reg_297[13] <= powers10_load_cast_fu_167_p1[13];
powers10_load_cast_reg_297[14] <= powers10_load_cast_fu_167_p1[14];
powers10_load_cast_reg_297[15] <= powers10_load_cast_fu_167_p1[15];
powers10_load_cast_reg_297[16] <= powers10_load_cast_fu_167_p1[16];
powers10_load_cast_reg_297[17] <= powers10_load_cast_fu_167_p1[17];
powers10_load_cast_reg_297[18] <= powers10_load_cast_fu_167_p1[18];
powers10_load_cast_reg_297[19] <= powers10_load_cast_fu_167_p1[19];
powers10_load_cast_reg_297[20] <= powers10_load_cast_fu_167_p1[20];
powers10_load_cast_reg_297[21] <= powers10_load_cast_fu_167_p1[21];
powers10_load_cast_reg_297[22] <= powers10_load_cast_fu_167_p1[22];
powers10_load_cast_reg_297[23] <= powers10_load_cast_fu_167_p1[23];
powers10_load_cast_reg_297[24] <= powers10_load_cast_fu_167_p1[24];
powers10_load_cast_reg_297[25] <= powers10_load_cast_fu_167_p1[25];
powers10_load_cast_reg_297[26] <= powers10_load_cast_fu_167_p1[26];
powers10_load_cast_reg_297[27] <= powers10_load_cast_fu_167_p1[27];
powers10_load_cast_reg_297[28] <= powers10_load_cast_fu_167_p1[28];
powers10_load_cast_reg_297[29] <= powers10_load_cast_fu_167_p1[29];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond_fu_147_p2 == ap_const_lv1_0))) begin
        tmp_4_reg_292 <= tmp_4_fu_159_p1;
    end
end

/// ap_done assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0 or ap_sig_cseq_ST_st6_fsm_5 or tmp_i_fu_246_p2)
begin
    if (((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5) & ~(ap_const_lv1_0 == tmp_i_fu_246_p2)))) begin
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
always @ (ap_sig_cseq_ST_st6_fsm_5 or tmp_i_fu_246_p2)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5) & ~(ap_const_lv1_0 == tmp_i_fu_246_p2))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_25)
begin
    if (ap_sig_bdd_25) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st2_fsm_1 assign process. ///
always @ (ap_sig_bdd_48)
begin
    if (ap_sig_bdd_48) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st3_fsm_2 assign process. ///
always @ (ap_sig_bdd_69)
begin
    if (ap_sig_bdd_69) begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st4_fsm_3 assign process. ///
always @ (ap_sig_bdd_78)
begin
    if (ap_sig_bdd_78) begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st5_fsm_4 assign process. ///
always @ (ap_sig_bdd_93)
begin
    if (ap_sig_bdd_93) begin
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st6_fsm_5 assign process. ///
always @ (ap_sig_bdd_104)
begin
    if (ap_sig_bdd_104) begin
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st7_fsm_6 assign process. ///
always @ (ap_sig_bdd_135)
begin
    if (ap_sig_bdd_135) begin
        ap_sig_cseq_ST_st7_fsm_6 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st7_fsm_6 = ap_const_logic_0;
    end
end

/// debug_out_ap_vld assign process. ///
always @ (ap_sig_cseq_ST_st7_fsm_6 or tmp_9_fu_256_p1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_6) & ~(ap_const_lv1_0 == tmp_9_fu_256_p1))) begin
        debug_out_ap_vld = ap_const_logic_1;
    end else begin
        debug_out_ap_vld = ap_const_logic_0;
    end
end

/// out_address0 assign process. ///
always @ (first_2_cast1_reg_272 or ap_sig_cseq_ST_st2_fsm_1 or ap_sig_cseq_ST_st4_fsm_3 or ap_sig_cseq_ST_st5_fsm_4 or sum_i_cast_fu_235_p1)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        out_address0 = first_2_cast1_reg_272;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        out_address0 = ap_const_lv32_A;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        out_address0 = sum_i_cast_fu_235_p1;
    end else begin
        out_address0 = 'bx;
    end
end

/// out_ce0 assign process. ///
always @ (ap_sig_cseq_ST_st2_fsm_1 or ap_sig_cseq_ST_st4_fsm_3 or ap_sig_cseq_ST_st5_fsm_4)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) | (ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) | (ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4))) begin
        out_ce0 = ap_const_logic_1;
    end else begin
        out_ce0 = ap_const_logic_0;
    end
end

/// out_d0 assign process. ///
always @ (ap_sig_cseq_ST_st2_fsm_1 or ap_sig_cseq_ST_st4_fsm_3 or tmp_6_fu_195_p2)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        out_d0 = tmp_6_fu_195_p2;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        out_d0 = ap_const_lv8_0;
    end else begin
        out_d0 = 'bx;
    end
end

/// out_we0 assign process. ///
always @ (ap_sig_cseq_ST_st2_fsm_1 or exitcond_fu_147_p2 or ap_sig_cseq_ST_st4_fsm_3 or tmp_fu_174_p2)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond_fu_147_p2 == ap_const_lv1_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & ~(ap_const_lv1_0 == tmp_fu_174_p2)))) begin
        out_we0 = ap_const_logic_1;
    end else begin
        out_we0 = ap_const_logic_0;
    end
end

/// powers10_ce0 assign process. ///
always @ (ap_sig_cseq_ST_st2_fsm_1)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        powers10_ce0 = ap_const_logic_1;
    end else begin
        powers10_ce0 = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_start or ap_CS_fsm or exitcond_fu_147_p2 or tmp_fu_174_p2 or tmp_9_fu_256_p1 or tmp_i_fu_246_p2)
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
            if (~(exitcond_fu_147_p2 == ap_const_lv1_0)) begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
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
            if (~(ap_const_lv1_0 == tmp_fu_174_p2)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end
        end
        ap_ST_st5_fsm_4 : 
        begin
            ap_NS_fsm = ap_ST_st6_fsm_5;
        end
        ap_ST_st6_fsm_5 : 
        begin
            if (~(ap_const_lv1_0 == tmp_i_fu_246_p2)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st7_fsm_6;
            end
        end
        ap_ST_st7_fsm_6 : 
        begin
            if (~(ap_const_lv1_0 == tmp_9_fu_256_p1)) begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end else begin
                ap_NS_fsm = ap_ST_st7_fsm_6;
            end
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end


/// ap_sig_bdd_104 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_104 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_5]);
end

/// ap_sig_bdd_135 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_135 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_6]);
end

/// ap_sig_bdd_25 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_25 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_48 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_48 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end

/// ap_sig_bdd_69 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_69 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end

/// ap_sig_bdd_78 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_78 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_3]);
end

/// ap_sig_bdd_93 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_93 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_4]);
end
assign debug_out = out_load_reg_326;
assign exitcond_fu_147_p2 = (first_2_reg_99 == ap_const_lv4_A? 1'b1: 1'b0);
assign first_1_fu_219_p3 = ((or_cond_fu_213_p2)? first_2_cast1_reg_272: first_reg_87);
assign first_2_cast1_fu_142_p1 = first_2_reg_99;
assign i_fu_153_p2 = (first_2_reg_99 + ap_const_lv4_1);
assign or_cond_fu_213_p2 = (tmp_7_fu_202_p2 & tmp_8_fu_208_p2);
assign p_rec_i_fu_240_p2 = (p_0_rec_i_reg_121 + ap_const_lv32_1);
assign powers10_address0 = first_2_cast1_fu_142_p1;
assign powers10_load_cast2_fu_163_p1 = $signed(powers10_q0);
assign powers10_load_cast_fu_167_p1 = $unsigned(powers10_load_cast2_fu_163_p1);
assign sum_i_cast_fu_235_p1 = sum_i_fu_230_p2;
assign sum_i_fu_230_p2 = (tmp_5_fu_226_p1 + tmp_4_reg_292);
assign tmp_4_fu_159_p1 = first_reg_87[4:0];
assign tmp_5_fu_226_p1 = p_0_rec_i_reg_121[4:0];
assign tmp_6_fu_195_p2 = (x_reg_110 | ap_const_lv8_30);
assign tmp_7_fu_202_p2 = (x_reg_110 != ap_const_lv8_0? 1'b1: 1'b0);
assign tmp_8_fu_208_p2 = ($signed(first_reg_87) > $signed(first_2_cast1_reg_272)? 1'b1: 1'b0);
assign tmp_9_fu_256_p1 = debug_ready[0:0];
assign tmp_fu_174_p2 = (v_fu_34 < powers10_load_cast_reg_297? 1'b1: 1'b0);
assign tmp_i_fu_246_p2 = (out_q0 == ap_const_lv8_0? 1'b1: 1'b0);
assign v_1_fu_133_p1 = val_r;
assign v_2_fu_185_p2 = (v_fu_34 - powers10_load_cast_reg_297);
assign x_1_fu_179_p2 = (x_reg_110 + ap_const_lv8_1);
always @ (posedge ap_clk)
begin
    first_2_cast1_reg_272[31:4] <= 28'b0000000000000000000000000000;
    powers10_load_cast_reg_297[31:30] <= 2'b00;
end



endmodule //xillybus_wrapper_xilly_decprint
