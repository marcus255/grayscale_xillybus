// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#include "xillybus_wrapper_xilly_decprint.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic xillybus_wrapper_xilly_decprint::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic xillybus_wrapper_xilly_decprint::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<7> xillybus_wrapper_xilly_decprint::ap_ST_st1_fsm_0 = "1";
const sc_lv<7> xillybus_wrapper_xilly_decprint::ap_ST_st2_fsm_1 = "10";
const sc_lv<7> xillybus_wrapper_xilly_decprint::ap_ST_st3_fsm_2 = "100";
const sc_lv<7> xillybus_wrapper_xilly_decprint::ap_ST_st4_fsm_3 = "1000";
const sc_lv<7> xillybus_wrapper_xilly_decprint::ap_ST_st5_fsm_4 = "10000";
const sc_lv<7> xillybus_wrapper_xilly_decprint::ap_ST_st6_fsm_5 = "100000";
const sc_lv<7> xillybus_wrapper_xilly_decprint::ap_ST_st7_fsm_6 = "1000000";
const sc_lv<32> xillybus_wrapper_xilly_decprint::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> xillybus_wrapper_xilly_decprint::ap_const_lv1_1 = "1";
const sc_lv<32> xillybus_wrapper_xilly_decprint::ap_const_lv32_1 = "1";
const sc_lv<1> xillybus_wrapper_xilly_decprint::ap_const_lv1_0 = "0";
const sc_lv<32> xillybus_wrapper_xilly_decprint::ap_const_lv32_2 = "10";
const sc_lv<32> xillybus_wrapper_xilly_decprint::ap_const_lv32_3 = "11";
const sc_lv<32> xillybus_wrapper_xilly_decprint::ap_const_lv32_4 = "100";
const sc_lv<32> xillybus_wrapper_xilly_decprint::ap_const_lv32_5 = "101";
const sc_lv<32> xillybus_wrapper_xilly_decprint::ap_const_lv32_9 = "1001";
const sc_lv<4> xillybus_wrapper_xilly_decprint::ap_const_lv4_0 = "0000";
const sc_lv<8> xillybus_wrapper_xilly_decprint::ap_const_lv8_0 = "00000000";
const sc_lv<32> xillybus_wrapper_xilly_decprint::ap_const_lv32_6 = "110";
const sc_lv<32> xillybus_wrapper_xilly_decprint::ap_const_lv32_A = "1010";
const sc_lv<4> xillybus_wrapper_xilly_decprint::ap_const_lv4_A = "1010";
const sc_lv<4> xillybus_wrapper_xilly_decprint::ap_const_lv4_1 = "1";
const sc_lv<8> xillybus_wrapper_xilly_decprint::ap_const_lv8_1 = "1";
const sc_lv<8> xillybus_wrapper_xilly_decprint::ap_const_lv8_30 = "110000";

