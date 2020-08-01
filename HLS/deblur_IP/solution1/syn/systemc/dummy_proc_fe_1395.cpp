// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "dummy_proc_fe_1395.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic dummy_proc_fe_1395::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic dummy_proc_fe_1395::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<2> dummy_proc_fe_1395::ap_ST_fsm_state1 = "1";
const sc_lv<2> dummy_proc_fe_1395::ap_ST_fsm_state2 = "10";
const sc_lv<32> dummy_proc_fe_1395::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> dummy_proc_fe_1395::ap_const_lv32_1 = "1";
const sc_lv<1> dummy_proc_fe_1395::ap_const_lv1_0 = "0";
const sc_lv<9> dummy_proc_fe_1395::ap_const_lv9_0 = "000000000";
const sc_lv<8> dummy_proc_fe_1395::ap_const_lv8_AB = "10101011";
const sc_lv<16> dummy_proc_fe_1395::ap_const_lv16_0 = "0000000000000000";
const sc_lv<32> dummy_proc_fe_1395::ap_const_lv32_8 = "1000";
const sc_lv<9> dummy_proc_fe_1395::ap_const_lv9_100 = "100000000";
const sc_lv<9> dummy_proc_fe_1395::ap_const_lv9_1 = "1";
const sc_lv<1> dummy_proc_fe_1395::ap_const_lv1_1 = "1";
const bool dummy_proc_fe_1395::ap_const_boolean_1 = true;

dummy_proc_fe_1395::dummy_proc_fe_1395(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_state2);
    sensitive << ( in_r_empty_n );
    sensitive << ( xn1_full_n );
    sensitive << ( exitcond_fu_93_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( in_r_empty_n );
    sensitive << ( xn1_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond_fu_93_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( in_r_empty_n );
    sensitive << ( xn1_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond_fu_93_p2 );

    SC_METHOD(thread_ap_return);
    sensitive << ( in_r_empty_n );
    sensitive << ( xn1_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond_fu_93_p2 );
    sensitive << ( p_Result_s_reg_105 );

    SC_METHOD(thread_exitcond_fu_93_p2);
    sensitive << ( in_r_empty_n );
    sensitive << ( xn1_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond_fu_93_p2 );
    sensitive << ( i_reg_62 );

    SC_METHOD(thread_i_2_fu_99_p2);
    sensitive << ( i_reg_62 );

    SC_METHOD(thread_in_r_blk_n);
    sensitive << ( in_r_empty_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond_fu_93_p2 );

    SC_METHOD(thread_in_r_read);
    sensitive << ( in_r_empty_n );
    sensitive << ( xn1_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond_fu_93_p2 );

    SC_METHOD(thread_p_Result_s_fu_81_p5);
    sensitive << ( tmp_s_fu_73_p3 );

    SC_METHOD(thread_tmp_s_fu_73_p3);
    sensitive << ( direction );

    SC_METHOD(thread_xn1_blk_n);
    sensitive << ( xn1_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond_fu_93_p2 );

    SC_METHOD(thread_xn1_din);
    sensitive << ( in_r_dout );
    sensitive << ( in_r_empty_n );
    sensitive << ( xn1_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond_fu_93_p2 );

    SC_METHOD(thread_xn1_write);
    sensitive << ( in_r_empty_n );
    sensitive << ( xn1_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond_fu_93_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( in_r_empty_n );
    sensitive << ( xn1_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond_fu_93_p2 );

    ap_CS_fsm = "01";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "dummy_proc_fe_1395_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, direction, "(port)direction");
    sc_trace(mVcdFile, in_r_dout, "(port)in_r_dout");
    sc_trace(mVcdFile, in_r_empty_n, "(port)in_r_empty_n");
    sc_trace(mVcdFile, in_r_read, "(port)in_r_read");
    sc_trace(mVcdFile, xn1_din, "(port)xn1_din");
    sc_trace(mVcdFile, xn1_full_n, "(port)xn1_full_n");
    sc_trace(mVcdFile, xn1_write, "(port)xn1_write");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, in_r_blk_n, "in_r_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, exitcond_fu_93_p2, "exitcond_fu_93_p2");
    sc_trace(mVcdFile, xn1_blk_n, "xn1_blk_n");
    sc_trace(mVcdFile, p_Result_s_fu_81_p5, "p_Result_s_fu_81_p5");
    sc_trace(mVcdFile, p_Result_s_reg_105, "p_Result_s_reg_105");
    sc_trace(mVcdFile, i_2_fu_99_p2, "i_2_fu_99_p2");
    sc_trace(mVcdFile, ap_block_state2, "ap_block_state2");
    sc_trace(mVcdFile, i_reg_62, "i_reg_62");
    sc_trace(mVcdFile, tmp_s_fu_73_p3, "tmp_s_fu_73_p3");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

dummy_proc_fe_1395::~dummy_proc_fe_1395() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void dummy_proc_fe_1395::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_93_p2.read(), ap_const_lv1_0) && 
         !((esl_seteq<1,1,1>(exitcond_fu_93_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, in_r_empty_n.read())) || (esl_seteq<1,1,1>(exitcond_fu_93_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, xn1_full_n.read()))))) {
        i_reg_62 = i_2_fu_99_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_reg_62 = ap_const_lv9_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        p_Result_s_reg_105 = p_Result_s_fu_81_p5.read();
    }
}

