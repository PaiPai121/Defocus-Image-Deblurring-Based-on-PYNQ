// ==============================================================
// File generated on Sat Aug 01 17:20:52 +0800 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __WienerDeblur_dexpg8j__HH__
#define __WienerDeblur_dexpg8j__HH__
#include "ACMP_dexp.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(WienerDeblur_dexpg8j) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_dexp<ID, 18, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_dexp_U;

    SC_CTOR(WienerDeblur_dexpg8j):  ACMP_dexp_U ("ACMP_dexp_U") {
        ACMP_dexp_U.clk(clk);
        ACMP_dexp_U.reset(reset);
        ACMP_dexp_U.ce(ce);
        ACMP_dexp_U.din0(din0);
        ACMP_dexp_U.din1(din1);
        ACMP_dexp_U.dout(dout);

    }

};

#endif //
