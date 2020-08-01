// ==============================================================
// File generated on Sat Aug 01 17:20:54 +0800 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __pow_generic_doublmb6_H__
#define __pow_generic_doublmb6_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct pow_generic_doublmb6_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 105;
  static const unsigned AddressRange = 16;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(pow_generic_doublmb6_ram) {
        ram[0] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
        ram[1] = "0b000100000000000000000001010101010101010110001000100010001001000110101101000111001001100011001001111010011";
        ram[2] = "0b001000000001000000010010101111101100001100101111100011011010110000110100010000001001110111101111101000001";
        ram[3] = "0b001100000011000001010100100111010011101100101010000110001011101110000001001000111110111011110101110100101";
        ram[4] = "0b010000000110000011100111101100111111100110000010010001100101111001011010111010000000000101111001111101001";
        ram[5] = "0b010100001010000111101101001010100001001101111100110110001011011101101100001100000011000101000101110100000";
        ram[6] = "0b011000001111001110000110100011000000111011110011100100011000010100111100100101100110101111010111010001110";
        ram[7] = "0b011100010101010111010101110011011000000111010101001101100001100100110000011110111000001100001000111010111";
        ram[8] = "0b011110011000110101001100010110101011110101101111111111111101000000100110110110010011100011101000000010110";
        ram[9] = "0b100010100000100011101100111110011010010011100110010111010001111011100011110001110100111111111010101001111";
        ram[10] = "0b100110101001010110011010001001101101001110000110001011100111010100101010111100010101010100101000110000001";
        ram[11] = "0b101010110011001101110111010010111101100111100011100001100000001001111011111100111011100000010001011100111";
        ram[12] = "0b101110111110001010101000010000010001000010011110111110111010011001010001101100000100001000010000101001000";
        ram[13] = "0b110011001010001101010001010011110110100001011110010100110100011011101000011110110000011101011110000001110";
        ram[14] = "0b110111010111010110010111001100100100001101001100000110100110111111010011110000010100001011000100001110101";
        ram[15] = "0b111011100101100110011111000110010101100001011010100101011101010100001010100000110000000100110101111010010";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(pow_generic_doublmb6) {


static const unsigned DataWidth = 105;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


pow_generic_doublmb6_ram* meminst;


SC_CTOR(pow_generic_doublmb6) {
meminst = new pow_generic_doublmb6_ram("pow_generic_doublmb6_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~pow_generic_doublmb6() {
    delete meminst;
}


};//endmodule
#endif