xillybus_wrapper_xilly_decprint::xillybus_wrapper_xilly_decprint(sc_module_name name) : sc_module(name), mVcdFile(0) {
    powers10_U = new xillybus_wrapper_xilly_decprint_powers10("powers10_U");
    powers10_U->clk(ap_clk);
    powers10_U->reset(ap_rst);
    powers10_U->address0(powers10_address0);
    powers10_U->ce0(powers10_ce0);
    powers10_U->q0(powers10_q0);
    out_U = new xillybus_wrapper_xilly_decprint_out("out_U");
    out_U->clk(ap_clk);
    out_U->reset(ap_rst);
    out_U->address0(out_address0);
    out_U->ce0(out_ce0);
    out_U->we0(out_we0);
    out_U->d0(out_d0);
    out_U->q0(out_q0);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( ap_sig_cseq_ST_st6_fsm_5 );
    sensitive << ( tmp_i_fu_246_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_sig_cseq_ST_st6_fsm_5 );
    sensitive << ( tmp_i_fu_246_p2 );

    SC_METHOD(thread_ap_sig_bdd_104);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_135);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_25);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_48);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_69);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_78);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_93);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_bdd_25 );

    SC_METHOD(thread_ap_sig_cseq_ST_st2_fsm_1);
    sensitive << ( ap_sig_bdd_48 );

    SC_METHOD(thread_ap_sig_cseq_ST_st3_fsm_2);
    sensitive << ( ap_sig_bdd_69 );

    SC_METHOD(thread_ap_sig_cseq_ST_st4_fsm_3);
    sensitive << ( ap_sig_bdd_78 );

    SC_METHOD(thread_ap_sig_cseq_ST_st5_fsm_4);
    sensitive << ( ap_sig_bdd_93 );

    SC_METHOD(thread_ap_sig_cseq_ST_st6_fsm_5);
    sensitive << ( ap_sig_bdd_104 );

    SC_METHOD(thread_ap_sig_cseq_ST_st7_fsm_6);
    sensitive << ( ap_sig_bdd_135 );

    SC_METHOD(thread_debug_out);
    sensitive << ( out_load_reg_326 );
    sensitive << ( ap_sig_cseq_ST_st7_fsm_6 );
    sensitive << ( tmp_9_fu_256_p1 );

    SC_METHOD(thread_debug_out_ap_vld);
    sensitive << ( ap_sig_cseq_ST_st7_fsm_6 );
    sensitive << ( tmp_9_fu_256_p1 );

    SC_METHOD(thread_exitcond_fu_147_p2);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( first_2_reg_99 );

    SC_METHOD(thread_first_1_fu_219_p3);
    sensitive << ( first_2_cast1_reg_272 );
    sensitive << ( first_reg_87 );
    sensitive << ( or_cond_fu_213_p2 );

    SC_METHOD(thread_first_2_cast1_fu_142_p1);
    sensitive << ( first_2_reg_99 );

    SC_METHOD(thread_i_fu_153_p2);
    sensitive << ( first_2_reg_99 );

    SC_METHOD(thread_or_cond_fu_213_p2);
    sensitive << ( tmp_7_fu_202_p2 );
    sensitive << ( tmp_8_fu_208_p2 );

    SC_METHOD(thread_out_address0);
    sensitive << ( first_2_cast1_reg_272 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( ap_sig_cseq_ST_st5_fsm_4 );
    sensitive << ( sum_i_cast_fu_235_p1 );

    SC_METHOD(thread_out_ce0);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( ap_sig_cseq_ST_st5_fsm_4 );

    SC_METHOD(thread_out_d0);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( tmp_6_fu_195_p2 );

    SC_METHOD(thread_out_we0);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( exitcond_fu_147_p2 );
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( tmp_fu_174_p2 );

    SC_METHOD(thread_p_rec_i_fu_240_p2);
    sensitive << ( p_0_rec_i_reg_121 );

    SC_METHOD(thread_powers10_address0);
    sensitive << ( first_2_cast1_fu_142_p1 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_powers10_ce0);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_powers10_load_cast2_fu_163_p1);
    sensitive << ( powers10_q0 );

    SC_METHOD(thread_powers10_load_cast_fu_167_p1);
    sensitive << ( powers10_load_cast2_fu_163_p1 );

    SC_METHOD(thread_sum_i_cast_fu_235_p1);
    sensitive << ( sum_i_fu_230_p2 );

    SC_METHOD(thread_sum_i_fu_230_p2);
    sensitive << ( tmp_4_reg_292 );
    sensitive << ( tmp_5_fu_226_p1 );

    SC_METHOD(thread_tmp_4_fu_159_p1);
    sensitive << ( first_reg_87 );

    SC_METHOD(thread_tmp_5_fu_226_p1);
    sensitive << ( p_0_rec_i_reg_121 );

    SC_METHOD(thread_tmp_6_fu_195_p2);
    sensitive << ( x_reg_110 );

    SC_METHOD(thread_tmp_7_fu_202_p2);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( tmp_fu_174_p2 );
    sensitive << ( x_reg_110 );

    SC_METHOD(thread_tmp_8_fu_208_p2);
    sensitive << ( first_2_cast1_reg_272 );
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( tmp_fu_174_p2 );
    sensitive << ( first_reg_87 );

    SC_METHOD(thread_tmp_9_fu_256_p1);
    sensitive << ( debug_ready );

    SC_METHOD(thread_tmp_fu_174_p2);
    sensitive << ( powers10_load_cast_reg_297 );
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( v_fu_34 );

    SC_METHOD(thread_tmp_i_fu_246_p2);
    sensitive << ( out_q0 );
    sensitive << ( ap_sig_cseq_ST_st6_fsm_5 );

    SC_METHOD(thread_v_1_fu_133_p1);
    sensitive << ( val_r );

    SC_METHOD(thread_v_2_fu_185_p2);
    sensitive << ( powers10_load_cast_reg_297 );
    sensitive << ( v_fu_34 );

    SC_METHOD(thread_x_1_fu_179_p2);
    sensitive << ( x_reg_110 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond_fu_147_p2 );
    sensitive << ( tmp_fu_174_p2 );
    sensitive << ( tmp_9_fu_256_p1 );
    sensitive << ( tmp_i_fu_246_p2 );

    ap_CS_fsm = "0000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "xillybus_wrapper_xilly_decprint_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, val_r, "(port)val_r");
    sc_trace(mVcdFile, debug_ready, "(port)debug_ready");
    sc_trace(mVcdFile, debug_out, "(port)debug_out");
    sc_trace(mVcdFile, debug_out_ap_vld, "(port)debug_out_ap_vld");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm_0, "ap_sig_cseq_ST_st1_fsm_0");
    sc_trace(mVcdFile, ap_sig_bdd_25, "ap_sig_bdd_25");
    sc_trace(mVcdFile, powers10_address0, "powers10_address0");
    sc_trace(mVcdFile, powers10_ce0, "powers10_ce0");
    sc_trace(mVcdFile, powers10_q0, "powers10_q0");
    sc_trace(mVcdFile, first_2_cast1_fu_142_p1, "first_2_cast1_fu_142_p1");
    sc_trace(mVcdFile, first_2_cast1_reg_272, "first_2_cast1_reg_272");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st2_fsm_1, "ap_sig_cseq_ST_st2_fsm_1");
    sc_trace(mVcdFile, ap_sig_bdd_48, "ap_sig_bdd_48");
    sc_trace(mVcdFile, i_fu_153_p2, "i_fu_153_p2");
    sc_trace(mVcdFile, i_reg_282, "i_reg_282");
    sc_trace(mVcdFile, exitcond_fu_147_p2, "exitcond_fu_147_p2");
    sc_trace(mVcdFile, tmp_4_fu_159_p1, "tmp_4_fu_159_p1");
    sc_trace(mVcdFile, tmp_4_reg_292, "tmp_4_reg_292");
    sc_trace(mVcdFile, powers10_load_cast_fu_167_p1, "powers10_load_cast_fu_167_p1");
    sc_trace(mVcdFile, powers10_load_cast_reg_297, "powers10_load_cast_reg_297");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st3_fsm_2, "ap_sig_cseq_ST_st3_fsm_2");
    sc_trace(mVcdFile, ap_sig_bdd_69, "ap_sig_bdd_69");
    sc_trace(mVcdFile, x_1_fu_179_p2, "x_1_fu_179_p2");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st4_fsm_3, "ap_sig_cseq_ST_st4_fsm_3");
    sc_trace(mVcdFile, ap_sig_bdd_78, "ap_sig_bdd_78");
    sc_trace(mVcdFile, first_1_fu_219_p3, "first_1_fu_219_p3");
    sc_trace(mVcdFile, tmp_fu_174_p2, "tmp_fu_174_p2");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st5_fsm_4, "ap_sig_cseq_ST_st5_fsm_4");
    sc_trace(mVcdFile, ap_sig_bdd_93, "ap_sig_bdd_93");
    sc_trace(mVcdFile, p_rec_i_fu_240_p2, "p_rec_i_fu_240_p2");
    sc_trace(mVcdFile, p_rec_i_reg_321, "p_rec_i_reg_321");
    sc_trace(mVcdFile, out_q0, "out_q0");
    sc_trace(mVcdFile, out_load_reg_326, "out_load_reg_326");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st6_fsm_5, "ap_sig_cseq_ST_st6_fsm_5");
    sc_trace(mVcdFile, ap_sig_bdd_104, "ap_sig_bdd_104");
    sc_trace(mVcdFile, out_address0, "out_address0");
    sc_trace(mVcdFile, out_ce0, "out_ce0");
    sc_trace(mVcdFile, out_we0, "out_we0");
    sc_trace(mVcdFile, out_d0, "out_d0");
    sc_trace(mVcdFile, first_reg_87, "first_reg_87");
    sc_trace(mVcdFile, first_2_reg_99, "first_2_reg_99");
    sc_trace(mVcdFile, x_reg_110, "x_reg_110");
    sc_trace(mVcdFile, p_0_rec_i_reg_121, "p_0_rec_i_reg_121");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st7_fsm_6, "ap_sig_cseq_ST_st7_fsm_6");
    sc_trace(mVcdFile, ap_sig_bdd_135, "ap_sig_bdd_135");
    sc_trace(mVcdFile, tmp_9_fu_256_p1, "tmp_9_fu_256_p1");
    sc_trace(mVcdFile, sum_i_cast_fu_235_p1, "sum_i_cast_fu_235_p1");
    sc_trace(mVcdFile, v_fu_34, "v_fu_34");
    sc_trace(mVcdFile, v_1_fu_133_p1, "v_1_fu_133_p1");
    sc_trace(mVcdFile, v_2_fu_185_p2, "v_2_fu_185_p2");
    sc_trace(mVcdFile, tmp_6_fu_195_p2, "tmp_6_fu_195_p2");
    sc_trace(mVcdFile, powers10_load_cast2_fu_163_p1, "powers10_load_cast2_fu_163_p1");
    sc_trace(mVcdFile, tmp_7_fu_202_p2, "tmp_7_fu_202_p2");
    sc_trace(mVcdFile, tmp_8_fu_208_p2, "tmp_8_fu_208_p2");
    sc_trace(mVcdFile, or_cond_fu_213_p2, "or_cond_fu_213_p2");
    sc_trace(mVcdFile, tmp_5_fu_226_p1, "tmp_5_fu_226_p1");
    sc_trace(mVcdFile, sum_i_fu_230_p2, "sum_i_fu_230_p2");
    sc_trace(mVcdFile, tmp_i_fu_246_p2, "tmp_i_fu_246_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

xillybus_wrapper_xilly_decprint::~xillybus_wrapper_xilly_decprint() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete powers10_U;
    delete out_U;
}