void dummy_proc_fe_1395::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void dummy_proc_fe_1395::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void dummy_proc_fe_1395::thread_ap_block_state2() {
    ap_block_state2 = ((esl_seteq<1,1,1>(exitcond_fu_93_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, in_r_empty_n.read())) || (esl_seteq<1,1,1>(exitcond_fu_93_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, xn1_full_n.read())));
}

void dummy_proc_fe_1395::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          !((esl_seteq<1,1,1>(exitcond_fu_93_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, in_r_empty_n.read())) || (esl_seteq<1,1,1>(exitcond_fu_93_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, xn1_full_n.read()))) && 
          esl_seteq<1,1,1>(exitcond_fu_93_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void dummy_proc_fe_1395::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void dummy_proc_fe_1395::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         !((esl_seteq<1,1,1>(exitcond_fu_93_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, in_r_empty_n.read())) || (esl_seteq<1,1,1>(exitcond_fu_93_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, xn1_full_n.read()))) && 
         esl_seteq<1,1,1>(exitcond_fu_93_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void dummy_proc_fe_1395::thread_ap_return() {
    ap_return = p_Result_s_reg_105.read();
}

void dummy_proc_fe_1395::thread_exitcond_fu_93_p2() {
    exitcond_fu_93_p2 = (!i_reg_62.read().is_01() || !ap_const_lv9_100.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_62.read() == ap_const_lv9_100);
}

void dummy_proc_fe_1395::thread_i_2_fu_99_p2() {
    i_2_fu_99_p2 = (!i_reg_62.read().is_01() || !ap_const_lv9_1.is_01())? sc_lv<9>(): (sc_biguint<9>(i_reg_62.read()) + sc_biguint<9>(ap_const_lv9_1));
}

void dummy_proc_fe_1395::thread_in_r_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_93_p2.read(), ap_const_lv1_0))) {
        in_r_blk_n = in_r_empty_n.read();
    } else {
        in_r_blk_n = ap_const_logic_1;
    }
}

void dummy_proc_fe_1395::thread_in_r_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_93_p2.read(), ap_const_lv1_0) && 
         !((esl_seteq<1,1,1>(exitcond_fu_93_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, in_r_empty_n.read())) || (esl_seteq<1,1,1>(exitcond_fu_93_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, xn1_full_n.read()))))) {
        in_r_read = ap_const_logic_1;
    } else {
        in_r_read = ap_const_logic_0;
    }
}

void dummy_proc_fe_1395::thread_p_Result_s_fu_81_p5() {
    p_Result_s_fu_81_p5 = esl_partset<16,16,9,32,32>(ap_const_lv16_0, tmp_s_fu_73_p3.read(), ap_const_lv32_0, ap_const_lv32_8);
}

void dummy_proc_fe_1395::thread_tmp_s_fu_73_p3() {
    tmp_s_fu_73_p3 = esl_concat<8,1>(ap_const_lv8_AB, direction.read());
}

void dummy_proc_fe_1395::thread_xn1_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_93_p2.read(), ap_const_lv1_0))) {
        xn1_blk_n = xn1_full_n.read();
    } else {
        xn1_blk_n = ap_const_logic_1;
    }
}

void dummy_proc_fe_1395::thread_xn1_din() {
    xn1_din = in_r_dout.read();
}

void dummy_proc_fe_1395::thread_xn1_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_93_p2.read(), ap_const_lv1_0) && 
         !((esl_seteq<1,1,1>(exitcond_fu_93_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, in_r_empty_n.read())) || (esl_seteq<1,1,1>(exitcond_fu_93_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, xn1_full_n.read()))))) {
        xn1_write = ap_const_logic_1;
    } else {
        xn1_write = ap_const_logic_0;
    }
}

void dummy_proc_fe_1395::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && !((esl_seteq<1,1,1>(exitcond_fu_93_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, in_r_empty_n.read())) || (esl_seteq<1,1,1>(exitcond_fu_93_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, xn1_full_n.read()))) && esl_seteq<1,1,1>(exitcond_fu_93_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond_fu_93_p2.read(), ap_const_lv1_0) && !((esl_seteq<1,1,1>(exitcond_fu_93_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, in_r_empty_n.read())) || (esl_seteq<1,1,1>(exitcond_fu_93_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, xn1_full_n.read()))))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        default : 
            ap_NS_fsm = "XX";
            break;
    }
}

}
