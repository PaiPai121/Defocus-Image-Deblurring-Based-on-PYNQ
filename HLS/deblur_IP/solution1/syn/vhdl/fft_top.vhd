-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fft_top is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    direction : IN STD_LOGIC;
    direction_ap_vld : IN STD_LOGIC;
    direction_ap_ack : OUT STD_LOGIC;
    in_r_dout : IN STD_LOGIC_VECTOR (63 downto 0);
    in_r_empty_n : IN STD_LOGIC;
    in_r_read : OUT STD_LOGIC;
    out_r_din : OUT STD_LOGIC_VECTOR (63 downto 0);
    out_r_full_n : IN STD_LOGIC;
    out_r_write : OUT STD_LOGIC );
end;


architecture behav of fft_top is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal direction_blk_n : STD_LOGIC;
    signal direction_read_reg_106 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal fft_status1_data_V_r_reg_123 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal fft_status1_data_V_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal fft_status1_data_V_empty_n : STD_LOGIC;
    signal grp_dummy_proc_middle_1394_fu_75_ap_start : STD_LOGIC;
    signal grp_dummy_proc_middle_1394_fu_75_ap_done : STD_LOGIC;
    signal grp_dummy_proc_middle_1394_fu_75_ap_idle : STD_LOGIC;
    signal grp_dummy_proc_middle_1394_fu_75_ap_ready : STD_LOGIC;
    signal grp_dummy_proc_middle_1394_fu_75_out_r_din : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_dummy_proc_middle_1394_fu_75_out_r_write : STD_LOGIC;
    signal grp_dummy_proc_middle_1394_fu_75_xk1_read : STD_LOGIC;
    signal grp_dummy_proc_fe_1395_fu_85_ap_start : STD_LOGIC;
    signal grp_dummy_proc_fe_1395_fu_85_ap_done : STD_LOGIC;
    signal grp_dummy_proc_fe_1395_fu_85_ap_idle : STD_LOGIC;
    signal grp_dummy_proc_fe_1395_fu_85_ap_ready : STD_LOGIC;
    signal grp_dummy_proc_fe_1395_fu_85_in_r_read : STD_LOGIC;
    signal grp_dummy_proc_fe_1395_fu_85_xn1_din : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_dummy_proc_fe_1395_fu_85_xn1_write : STD_LOGIC;
    signal grp_dummy_proc_fe_1395_fu_85_ap_return : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fft_config1_s_fu_96_ap_start : STD_LOGIC;
    signal grp_fft_config1_s_fu_96_ap_ce : STD_LOGIC;
    signal grp_fft_config1_s_fu_96_ap_done : STD_LOGIC;
    signal grp_fft_config1_s_fu_96_ap_idle : STD_LOGIC;
    signal grp_fft_config1_s_fu_96_ap_ready : STD_LOGIC;
    signal grp_fft_config1_s_fu_96_xn_read : STD_LOGIC;
    signal grp_fft_config1_s_fu_96_xk_din : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fft_config1_s_fu_96_xk_write : STD_LOGIC;
    signal grp_fft_config1_s_fu_96_status_data_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fft_config1_s_fu_96_status_data_V_write : STD_LOGIC;
    signal grp_fft_config1_s_fu_96_config_ch_data_V_read : STD_LOGIC;
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal grp_dummy_proc_middle_1394_fu_75_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal xk1_dout : STD_LOGIC_VECTOR (63 downto 0);
    signal xk1_empty_n : STD_LOGIC;
    signal xk1_read : STD_LOGIC;
    signal grp_dummy_proc_fe_1395_fu_85_ap_start_reg : STD_LOGIC := '0';
    signal ap_block_state1_ignore_call10 : BOOLEAN;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal xn1_full_n : STD_LOGIC;
    signal xn1_write : STD_LOGIC;
    signal grp_fft_config1_s_fu_96_ap_start_reg : STD_LOGIC := '0';
    signal xn1_dout : STD_LOGIC_VECTOR (63 downto 0);
    signal xn1_empty_n : STD_LOGIC;
    signal xn1_read : STD_LOGIC;
    signal xk1_full_n : STD_LOGIC;
    signal xk1_write : STD_LOGIC;
    signal fft_config1_data_V_full_n : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);

    component dummy_proc_middle_1394 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        st_in_data_V_read : IN STD_LOGIC_VECTOR (7 downto 0);
        out_r_din : OUT STD_LOGIC_VECTOR (63 downto 0);
        out_r_full_n : IN STD_LOGIC;
        out_r_write : OUT STD_LOGIC;
        xk1_dout : IN STD_LOGIC_VECTOR (63 downto 0);
        xk1_empty_n : IN STD_LOGIC;
        xk1_read : OUT STD_LOGIC );
    end component;


    component dummy_proc_fe_1395 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        direction : IN STD_LOGIC_VECTOR (0 downto 0);
        in_r_dout : IN STD_LOGIC_VECTOR (63 downto 0);
        in_r_empty_n : IN STD_LOGIC;
        in_r_read : OUT STD_LOGIC;
        xn1_din : OUT STD_LOGIC_VECTOR (63 downto 0);
        xn1_full_n : IN STD_LOGIC;
        xn1_write : OUT STD_LOGIC;
        ap_return : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component fft_config1_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ce : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        xn_dout : IN STD_LOGIC_VECTOR (63 downto 0);
        xn_empty_n : IN STD_LOGIC;
        xn_read : OUT STD_LOGIC;
        xk_din : OUT STD_LOGIC_VECTOR (63 downto 0);
        xk_full_n : IN STD_LOGIC;
        xk_write : OUT STD_LOGIC;
        status_data_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        status_data_V_full_n : IN STD_LOGIC;
        status_data_V_write : OUT STD_LOGIC;
        config_ch_data_V_dout : IN STD_LOGIC_VECTOR (15 downto 0);
        config_ch_data_V_empty_n : IN STD_LOGIC;
        config_ch_data_V_read : OUT STD_LOGIC );
    end component;


    component fifo_w64_d256_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (63 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (63 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    grp_dummy_proc_middle_1394_fu_75 : component dummy_proc_middle_1394
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_dummy_proc_middle_1394_fu_75_ap_start,
        ap_done => grp_dummy_proc_middle_1394_fu_75_ap_done,
        ap_idle => grp_dummy_proc_middle_1394_fu_75_ap_idle,
        ap_ready => grp_dummy_proc_middle_1394_fu_75_ap_ready,
        st_in_data_V_read => fft_status1_data_V_r_reg_123,
        out_r_din => grp_dummy_proc_middle_1394_fu_75_out_r_din,
        out_r_full_n => out_r_full_n,
        out_r_write => grp_dummy_proc_middle_1394_fu_75_out_r_write,
        xk1_dout => xk1_dout,
        xk1_empty_n => xk1_empty_n,
        xk1_read => grp_dummy_proc_middle_1394_fu_75_xk1_read);

    grp_dummy_proc_fe_1395_fu_85 : component dummy_proc_fe_1395
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_dummy_proc_fe_1395_fu_85_ap_start,
        ap_done => grp_dummy_proc_fe_1395_fu_85_ap_done,
        ap_idle => grp_dummy_proc_fe_1395_fu_85_ap_idle,
        ap_ready => grp_dummy_proc_fe_1395_fu_85_ap_ready,
        direction => direction_read_reg_106,
        in_r_dout => in_r_dout,
        in_r_empty_n => in_r_empty_n,
        in_r_read => grp_dummy_proc_fe_1395_fu_85_in_r_read,
        xn1_din => grp_dummy_proc_fe_1395_fu_85_xn1_din,
        xn1_full_n => xn1_full_n,
        xn1_write => grp_dummy_proc_fe_1395_fu_85_xn1_write,
        ap_return => grp_dummy_proc_fe_1395_fu_85_ap_return);

    grp_fft_config1_s_fu_96 : component fft_config1_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_fft_config1_s_fu_96_ap_start,
        ap_ce => grp_fft_config1_s_fu_96_ap_ce,
        ap_done => grp_fft_config1_s_fu_96_ap_done,
        ap_idle => grp_fft_config1_s_fu_96_ap_idle,
        ap_ready => grp_fft_config1_s_fu_96_ap_ready,
        xn_dout => xn1_dout,
        xn_empty_n => xn1_empty_n,
        xn_read => grp_fft_config1_s_fu_96_xn_read,
        xk_din => grp_fft_config1_s_fu_96_xk_din,
        xk_full_n => xk1_full_n,
        xk_write => grp_fft_config1_s_fu_96_xk_write,
        status_data_V_din => grp_fft_config1_s_fu_96_status_data_V_din,
        status_data_V_full_n => ap_const_logic_1,
        status_data_V_write => grp_fft_config1_s_fu_96_status_data_V_write,
        config_ch_data_V_dout => ap_const_lv16_0,
        config_ch_data_V_empty_n => ap_const_logic_1,
        config_ch_data_V_read => grp_fft_config1_s_fu_96_config_ch_data_V_read);

    xk1_fifo_U : component fifo_w64_d256_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => grp_fft_config1_s_fu_96_xk_din,
        if_full_n => xk1_full_n,
        if_write => xk1_write,
        if_dout => xk1_dout,
        if_empty_n => xk1_empty_n,
        if_read => xk1_read);

    xn1_fifo_U : component fifo_w64_d256_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => grp_dummy_proc_fe_1395_fu_85_xn1_din,
        if_full_n => xn1_full_n,
        if_write => xn1_write,
        if_dout => xn1_dout,
        if_empty_n => xn1_empty_n,
        if_read => xn1_read);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_dummy_proc_fe_1395_fu_85_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_dummy_proc_fe_1395_fu_85_ap_start_reg <= ap_const_logic_0;
            else
                if ((not(((direction_ap_vld = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    grp_dummy_proc_fe_1395_fu_85_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_dummy_proc_fe_1395_fu_85_ap_ready = ap_const_logic_1)) then 
                    grp_dummy_proc_fe_1395_fu_85_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_dummy_proc_middle_1394_fu_75_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_dummy_proc_middle_1394_fu_75_ap_start_reg <= ap_const_logic_0;
            else
                if (((fft_status1_data_V_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                    grp_dummy_proc_middle_1394_fu_75_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_dummy_proc_middle_1394_fu_75_ap_ready = ap_const_logic_1)) then 
                    grp_dummy_proc_middle_1394_fu_75_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_fft_config1_s_fu_96_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_fft_config1_s_fu_96_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                    grp_fft_config1_s_fu_96_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_fft_config1_s_fu_96_ap_ready = ap_const_logic_1)) then 
                    grp_fft_config1_s_fu_96_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((direction_ap_vld = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                direction_read_reg_106 <= (0=>direction, others=>'-');
            end if;
        end if;
    end process;
    fft_status1_data_V_r_reg_123(7 downto 0) <= "00000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, direction_ap_vld, ap_CS_fsm_state5, fft_status1_data_V_empty_n, grp_dummy_proc_middle_1394_fu_75_ap_done, grp_dummy_proc_fe_1395_fu_85_ap_done, grp_fft_config1_s_fu_96_ap_done, ap_CS_fsm_state4, ap_CS_fsm_state6, ap_CS_fsm_state2, fft_config1_data_V_full_n)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((direction_ap_vld = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if ((not(((grp_dummy_proc_fe_1395_fu_85_ap_done = ap_const_logic_0) or (fft_config1_data_V_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                if (((grp_fft_config1_s_fu_96_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                if (((fft_status1_data_V_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state6 => 
                if (((grp_dummy_proc_middle_1394_fu_75_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_block_state1_assign_proc : process(ap_start, direction_ap_vld)
    begin
                ap_block_state1 <= ((direction_ap_vld = ap_const_logic_0) or (ap_start = ap_const_logic_0));
    end process;


    ap_block_state1_ignore_call10_assign_proc : process(ap_start, direction_ap_vld)
    begin
                ap_block_state1_ignore_call10 <= ((direction_ap_vld = ap_const_logic_0) or (ap_start = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, grp_dummy_proc_middle_1394_fu_75_ap_done, ap_CS_fsm_state6)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((grp_dummy_proc_middle_1394_fu_75_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(grp_dummy_proc_middle_1394_fu_75_ap_done, ap_CS_fsm_state6)
    begin
        if (((grp_dummy_proc_middle_1394_fu_75_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    direction_ap_ack_assign_proc : process(ap_start, ap_CS_fsm_state1, direction_ap_vld)
    begin
        if ((not(((direction_ap_vld = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            direction_ap_ack <= ap_const_logic_1;
        else 
            direction_ap_ack <= ap_const_logic_0;
        end if; 
    end process;


    direction_blk_n_assign_proc : process(ap_start, ap_CS_fsm_state1, direction_ap_vld)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
            direction_blk_n <= direction_ap_vld;
        else 
            direction_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    fft_config1_data_V_full_n <= ap_const_logic_1;
    fft_status1_data_V_dout <= ap_const_lv8_0;
    fft_status1_data_V_empty_n <= ap_const_logic_1;
    grp_dummy_proc_fe_1395_fu_85_ap_start <= grp_dummy_proc_fe_1395_fu_85_ap_start_reg;
    grp_dummy_proc_middle_1394_fu_75_ap_start <= grp_dummy_proc_middle_1394_fu_75_ap_start_reg;

    grp_fft_config1_s_fu_96_ap_ce_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            grp_fft_config1_s_fu_96_ap_ce <= ap_const_logic_1;
        else 
            grp_fft_config1_s_fu_96_ap_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_fft_config1_s_fu_96_ap_start <= grp_fft_config1_s_fu_96_ap_start_reg;

    in_r_read_assign_proc : process(grp_dummy_proc_fe_1395_fu_85_in_r_read, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            in_r_read <= grp_dummy_proc_fe_1395_fu_85_in_r_read;
        else 
            in_r_read <= ap_const_logic_0;
        end if; 
    end process;

    out_r_din <= grp_dummy_proc_middle_1394_fu_75_out_r_din;

    out_r_write_assign_proc : process(grp_dummy_proc_middle_1394_fu_75_out_r_write, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            out_r_write <= grp_dummy_proc_middle_1394_fu_75_out_r_write;
        else 
            out_r_write <= ap_const_logic_0;
        end if; 
    end process;


    xk1_read_assign_proc : process(grp_dummy_proc_middle_1394_fu_75_xk1_read, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            xk1_read <= grp_dummy_proc_middle_1394_fu_75_xk1_read;
        else 
            xk1_read <= ap_const_logic_0;
        end if; 
    end process;


    xk1_write_assign_proc : process(grp_fft_config1_s_fu_96_xk_write, ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            xk1_write <= grp_fft_config1_s_fu_96_xk_write;
        else 
            xk1_write <= ap_const_logic_0;
        end if; 
    end process;


    xn1_read_assign_proc : process(grp_fft_config1_s_fu_96_xn_read, ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            xn1_read <= grp_fft_config1_s_fu_96_xn_read;
        else 
            xn1_read <= ap_const_logic_0;
        end if; 
    end process;


    xn1_write_assign_proc : process(grp_dummy_proc_fe_1395_fu_85_xn1_write, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            xn1_write <= grp_dummy_proc_fe_1395_fu_85_xn1_write;
        else 
            xn1_write <= ap_const_logic_0;
        end if; 
    end process;

end behav;