void xillybus_wrapper_xilly_decprint::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_fu_174_p2.read()))) {
        first_2_reg_99 = i_reg_282.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        first_2_reg_99 = ap_const_lv4_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_fu_174_p2.read()))) {
        first_reg_87 = first_1_fu_219_p3.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        first_reg_87 = ap_const_lv32_9;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st7_fsm_6.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_9_fu_256_p1.read()))) {
        p_0_rec_i_reg_121 = p_rec_i_reg_321.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
                !esl_seteq<1,1,1>(exitcond_fu_147_p2.read(), ap_const_lv1_0))) {
        p_0_rec_i_reg_121 = ap_const_lv32_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_fu_174_p2.read()))) {
        v_fu_34 = v_2_fu_185_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        v_fu_34 = v_1_fu_133_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read())) {
        x_reg_110 = ap_const_lv8_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, tmp_fu_174_p2.read()))) {
        x_reg_110 = x_1_fu_179_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        first_2_cast1_reg_272 = first_2_cast1_fu_142_p1.read();
        i_reg_282 = i_fu_153_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st6_fsm_5.read())) {
        out_load_reg_326 = out_q0.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_4.read())) {
        p_rec_i_reg_321 = p_rec_i_fu_240_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read())) {
        powers10_load_cast_reg_297 = powers10_load_cast_fu_167_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && !esl_seteq<1,1,1>(exitcond_fu_147_p2.read(), ap_const_lv1_0))) {
        tmp_4_reg_292 = tmp_4_fu_159_p1.read();
    }
}

