#include "pow_generic_double_s.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void pow_generic_double_s::thread_Z3_V_fu_1856_p4() {
    Z3_V_fu_1856_p4 = ret_V_18_fu_1830_p2.read().range(42, 35);
}

void pow_generic_double_s::thread_Z4_V_fu_1866_p1() {
    Z4_V_fu_1866_p1 = ret_V_18_fu_1830_p2.read().range(35-1, 0);
}

void pow_generic_double_s::thread_Z4_ind_V_fu_1870_p4() {
    Z4_ind_V_fu_1870_p4 = ret_V_18_fu_1830_p2.read().range(34, 27);
}

void pow_generic_double_s::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[0];
}

void pow_generic_double_s::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()));
}

void pow_generic_double_s::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()));
}

void pow_generic_double_s::thread_ap_block_state10_pp0_stage0_iter9() {
    ap_block_state10_pp0_stage0_iter9 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state11_pp0_stage0_iter10() {
    ap_block_state11_pp0_stage0_iter10 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state12_pp0_stage0_iter11() {
    ap_block_state12_pp0_stage0_iter11 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state13_pp0_stage0_iter12() {
    ap_block_state13_pp0_stage0_iter12 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state14_pp0_stage0_iter13() {
    ap_block_state14_pp0_stage0_iter13 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state15_pp0_stage0_iter14() {
    ap_block_state15_pp0_stage0_iter14 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state16_pp0_stage0_iter15() {
    ap_block_state16_pp0_stage0_iter15 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state17_pp0_stage0_iter16() {
    ap_block_state17_pp0_stage0_iter16 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state18_pp0_stage0_iter17() {
    ap_block_state18_pp0_stage0_iter17 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state19_pp0_stage0_iter18() {
    ap_block_state19_pp0_stage0_iter18 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state1_pp0_stage0_iter0() {
    ap_block_state1_pp0_stage0_iter0 = esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read());
}

void pow_generic_double_s::thread_ap_block_state20_pp0_stage0_iter19() {
    ap_block_state20_pp0_stage0_iter19 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state21_pp0_stage0_iter20() {
    ap_block_state21_pp0_stage0_iter20 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state22_pp0_stage0_iter21() {
    ap_block_state22_pp0_stage0_iter21 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state23_pp0_stage0_iter22() {
    ap_block_state23_pp0_stage0_iter22 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state24_pp0_stage0_iter23() {
    ap_block_state24_pp0_stage0_iter23 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state25_pp0_stage0_iter24() {
    ap_block_state25_pp0_stage0_iter24 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state26_pp0_stage0_iter25() {
    ap_block_state26_pp0_stage0_iter25 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state27_pp0_stage0_iter26() {
    ap_block_state27_pp0_stage0_iter26 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state28_pp0_stage0_iter27() {
    ap_block_state28_pp0_stage0_iter27 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state29_pp0_stage0_iter28() {
    ap_block_state29_pp0_stage0_iter28 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state2_pp0_stage0_iter1() {
    ap_block_state2_pp0_stage0_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state30_pp0_stage0_iter29() {
    ap_block_state30_pp0_stage0_iter29 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state31_pp0_stage0_iter30() {
    ap_block_state31_pp0_stage0_iter30 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state32_pp0_stage0_iter31() {
    ap_block_state32_pp0_stage0_iter31 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state33_pp0_stage0_iter32() {
    ap_block_state33_pp0_stage0_iter32 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state34_pp0_stage0_iter33() {
    ap_block_state34_pp0_stage0_iter33 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state35_pp0_stage0_iter34() {
    ap_block_state35_pp0_stage0_iter34 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state36_pp0_stage0_iter35() {
    ap_block_state36_pp0_stage0_iter35 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state37_pp0_stage0_iter36() {
    ap_block_state37_pp0_stage0_iter36 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state38_pp0_stage0_iter37() {
    ap_block_state38_pp0_stage0_iter37 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state39_pp0_stage0_iter38() {
    ap_block_state39_pp0_stage0_iter38 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state3_pp0_stage0_iter2() {
    ap_block_state3_pp0_stage0_iter2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state40_pp0_stage0_iter39() {
    ap_block_state40_pp0_stage0_iter39 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state41_pp0_stage0_iter40() {
    ap_block_state41_pp0_stage0_iter40 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state42_pp0_stage0_iter41() {
    ap_block_state42_pp0_stage0_iter41 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state43_pp0_stage0_iter42() {
    ap_block_state43_pp0_stage0_iter42 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state44_pp0_stage0_iter43() {
    ap_block_state44_pp0_stage0_iter43 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state45_pp0_stage0_iter44() {
    ap_block_state45_pp0_stage0_iter44 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state46_pp0_stage0_iter45() {
    ap_block_state46_pp0_stage0_iter45 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state47_pp0_stage0_iter46() {
    ap_block_state47_pp0_stage0_iter46 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state48_pp0_stage0_iter47() {
    ap_block_state48_pp0_stage0_iter47 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state49_pp0_stage0_iter48() {
    ap_block_state49_pp0_stage0_iter48 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state4_pp0_stage0_iter3() {
    ap_block_state4_pp0_stage0_iter3 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state50_pp0_stage0_iter49() {
    ap_block_state50_pp0_stage0_iter49 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state51_pp0_stage0_iter50() {
    ap_block_state51_pp0_stage0_iter50 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state52_pp0_stage0_iter51() {
    ap_block_state52_pp0_stage0_iter51 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state53_pp0_stage0_iter52() {
    ap_block_state53_pp0_stage0_iter52 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state54_pp0_stage0_iter53() {
    ap_block_state54_pp0_stage0_iter53 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state55_pp0_stage0_iter54() {
    ap_block_state55_pp0_stage0_iter54 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state56_pp0_stage0_iter55() {
    ap_block_state56_pp0_stage0_iter55 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state57_pp0_stage0_iter56() {
    ap_block_state57_pp0_stage0_iter56 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state58_pp0_stage0_iter57() {
    ap_block_state58_pp0_stage0_iter57 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state59_pp0_stage0_iter58() {
    ap_block_state59_pp0_stage0_iter58 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state5_pp0_stage0_iter4() {
    ap_block_state5_pp0_stage0_iter4 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state60_pp0_stage0_iter59() {
    ap_block_state60_pp0_stage0_iter59 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state61_pp0_stage0_iter60() {
    ap_block_state61_pp0_stage0_iter60 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state62_pp0_stage0_iter61() {
    ap_block_state62_pp0_stage0_iter61 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state63_pp0_stage0_iter62() {
    ap_block_state63_pp0_stage0_iter62 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state64_pp0_stage0_iter63() {
    ap_block_state64_pp0_stage0_iter63 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state65_pp0_stage0_iter64() {
    ap_block_state65_pp0_stage0_iter64 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state66_pp0_stage0_iter65() {
    ap_block_state66_pp0_stage0_iter65 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state67_pp0_stage0_iter66() {
    ap_block_state67_pp0_stage0_iter66 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state6_pp0_stage0_iter5() {
    ap_block_state6_pp0_stage0_iter5 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state7_pp0_stage0_iter6() {
    ap_block_state7_pp0_stage0_iter6 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state8_pp0_stage0_iter7() {
    ap_block_state8_pp0_stage0_iter7 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_block_state9_pp0_stage0_iter8() {
    ap_block_state9_pp0_stage0_iter8 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void pow_generic_double_s::thread_ap_condition_1779() {
    ap_condition_1779 = (esl_seteq<1,1,1>(x_is_p1_reg_2278_pp0_iter64_reg.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_lv1_0, brmerge_reg_2287_pp0_iter64_reg.read()) && esl_seteq<1,1,1>(tmp_7_reg_2291_pp0_iter64_reg.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_lv1_1, tmp_9_reg_2295_pp0_iter64_reg.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, or_cond1_fu_2202_p2.read()));
}

void pow_generic_double_s::thread_ap_condition_2007() {
    ap_condition_2007 = (esl_seteq<1,1,1>(x_is_p1_fu_666_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_lv1_0, brmerge_fu_716_p2.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, tmp_7_fu_736_p2.read()));
}

void pow_generic_double_s::thread_ap_condition_2011() {
    ap_condition_2011 = (esl_seteq<1,1,1>(x_is_p1_fu_666_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_lv1_0, brmerge_fu_716_p2.read()) && esl_seteq<1,1,1>(tmp_7_fu_736_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_lv1_0, tmp_9_fu_750_p2.read()));
}

void pow_generic_double_s::thread_ap_condition_303() {
    ap_condition_303 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()));
}

void pow_generic_double_s::thread_ap_condition_3294() {
    ap_condition_3294 = (esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter66.read()) && esl_seteq<1,1,1>(x_is_p1_reg_2278_pp0_iter65_reg.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_lv1_0, brmerge_reg_2287_pp0_iter65_reg.read()) && esl_seteq<1,1,1>(tmp_7_reg_2291_pp0_iter65_reg.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_lv1_1, tmp_9_reg_2295_pp0_iter65_reg.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, or_cond1_reg_2879.read()));
}

void pow_generic_double_s::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter66.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void pow_generic_double_s::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void pow_generic_double_s::thread_ap_enable_reg_pp0_iter0() {
    ap_enable_reg_pp0_iter0 = ap_start.read();
}

void pow_generic_double_s::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_idle_pp0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void pow_generic_double_s::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter3.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter4.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter5.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter6.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter7.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter8.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter9.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter10.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter11.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter12.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter13.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter14.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter15.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter16.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter17.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter18.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter19.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter20.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter21.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter22.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter23.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter24.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter25.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter26.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter27.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter28.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter29.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter30.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter31.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter32.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter33.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter34.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter35.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter36.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter37.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter38.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter39.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter40.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter41.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter42.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter43.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter44.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter45.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter46.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter47.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter48.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter49.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter50.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter51.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter52.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter53.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter54.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter55.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter56.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter57.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter58.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter59.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter60.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter61.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter62.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter63.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter64.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter65.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter66.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void pow_generic_double_s::thread_ap_idle_pp0_0to65() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter3.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter4.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter5.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter6.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter7.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter8.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter9.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter10.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter11.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter12.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter13.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter14.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter15.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter16.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter17.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter18.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter19.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter20.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter21.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter22.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter23.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter24.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter25.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter26.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter27.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter28.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter29.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter30.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter31.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter32.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter33.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter34.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter35.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter36.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter37.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter38.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter39.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter40.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter41.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter42.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter43.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter44.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter45.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter46.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter47.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter48.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter49.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter50.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter51.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter52.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter53.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter54.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter55.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter56.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter57.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter58.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter59.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter60.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter61.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter62.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter63.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter64.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter65.read()))) {
        ap_idle_pp0_0to65 = ap_const_logic_1;
    } else {
        ap_idle_pp0_0to65 = ap_const_logic_0;
    }
}

void pow_generic_double_s::thread_ap_phi_mux_p_1_in_phi_fu_586_p14() {
    if (esl_seteq<1,1,1>(ap_condition_3294.read(), ap_const_boolean_1)) {
        if (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_37_reg_2883.read())) {
            ap_phi_mux_p_1_in_phi_fu_586_p14 = ap_const_lv64_0;
        } else if (esl_seteq<1,1,1>(ap_const_lv1_0, tmp_37_reg_2883.read())) {
            ap_phi_mux_p_1_in_phi_fu_586_p14 = p_Result_26_fu_2247_p4.read();
        } else {
            ap_phi_mux_p_1_in_phi_fu_586_p14 = ap_phi_reg_pp0_iter66_p_1_in_reg_580.read();
        }
    } else {
        ap_phi_mux_p_1_in_phi_fu_586_p14 = ap_phi_reg_pp0_iter66_p_1_in_reg_580.read();
    }
}

void pow_generic_double_s::thread_ap_phi_reg_pp0_iter0_p_1_in_reg_580() {
    ap_phi_reg_pp0_iter0_p_1_in_reg_580 =  (sc_lv<64>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
}

void pow_generic_double_s::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void pow_generic_double_s::thread_ap_reset_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_idle_pp0_0to65.read()))) {
        ap_reset_idle_pp0 = ap_const_logic_1;
    } else {
        ap_reset_idle_pp0 = ap_const_logic_0;
    }
}

void pow_generic_double_s::thread_ap_return() {
    ap_return = ap_phi_mux_p_1_in_phi_fu_586_p14.read();
}

void pow_generic_double_s::thread_b_exp_1_fu_774_p2() {
    b_exp_1_fu_774_p2 = (!ap_const_lv12_C02.is_01() || !tmp_i_cast_fu_632_p1.read().is_01())? sc_lv<12>(): (sc_bigint<12>(ap_const_lv12_C02) + sc_biguint<12>(tmp_i_cast_fu_632_p1.read()));
}

void pow_generic_double_s::thread_b_exp_3_fu_780_p3() {
    b_exp_3_fu_780_p3 = (!tmp_20_fu_756_p3.read()[0].is_01())? sc_lv<12>(): ((tmp_20_fu_756_p3.read()[0].to_bool())? b_exp_1_fu_774_p2.read(): b_exp_fu_636_p2.read());
}

void pow_generic_double_s::thread_b_exp_fu_636_p2() {
    b_exp_fu_636_p2 = (!ap_const_lv12_C01.is_01() || !tmp_i_cast_fu_632_p1.read().is_01())? sc_lv<12>(): (sc_bigint<12>(ap_const_lv12_C01) + sc_biguint<12>(tmp_i_cast_fu_632_p1.read()));
}

void pow_generic_double_s::thread_b_frac_V_1_fu_813_p3() {
    b_frac_V_1_fu_813_p3 = (!tmp_20_reg_2299.read()[0].is_01())? sc_lv<54>(): ((tmp_20_reg_2299.read()[0].to_bool())? r_V_23_fu_809_p1.read(): p_Result_24_fu_793_p4.read());
}

void pow_generic_double_s::thread_brmerge_fu_716_p2() {
    brmerge_fu_716_p2 = (tmp_24_not_fu_710_p2.read() | x_is_n1_fu_672_p2.read());
}

void pow_generic_double_s::thread_eZ_V_1_fu_975_p3() {
    eZ_V_1_fu_975_p3 = esl_concat<8,73>(ap_const_lv8_80, p_Val2_13_reg_2364_pp0_iter14_reg.read());
}

void pow_generic_double_s::thread_eZ_V_2_fu_1041_p4() {
    eZ_V_2_fu_1041_p4 = esl_concat<95,1>(esl_concat<13,82>(ap_const_lv13_1000, ret_V_i_i_reg_2396.read()), ap_const_lv1_0);
}

void pow_generic_double_s::thread_eZ_V_3_fu_1134_p3() {
    eZ_V_3_fu_1134_p3 = esl_concat<18,92>(ap_const_lv18_20000, p_Val2_26_reg_2433.read());
}

void pow_generic_double_s::thread_eZ_V_4_fu_1224_p3() {
    eZ_V_4_fu_1224_p3 = esl_concat<23,87>(ap_const_lv23_400000, p_Val2_33_reg_2470.read());
}

void pow_generic_double_s::thread_eZ_V_5_fu_1314_p3() {
    eZ_V_5_fu_1314_p3 = esl_concat<28,82>(ap_const_lv28_8000000, p_Val2_40_reg_2507.read());
}

void pow_generic_double_s::thread_eZ_V_6_fu_1457_p3() {
    eZ_V_6_fu_1457_p3 = esl_concat<33,77>(ap_const_lv33_100000000, p_Val2_47_reg_2544_pp0_iter44_reg.read());
}

void pow_generic_double_s::thread_eZ_V_fu_890_p3() {
    eZ_V_fu_890_p3 = (!tmp_36_fu_861_p3.read()[0].is_01())? sc_lv<76>(): ((tmp_36_fu_861_p3.read()[0].to_bool())? tmp_11_fu_877_p4.read(): tmp_12_fu_886_p1.read());
}

void pow_generic_double_s::thread_exp_Z1P_m_1_l_V_fu_2040_p2() {
    exp_Z1P_m_1_l_V_fu_2040_p2 = (!tmp24_cast_fu_2036_p1.read().is_01() || !lhs_V_22_cast_fu_2024_p1.read().is_01())? sc_lv<52>(): (sc_biguint<52>(tmp24_cast_fu_2036_p1.read()) + sc_biguint<52>(lhs_V_22_cast_fu_2024_p1.read()));
}

void pow_generic_double_s::thread_exp_Z2P_m_1_V_fu_1963_p2() {
    exp_Z2P_m_1_V_fu_1963_p2 = (!tmp23_cast_fu_1959_p1.read().is_01() || !ret_V_20_fu_1948_p1.read().is_01())? sc_lv<44>(): (sc_biguint<44>(tmp23_cast_fu_1959_p1.read()) + sc_biguint<44>(ret_V_20_fu_1948_p1.read()));
}

void pow_generic_double_s::thread_f_Z4_V_fu_1890_p4() {
    f_Z4_V_fu_1890_p4 = pow_reduce_anonymo_q0.read().range(25, 16);
}

void pow_generic_double_s::thread_grp_fu_1078_p0() {
    grp_fu_1078_p0 =  (sc_lv<83>) (grp_fu_1078_p00.read());
}

void pow_generic_double_s::thread_grp_fu_1078_p00() {
    grp_fu_1078_p00 = esl_zext<89,83>(p_Val2_19_fu_1034_p3.read());
}

void pow_generic_double_s::thread_grp_fu_1078_p1() {
    grp_fu_1078_p1 =  (sc_lv<6>) (grp_fu_1078_p10.read());
}

void pow_generic_double_s::thread_grp_fu_1078_p10() {
    grp_fu_1078_p10 = esl_zext<89,6>(a_V_2_reg_2402.read());
}

void pow_generic_double_s::thread_grp_fu_1168_p0() {
    grp_fu_1168_p0 =  (sc_lv<92>) (grp_fu_1168_p00.read());
}

void pow_generic_double_s::thread_grp_fu_1168_p00() {
    grp_fu_1168_p00 = esl_zext<98,92>(p_Val2_26_reg_2433.read());
}

void pow_generic_double_s::thread_grp_fu_1168_p1() {
    grp_fu_1168_p1 =  (sc_lv<6>) (grp_fu_1168_p10.read());
}

void pow_generic_double_s::thread_grp_fu_1168_p10() {
    grp_fu_1168_p10 = esl_zext<98,6>(a_V_3_reg_2439.read());
}

void pow_generic_double_s::thread_grp_fu_1258_p0() {
    grp_fu_1258_p0 =  (sc_lv<87>) (grp_fu_1258_p00.read());
}

void pow_generic_double_s::thread_grp_fu_1258_p00() {
    grp_fu_1258_p00 = esl_zext<93,87>(p_Val2_33_reg_2470.read());
}

void pow_generic_double_s::thread_grp_fu_1258_p1() {
    grp_fu_1258_p1 =  (sc_lv<6>) (grp_fu_1258_p10.read());
}

void pow_generic_double_s::thread_grp_fu_1258_p10() {
    grp_fu_1258_p10 = esl_zext<93,6>(a_V_4_reg_2476.read());
}

void pow_generic_double_s::thread_grp_fu_1348_p0() {
    grp_fu_1348_p0 =  (sc_lv<82>) (grp_fu_1348_p00.read());
}

void pow_generic_double_s::thread_grp_fu_1348_p00() {
    grp_fu_1348_p00 = esl_zext<88,82>(p_Val2_40_reg_2507.read());
}

void pow_generic_double_s::thread_grp_fu_1348_p1() {
    grp_fu_1348_p1 =  (sc_lv<6>) (grp_fu_1348_p10.read());
}

void pow_generic_double_s::thread_grp_fu_1348_p10() {
    grp_fu_1348_p10 = esl_zext<88,6>(a_V_5_reg_2513.read());
}

void pow_generic_double_s::thread_grp_fu_1410_p0() {
    grp_fu_1410_p0 =  (sc_lv<77>) (grp_fu_1410_p00.read());
}

void pow_generic_double_s::thread_grp_fu_1410_p00() {
    grp_fu_1410_p00 = esl_zext<83,77>(p_Val2_47_reg_2544.read());
}

void pow_generic_double_s::thread_grp_fu_1410_p1() {
    grp_fu_1410_p1 =  (sc_lv<6>) (grp_fu_1410_p10.read());
}

void pow_generic_double_s::thread_grp_fu_1410_p10() {
    grp_fu_1410_p10 = esl_zext<83,6>(a_V_6_reg_2550.read());
}

void pow_generic_double_s::thread_grp_fu_1419_p0() {
    grp_fu_1419_p0 =  (sc_lv<80>) (ap_const_lv90_58B90BFBE8E7BCD5E4F1);
}

void pow_generic_double_s::thread_grp_fu_1808_p0() {
    grp_fu_1808_p0 =  (sc_lv<72>) (ap_const_lv83_58B90BFBE8E7BCD5E4);
}

void pow_generic_double_s::thread_grp_fu_1928_p0() {
    grp_fu_1928_p0 =  (sc_lv<43>) (grp_fu_1928_p00.read());
}

void pow_generic_double_s::thread_grp_fu_1928_p00() {
    grp_fu_1928_p00 = esl_zext<79,43>(tmp_3_i_fu_1913_p4.read());
}

void pow_generic_double_s::thread_grp_fu_1928_p1() {
    grp_fu_1928_p1 =  (sc_lv<36>) (grp_fu_1928_p10.read());
}

void pow_generic_double_s::thread_grp_fu_1928_p10() {
    grp_fu_1928_p10 = esl_zext<79,36>(ret_V_19_reg_2765.read());
}

void pow_generic_double_s::thread_grp_fu_1994_p0() {
    grp_fu_1994_p0 =  (sc_lv<49>) (grp_fu_1994_p00.read());
}

void pow_generic_double_s::thread_grp_fu_1994_p00() {
    grp_fu_1994_p00 = esl_zext<93,49>(tmp_11_i_fu_1979_p4.read());
}

void pow_generic_double_s::thread_grp_fu_1994_p1() {
    grp_fu_1994_p1 =  (sc_lv<44>) (grp_fu_1994_p10.read());
}

void pow_generic_double_s::thread_grp_fu_1994_p10() {
    grp_fu_1994_p10 = esl_zext<93,44>(exp_Z2P_m_1_V_reg_2801.read());
}

void pow_generic_double_s::thread_grp_fu_2072_p0() {
    grp_fu_2072_p0 =  (sc_lv<50>) (grp_fu_2072_p00.read());
}

void pow_generic_double_s::thread_grp_fu_2072_p00() {
    grp_fu_2072_p00 = esl_zext<100,50>(exp_Z1_hi_V_reg_2843.read());
}

void pow_generic_double_s::thread_grp_fu_2072_p1() {
    grp_fu_2072_p1 =  (sc_lv<50>) (grp_fu_2072_p10.read());
}

void pow_generic_double_s::thread_grp_fu_2072_p10() {
    grp_fu_2072_p10 = esl_zext<100,50>(exp_Z1P_m_1_V_reg_2838.read());
}

void pow_generic_double_s::thread_grp_fu_2261_p0() {
    grp_fu_2261_p0 =  (sc_lv<16>) (ap_const_lv31_5C55);
}

void pow_generic_double_s::thread_grp_fu_823_p1() {
    grp_fu_823_p1 =  (sc_lv<6>) (grp_fu_823_p10.read());
}

void pow_generic_double_s::thread_grp_fu_823_p10() {
    grp_fu_823_p10 = esl_zext<54,6>(b_frac_tilde_inverse_reg_2324.read());
}

void pow_generic_double_s::thread_grp_fu_852_p0() {
    grp_fu_852_p0 =  (sc_lv<71>) (grp_fu_852_p00.read());
}

void pow_generic_double_s::thread_grp_fu_852_p00() {
    grp_fu_852_p00 = esl_zext<75,71>(z1_V_fu_838_p3.read());
}

void pow_generic_double_s::thread_grp_fu_852_p1() {
    grp_fu_852_p1 =  (sc_lv<4>) (grp_fu_852_p10.read());
}

void pow_generic_double_s::thread_grp_fu_852_p10() {
    grp_fu_852_p10 = esl_zext<75,4>(a_V_reg_2343.read());
}

void pow_generic_double_s::thread_grp_fu_969_p0() {
    grp_fu_969_p0 =  (sc_lv<73>) (grp_fu_969_p00.read());
}

void pow_generic_double_s::thread_grp_fu_969_p00() {
    grp_fu_969_p00 = esl_zext<79,73>(p_Val2_13_reg_2364.read());
}

void pow_generic_double_s::thread_grp_fu_969_p1() {
    grp_fu_969_p1 =  (sc_lv<6>) (grp_fu_969_p10.read());
}

void pow_generic_double_s::thread_grp_fu_969_p10() {
    grp_fu_969_p10 = esl_zext<79,6>(a_V_1_reg_2370.read());
}

void pow_generic_double_s::thread_icmp_fu_2196_p2() {
    icmp_fu_2196_p2 = (!tmp_49_fu_2186_p4.read().is_01() || !ap_const_lv3_0.is_01())? sc_lv<1>(): (sc_bigint<3>(tmp_49_fu_2186_p4.read()) > sc_bigint<3>(ap_const_lv3_0));
}

void pow_generic_double_s::thread_index0_V_fu_764_p4() {
    index0_V_fu_764_p4 = p_Val2_s_fu_606_p1.read().range(51, 46);
}

void pow_generic_double_s::thread_lhs_V_10_fu_1174_p1() {
    lhs_V_10_fu_1174_p1 = esl_zext<122,121>(ret_V_7_reg_2450_pp0_iter26_reg.read());
}

void pow_generic_double_s::thread_lhs_V_11_fu_1231_p3() {
    lhs_V_11_fu_1231_p3 = esl_concat<81,44>(tmp_18_reg_2482.read(), ap_const_lv44_0);
}

void pow_generic_double_s::thread_lhs_V_12_fu_1264_p1() {
    lhs_V_12_fu_1264_p1 = esl_zext<127,126>(ret_V_9_reg_2487_pp0_iter32_reg.read());
}

void pow_generic_double_s::thread_lhs_V_12_i_cast_fu_1238_p1() {
    lhs_V_12_i_cast_fu_1238_p1 = esl_zext<126,125>(lhs_V_11_fu_1231_p3.read());
}

void pow_generic_double_s::thread_lhs_V_13_fu_1321_p3() {
    lhs_V_13_fu_1321_p3 = esl_concat<76,54>(tmp_22_reg_2519.read(), ap_const_lv54_0);
}

void pow_generic_double_s::thread_lhs_V_14_fu_1354_p1() {
    lhs_V_14_fu_1354_p1 = esl_zext<132,131>(ret_V_11_reg_2524_pp0_iter38_reg.read());
}

void pow_generic_double_s::thread_lhs_V_15_fu_1464_p3() {
    lhs_V_15_fu_1464_p3 = esl_concat<71,64>(tmp_23_reg_2556_pp0_iter44_reg.read(), ap_const_lv64_0);
}

void pow_generic_double_s::thread_lhs_V_15_i_cast_fu_1328_p1() {
    lhs_V_15_i_cast_fu_1328_p1 = esl_zext<131,130>(lhs_V_13_fu_1321_p3.read());
}

void pow_generic_double_s::thread_lhs_V_16_fu_1900_p1() {
    lhs_V_16_fu_1900_p1 = esl_zext<36,35>(Z4_V_reg_2750.read());
}

void pow_generic_double_s::thread_lhs_V_17_fu_2014_p5() {
    lhs_V_17_fu_2014_p5 = esl_concat<49,2>(esl_concat<9,40>(esl_concat<8,1>(Z2_V_reg_2738_pp0_iter61_reg.read(), ap_const_lv1_0), tmp_39_reg_2807_pp0_iter61_reg.read()), ap_const_lv2_0);
}

void pow_generic_double_s::thread_lhs_V_18_fu_2098_p3() {
    lhs_V_18_fu_2098_p3 = esl_concat<59,49>(ret_V_21_reg_2858.read(), ap_const_lv49_0);
}

void pow_generic_double_s::thread_lhs_V_18_i_cast_fu_1471_p1() {
    lhs_V_18_i_cast_fu_1471_p1 = esl_zext<136,135>(lhs_V_15_fu_1464_p3.read());
}

void pow_generic_double_s::thread_lhs_V_1_fu_920_p1() {
    lhs_V_1_fu_920_p1 = esl_zext<78,77>(ret_V_2_fu_914_p2.read());
}

void pow_generic_double_s::thread_lhs_V_1_i_cast_fu_906_p1() {
    lhs_V_1_i_cast_fu_906_p1 = esl_zext<77,75>(lhs_V_fu_898_p3.read());
}

void pow_generic_double_s::thread_lhs_V_22_cast_fu_2024_p1() {
    lhs_V_22_cast_fu_2024_p1 = esl_zext<52,51>(lhs_V_17_fu_2014_p5.read());
}

void pow_generic_double_s::thread_lhs_V_2_fu_982_p3() {
    lhs_V_2_fu_982_p3 = esl_concat<67,14>(tmp_13_reg_2376_pp0_iter14_reg.read(), ap_const_lv14_0);
}

void pow_generic_double_s::thread_lhs_V_3_cast_fu_1620_p1() {
    lhs_V_3_cast_fu_1620_p1 = esl_zext<118,117>(lhs_V_3_fu_1613_p3.read());
}

void pow_generic_double_s::thread_lhs_V_3_fu_1613_p3() {
    lhs_V_3_fu_1613_p3 = esl_concat<72,45>(tmp_24_reg_2636_pp0_iter46_reg.read(), ap_const_lv45_0);
}

void pow_generic_double_s::thread_lhs_V_4_fu_1050_p3() {
    lhs_V_4_fu_1050_p3 = esl_concat<76,25>(tmp_38_reg_2408.read(), ap_const_lv25_0);
}

void pow_generic_double_s::thread_lhs_V_4_i_cast_fu_989_p1() {
    lhs_V_4_i_cast_fu_989_p1 = esl_zext<82,81>(lhs_V_2_fu_982_p3.read());
}

void pow_generic_double_s::thread_lhs_V_5_cast_fu_1656_p1() {
    lhs_V_5_cast_fu_1656_p1 = esl_sext<121,120>(lhs_V_5_fu_1649_p3.read());
}

void pow_generic_double_s::thread_lhs_V_5_fu_1649_p3() {
    lhs_V_5_fu_1649_p3 = esl_concat<90,30>(Elog2_V_reg_2666.read(), ap_const_lv30_0);
}

void pow_generic_double_s::thread_lhs_V_6_fu_1084_p1() {
    lhs_V_6_fu_1084_p1 = esl_zext<103,102>(ret_V_5_reg_2413_pp0_iter20_reg.read());
}

void pow_generic_double_s::thread_lhs_V_6_i_cast_fu_1057_p1() {
    lhs_V_6_i_cast_fu_1057_p1 = esl_zext<102,101>(lhs_V_4_fu_1050_p3.read());
}

void pow_generic_double_s::thread_lhs_V_7_fu_1824_p1() {
    lhs_V_7_fu_1824_p1 = esl_sext<72,71>(m_fix_V_reg_2696_pp0_iter54_reg.read());
}

void pow_generic_double_s::thread_lhs_V_8_fu_2078_p1() {
    lhs_V_8_fu_2078_p1 = esl_zext<59,58>(exp_Z1_V_reg_2833_pp0_iter63_reg.read());
}

void pow_generic_double_s::thread_lhs_V_9_fu_1141_p3() {
    lhs_V_9_fu_1141_p3 = esl_concat<86,34>(tmp_14_reg_2445.read(), ap_const_lv34_0);
}

void pow_generic_double_s::thread_lhs_V_9_i_cast_fu_1148_p1() {
    lhs_V_9_i_cast_fu_1148_p1 = esl_zext<121,120>(lhs_V_9_fu_1141_p3.read());
}

void pow_generic_double_s::thread_lhs_V_fu_898_p3() {
    lhs_V_fu_898_p3 = esl_concat<50,25>(tmp_31_fu_858_p1.read(), ap_const_lv25_0);
}

void pow_generic_double_s::thread_log_sum_V_1_fu_1607_p2() {
    log_sum_V_1_fu_1607_p2 = (!tmp20_cast_fu_1604_p1.read().is_01() || !tmp_fu_1599_p2.read().is_01())? sc_lv<109>(): (sc_biguint<109>(tmp20_cast_fu_1604_p1.read()) + sc_biguint<109>(tmp_fu_1599_p2.read()));
}

void pow_generic_double_s::thread_log_sum_V_i_cast_fu_1643_p1() {
    log_sum_V_i_cast_fu_1643_p1 = esl_sext<121,109>(log_sum_V_1_reg_2671.read());
}

void pow_generic_double_s::thread_m_fix_l_V1_fu_1727_p3() {
    m_fix_l_V1_fu_1727_p3 = esl_concat<77,52>(tmp_32_reg_2691.read(), ap_const_lv52_0);
}

void pow_generic_double_s::thread_m_frac_l_V_fu_1720_p3() {
    m_frac_l_V_fu_1720_p3 = esl_concat<78,52>(tmp_28_reg_2686.read(), ap_const_lv52_0);
}

void pow_generic_double_s::thread_not_Val2_i_fu_660_p2() {
    not_Val2_i_fu_660_p2 = (p_Result_s_fu_610_p3.read() ^ ap_const_lv1_1);
}

void pow_generic_double_s::thread_or_cond1_fu_2202_p2() {
    or_cond1_fu_2202_p2 = (tmp_35_reg_2718_pp0_iter64_reg.read() | icmp_fu_2196_p2.read());
}

void pow_generic_double_s::thread_out_exp_V_fu_2242_p2() {
    out_exp_V_fu_2242_p2 = (!ap_const_lv11_3FF.is_01() || !tmp_51_reg_2892.read().is_01())? sc_lv<11>(): (sc_biguint<11>(ap_const_lv11_3FF) + sc_biguint<11>(tmp_51_reg_2892.read()));
}

void pow_generic_double_s::thread_p_01164_0_in_fu_2171_p3() {
    p_01164_0_in_fu_2171_p3 = (!tmp_48_fu_2140_p3.read()[0].is_01())? sc_lv<59>(): ((tmp_48_fu_2140_p3.read()[0].to_bool())? tmp_70_cast_fu_2130_p4.read(): tmp_33_fu_2158_p3.read());
}

void pow_generic_double_s::thread_p_Result_17_fu_1757_p3() {
    p_Result_17_fu_1757_p3 = grp_fu_2261_p3.read().range(30, 30);
}

void pow_generic_double_s::thread_p_Result_24_fu_793_p4() {
    p_Result_24_fu_793_p4 = esl_concat<53,1>(esl_concat<1,52>(ap_const_lv1_1, tmp_V_4_reg_2272.read()), ap_const_lv1_0);
}

void pow_generic_double_s::thread_p_Result_26_fu_2247_p4() {
    p_Result_26_fu_2247_p4 = esl_concat<12,52>(esl_concat<1,11>(ap_const_lv1_0, out_exp_V_fu_2242_p2.read()), tmp_V_reg_2887.read());
}

void pow_generic_double_s::thread_p_Result_s_fu_610_p3() {
    p_Result_s_fu_610_p3 = p_Val2_s_fu_606_p1.read().range(63, 63);
}

void pow_generic_double_s::thread_p_Val2_19_fu_1034_p3() {
    p_Val2_19_fu_1034_p3 = esl_concat<82,1>(ret_V_i_i_reg_2396.read(), ap_const_lv1_0);
}

void pow_generic_double_s::thread_p_Val2_s_fu_606_p1() {
    p_Val2_s_fu_606_p1 = base_r.read();
}

void pow_generic_double_s::thread_p_cast_fu_2234_p3() {
    p_cast_fu_2234_p3 = (!tmp_50_fu_2227_p3.read()[0].is_01())? sc_lv<64>(): ((tmp_50_fu_2227_p3.read()[0].to_bool())? ap_const_lv64_0: ap_const_lv64_7FF0000000000000);
}

void pow_generic_double_s::thread_p_mux_cast_fu_2091_p3() {
    p_mux_cast_fu_2091_p3 = (!tmp_24_not_reg_2282_pp0_iter64_reg.read()[0].is_01())? sc_lv<64>(): ((tmp_24_not_reg_2282_pp0_iter64_reg.read()[0].to_bool())? ap_const_lv64_7FFFFFFFFFFFFFFF: ap_const_lv64_3FF0000000000000);
}

void pow_generic_double_s::thread_pow_reduce_anonymo_12_address0() {
    pow_reduce_anonymo_12_address0 =  (sc_lv<6>) (tmp_141_i_i_fu_1425_p1.read());
}

void pow_generic_double_s::thread_pow_reduce_anonymo_12_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter44.read()))) {
        pow_reduce_anonymo_12_ce0 = ap_const_logic_1;
    } else {
        pow_reduce_anonymo_12_ce0 = ap_const_logic_0;
    }
}

void pow_generic_double_s::thread_pow_reduce_anonymo_13_address0() {
    pow_reduce_anonymo_13_address0 =  (sc_lv<6>) (tmp_138_i_i_fu_1429_p1.read());
}

void pow_generic_double_s::thread_pow_reduce_anonymo_13_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter44.read()))) {
        pow_reduce_anonymo_13_ce0 = ap_const_logic_1;
    } else {
        pow_reduce_anonymo_13_ce0 = ap_const_logic_0;
    }
}

void pow_generic_double_s::thread_pow_reduce_anonymo_14_address0() {
    pow_reduce_anonymo_14_address0 =  (sc_lv<6>) (tmp_135_i_i_fu_1433_p1.read());
}

void pow_generic_double_s::thread_pow_reduce_anonymo_14_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter44.read()))) {
        pow_reduce_anonymo_14_ce0 = ap_const_logic_1;
    } else {
        pow_reduce_anonymo_14_ce0 = ap_const_logic_0;
    }
}

void pow_generic_double_s::thread_pow_reduce_anonymo_15_address0() {
    pow_reduce_anonymo_15_address0 =  (sc_lv<6>) (tmp_132_i_i_fu_1437_p1.read());
}

void pow_generic_double_s::thread_pow_reduce_anonymo_15_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter44.read()))) {
        pow_reduce_anonymo_15_ce0 = ap_const_logic_1;
    } else {
        pow_reduce_anonymo_15_ce0 = ap_const_logic_0;
    }
}

void pow_generic_double_s::thread_pow_reduce_anonymo_16_address0() {
    pow_reduce_anonymo_16_address0 =  (sc_lv<4>) (tmp_129_i_i_fu_1441_p1.read());
}

void pow_generic_double_s::thread_pow_reduce_anonymo_16_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter45.read()))) {
        pow_reduce_anonymo_16_ce0 = ap_const_logic_1;
    } else {
        pow_reduce_anonymo_16_ce0 = ap_const_logic_0;
    }
}

void pow_generic_double_s::thread_pow_reduce_anonymo_17_address0() {
    pow_reduce_anonymo_17_address0 =  (sc_lv<6>) (tmp_124_i_i_fu_1445_p1.read());
}

void pow_generic_double_s::thread_pow_reduce_anonymo_17_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter45.read()))) {
        pow_reduce_anonymo_17_ce0 = ap_const_logic_1;
    } else {
        pow_reduce_anonymo_17_ce0 = ap_const_logic_0;
    }
}

void pow_generic_double_s::thread_pow_reduce_anonymo_18_address0() {
    pow_reduce_anonymo_18_address0 =  (sc_lv<8>) (tmp_19_fu_2000_p1.read());
}

void pow_generic_double_s::thread_pow_reduce_anonymo_18_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter61.read()))) {
        pow_reduce_anonymo_18_ce0 = ap_const_logic_1;
    } else {
        pow_reduce_anonymo_18_ce0 = ap_const_logic_0;
    }
}

void pow_generic_double_s::thread_pow_reduce_anonymo_19_address0() {
    pow_reduce_anonymo_19_address0 =  (sc_lv<6>) (tmp_4_reg_2309_pp0_iter44_reg.read());
}

void pow_generic_double_s::thread_pow_reduce_anonymo_19_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter45.read()))) {
        pow_reduce_anonymo_19_ce0 = ap_const_logic_1;
    } else {
        pow_reduce_anonymo_19_ce0 = ap_const_logic_0;
    }
}

void pow_generic_double_s::thread_pow_reduce_anonymo_20_address0() {
    pow_reduce_anonymo_20_address0 =  (sc_lv<6>) (tmp_4_fu_788_p1.read());
}

void pow_generic_double_s::thread_pow_reduce_anonymo_20_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()))) {
        pow_reduce_anonymo_20_ce0 = ap_const_logic_1;
    } else {
        pow_reduce_anonymo_20_ce0 = ap_const_logic_0;
    }
}

void pow_generic_double_s::thread_pow_reduce_anonymo_21_address0() {
    pow_reduce_anonymo_21_address0 =  (sc_lv<8>) (tmp_9_i_fu_1944_p1.read());
}

void pow_generic_double_s::thread_pow_reduce_anonymo_21_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter58.read()))) {
        pow_reduce_anonymo_21_ce0 = ap_const_logic_1;
    } else {
        pow_reduce_anonymo_21_ce0 = ap_const_logic_0;
    }
}

void pow_generic_double_s::thread_pow_reduce_anonymo_9_address0() {
    pow_reduce_anonymo_9_address0 =  (sc_lv<6>) (tmp_144_i_i_fu_1449_p1.read());
}

void pow_generic_double_s::thread_pow_reduce_anonymo_9_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter45.read()))) {
        pow_reduce_anonymo_9_ce0 = ap_const_logic_1;
    } else {
        pow_reduce_anonymo_9_ce0 = ap_const_logic_0;
    }
}

void pow_generic_double_s::thread_pow_reduce_anonymo_address0() {
    pow_reduce_anonymo_address0 =  (sc_lv<8>) (tmp_1_i_fu_1880_p1.read());
}

void pow_generic_double_s::thread_pow_reduce_anonymo_address1() {
    pow_reduce_anonymo_address1 =  (sc_lv<8>) (tmp_2_i_fu_1885_p1.read());
}

void pow_generic_double_s::thread_pow_reduce_anonymo_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter55.read()))) {
        pow_reduce_anonymo_ce0 = ap_const_logic_1;
    } else {
        pow_reduce_anonymo_ce0 = ap_const_logic_0;
    }
}

void pow_generic_double_s::thread_pow_reduce_anonymo_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter55.read()))) {
        pow_reduce_anonymo_ce1 = ap_const_logic_1;
    } else {
        pow_reduce_anonymo_ce1 = ap_const_logic_0;
    }
}

void pow_generic_double_s::thread_r_V_23_fu_809_p1() {
    r_V_23_fu_809_p1 = esl_zext<54,53>(r_V_s_fu_802_p3.read());
}

void pow_generic_double_s::thread_r_V_31_fu_1580_p0() {
    r_V_31_fu_1580_p0 =  (sc_lv<40>) (r_V_cast_fu_1577_p1.read());
}

void pow_generic_double_s::thread_r_V_31_fu_1580_p1() {
    r_V_31_fu_1580_p1 =  (sc_lv<40>) (r_V_cast_fu_1577_p1.read());
}

void pow_generic_double_s::thread_r_V_31_fu_1580_p2() {
    r_V_31_fu_1580_p2 = (!r_V_31_fu_1580_p0.read().is_01() || !r_V_31_fu_1580_p1.read().is_01())? sc_lv<80>(): sc_biguint<40>(r_V_31_fu_1580_p0.read()) * sc_biguint<40>(r_V_31_fu_1580_p1.read());
}

void pow_generic_double_s::thread_r_V_cast_fu_1577_p1() {
    r_V_cast_fu_1577_p1 = esl_zext<80,40>(ssdm_int_V_write_ass_7_reg_2641.read());
}

void pow_generic_double_s::thread_r_V_s_fu_802_p3() {
    r_V_s_fu_802_p3 = esl_concat<1,52>(ap_const_lv1_1, tmp_V_4_reg_2272.read());
}

void pow_generic_double_s::thread_r_exp_V_2_fu_2179_p3() {
    r_exp_V_2_fu_2179_p3 = (!tmp_48_fu_2140_p3.read()[0].is_01())? sc_lv<13>(): ((tmp_48_fu_2140_p3.read()[0].to_bool())? r_exp_V_3_reg_2711_pp0_iter64_reg.read(): r_exp_V_fu_2166_p2.read());
}

void pow_generic_double_s::thread_r_exp_V_3_fu_1787_p3() {
    r_exp_V_3_fu_1787_p3 = (!p_Result_17_fu_1757_p3.read()[0].is_01())? sc_lv<13>(): ((p_Result_17_fu_1757_p3.read()[0].to_bool())? tmp_26_fu_1779_p3.read(): tmp_21_fu_1748_p4.read());
}

void pow_generic_double_s::thread_r_exp_V_fu_2166_p2() {
    r_exp_V_fu_2166_p2 = (!ap_const_lv13_1FFF.is_01() || !r_exp_V_3_reg_2711_pp0_iter64_reg.read().is_01())? sc_lv<13>(): (sc_bigint<13>(ap_const_lv13_1FFF) + sc_bigint<13>(r_exp_V_3_reg_2711_pp0_iter64_reg.read()));
}

void pow_generic_double_s::thread_ret_V_10_fu_1278_p2() {
    ret_V_10_fu_1278_p2 = (!lhs_V_12_fu_1264_p1.read().is_01() || !rhs_V_11_i_cast_fu_1274_p1.read().is_01())? sc_lv<127>(): (sc_biguint<127>(lhs_V_12_fu_1264_p1.read()) - sc_biguint<127>(rhs_V_11_i_cast_fu_1274_p1.read()));
}

void pow_generic_double_s::thread_ret_V_11_fu_1336_p2() {
    ret_V_11_fu_1336_p2 = (!lhs_V_15_i_cast_fu_1328_p1.read().is_01() || !rhs_V_11_fu_1332_p1.read().is_01())? sc_lv<131>(): (sc_biguint<131>(lhs_V_15_i_cast_fu_1328_p1.read()) + sc_biguint<131>(rhs_V_11_fu_1332_p1.read()));
}

void pow_generic_double_s::thread_ret_V_12_fu_1368_p2() {
    ret_V_12_fu_1368_p2 = (!lhs_V_14_fu_1354_p1.read().is_01() || !rhs_V_14_i_cast_fu_1364_p1.read().is_01())? sc_lv<132>(): (sc_biguint<132>(lhs_V_14_fu_1354_p1.read()) - sc_biguint<132>(rhs_V_14_i_cast_fu_1364_p1.read()));
}

void pow_generic_double_s::thread_ret_V_13_fu_1479_p2() {
    ret_V_13_fu_1479_p2 = (!lhs_V_18_i_cast_fu_1471_p1.read().is_01() || !rhs_V_13_fu_1475_p1.read().is_01())? sc_lv<136>(): (sc_biguint<136>(lhs_V_18_i_cast_fu_1471_p1.read()) + sc_biguint<136>(rhs_V_13_fu_1475_p1.read()));
}

void pow_generic_double_s::thread_ret_V_14_fu_1496_p2() {
    ret_V_14_fu_1496_p2 = (!ret_V_13_fu_1479_p2.read().is_01() || !rhs_V_17_i_cast_fu_1492_p1.read().is_01())? sc_lv<136>(): (sc_biguint<136>(ret_V_13_fu_1479_p2.read()) - sc_biguint<136>(rhs_V_17_i_cast_fu_1492_p1.read()));
}

void pow_generic_double_s::thread_ret_V_15_fu_1627_p2() {
    ret_V_15_fu_1627_p2 = (!lhs_V_3_cast_fu_1620_p1.read().is_01() || !rhs_V_cast_fu_1624_p1.read().is_01())? sc_lv<118>(): (sc_biguint<118>(lhs_V_3_cast_fu_1620_p1.read()) - sc_biguint<118>(rhs_V_cast_fu_1624_p1.read()));
}

void pow_generic_double_s::thread_ret_V_16_fu_1666_p2() {
    ret_V_16_fu_1666_p2 = (!ret_V_s_fu_1660_p2.read().is_01() || !sum_V_fu_1646_p1.read().is_01())? sc_lv<121>(): (sc_biguint<121>(ret_V_s_fu_1660_p2.read()) + sc_bigint<121>(sum_V_fu_1646_p1.read()));
}

void pow_generic_double_s::thread_ret_V_18_fu_1830_p2() {
    ret_V_18_fu_1830_p2 = (!lhs_V_7_fu_1824_p1.read().is_01() || !rhs_V_4_fu_1827_p1.read().is_01())? sc_lv<72>(): (sc_bigint<72>(lhs_V_7_fu_1824_p1.read()) - sc_bigint<72>(rhs_V_4_fu_1827_p1.read()));
}

void pow_generic_double_s::thread_ret_V_19_fu_1907_p2() {
    ret_V_19_fu_1907_p2 = (!lhs_V_16_fu_1900_p1.read().is_01() || !rhs_V_15_fu_1903_p1.read().is_01())? sc_lv<36>(): (sc_biguint<36>(lhs_V_16_fu_1900_p1.read()) + sc_biguint<36>(rhs_V_15_fu_1903_p1.read()));
}

void pow_generic_double_s::thread_ret_V_20_fu_1948_p1() {
    ret_V_20_fu_1948_p1 = esl_zext<44,43>(tmp_3_i_reg_2776_pp0_iter58_reg.read());
}

void pow_generic_double_s::thread_ret_V_21_fu_2081_p2() {
    ret_V_21_fu_2081_p2 = (!ap_const_lv59_10.is_01() || !lhs_V_8_fu_2078_p1.read().is_01())? sc_lv<59>(): (sc_biguint<59>(ap_const_lv59_10) + sc_biguint<59>(lhs_V_8_fu_2078_p1.read()));
}

void pow_generic_double_s::thread_ret_V_22_fu_2118_p2() {
    ret_V_22_fu_2118_p2 = (!lhs_V_18_fu_2098_p3.read().is_01() || !rhs_V_5_cast_fu_2105_p1.read().is_01())? sc_lv<108>(): (sc_biguint<108>(lhs_V_18_fu_2098_p3.read()) + sc_biguint<108>(rhs_V_5_cast_fu_2105_p1.read()));
}

void pow_generic_double_s::thread_ret_V_2_fu_914_p2() {
    ret_V_2_fu_914_p2 = (!lhs_V_1_i_cast_fu_906_p1.read().is_01() || !rhs_V_fu_910_p1.read().is_01())? sc_lv<77>(): (sc_biguint<77>(lhs_V_1_i_cast_fu_906_p1.read()) + sc_biguint<77>(rhs_V_fu_910_p1.read()));
}

void pow_generic_double_s::thread_ret_V_38_cast_fu_2124_p2() {
    ret_V_38_cast_fu_2124_p2 = (!tmp_29_fu_2108_p1.read().is_01() || !tmp_30_fu_2111_p3.read().is_01())? sc_lv<107>(): (sc_biguint<107>(tmp_29_fu_2108_p1.read()) + sc_biguint<107>(tmp_30_fu_2111_p3.read()));
}

void pow_generic_double_s::thread_ret_V_3_fu_927_p2() {
    ret_V_3_fu_927_p2 = (!lhs_V_1_fu_920_p1.read().is_01() || !rhs_V_1_fu_924_p1.read().is_01())? sc_lv<78>(): (sc_biguint<78>(lhs_V_1_fu_920_p1.read()) - sc_biguint<78>(rhs_V_1_fu_924_p1.read()));
}

void pow_generic_double_s::thread_ret_V_4_fu_997_p2() {
    ret_V_4_fu_997_p2 = (!lhs_V_4_i_cast_fu_989_p1.read().is_01() || !rhs_V_2_fu_993_p1.read().is_01())? sc_lv<82>(): (sc_biguint<82>(lhs_V_4_i_cast_fu_989_p1.read()) + sc_biguint<82>(rhs_V_2_fu_993_p1.read()));
}

void pow_generic_double_s::thread_ret_V_5_fu_1065_p2() {
    ret_V_5_fu_1065_p2 = (!lhs_V_6_i_cast_fu_1057_p1.read().is_01() || !rhs_V_5_fu_1061_p1.read().is_01())? sc_lv<102>(): (sc_biguint<102>(lhs_V_6_i_cast_fu_1057_p1.read()) + sc_biguint<102>(rhs_V_5_fu_1061_p1.read()));
}

void pow_generic_double_s::thread_ret_V_6_fu_1098_p2() {
    ret_V_6_fu_1098_p2 = (!lhs_V_6_fu_1084_p1.read().is_01() || !rhs_V_5_i_cast_fu_1094_p1.read().is_01())? sc_lv<103>(): (sc_biguint<103>(lhs_V_6_fu_1084_p1.read()) - sc_biguint<103>(rhs_V_5_i_cast_fu_1094_p1.read()));
}

void pow_generic_double_s::thread_ret_V_7_fu_1156_p2() {
    ret_V_7_fu_1156_p2 = (!lhs_V_9_i_cast_fu_1148_p1.read().is_01() || !rhs_V_7_fu_1152_p1.read().is_01())? sc_lv<121>(): (sc_biguint<121>(lhs_V_9_i_cast_fu_1148_p1.read()) + sc_biguint<121>(rhs_V_7_fu_1152_p1.read()));
}

void pow_generic_double_s::thread_ret_V_8_fu_1188_p2() {
    ret_V_8_fu_1188_p2 = (!lhs_V_10_fu_1174_p1.read().is_01() || !rhs_V_8_i_cast_fu_1184_p1.read().is_01())? sc_lv<122>(): (sc_biguint<122>(lhs_V_10_fu_1174_p1.read()) - sc_biguint<122>(rhs_V_8_i_cast_fu_1184_p1.read()));
}

void pow_generic_double_s::thread_ret_V_9_fu_1246_p2() {
    ret_V_9_fu_1246_p2 = (!lhs_V_12_i_cast_fu_1238_p1.read().is_01() || !rhs_V_9_fu_1242_p1.read().is_01())? sc_lv<126>(): (sc_biguint<126>(lhs_V_12_i_cast_fu_1238_p1.read()) + sc_biguint<126>(rhs_V_9_fu_1242_p1.read()));
}

void pow_generic_double_s::thread_ret_V_i_i_fu_1014_p2() {
    ret_V_i_i_fu_1014_p2 = (!ret_V_4_fu_997_p2.read().is_01() || !rhs_V_1_i_i_cast_fu_1010_p1.read().is_01())? sc_lv<82>(): (sc_biguint<82>(ret_V_4_fu_997_p2.read()) - sc_biguint<82>(rhs_V_1_i_i_cast_fu_1010_p1.read()));
}

void pow_generic_double_s::thread_ret_V_s_fu_1660_p2() {
    ret_V_s_fu_1660_p2 = (!lhs_V_5_cast_fu_1656_p1.read().is_01() || !log_sum_V_i_cast_fu_1643_p1.read().is_01())? sc_lv<121>(): (sc_bigint<121>(lhs_V_5_cast_fu_1656_p1.read()) + sc_bigint<121>(log_sum_V_i_cast_fu_1643_p1.read()));
}

void pow_generic_double_s::thread_rhs_V_10_fu_1267_p3() {
    rhs_V_10_fu_1267_p3 = esl_concat<93,16>(r_V_28_reg_2502.read(), ap_const_lv16_0);
}

void pow_generic_double_s::thread_rhs_V_11_fu_1332_p1() {
    rhs_V_11_fu_1332_p1 = esl_zext<131,110>(eZ_V_5_fu_1314_p3.read());
}

void pow_generic_double_s::thread_rhs_V_11_i_cast_fu_1274_p1() {
    rhs_V_11_i_cast_fu_1274_p1 = esl_zext<127,109>(rhs_V_10_fu_1267_p3.read());
}

void pow_generic_double_s::thread_rhs_V_12_fu_1357_p3() {
    rhs_V_12_fu_1357_p3 = esl_concat<88,21>(r_V_29_reg_2539.read(), ap_const_lv21_0);
}

void pow_generic_double_s::thread_rhs_V_13_fu_1475_p1() {
    rhs_V_13_fu_1475_p1 = esl_zext<136,110>(eZ_V_6_fu_1457_p3.read());
}

void pow_generic_double_s::thread_rhs_V_14_fu_1485_p3() {
    rhs_V_14_fu_1485_p3 = esl_concat<83,26>(r_V_30_reg_2591.read(), ap_const_lv26_0);
}

void pow_generic_double_s::thread_rhs_V_14_i_cast_fu_1364_p1() {
    rhs_V_14_i_cast_fu_1364_p1 = esl_zext<132,109>(rhs_V_12_fu_1357_p3.read());
}

void pow_generic_double_s::thread_rhs_V_15_fu_1903_p1() {
    rhs_V_15_fu_1903_p1 = esl_zext<36,10>(f_Z4_V_fu_1890_p4.read());
}

void pow_generic_double_s::thread_rhs_V_17_i_cast_fu_1492_p1() {
    rhs_V_17_i_cast_fu_1492_p1 = esl_zext<136,109>(rhs_V_14_fu_1485_p3.read());
}

void pow_generic_double_s::thread_rhs_V_1_fu_924_p1() {
    rhs_V_1_fu_924_p1 = esl_zext<78,75>(r_V_24_reg_2359.read());
}

void pow_generic_double_s::thread_rhs_V_1_i_i_cast_fu_1010_p1() {
    rhs_V_1_i_i_cast_fu_1010_p1 = esl_zext<82,80>(rhs_V_1_i_i_fu_1003_p3.read());
}

void pow_generic_double_s::thread_rhs_V_1_i_i_fu_1003_p3() {
    rhs_V_1_i_i_fu_1003_p3 = esl_concat<79,1>(r_V_25_reg_2391.read(), ap_const_lv1_0);
}

void pow_generic_double_s::thread_rhs_V_2_fu_993_p1() {
    rhs_V_2_fu_993_p1 = esl_zext<82,81>(eZ_V_1_fu_975_p3.read());
}

void pow_generic_double_s::thread_rhs_V_3_fu_1737_p3() {
    rhs_V_3_fu_1737_p3 = esl_concat<1,18>(p_Result_25_reg_2706.read(), ap_const_lv18_20000);
}

void pow_generic_double_s::thread_rhs_V_4_fu_1827_p1() {
    rhs_V_4_fu_1827_p1 = esl_sext<72,71>(m_fix_a_V_reg_2728.read());
}

void pow_generic_double_s::thread_rhs_V_5_cast_fu_2105_p1() {
    rhs_V_5_cast_fu_2105_p1 = esl_zext<108,100>(r_V_36_reg_2863.read());
}

void pow_generic_double_s::thread_rhs_V_5_fu_1061_p1() {
    rhs_V_5_fu_1061_p1 = esl_zext<102,96>(eZ_V_2_fu_1041_p4.read());
}

void pow_generic_double_s::thread_rhs_V_5_i_cast_fu_1094_p1() {
    rhs_V_5_i_cast_fu_1094_p1 = esl_zext<103,95>(rhs_V_6_fu_1087_p3.read());
}

void pow_generic_double_s::thread_rhs_V_6_fu_1087_p3() {
    rhs_V_6_fu_1087_p3 = esl_concat<89,6>(r_V_26_reg_2428.read(), ap_const_lv6_0);
}

void pow_generic_double_s::thread_rhs_V_7_fu_1152_p1() {
    rhs_V_7_fu_1152_p1 = esl_zext<121,110>(eZ_V_3_fu_1134_p3.read());
}

void pow_generic_double_s::thread_rhs_V_8_fu_1177_p3() {
    rhs_V_8_fu_1177_p3 = esl_concat<98,11>(r_V_27_reg_2465.read(), ap_const_lv11_0);
}

void pow_generic_double_s::thread_rhs_V_8_i_cast_fu_1184_p1() {
    rhs_V_8_i_cast_fu_1184_p1 = esl_zext<122,109>(rhs_V_8_fu_1177_p3.read());
}

void pow_generic_double_s::thread_rhs_V_9_fu_1242_p1() {
    rhs_V_9_fu_1242_p1 = esl_zext<126,110>(eZ_V_4_fu_1224_p3.read());
}

void pow_generic_double_s::thread_rhs_V_cast_fu_1624_p1() {
    rhs_V_cast_fu_1624_p1 = esl_zext<118,79>(tmp_15_reg_2661.read());
}

void pow_generic_double_s::thread_rhs_V_fu_910_p1() {
    rhs_V_fu_910_p1 = esl_zext<77,76>(eZ_V_fu_890_p3.read());
}

void pow_generic_double_s::thread_sf_fu_868_p4() {
    sf_fu_868_p4 = esl_concat<59,16>(esl_concat<5,54>(ap_const_lv5_10, b_frac1_V1_reg_2334_pp0_iter8_reg.read()), ap_const_lv16_0);
}

void pow_generic_double_s::thread_ssdm_int_V_write_ass_1_fu_1536_p1() {
    ssdm_int_V_write_ass_1_fu_1536_p1 = esl_zext<103,102>(pow_reduce_anonymo_17_q0.read());
}

void pow_generic_double_s::thread_ssdm_int_V_write_ass_2_fu_1540_p1() {
    ssdm_int_V_write_ass_2_fu_1540_p1 = esl_zext<103,97>(pow_reduce_anonymo_9_q0.read());
}

void pow_generic_double_s::thread_ssdm_int_V_write_ass_3_fu_1544_p1() {
    ssdm_int_V_write_ass_3_fu_1544_p1 = esl_zext<93,92>(p_Val2_32_reg_2621.read());
}

void pow_generic_double_s::thread_ssdm_int_V_write_ass_4_fu_1547_p1() {
    ssdm_int_V_write_ass_4_fu_1547_p1 = esl_zext<93,87>(p_Val2_39_reg_2626.read());
}

void pow_generic_double_s::thread_ssdm_int_V_write_ass_5_fu_1453_p1() {
    ssdm_int_V_write_ass_5_fu_1453_p1 = esl_zext<83,82>(pow_reduce_anonymo_14_q0.read());
}

void pow_generic_double_s::thread_ssdm_int_V_write_ass_6_fu_1502_p1() {
    ssdm_int_V_write_ass_6_fu_1502_p1 = esl_zext<83,77>(pow_reduce_anonymo_15_q0.read());
}

void pow_generic_double_s::thread_ssdm_int_V_write_ass_fu_1532_p1() {
    ssdm_int_V_write_ass_fu_1532_p1 = esl_zext<109,105>(pow_reduce_anonymo_16_q0.read());
}

void pow_generic_double_s::thread_sum_V_fu_1646_p1() {
    sum_V_fu_1646_p1 = esl_sext<121,73>(tmp_16_reg_2676.read());
}

void pow_generic_double_s::thread_tmp15_fu_1550_p2() {
    tmp15_fu_1550_p2 = (!ssdm_int_V_write_ass_fu_1532_p1.read().is_01() || !pow_reduce_anonymo_19_q0.read().is_01())? sc_lv<109>(): (sc_biguint<109>(ssdm_int_V_write_ass_fu_1532_p1.read()) + sc_biguint<109>(pow_reduce_anonymo_19_q0.read()));
}

void pow_generic_double_s::thread_tmp16_fu_1556_p2() {
    tmp16_fu_1556_p2 = (!ssdm_int_V_write_ass_1_fu_1536_p1.read().is_01() || !ssdm_int_V_write_ass_2_fu_1540_p1.read().is_01())? sc_lv<103>(): (sc_biguint<103>(ssdm_int_V_write_ass_1_fu_1536_p1.read()) + sc_biguint<103>(ssdm_int_V_write_ass_2_fu_1540_p1.read()));
}

void pow_generic_double_s::thread_tmp17_fu_1562_p2() {
    tmp17_fu_1562_p2 = (!ssdm_int_V_write_ass_3_fu_1544_p1.read().is_01() || !ssdm_int_V_write_ass_4_fu_1547_p1.read().is_01())? sc_lv<93>(): (sc_biguint<93>(ssdm_int_V_write_ass_3_fu_1544_p1.read()) + sc_biguint<93>(ssdm_int_V_write_ass_4_fu_1547_p1.read()));
}

void pow_generic_double_s::thread_tmp18_fu_1506_p2() {
    tmp18_fu_1506_p2 = (!ssdm_int_V_write_ass_5_fu_1453_p1.read().is_01() || !ssdm_int_V_write_ass_6_fu_1502_p1.read().is_01())? sc_lv<83>(): (sc_biguint<83>(ssdm_int_V_write_ass_5_fu_1453_p1.read()) + sc_biguint<83>(ssdm_int_V_write_ass_6_fu_1502_p1.read()));
}

void pow_generic_double_s::thread_tmp19_cast_fu_1596_p1() {
    tmp19_cast_fu_1596_p1 = esl_zext<109,103>(tmp16_reg_2651.read());
}

void pow_generic_double_s::thread_tmp19_fu_1571_p2() {
    tmp19_fu_1571_p2 = (!tmp22_cast_fu_1568_p1.read().is_01() || !tmp17_fu_1562_p2.read().is_01())? sc_lv<93>(): (sc_biguint<93>(tmp22_cast_fu_1568_p1.read()) + sc_biguint<93>(tmp17_fu_1562_p2.read()));
}

void pow_generic_double_s::thread_tmp20_cast_fu_1604_p1() {
    tmp20_cast_fu_1604_p1 = esl_zext<109,93>(tmp19_reg_2656.read());
}

void pow_generic_double_s::thread_tmp22_cast_fu_1568_p1() {
    tmp22_cast_fu_1568_p1 = esl_zext<93,83>(tmp18_reg_2631.read());
}

void pow_generic_double_s::thread_tmp23_cast_fu_1959_p1() {
    tmp23_cast_fu_1959_p1 = esl_zext<44,36>(tmp23_fu_1954_p2.read());
}

void pow_generic_double_s::thread_tmp23_fu_1954_p2() {
    tmp23_fu_1954_p2 = (!ret_V_19_reg_2765_pp0_iter58_reg.read().is_01() || !tmp_7_i_cast_fu_1951_p1.read().is_01())? sc_lv<36>(): (sc_biguint<36>(ret_V_19_reg_2765_pp0_iter58_reg.read()) + sc_biguint<36>(tmp_7_i_cast_fu_1951_p1.read()));
}

void pow_generic_double_s::thread_tmp24_cast_fu_2036_p1() {
    tmp24_cast_fu_2036_p1 = esl_zext<52,44>(tmp24_fu_2031_p2.read());
}

void pow_generic_double_s::thread_tmp24_fu_2031_p2() {
    tmp24_fu_2031_p2 = (!exp_Z2P_m_1_V_reg_2801_pp0_iter61_reg.read().is_01() || !tmp_14_i_cast_fu_2028_p1.read().is_01())? sc_lv<44>(): (sc_biguint<44>(exp_Z2P_m_1_V_reg_2801_pp0_iter61_reg.read()) + sc_biguint<44>(tmp_14_i_cast_fu_2028_p1.read()));
}

void pow_generic_double_s::thread_tmp_11_fu_877_p4() {
    tmp_11_fu_877_p4 = esl_concat<59,17>(esl_concat<5,54>(ap_const_lv5_10, b_frac1_V1_reg_2334_pp0_iter8_reg.read()), ap_const_lv17_0);
}

void pow_generic_double_s::thread_tmp_11_i_fu_1979_p4() {
    tmp_11_i_fu_1979_p4 = esl_concat<9,40>(esl_concat<8,1>(Z2_V_reg_2738_pp0_iter59_reg.read(), ap_const_lv1_0), tmp_39_reg_2807.read());
}

void pow_generic_double_s::thread_tmp_124_i_i_fu_1445_p1() {
    tmp_124_i_i_fu_1445_p1 = esl_zext<64,6>(a_V_1_reg_2370_pp0_iter44_reg.read());
}

void pow_generic_double_s::thread_tmp_129_i_i_fu_1441_p1() {
    tmp_129_i_i_fu_1441_p1 = esl_zext<64,4>(a_V_reg_2343_pp0_iter44_reg.read());
}

void pow_generic_double_s::thread_tmp_12_fu_886_p1() {
    tmp_12_fu_886_p1 = esl_zext<76,75>(sf_fu_868_p4.read());
}

void pow_generic_double_s::thread_tmp_132_i_i_fu_1437_p1() {
    tmp_132_i_i_fu_1437_p1 = esl_zext<64,6>(a_V_6_reg_2550_pp0_iter43_reg.read());
}

void pow_generic_double_s::thread_tmp_135_i_i_fu_1433_p1() {
    tmp_135_i_i_fu_1433_p1 = esl_zext<64,6>(a_V_5_reg_2513_pp0_iter43_reg.read());
}

void pow_generic_double_s::thread_tmp_138_i_i_fu_1429_p1() {
    tmp_138_i_i_fu_1429_p1 = esl_zext<64,6>(a_V_4_reg_2476_pp0_iter43_reg.read());
}

void pow_generic_double_s::thread_tmp_141_i_i_fu_1425_p1() {
    tmp_141_i_i_fu_1425_p1 = esl_zext<64,6>(a_V_3_reg_2439_pp0_iter43_reg.read());
}

void pow_generic_double_s::thread_tmp_144_i_i_fu_1449_p1() {
    tmp_144_i_i_fu_1449_p1 = esl_zext<64,6>(a_V_2_reg_2402_pp0_iter44_reg.read());
}

void pow_generic_double_s::thread_tmp_14_i_cast_fu_2028_p1() {
    tmp_14_i_cast_fu_2028_p1 = esl_zext<44,36>(tmp_40_reg_2828.read());
}

void pow_generic_double_s::thread_tmp_154_i1_fu_690_p2() {
    tmp_154_i1_fu_690_p2 = (tmp_i9_fu_678_p2.read() & tmp_i7_fu_684_p2.read());
}

void pow_generic_double_s::thread_tmp_17_fu_1767_p2() {
    tmp_17_fu_1767_p2 = (!tmp_44_fu_1764_p1.read().is_01() || !ap_const_lv18_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_44_fu_1764_p1.read() == ap_const_lv18_0);
}

void pow_generic_double_s::thread_tmp_19_fu_2000_p1() {
    tmp_19_fu_2000_p1 = esl_zext<64,8>(m_diff_hi_V_reg_2733_pp0_iter60_reg.read());
}

void pow_generic_double_s::thread_tmp_1_fu_648_p2() {
    tmp_1_fu_648_p2 = (!tmp_V_4_fu_628_p1.read().is_01() || !ap_const_lv52_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_V_4_fu_628_p1.read() == ap_const_lv52_0);
}

void pow_generic_double_s::thread_tmp_1_i_fu_1880_p1() {
    tmp_1_i_fu_1880_p1 = esl_zext<64,8>(Z4_ind_V_fu_1870_p4.read());
}

void pow_generic_double_s::thread_tmp_20_fu_756_p3() {
    tmp_20_fu_756_p3 = p_Val2_s_fu_606_p1.read().range(51, 51);
}

void pow_generic_double_s::thread_tmp_21_fu_1748_p4() {
    tmp_21_fu_1748_p4 = grp_fu_2261_p3.read().range(30, 18);
}

void pow_generic_double_s::thread_tmp_24_not_fu_710_p2() {
    tmp_24_not_fu_710_p2 = (!tmp_3_fu_702_p3.read().is_01() || !ap_const_lv32_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_3_fu_702_p3.read() != ap_const_lv32_0);
}

void pow_generic_double_s::thread_tmp_25_fu_1773_p2() {
    tmp_25_fu_1773_p2 = (!ap_const_lv13_1.is_01() || !tmp_21_fu_1748_p4.read().is_01())? sc_lv<13>(): (sc_biguint<13>(ap_const_lv13_1) + sc_biguint<13>(tmp_21_fu_1748_p4.read()));
}

void pow_generic_double_s::thread_tmp_26_fu_1779_p3() {
    tmp_26_fu_1779_p3 = (!tmp_17_fu_1767_p2.read()[0].is_01())? sc_lv<13>(): ((tmp_17_fu_1767_p2.read()[0].to_bool())? tmp_21_fu_1748_p4.read(): tmp_25_fu_1773_p2.read());
}

void pow_generic_double_s::thread_tmp_29_fu_2108_p1() {
    tmp_29_fu_2108_p1 = esl_zext<107,100>(r_V_36_reg_2863.read());
}

void pow_generic_double_s::thread_tmp_2_fu_696_p2() {
    tmp_2_fu_696_p2 = (!tmp_V_3_fu_618_p4.read().is_01() || !ap_const_lv11_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_V_3_fu_618_p4.read() == ap_const_lv11_0);
}

void pow_generic_double_s::thread_tmp_2_i_fu_1885_p1() {
    tmp_2_i_fu_1885_p1 = esl_zext<64,8>(Z3_V_fu_1856_p4.read());
}

void pow_generic_double_s::thread_tmp_30_fu_2111_p3() {
    tmp_30_fu_2111_p3 = esl_concat<58,49>(tmp_47_reg_2869.read(), ap_const_lv49_0);
}

void pow_generic_double_s::thread_tmp_31_fu_858_p1() {
    tmp_31_fu_858_p1 = b_frac1_V1_reg_2334_pp0_iter8_reg.read().range(50-1, 0);
}

void pow_generic_double_s::thread_tmp_33_fu_2158_p3() {
    tmp_33_fu_2158_p3 = esl_concat<58,1>(tmp_41_fu_2148_p4.read(), ap_const_lv1_0);
}

void pow_generic_double_s::thread_tmp_35_fu_1799_p2() {
    tmp_35_fu_1799_p2 = (!tmp_75_cast_fu_1795_p1.read().is_01() || !m_frac_l_V_fu_1720_p3.read().is_01())? sc_lv<1>(): sc_lv<1>(tmp_75_cast_fu_1795_p1.read() != m_frac_l_V_fu_1720_p3.read());
}

void pow_generic_double_s::thread_tmp_36_fu_861_p3() {
    tmp_36_fu_861_p3 = b_frac1_V1_reg_2334_pp0_iter8_reg.read().range(53, 53);
}

void pow_generic_double_s::thread_tmp_37_fu_2207_p2() {
    tmp_37_fu_2207_p2 = (!r_exp_V_2_fu_2179_p3.read().is_01() || !ap_const_lv13_1C02.is_01())? sc_lv<1>(): (sc_bigint<13>(r_exp_V_2_fu_2179_p3.read()) < sc_bigint<13>(ap_const_lv13_1C02));
}

void pow_generic_double_s::thread_tmp_38_fu_1030_p1() {
    tmp_38_fu_1030_p1 = ret_V_i_i_fu_1014_p2.read().range(76-1, 0);
}

void pow_generic_double_s::thread_tmp_3_fu_702_p3() {
    tmp_3_fu_702_p3 = esl_concat<31,1>(ap_const_lv31_0, tmp_154_i1_fu_690_p2.read());
}

void pow_generic_double_s::thread_tmp_3_i_fu_1913_p4() {
    tmp_3_i_fu_1913_p4 = esl_concat<17,26>(esl_concat<8,9>(Z3_V_reg_2745_pp0_iter56_reg.read(), ap_const_lv9_0), p_Val2_71_reg_2771.read());
}

void pow_generic_double_s::thread_tmp_41_fu_2148_p4() {
    tmp_41_fu_2148_p4 = ret_V_22_fu_2118_p2.read().range(106, 49);
}

void pow_generic_double_s::thread_tmp_44_fu_1764_p1() {
    tmp_44_fu_1764_p1 = grp_fu_2261_p3.read().range(18-1, 0);
}

void pow_generic_double_s::thread_tmp_47_fu_2087_p1() {
    tmp_47_fu_2087_p1 = ret_V_21_fu_2081_p2.read().range(58-1, 0);
}

void pow_generic_double_s::thread_tmp_48_fu_2140_p3() {
    tmp_48_fu_2140_p3 = ret_V_38_cast_fu_2124_p2.read().range(106, 106);
}

void pow_generic_double_s::thread_tmp_49_fu_2186_p4() {
    tmp_49_fu_2186_p4 = r_exp_V_2_fu_2179_p3.read().range(12, 10);
}

void pow_generic_double_s::thread_tmp_4_fu_788_p1() {
    tmp_4_fu_788_p1 = esl_zext<64,6>(index0_V_fu_764_p4.read());
}

void pow_generic_double_s::thread_tmp_50_fu_2227_p3() {
    tmp_50_fu_2227_p3 = ret_V_16_reg_2681_pp0_iter64_reg.read().range(120, 120);
}

void pow_generic_double_s::thread_tmp_51_fu_2223_p1() {
    tmp_51_fu_2223_p1 = r_exp_V_2_fu_2179_p3.read().range(11-1, 0);
}

void pow_generic_double_s::thread_tmp_5_fu_722_p2() {
    tmp_5_fu_722_p2 = (tmp_i9_fu_678_p2.read() & tmp_1_fu_648_p2.read());
}

void pow_generic_double_s::thread_tmp_6_fu_728_p3() {
    tmp_6_fu_728_p3 = esl_concat<31,1>(ap_const_lv31_0, tmp_5_fu_722_p2.read());
}

void pow_generic_double_s::thread_tmp_70_cast_fu_2130_p4() {
    tmp_70_cast_fu_2130_p4 = ret_V_22_fu_2118_p2.read().range(107, 49);
}

void pow_generic_double_s::thread_tmp_75_cast_fu_1795_p1() {
    tmp_75_cast_fu_1795_p1 = esl_sext<130,129>(m_fix_l_V1_fu_1727_p3.read());
}

void pow_generic_double_s::thread_tmp_7_fu_736_p2() {
    tmp_7_fu_736_p2 = (!tmp_6_fu_728_p3.read().is_01() || !ap_const_lv32_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_6_fu_728_p3.read() == ap_const_lv32_0);
}

void pow_generic_double_s::thread_tmp_7_i_cast_fu_1951_p1() {
    tmp_7_i_cast_fu_1951_p1 = esl_zext<36,20>(tmp_34_reg_2791.read());
}

void pow_generic_double_s::thread_tmp_8_fu_742_p3() {
    tmp_8_fu_742_p3 = esl_concat<31,1>(ap_const_lv31_0, tmp_2_fu_696_p2.read());
}

void pow_generic_double_s::thread_tmp_9_fu_750_p2() {
    tmp_9_fu_750_p2 = (!tmp_8_fu_742_p3.read().is_01() || !ap_const_lv32_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_8_fu_742_p3.read() == ap_const_lv32_0);
}

void pow_generic_double_s::thread_tmp_9_i_fu_1944_p1() {
    tmp_9_i_fu_1944_p1 = esl_zext<64,8>(Z2_V_reg_2738_pp0_iter57_reg.read());
}

void pow_generic_double_s::thread_tmp_V_3_fu_618_p4() {
    tmp_V_3_fu_618_p4 = p_Val2_s_fu_606_p1.read().range(62, 52);
}

void pow_generic_double_s::thread_tmp_V_4_fu_628_p1() {
    tmp_V_4_fu_628_p1 = p_Val2_s_fu_606_p1.read().range(52-1, 0);
}

void pow_generic_double_s::thread_tmp_fu_1599_p2() {
    tmp_fu_1599_p2 = (!tmp19_cast_fu_1596_p1.read().is_01() || !tmp15_reg_2646.read().is_01())? sc_lv<109>(): (sc_biguint<109>(tmp19_cast_fu_1596_p1.read()) + sc_biguint<109>(tmp15_reg_2646.read()));
}

void pow_generic_double_s::thread_tmp_i7_fu_684_p2() {
    tmp_i7_fu_684_p2 = (!tmp_V_4_fu_628_p1.read().is_01() || !ap_const_lv52_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_V_4_fu_628_p1.read() != ap_const_lv52_0);
}

void pow_generic_double_s::thread_tmp_i9_fu_678_p2() {
    tmp_i9_fu_678_p2 = (!tmp_V_3_fu_618_p4.read().is_01() || !ap_const_lv11_7FF.is_01())? sc_lv<1>(): sc_lv<1>(tmp_V_3_fu_618_p4.read() == ap_const_lv11_7FF);
}

void pow_generic_double_s::thread_tmp_i_cast_fu_632_p1() {
    tmp_i_cast_fu_632_p1 = esl_zext<12,11>(tmp_V_3_fu_618_p4.read());
}

void pow_generic_double_s::thread_tmp_s_fu_642_p2() {
    tmp_s_fu_642_p2 = (!b_exp_fu_636_p2.read().is_01() || !ap_const_lv12_0.is_01())? sc_lv<1>(): sc_lv<1>(b_exp_fu_636_p2.read() == ap_const_lv12_0);
}

void pow_generic_double_s::thread_x_is_1_fu_654_p2() {
    x_is_1_fu_654_p2 = (tmp_s_fu_642_p2.read() & tmp_1_fu_648_p2.read());
}

void pow_generic_double_s::thread_x_is_n1_fu_672_p2() {
    x_is_n1_fu_672_p2 = (x_is_1_fu_654_p2.read() & p_Result_s_fu_610_p3.read());
}

void pow_generic_double_s::thread_x_is_p1_fu_666_p2() {
    x_is_p1_fu_666_p2 = (x_is_1_fu_654_p2.read() & not_Val2_i_fu_660_p2.read());
}

void pow_generic_double_s::thread_z1_V_fu_838_p3() {
    z1_V_fu_838_p3 = esl_concat<54,17>(b_frac1_V1_reg_2334.read(), ap_const_lv17_0);
}

}

