-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1.2 (64-bit)
-- Version: 2022.1.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tiled_conv_tiled_conv_Pipeline_VITIS_LOOP_92_2_VITIS_LOOP_93_3 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    max_pool_out_buf_V_0_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    max_pool_out_buf_V_0_ce0 : OUT STD_LOGIC;
    max_pool_out_buf_V_0_we0 : OUT STD_LOGIC;
    max_pool_out_buf_V_0_d0 : OUT STD_LOGIC_VECTOR (14 downto 0);
    p_out_i : IN STD_LOGIC_VECTOR (31 downto 0);
    p_out_o : OUT STD_LOGIC_VECTOR (31 downto 0);
    p_out_o_ap_vld : OUT STD_LOGIC );
end;


architecture behav of tiled_conv_tiled_conv_Pipeline_VITIS_LOOP_92_2_VITIS_LOOP_93_3 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv15_0 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv4_9 : STD_LOGIC_VECTOR (3 downto 0) := "1001";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln92_fu_106_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal select_ln92_fu_136_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln92_reg_365 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal select_ln92_1_fu_144_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln92_1_reg_370 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln94_1_fu_160_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal add_ln94_1_reg_376 : STD_LOGIC_VECTOR (2 downto 0);
    signal zext_ln96_2_fu_216_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal p_Result_s_fu_311_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal j_fu_62 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln93_fu_166_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_j_load : STD_LOGIC_VECTOR (1 downto 0);
    signal i_fu_66 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_sig_allocacmp_i_load : STD_LOGIC_VECTOR (1 downto 0);
    signal indvar_flatten28_fu_70 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln92_1_fu_112_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_sig_allocacmp_indvar_flatten28_load : STD_LOGIC_VECTOR (3 downto 0);
    signal icmp_ln95_fu_329_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln93_fu_130_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln92_fu_124_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal j_4_cast_fu_156_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal zext_ln92_fu_152_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_s_fu_194_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln96_fu_191_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal sub_ln96_fu_201_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln96_1_fu_207_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln96_fu_210_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln4_fu_224_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln94_fu_231_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln94_1_fu_221_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal sub_ln94_fu_235_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln209_fu_241_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Val2_s_fu_247_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln728_fu_255_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_fu_267_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln215_fu_275_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_fu_259_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln215_1_fu_281_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2_fu_287_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal new_bit_fu_295_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_V_2_fu_301_p4 : STD_LOGIC_VECTOR (30 downto 0);
    signal trunc_ln9_fu_319_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component tiled_conv_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component tiled_conv_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    i_fu_66_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln92_fu_106_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_fu_66 <= select_ln92_1_fu_144_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_66 <= ap_const_lv2_0;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten28_fu_70_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln92_fu_106_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    indvar_flatten28_fu_70 <= add_ln92_1_fu_112_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten28_fu_70 <= ap_const_lv4_0;
                end if;
            end if; 
        end if;
    end process;

    j_fu_62_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln92_fu_106_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    j_fu_62 <= add_ln93_fu_166_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    j_fu_62 <= ap_const_lv2_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln92_fu_106_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                add_ln94_1_reg_376 <= add_ln94_1_fu_160_p2;
                select_ln92_1_reg_370 <= select_ln92_1_fu_144_p3;
                select_ln92_reg_365 <= select_ln92_fu_136_p3;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln92_1_fu_112_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten28_load) + unsigned(ap_const_lv4_1));
    add_ln92_fu_124_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_load) + unsigned(ap_const_lv2_1));
    add_ln93_fu_166_p2 <= std_logic_vector(unsigned(select_ln92_fu_136_p3) + unsigned(ap_const_lv2_1));
    add_ln94_1_fu_160_p2 <= std_logic_vector(unsigned(j_4_cast_fu_156_p1) + unsigned(zext_ln92_fu_152_p1));
    add_ln96_fu_210_p2 <= std_logic_vector(unsigned(sub_ln96_fu_201_p2) + unsigned(zext_ln96_1_fu_207_p1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln92_fu_106_p2)
    begin
        if (((icmp_ln92_fu_106_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, i_fu_66)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_i_load <= ap_const_lv2_0;
        else 
            ap_sig_allocacmp_i_load <= i_fu_66;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten28_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, indvar_flatten28_fu_70)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_indvar_flatten28_load <= ap_const_lv4_0;
        else 
            ap_sig_allocacmp_indvar_flatten28_load <= indvar_flatten28_fu_70;
        end if; 
    end process;


    ap_sig_allocacmp_j_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, j_fu_62, ap_loop_init)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_j_load <= ap_const_lv2_0;
        else 
            ap_sig_allocacmp_j_load <= j_fu_62;
        end if; 
    end process;

    icmp_ln209_fu_241_p2 <= "1" when (sub_ln94_fu_235_p2 = ap_const_lv6_1) else "0";
    icmp_ln92_fu_106_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten28_load = ap_const_lv4_9) else "0";
    icmp_ln93_fu_130_p2 <= "1" when (ap_sig_allocacmp_j_load = ap_const_lv2_3) else "0";
    icmp_ln95_fu_329_p2 <= "1" when (trunc_ln9_fu_319_p4 = ap_const_lv2_0) else "0";
    j_4_cast_fu_156_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln92_fu_136_p3),3));
    max_pool_out_buf_V_0_address0 <= zext_ln96_2_fu_216_p1(4 - 1 downto 0);

    max_pool_out_buf_V_0_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            max_pool_out_buf_V_0_ce0 <= ap_const_logic_1;
        else 
            max_pool_out_buf_V_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    max_pool_out_buf_V_0_d0 <= ap_const_lv15_0;

    max_pool_out_buf_V_0_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001, icmp_ln95_fu_329_p2)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln95_fu_329_p2 = ap_const_lv1_1))) then 
            max_pool_out_buf_V_0_we0 <= ap_const_logic_1;
        else 
            max_pool_out_buf_V_0_we0 <= ap_const_logic_0;
        end if; 
    end process;

    new_bit_fu_295_p2 <= (xor_ln215_1_fu_281_p2 xor tmp_2_fu_287_p3);
    p_Result_s_fu_311_p3 <= (new_bit_fu_295_p2 & r_V_2_fu_301_p4);
    p_Val2_s_fu_247_p3 <= 
        ap_const_lv32_1F when (icmp_ln209_fu_241_p2(0) = '1') else 
        p_out_i;

    p_out_o_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, p_out_i, ap_block_pp0_stage0, p_Result_s_fu_311_p3)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_out_o <= p_Result_s_fu_311_p3;
        else 
            p_out_o <= p_out_i;
        end if; 
    end process;


    p_out_o_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_out_o_ap_vld <= ap_const_logic_1;
        else 
            p_out_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    r_V_2_fu_301_p4 <= p_Val2_s_fu_247_p3(31 downto 1);
    select_ln92_1_fu_144_p3 <= 
        add_ln92_fu_124_p2 when (icmp_ln93_fu_130_p2(0) = '1') else 
        ap_sig_allocacmp_i_load;
    select_ln92_fu_136_p3 <= 
        ap_const_lv2_0 when (icmp_ln93_fu_130_p2(0) = '1') else 
        ap_sig_allocacmp_j_load;
    shl_ln4_fu_224_p3 <= (add_ln94_1_reg_376 & ap_const_lv2_0);
    sub_ln94_fu_235_p2 <= std_logic_vector(unsigned(zext_ln94_fu_231_p1) - unsigned(zext_ln94_1_fu_221_p1));
    sub_ln96_fu_201_p2 <= std_logic_vector(unsigned(tmp_s_fu_194_p3) - unsigned(zext_ln96_fu_191_p1));
    tmp_1_fu_267_p3 <= p_Val2_s_fu_247_p3(30 downto 30);
    tmp_2_fu_287_p3 <= p_Val2_s_fu_247_p3(31 downto 31);
    tmp_fu_259_p3 <= p_Val2_s_fu_247_p3(10 downto 10);
    tmp_s_fu_194_p3 <= (select_ln92_1_reg_370 & ap_const_lv2_0);
    trunc_ln728_fu_255_p1 <= p_Val2_s_fu_247_p3(1 - 1 downto 0);
    trunc_ln9_fu_319_p4 <= p_Val2_s_fu_247_p3(2 downto 1);
    xor_ln215_1_fu_281_p2 <= (xor_ln215_fu_275_p2 xor tmp_fu_259_p3);
    xor_ln215_fu_275_p2 <= (trunc_ln728_fu_255_p1 xor tmp_1_fu_267_p3);
    zext_ln92_fu_152_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln92_1_fu_144_p3),3));
    zext_ln94_1_fu_221_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln94_1_reg_376),6));
    zext_ln94_fu_231_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln4_fu_224_p3),6));
    zext_ln96_1_fu_207_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln92_reg_365),4));
    zext_ln96_2_fu_216_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln96_fu_210_p2),64));
    zext_ln96_fu_191_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln92_1_reg_370),4));
end behav;