void xillybus_wrapper_xilly_decprint::thread_ap_done() {
    if (((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st6_fsm_5.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_i_fu_246_p2.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void xillybus_wrapper_xilly_decprint::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void xillybus_wrapper_xilly_decprint::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st6_fsm_5.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_i_fu_246_p2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void xillybus_wrapper_xilly_decprint::thread_ap_sig_bdd_104() {
    ap_sig_bdd_104 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(5, 5));
}

void xillybus_wrapper_xilly_decprint::thread_ap_sig_bdd_135() {
    ap_sig_bdd_135 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(6, 6));
}

void xillybus_wrapper_xilly_decprint::thread_ap_sig_bdd_25() {
    ap_sig_bdd_25 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void xillybus_wrapper_xilly_decprint::thread_ap_sig_bdd_48() {
    ap_sig_bdd_48 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void xillybus_wrapper_xilly_decprint::thread_ap_sig_bdd_69() {
    ap_sig_bdd_69 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(2, 2));
}

void xillybus_wrapper_xilly_decprint::thread_ap_sig_bdd_78() {
    ap_sig_bdd_78 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(3, 3));
}

void xillybus_wrapper_xilly_decprint::thread_ap_sig_bdd_93() {
    ap_sig_bdd_93 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(4, 4));
}

void xillybus_wrapper_xilly_decprint::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_bdd_25.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void xillybus_wrapper_xilly_decprint::thread_ap_sig_cseq_ST_st2_fsm_1() {
    if (ap_sig_bdd_48.read()) {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    }
}

void xillybus_wrapper_xilly_decprint::thread_ap_sig_cseq_ST_st3_fsm_2() {
    if (ap_sig_bdd_69.read()) {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    }
}

void xillybus_wrapper_xilly_decprint::thread_ap_sig_cseq_ST_st4_fsm_3() {
    if (ap_sig_bdd_78.read()) {
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_0;
    }
}

void xillybus_wrapper_xilly_decprint::thread_ap_sig_cseq_ST_st5_fsm_4() {
    if (ap_sig_bdd_93.read()) {
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_0;
    }
}

void xillybus_wrapper_xilly_decprint::thread_ap_sig_cseq_ST_st6_fsm_5() {
    if (ap_sig_bdd_104.read()) {
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_0;
    }
}

void xillybus_wrapper_xilly_decprint::thread_ap_sig_cseq_ST_st7_fsm_6() {
    if (ap_sig_bdd_135.read()) {
        ap_sig_cseq_ST_st7_fsm_6 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st7_fsm_6 = ap_const_logic_0;
    }
}

void xillybus_wrapper_xilly_decprint::thread_debug_out() {
    debug_out = out_load_reg_326.read();
}

void xillybus_wrapper_xilly_decprint::thread_debug_out_ap_vld() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st7_fsm_6.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_9_fu_256_p1.read()))) {
        debug_out_ap_vld = ap_const_logic_1;
    } else {
        debug_out_ap_vld = ap_const_logic_0;
    }
}

