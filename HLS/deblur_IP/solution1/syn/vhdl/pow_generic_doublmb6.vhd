-- ==============================================================
-- File generated on Sat Aug 01 17:20:54 +0800 2020
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pow_generic_doublmb6_rom is 
    generic(
             DWIDTH     : integer := 105; 
             AWIDTH     : integer := 4; 
             MEM_SIZE    : integer := 16
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of pow_generic_doublmb6_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000", 
    1 => "000100000000000000000001010101010101010110001000100010001001000110101101000111001001100011001001111010011", 
    2 => "001000000001000000010010101111101100001100101111100011011010110000110100010000001001110111101111101000001", 
    3 => "001100000011000001010100100111010011101100101010000110001011101110000001001000111110111011110101110100101", 
    4 => "010000000110000011100111101100111111100110000010010001100101111001011010111010000000000101111001111101001", 
    5 => "010100001010000111101101001010100001001101111100110110001011011101101100001100000011000101000101110100000", 
    6 => "011000001111001110000110100011000000111011110011100100011000010100111100100101100110101111010111010001110", 
    7 => "011100010101010111010101110011011000000111010101001101100001100100110000011110111000001100001000111010111", 
    8 => "011110011000110101001100010110101011110101101111111111111101000000100110110110010011100011101000000010110", 
    9 => "100010100000100011101100111110011010010011100110010111010001111011100011110001110100111111111010101001111", 
    10 => "100110101001010110011010001001101101001110000110001011100111010100101010111100010101010100101000110000001", 
    11 => "101010110011001101110111010010111101100111100011100001100000001001111011111100111011100000010001011100111", 
    12 => "101110111110001010101000010000010001000010011110111110111010011001010001101100000100001000010000101001000", 
    13 => "110011001010001101010001010011110110100001011110010100110100011011101000011110110000011101011110000001110", 
    14 => "110111010111010110010111001100100100001101001100000110100110111111010011110000010100001011000100001110101", 
    15 => "111011100101100110011111000110010101100001011010100101011101010100001010100000110000000100110101111010010" );


begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity pow_generic_doublmb6 is
    generic (
        DataWidth : INTEGER := 105;
        AddressRange : INTEGER := 16;
        AddressWidth : INTEGER := 4);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of pow_generic_doublmb6 is
    component pow_generic_doublmb6_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    pow_generic_doublmb6_rom_U :  component pow_generic_doublmb6_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


