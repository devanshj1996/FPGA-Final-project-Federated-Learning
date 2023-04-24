-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1.2 (64-bit)
-- Version: 2022.1.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tiled_conv_tiled_conv_Pipeline_VITIS_LOOP_69_2_VITIS_LOOP_70_3 is
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
    conv_out_buf_V_0_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    conv_out_buf_V_0_ce0 : OUT STD_LOGIC;
    conv_out_buf_V_0_q0 : IN STD_LOGIC_VECTOR (14 downto 0);
    conv_out_buf_V_0_address1 : OUT STD_LOGIC_VECTOR (5 downto 0);
    conv_out_buf_V_0_ce1 : OUT STD_LOGIC;
    conv_out_buf_V_0_q1 : IN STD_LOGIC_VECTOR (14 downto 0);
    conv_out_buf_V_0_address2 : OUT STD_LOGIC_VECTOR (5 downto 0);
    conv_out_buf_V_0_ce2 : OUT STD_LOGIC;
    conv_out_buf_V_0_q2 : IN STD_LOGIC_VECTOR (14 downto 0);
    conv_out_buf_V_0_address3 : OUT STD_LOGIC_VECTOR (5 downto 0);
    conv_out_buf_V_0_ce3 : OUT STD_LOGIC;
    conv_out_buf_V_0_q3 : IN STD_LOGIC_VECTOR (14 downto 0) );
end;