void xillybus_wrapper_xilly_decprint::thread_exitcond_fu_147_p2() {
    exitcond_fu_147_p2 = (!first_2_reg_99.read().is_01() || !ap_const_lv4_A.is_01())? sc_lv<1>(): sc_lv<1>(first_2_reg_99.read() == ap_const_lv4_A);
}

void xillybus_wrapper_xilly_decprint::thread_first_1_fu_219_p3() {
    first_1_fu_219_p3 = (!or_cond_fu_213_p2.read()[0].is_01())? sc_lv<32>(): ((or_cond_fu_213_p2.read()[0].to_bool())? first_2_cast1_reg_272.read(): first_reg_87.read());
}

void xillybus_wrapper_xilly_decprint::thread_first_2_cast1_fu_142_p1() {
    first_2_cast1_fu_142_p1 = esl_zext<32,4>(first_2_reg_99.read());
}

void xillybus_wrapper_xilly_decprint::thread_i_fu_153_p2() {
    i_fu_153_p2 = (!first_2_reg_99.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(first_2_reg_99.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void xillybus_wrapper_xilly_decprint::thread_or_cond_fu_213_p2() {
    or_cond_fu_213_p2 = (tmp_7_fu_202_p2.read() & tmp_8_fu_208_p2.read());
}

void xillybus_wrapper_xilly_decprint::thread_out_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read())) {
        out_address0 =  (sc_lv<4>) (first_2_cast1_reg_272.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        out_address0 =  (sc_lv<4>) (ap_const_lv32_A);
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_4.read())) {
        out_address0 =  (sc_lv<4>) (sum_i_cast_fu_235_p1.read());
    } else {
        out_address0 = "XXXX";
    }
}

void xillybus_wrapper_xilly_decprint::thread_out_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_4.read()))) {
        out_ce0 = ap_const_logic_1;
    } else {
        out_ce0 = ap_const_logic_0;
    }
}

void xillybus_wrapper_xilly_decprint::thread_out_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read())) {
        out_d0 = tmp_6_fu_195_p2.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        out_d0 = ap_const_lv8_0;
    } else {
        out_d0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void xillybus_wrapper_xilly_decprint::thread_out_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
          !esl_seteq<1,1,1>(exitcond_fu_147_p2.read(), ap_const_lv1_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_fu_174_p2.read())))) {
        out_we0 = ap_const_logic_1;
    } else {
        out_we0 = ap_const_logic_0;
    }
}

void xillybus_wrapper_xilly_decprint::thread_p_rec_i_fu_240_p2() {
    p_rec_i_fu_240_p2 = (!p_0_rec_i_reg_121.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_biguint<32>(p_0_rec_i_reg_121.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void xillybus_wrapper_xilly_decprint::thread_powers10_address0() {
    powers10_address0 =  (sc_lv<4>) (first_2_cast1_fu_142_p1.read());
}

void xillybus_wrapper_xilly_decprint::thread_powers10_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        powers10_ce0 = ap_const_logic_1;
    } else {
        powers10_ce0 = ap_const_logic_0;
    }
}

void xillybus_wrapper_xilly_decprint::thread_powers10_load_cast2_fu_163_p1() {
    powers10_load_cast2_fu_163_p1 = esl_sext<30,28>(powers10_q0.read());
}

void xillybus_wrapper_xilly_decprint::thread_powers10_load_cast_fu_167_p1() {
    powers10_load_cast_fu_167_p1 = esl_zext<32,30>(powers10_load_cast2_fu_163_p1.read());
}

void xillybus_wrapper_xilly_decprint::thread_sum_i_cast_fu_235_p1() {
    sum_i_cast_fu_235_p1 = esl_zext<32,5>(sum_i_fu_230_p2.read());
}

void xillybus_wrapper_xilly_decprint::thread_sum_i_fu_230_p2() {
    sum_i_fu_230_p2 = (!tmp_5_fu_226_p1.read().is_01() || !tmp_4_reg_292.read().is_01())? sc_lv<5>(): (sc_biguint<5>(tmp_5_fu_226_p1.read()) + sc_biguint<5>(tmp_4_reg_292.read()));
}

void xillybus_wrapper_xilly_decprint::thread_tmp_4_fu_159_p1() {
    tmp_4_fu_159_p1 = first_reg_87.read().range(5-1, 0);
}

void xillybus_wrapper_xilly_decprint::thread_tmp_5_fu_226_p1() {
    tmp_5_fu_226_p1 = p_0_rec_i_reg_121.read().range(5-1, 0);
}

void xillybus_wrapper_xilly_decprint::thread_tmp_6_fu_195_p2() {
    tmp_6_fu_195_p2 = (x_reg_110.read() | ap_const_lv8_30);
}

void xillybus_wrapper_xilly_decprint::thread_tmp_7_fu_202_p2() {
    tmp_7_fu_202_p2 = (!x_reg_110.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(x_reg_110.read() != ap_const_lv8_0);
}

void xillybus_wrapper_xilly_decprint::thread_tmp_8_fu_208_p2() {
    tmp_8_fu_208_p2 = (!first_reg_87.read().is_01() || !first_2_cast1_reg_272.read().is_01())? sc_lv<1>(): (sc_bigint<32>(first_reg_87.read()) > sc_bigint<32>(first_2_cast1_reg_272.read()));
}

void xillybus_wrapper_xilly_decprint::thread_tmp_9_fu_256_p1() {
    tmp_9_fu_256_p1 = debug_ready.read().range(1-1, 0);
}

void xillybus_wrapper_xilly_decprint::thread_tmp_fu_174_p2() {
    tmp_fu_174_p2 = (!v_fu_34.read().is_01() || !powers10_load_cast_reg_297.read().is_01())? sc_lv<1>(): (sc_biguint<32>(v_fu_34.read()) < sc_biguint<32>(powers10_load_cast_reg_297.read()));
}

void xillybus_wrapper_xilly_decprint::thread_tmp_i_fu_246_p2() {
    tmp_i_fu_246_p2 = (!out_q0.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(out_q0.read() == ap_const_lv8_0);
}

void xillybus_wrapper_xilly_decprint::thread_v_1_fu_133_p1() {
    v_1_fu_133_p1 = esl_zext<32,8>(val_r.read());
}

void xillybus_wrapper_xilly_decprint::thread_v_2_fu_185_p2() {
    v_2_fu_185_p2 = (!v_fu_34.read().is_01() || !powers10_load_cast_reg_297.read().is_01())? sc_lv<32>(): (sc_biguint<32>(v_fu_34.read()) - sc_biguint<32>(powers10_load_cast_reg_297.read()));
}

void xillybus_wrapper_xilly_decprint::thread_x_1_fu_179_p2() {
    x_1_fu_179_p2 = (!x_reg_110.read().is_01() || !ap_const_lv8_1.is_01())? sc_lv<8>(): (sc_biguint<8>(x_reg_110.read()) + sc_biguint<8>(ap_const_lv8_1));
}

void xillybus_wrapper_xilly_decprint::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 2 : 
            if (!esl_seteq<1,1,1>(exitcond_fu_147_p2.read(), ap_const_lv1_0)) {
                ap_NS_fsm = ap_ST_st5_fsm_4;
            } else {
                ap_NS_fsm = ap_ST_st3_fsm_2;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_st4_fsm_3;
            break;
        case 8 : 
            if (!esl_seteq<1,1,1>(ap_const_lv1_0, tmp_fu_174_p2.read())) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st4_fsm_3;
            }
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_st6_fsm_5;
            break;
        case 32 : 
            if (!esl_seteq<1,1,1>(ap_const_lv1_0, tmp_i_fu_246_p2.read())) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else {
                ap_NS_fsm = ap_ST_st7_fsm_6;
            }
            break;
        case 64 : 
            if (!esl_seteq<1,1,1>(ap_const_lv1_0, tmp_9_fu_256_p1.read())) {
                ap_NS_fsm = ap_ST_st5_fsm_4;
            } else {
                ap_NS_fsm = ap_ST_st7_fsm_6;
            }
            break;
        default : 
            ap_NS_fsm =  (sc_lv<7>) ("XXXXXXX");
            break;
    }
}

}