architecture behav of tiled_conv_tiled_conv_Pipeline_VITIS_LOOP_69_2_VITIS_LOOP_70_3 is 
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
    constant ap_const_lv4_9 : STD_LOGIC_VECTOR (3 downto 0) := "1001";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln69_fu_146_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal select_ln69_fu_176_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln69_reg_424 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln69_1_fu_184_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln69_1_reg_430 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln79_fu_288_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln79_reg_438 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln79_reg_438_pp0_iter2_reg : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln79_reg_438_pp0_iter3_reg : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln76_fu_365_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal select_ln76_reg_463 : STD_LOGIC_VECTOR (14 downto 0);
    signal conv_out_buf_V_0_load_2_reg_469 : STD_LOGIC_VECTOR (14 downto 0);
    signal conv_out_buf_V_0_load_3_reg_475 : STD_LOGIC_VECTOR (14 downto 0);
    signal select_ln76_2_fu_388_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal select_ln76_2_reg_481 : STD_LOGIC_VECTOR (14 downto 0);
    signal zext_ln1695_2_fu_311_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln1695_3_fu_322_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln1695_5_fu_343_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln1695_6_fu_354_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln79_3_fu_395_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal j_fu_54 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln70_fu_192_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_j_load : STD_LOGIC_VECTOR (1 downto 0);
    signal i_fu_58 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_sig_allocacmp_i_load : STD_LOGIC_VECTOR (1 downto 0);
    signal indvar_flatten20_fu_62 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln69_1_fu_152_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_sig_allocacmp_indvar_flatten20_load : STD_LOGIC_VECTOR (3 downto 0);
    signal icmp_ln70_fu_170_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln69_fu_164_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_s_fu_216_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln79_fu_213_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_1_fu_240_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln79_1_fu_223_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln73_mid2_v_fu_233_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln69_fu_253_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_3_fu_267_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_2_fu_259_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln1695_fu_275_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal sub_ln79_fu_227_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln79_2_fu_285_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_4_fu_294_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal sub_ln1695_fu_247_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln1695_1_fu_301_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln1695_fu_305_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal sub_ln1695_1_fu_279_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln1695_1_fu_316_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal or_ln75_fu_327_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal zext_ln1695_4_fu_333_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln1695_2_fu_337_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln1695_3_fu_348_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln1695_fu_359_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1695_1_fu_373_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln76_1_fu_377_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal icmp_ln1695_2_fu_383_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter3_reg : STD_LOGIC;
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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter3_reg = ap_const_logic_1))) then 
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


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
                end if; 
            end if;
        end if;
    end process;


    i_fu_58_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln69_fu_146_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_fu_58 <= select_ln69_1_fu_184_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_58 <= ap_const_lv2_0;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten20_fu_62_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln69_fu_146_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    indvar_flatten20_fu_62 <= add_ln69_1_fu_152_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten20_fu_62 <= ap_const_lv4_0;
                end if;
            end if; 
        end if;
    end process;

    j_fu_54_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln69_fu_146_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    j_fu_54 <= add_ln70_fu_192_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    j_fu_54 <= ap_const_lv2_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                add_ln79_reg_438 <= add_ln79_fu_288_p2;
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                add_ln79_reg_438_pp0_iter2_reg <= add_ln79_reg_438;
                add_ln79_reg_438_pp0_iter3_reg <= add_ln79_reg_438_pp0_iter2_reg;
                ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
                select_ln76_2_reg_481 <= select_ln76_2_fu_388_p3;
                select_ln76_reg_463 <= select_ln76_fu_365_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then
                conv_out_buf_V_0_load_2_reg_469 <= conv_out_buf_V_0_q1;
                conv_out_buf_V_0_load_3_reg_475 <= conv_out_buf_V_0_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln69_fu_146_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                select_ln69_1_reg_430 <= select_ln69_1_fu_184_p3;
                select_ln69_reg_424 <= select_ln69_fu_176_p3;
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
    add_ln1695_1_fu_316_p2 <= std_logic_vector(unsigned(sub_ln1695_1_fu_279_p2) + unsigned(zext_ln1695_1_fu_301_p1));
    add_ln1695_2_fu_337_p2 <= std_logic_vector(unsigned(sub_ln1695_fu_247_p2) + unsigned(zext_ln1695_4_fu_333_p1));
    add_ln1695_3_fu_348_p2 <= std_logic_vector(unsigned(sub_ln1695_1_fu_279_p2) + unsigned(zext_ln1695_4_fu_333_p1));
    add_ln1695_fu_305_p2 <= std_logic_vector(unsigned(sub_ln1695_fu_247_p2) + unsigned(zext_ln1695_1_fu_301_p1));
    add_ln69_1_fu_152_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten20_load) + unsigned(ap_const_lv4_1));
    add_ln69_fu_164_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_load) + unsigned(ap_const_lv2_1));
    add_ln70_fu_192_p2 <= std_logic_vector(unsigned(select_ln69_fu_176_p3) + unsigned(ap_const_lv2_1));
    add_ln79_fu_288_p2 <= std_logic_vector(unsigned(sub_ln79_fu_227_p2) + unsigned(zext_ln79_2_fu_285_p1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter4 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln69_fu_146_p2)
    begin
        if (((icmp_ln69_fu_146_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter3_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter3_reg = ap_const_logic_1))) then 
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4)
    begin
        if (((ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
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


    ap_sig_allocacmp_i_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, i_fu_58)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i_load <= ap_const_lv2_0;
        else 
            ap_sig_allocacmp_i_load <= i_fu_58;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten20_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, indvar_flatten20_fu_62)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_indvar_flatten20_load <= ap_const_lv4_0;
        else 
            ap_sig_allocacmp_indvar_flatten20_load <= indvar_flatten20_fu_62;
        end if; 
    end process;


    ap_sig_allocacmp_j_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, j_fu_54, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_j_load <= ap_const_lv2_0;
        else 
            ap_sig_allocacmp_j_load <= j_fu_54;
        end if; 
    end process;

    conv_out_buf_V_0_address0 <= zext_ln1695_6_fu_354_p1(6 - 1 downto 0);
    conv_out_buf_V_0_address1 <= zext_ln1695_3_fu_322_p1(6 - 1 downto 0);
    conv_out_buf_V_0_address2 <= zext_ln1695_5_fu_343_p1(6 - 1 downto 0);
    conv_out_buf_V_0_address3 <= zext_ln1695_2_fu_311_p1(6 - 1 downto 0);

    conv_out_buf_V_0_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            conv_out_buf_V_0_ce0 <= ap_const_logic_1;
        else 
            conv_out_buf_V_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    conv_out_buf_V_0_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            conv_out_buf_V_0_ce1 <= ap_const_logic_1;
        else 
            conv_out_buf_V_0_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    conv_out_buf_V_0_ce2_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            conv_out_buf_V_0_ce2 <= ap_const_logic_1;
        else 
            conv_out_buf_V_0_ce2 <= ap_const_logic_0;
        end if; 
    end process;


    conv_out_buf_V_0_ce3_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            conv_out_buf_V_0_ce3 <= ap_const_logic_1;
        else 
            conv_out_buf_V_0_ce3 <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln1695_1_fu_373_p2 <= "1" when (unsigned(conv_out_buf_V_0_load_2_reg_469) > unsigned(select_ln76_reg_463)) else "0";
    icmp_ln1695_2_fu_383_p2 <= "1" when (unsigned(conv_out_buf_V_0_load_3_reg_475) > unsigned(select_ln76_1_fu_377_p3)) else "0";
    icmp_ln1695_fu_359_p2 <= "1" when (unsigned(conv_out_buf_V_0_q2) > unsigned(conv_out_buf_V_0_q3)) else "0";
    icmp_ln69_fu_146_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten20_load = ap_const_lv4_9) else "0";
    icmp_ln70_fu_170_p2 <= "1" when (ap_sig_allocacmp_j_load = ap_const_lv2_3) else "0";
    max_pool_out_buf_V_0_address0 <= zext_ln79_3_fu_395_p1(4 - 1 downto 0);

    max_pool_out_buf_V_0_ce0_assign_proc : process(ap_enable_reg_pp0_iter4, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1))) then 
            max_pool_out_buf_V_0_ce0 <= ap_const_logic_1;
        else 
            max_pool_out_buf_V_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    max_pool_out_buf_V_0_d0 <= select_ln76_2_reg_481;

    max_pool_out_buf_V_0_we0_assign_proc : process(ap_enable_reg_pp0_iter4, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1))) then 
            max_pool_out_buf_V_0_we0 <= ap_const_logic_1;
        else 
            max_pool_out_buf_V_0_we0 <= ap_const_logic_0;
        end if; 
    end process;

    or_ln69_fu_253_p2 <= (zext_ln73_mid2_v_fu_233_p3 or ap_const_lv3_1);
    or_ln75_fu_327_p2 <= (tmp_4_fu_294_p3 or ap_const_lv3_1);
    select_ln69_1_fu_184_p3 <= 
        add_ln69_fu_164_p2 when (icmp_ln70_fu_170_p2(0) = '1') else 
        ap_sig_allocacmp_i_load;
    select_ln69_fu_176_p3 <= 
        ap_const_lv2_0 when (icmp_ln70_fu_170_p2(0) = '1') else 
        ap_sig_allocacmp_j_load;
    select_ln76_1_fu_377_p3 <= 
        conv_out_buf_V_0_load_2_reg_469 when (icmp_ln1695_1_fu_373_p2(0) = '1') else 
        select_ln76_reg_463;
    select_ln76_2_fu_388_p3 <= 
        conv_out_buf_V_0_load_3_reg_475 when (icmp_ln1695_2_fu_383_p2(0) = '1') else 
        select_ln76_1_fu_377_p3;
    select_ln76_fu_365_p3 <= 
        conv_out_buf_V_0_q2 when (icmp_ln1695_fu_359_p2(0) = '1') else 
        conv_out_buf_V_0_q3;
    sub_ln1695_1_fu_279_p2 <= std_logic_vector(unsigned(tmp_2_fu_259_p3) - unsigned(zext_ln1695_fu_275_p1));
    sub_ln1695_fu_247_p2 <= std_logic_vector(unsigned(tmp_1_fu_240_p3) - unsigned(zext_ln79_1_fu_223_p1));
    sub_ln79_fu_227_p2 <= std_logic_vector(unsigned(tmp_s_fu_216_p3) - unsigned(zext_ln79_fu_213_p1));
    tmp_1_fu_240_p3 <= (select_ln69_1_reg_430 & ap_const_lv4_0);
    tmp_2_fu_259_p3 <= (or_ln69_fu_253_p2 & ap_const_lv3_0);
    tmp_3_fu_267_p3 <= (or_ln69_fu_253_p2 & ap_const_lv1_0);
    tmp_4_fu_294_p3 <= (select_ln69_reg_424 & ap_const_lv1_0);
    tmp_s_fu_216_p3 <= (select_ln69_1_reg_430 & ap_const_lv2_0);
    zext_ln1695_1_fu_301_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_4_fu_294_p3),6));
    zext_ln1695_2_fu_311_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln1695_fu_305_p2),64));
    zext_ln1695_3_fu_322_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln1695_1_fu_316_p2),64));
    zext_ln1695_4_fu_333_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln75_fu_327_p2),6));
    zext_ln1695_5_fu_343_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln1695_2_fu_337_p2),64));
    zext_ln1695_6_fu_354_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln1695_3_fu_348_p2),64));
    zext_ln1695_fu_275_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_3_fu_267_p3),6));
    zext_ln73_mid2_v_fu_233_p3 <= (select_ln69_1_reg_430 & ap_const_lv1_0);
    zext_ln79_1_fu_223_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_216_p3),6));
    zext_ln79_2_fu_285_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln69_reg_424),4));
    zext_ln79_3_fu_395_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln79_reg_438_pp0_iter3_reg),64));
    zext_ln79_fu_213_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln69_1_reg_430),4));
end behav;
