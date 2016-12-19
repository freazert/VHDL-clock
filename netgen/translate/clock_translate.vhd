--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.49d
--  \   \         Application: netgen
--  /   /         Filename: clock_translate.vhd
-- /___/   /\     Timestamp: Fri Dec 16 16:43:37 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm clock -w -dir netgen/translate -ofmt vhdl -sim clock.ngd clock_translate.vhd 
-- Device	: 6slx16csg324-3
-- Input file	: clock.ngd
-- Output file	: D:\School UAntwerpen\Electronica-1\Labo Digitaal\clock-v2\clock-vhdl-2\netgen\translate\clock_translate.vhd
-- # of Entities	: 1
-- Design Name	: clock
-- Xilinx	: D:\Xilinx\14.4\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity clock is
  port (
    sysclk : in STD_LOGIC := 'X'; 
    btn_l : in STD_LOGIC := 'X'; 
    btn_r : in STD_LOGIC := 'X'; 
    btn_c : in STD_LOGIC := 'X'; 
    btn_u : in STD_LOGIC := 'X'; 
    btn_d : in STD_LOGIC := 'X'; 
    led_alarm_buzzing : out STD_LOGIC; 
    led_alarm_on : out STD_LOGIC; 
    an : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    cath : out STD_LOGIC_VECTOR ( 6 downto 0 ); 
    sel_out : out STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end clock;

architecture Structure of clock is
  signal sysclk_BUFGP : STD_LOGIC; 
  signal btn_l_IBUF_4 : STD_LOGIC; 
  signal btn_r_IBUF_5 : STD_LOGIC; 
  signal btn_c_IBUF_6 : STD_LOGIC; 
  signal btn_u_IBUF_7 : STD_LOGIC; 
  signal btn_d_IBUF_8 : STD_LOGIC; 
  signal pulse_1ms : STD_LOGIC; 
  signal pulse_10ms : STD_LOGIC; 
  signal pulse_100ms : STD_LOGIC; 
  signal pulse_1s : STD_LOGIC; 
  signal BUTTONS1_B1_one_pulse1_current_state_FSM_FFd2_13 : STD_LOGIC; 
  signal BUTTONS1_B2_one_pulse1_current_state_FSM_FFd2_14 : STD_LOGIC; 
  signal BUTTONS1_B3_one_pulse1_current_state_FSM_FFd2_15 : STD_LOGIC; 
  signal BUTTONS1_B4_one_pulse1_current_state_FSM_FFd2_16 : STD_LOGIC; 
  signal BUTTONS1_B5_one_pulse1_current_state_FSM_FFd2_17 : STD_LOGIC; 
  signal S_U1_active_22 : STD_LOGIC; 
  signal S_U2_active_26 : STD_LOGIC; 
  signal S_U3_active_30 : STD_LOGIC; 
  signal ALARMCLOCK_count_t_21_31 : STD_LOGIC; 
  signal ALARMCLOCK_count_t_20_32 : STD_LOGIC; 
  signal ALARMCLOCK_count_t_19_33 : STD_LOGIC; 
  signal ALARMCLOCK_count_t_18_34 : STD_LOGIC; 
  signal ALARMCLOCK_count_t_17_35 : STD_LOGIC; 
  signal ALARMCLOCK_count_t_16_36 : STD_LOGIC; 
  signal ALARMCLOCK_count_t_14_37 : STD_LOGIC; 
  signal ALARMCLOCK_count_t_13_38 : STD_LOGIC; 
  signal ALARMCLOCK_count_t_12_39 : STD_LOGIC; 
  signal ALARMCLOCK_count_t_11_40 : STD_LOGIC; 
  signal ALARMCLOCK_count_t_10_41 : STD_LOGIC; 
  signal ALARMCLOCK_count_t_9_42 : STD_LOGIC; 
  signal ALARMCLOCK_count_t_8_43 : STD_LOGIC; 
  signal ALARMCLOCK_count_t_6_44 : STD_LOGIC; 
  signal ALARMCLOCK_count_t_5_45 : STD_LOGIC; 
  signal ALARMCLOCK_count_t_4_46 : STD_LOGIC; 
  signal ALARMCLOCK_count_t_3_47 : STD_LOGIC; 
  signal ALARMCLOCK_count_t_2_48 : STD_LOGIC; 
  signal ALARMCLOCK_count_t_1_49 : STD_LOGIC; 
  signal ALARMCLOCK_count_t_0_50 : STD_LOGIC; 
  signal ALARMCLOCK_A1_alarmOutput_21_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_alarmOutput_20_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_alarmOutput_19_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_alarmOutput_18_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_alarmOutput_17_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_alarmOutput_16_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_alarmOutput_14_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_alarmOutput_13_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_alarmOutput_12_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_alarmOutput_11_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_alarmOutput_10_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_alarmOutput_9_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_alarmOutput_8_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_alarmOutput_6_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_alarmOutput_5_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_alarmOutput_4_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_alarmOutput_3_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_alarmOutput_2_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_alarmOutput_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_alarmOutput_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_ledOn_95 : STD_LOGIC; 
  signal ALARMCLOCK_A1_ledOut_96 : STD_LOGIC; 
  signal cath_6_OBUF_101 : STD_LOGIC; 
  signal cath_5_OBUF_102 : STD_LOGIC; 
  signal cath_4_OBUF_103 : STD_LOGIC; 
  signal cath_3_OBUF_104 : STD_LOGIC; 
  signal cath_2_OBUF_105 : STD_LOGIC; 
  signal cath_1_OBUF_106 : STD_LOGIC; 
  signal cath_0_OBUF_107 : STD_LOGIC; 
  signal an_3_OBUF_108 : STD_LOGIC; 
  signal an_2_OBUF_109 : STD_LOGIC; 
  signal an_1_OBUF_110 : STD_LOGIC; 
  signal an_0_OBUF_111 : STD_LOGIC; 
  signal reset_112 : STD_LOGIC; 
  signal init_113 : STD_LOGIC; 
  signal sel_out_2_OBUF_114 : STD_LOGIC; 
  signal S_current_edit_FSM_FFd1_115 : STD_LOGIC; 
  signal S_current_edit_FSM_FFd2_116 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal init_inv : STD_LOGIC; 
  signal DATATODISPLAY_B1_istate_3_GND_151_o_wide_mux_0_OUT_3_Q : STD_LOGIC; 
  signal DATATODISPLAY_B1_blink_on_INV_60_o : STD_LOGIC; 
  signal DATATODISPLAY_B1_n0013 : STD_LOGIC; 
  signal DATATODISPLAY_B1_n0023 : STD_LOGIC; 
  signal DATATODISPLAY_B1_blink_on_213 : STD_LOGIC; 
  signal Result_5_1 : STD_LOGIC; 
  signal Result_6_1 : STD_LOGIC; 
  signal Result_7_1 : STD_LOGIC; 
  signal Result_8_1 : STD_LOGIC; 
  signal Result_9_1 : STD_LOGIC; 
  signal Result_10_1 : STD_LOGIC; 
  signal Result_11_1 : STD_LOGIC; 
  signal Result_12_1 : STD_LOGIC; 
  signal Result_13_1 : STD_LOGIC; 
  signal Result_14_1 : STD_LOGIC; 
  signal Result_15_1 : STD_LOGIC; 
  signal Result_16_1 : STD_LOGIC; 
  signal Result_6_2 : STD_LOGIC; 
  signal Result_7_2 : STD_LOGIC; 
  signal Result_8_2 : STD_LOGIC; 
  signal Result_9_2 : STD_LOGIC; 
  signal Result_10_2 : STD_LOGIC; 
  signal Result_11_2 : STD_LOGIC; 
  signal Result_12_2 : STD_LOGIC; 
  signal Result_13_2 : STD_LOGIC; 
  signal Result_14_2 : STD_LOGIC; 
  signal Result_15_2 : STD_LOGIC; 
  signal Result_16_2 : STD_LOGIC; 
  signal Result_17_1 : STD_LOGIC; 
  signal Result_18_1 : STD_LOGIC; 
  signal Result_19_1 : STD_LOGIC; 
  signal Result_7_3 : STD_LOGIC; 
  signal Result_8_3 : STD_LOGIC; 
  signal Result_9_3 : STD_LOGIC; 
  signal Result_10_3 : STD_LOGIC; 
  signal Result_11_3 : STD_LOGIC; 
  signal Result_12_3 : STD_LOGIC; 
  signal Result_13_3 : STD_LOGIC; 
  signal Result_14_3 : STD_LOGIC; 
  signal Result_15_3 : STD_LOGIC; 
  signal Result_16_3 : STD_LOGIC; 
  signal Result_17_2 : STD_LOGIC; 
  signal Result_18_2 : STD_LOGIC; 
  signal Result_19_2 : STD_LOGIC; 
  signal Result_20_1 : STD_LOGIC; 
  signal Result_21_1 : STD_LOGIC; 
  signal Result_22_1 : STD_LOGIC; 
  signal Result_23_1 : STD_LOGIC; 
  signal BUTTONS1_B1_one_pulse1_current_state_FSM_FFd3_In : STD_LOGIC; 
  signal BUTTONS1_B1_one_pulse1_current_state_FSM_FFd2_In : STD_LOGIC; 
  signal BUTTONS1_B1_one_pulse1_current_state_FSM_FFd3_292 : STD_LOGIC; 
  signal BUTTONS1_B2_one_pulse1_current_state_FSM_FFd3_In : STD_LOGIC; 
  signal BUTTONS1_B2_one_pulse1_current_state_FSM_FFd2_In : STD_LOGIC; 
  signal BUTTONS1_B2_one_pulse1_current_state_FSM_FFd3_295 : STD_LOGIC; 
  signal BUTTONS1_B3_one_pulse1_current_state_FSM_FFd3_In : STD_LOGIC; 
  signal BUTTONS1_B3_one_pulse1_current_state_FSM_FFd2_In : STD_LOGIC; 
  signal BUTTONS1_B3_one_pulse1_current_state_FSM_FFd3_298 : STD_LOGIC; 
  signal BUTTONS1_B4_one_pulse1_current_state_FSM_FFd3_In : STD_LOGIC; 
  signal BUTTONS1_B4_one_pulse1_current_state_FSM_FFd2_In : STD_LOGIC; 
  signal BUTTONS1_B4_one_pulse1_current_state_FSM_FFd3_301 : STD_LOGIC; 
  signal BUTTONS1_B5_one_pulse1_current_state_FSM_FFd3_In : STD_LOGIC; 
  signal BUTTONS1_B5_one_pulse1_current_state_FSM_FFd2_In : STD_LOGIC; 
  signal BUTTONS1_B5_one_pulse1_current_state_FSM_FFd3_304 : STD_LOGIC; 
  signal W1_C1_Mram_dignr_int_1_GND_153_o_wide_mux_0_OUT : STD_LOGIC; 
  signal W1_C1_Mram_dignr_int_1_GND_153_o_wide_mux_0_OUT1 : STD_LOGIC; 
  signal W1_C1_Mmux_bcdout121_395 : STD_LOGIC; 
  signal S_current_edit_FSM_FFd1_In : STD_LOGIC; 
  signal S_current_edit_FSM_FFd2_In : STD_LOGIC; 
  signal S_n0051_inv : STD_LOGIC; 
  signal S_alarm_is_buzzing_inv : STD_LOGIC; 
  signal S_PWR_14_o_s_ostate_2_mux_5_OUT_2_Q : STD_LOGIC; 
  signal S_current_edit_0_INV_29_o : STD_LOGIC; 
  signal S_current_edit_1_INV_30_o : STD_LOGIC; 
  signal S_current_edit_1_X_14_o_wide_mux_8_OUT_0_Q : STD_LOGIC; 
  signal S_current_edit_1_X_14_o_wide_mux_8_OUT_1_Q : STD_LOGIC; 
  signal S_current_edit_1_X_14_o_wide_mux_8_OUT_2_Q : STD_LOGIC; 
  signal S_current_edit_1_X_14_o_wide_mux_8_OUT_3_Q : STD_LOGIC; 
  signal S_current_edit_1_X_14_o_wide_mux_8_OUT_4_Q : STD_LOGIC; 
  signal S_current_edit_1_X_14_o_wide_mux_8_OUT_5_Q : STD_LOGIC; 
  signal S_current_edit_1_X_14_o_wide_mux_8_OUT_6_Q : STD_LOGIC; 
  signal S_current_edit_1_X_14_o_wide_mux_8_OUT_7_Q : STD_LOGIC; 
  signal S_current_edit_1_X_14_o_wide_mux_8_OUT_8_Q : STD_LOGIC; 
  signal S_current_edit_1_X_14_o_Mux_9_o : STD_LOGIC; 
  signal ALARMCLOCK_T1_endEdit_0 : STD_LOGIC; 
  signal ALARMCLOCK_T1_present_state_FSM_FFd1_In1 : STD_LOGIC; 
  signal ALARMCLOCK_T1_present_state_FSM_FFd2_In1 : STD_LOGIC; 
  signal ALARMCLOCK_T1_cntenT3 : STD_LOGIC; 
  signal ALARMCLOCK_T1_cntenT2_437 : STD_LOGIC; 
  signal ALARMCLOCK_T1_upDwn : STD_LOGIC; 
  signal ALARMCLOCK_T1_cntenT1 : STD_LOGIC; 
  signal ALARMCLOCK_T1_present_state_FSM_FFd2_440 : STD_LOGIC; 
  signal ALARMCLOCK_T1_present_state_FSM_FFd1_441 : STD_LOGIC; 
  signal ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Umin_3_mux_30_OUT41_442 : STD_LOGIC; 
  signal ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q_443 : STD_LOGIC; 
  signal ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T3_n0150_inv : STD_LOGIC; 
  signal ALARMCLOCK_T1_T3_n0142_inv : STD_LOGIC; 
  signal ALARMCLOCK_T1_T3_Tmax_3_Umax_3_OR_92_o : STD_LOGIC; 
  signal ALARMCLOCK_T1_T3_Umin_3_Tmin_3_AND_21_o : STD_LOGIC; 
  signal ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_2_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_B_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T3_n0127_455 : STD_LOGIC; 
  signal ALARMCLOCK_T1_T3_Ucnt_3_Umin_3_mux_30_OUT_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T3_Ucnt_3_Umin_3_mux_30_OUT_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T3_Ucnt_3_Umin_3_mux_30_OUT_2_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T3_Ucnt_3_Umin_3_mux_30_OUT_3_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T3_Tcnt_3_Tmin_3_mux_27_OUT_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T3_Tcnt_3_Tmin_3_mux_27_OUT_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T3_upDwn_cnten_AND_12_o : STD_LOGIC; 
  signal ALARMCLOCK_T1_T2_Mmux_Ucnt_3_Umin_3_mux_30_OUT41_463 : STD_LOGIC; 
  signal ALARMCLOCK_T1_T2_Mmux_Tcnt_3_Tmin_3_mux_27_OUT41 : STD_LOGIC; 
  signal ALARMCLOCK_T1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q_465 : STD_LOGIC; 
  signal ALARMCLOCK_T1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T2_n0150_inv : STD_LOGIC; 
  signal ALARMCLOCK_T1_T2_n0142_inv : STD_LOGIC; 
  signal ALARMCLOCK_T1_T2_Tmax_3_Umax_3_OR_92_o_471 : STD_LOGIC; 
  signal ALARMCLOCK_T1_T2_Umin_3_Tmin_3_AND_21_o_472 : STD_LOGIC; 
  signal ALARMCLOCK_T1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_B_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_A_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T2_n0127_476 : STD_LOGIC; 
  signal ALARMCLOCK_T1_T2_Ucnt_3_Umin_3_mux_30_OUT_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T2_Ucnt_3_Umin_3_mux_30_OUT_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T2_Ucnt_3_Umin_3_mux_30_OUT_2_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T2_Ucnt_3_Umin_3_mux_30_OUT_3_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T2_Tcnt_3_Tmin_3_mux_27_OUT_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T2_Tcnt_3_Tmin_3_mux_27_OUT_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T2_Tcnt_3_Tmin_3_mux_27_OUT_2_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T2_upDwn_cnten_AND_12_o : STD_LOGIC; 
  signal ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT41_485 : STD_LOGIC; 
  signal ALARMCLOCK_T1_T1_Mmux_Tcnt_3_Tmin_3_mux_27_OUT41 : STD_LOGIC; 
  signal ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q_487 : STD_LOGIC; 
  signal ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T1_n0150_inv : STD_LOGIC; 
  signal ALARMCLOCK_T1_T1_n0142_inv : STD_LOGIC; 
  signal ALARMCLOCK_T1_T1_Tmax_3_Umax_3_OR_92_o_493 : STD_LOGIC; 
  signal ALARMCLOCK_T1_T1_Umin_3_Tmin_3_AND_21_o_494 : STD_LOGIC; 
  signal ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_2_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_A_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T1_n0127_498 : STD_LOGIC; 
  signal ALARMCLOCK_T1_T1_Ucnt_3_Umin_3_mux_30_OUT_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T1_Ucnt_3_Umin_3_mux_30_OUT_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T1_Ucnt_3_Umin_3_mux_30_OUT_2_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T1_Ucnt_3_Umin_3_mux_30_OUT_3_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T1_Tcnt_3_Tmin_3_mux_27_OUT_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T1_Tcnt_3_Tmin_3_mux_27_OUT_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T1_Tcnt_3_Tmin_3_mux_27_OUT_2_Q : STD_LOGIC; 
  signal ALARMCLOCK_T1_T1_upDwn_cnten_AND_12_o : STD_LOGIC; 
  signal ALARMCLOCK_D1_T1_Tcnt_3_Tmin_3_mux_27_OUT_3_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T1_Tcnt_3_Tmin_3_mux_27_OUT_2_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T1_Tcnt_3_Tmin_3_mux_27_OUT_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T1_Tcnt_3_Tmin_3_mux_27_OUT_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T1_Ucnt_3_Umin_3_mux_30_OUT_3_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T1_Ucnt_3_Umin_3_mux_30_OUT_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T1_Ucnt_3_Umin_3_mux_30_OUT_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T1_n0127_514 : STD_LOGIC; 
  signal ALARMCLOCK_D1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_B_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_2_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T1_Umin_3_Tmin_3_AND_21_o_518 : STD_LOGIC; 
  signal ALARMCLOCK_D1_T1_Tmax_3_Umax_3_OR_92_o_519 : STD_LOGIC; 
  signal ALARMCLOCK_D1_T1_n0142_inv : STD_LOGIC; 
  signal ALARMCLOCK_D1_T1_n0150_inv : STD_LOGIC; 
  signal ALARMCLOCK_D1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_2_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_3_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_2_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q_525 : STD_LOGIC; 
  signal ALARMCLOCK_D1_T1_Mmux_Tcnt_3_Tmin_3_mux_27_OUT41 : STD_LOGIC; 
  signal ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT41 : STD_LOGIC; 
  signal ALARMCLOCK_D1_T2_upDwn_cnten_AND_12_o : STD_LOGIC; 
  signal ALARMCLOCK_D1_T2_Tcnt_3_Tmin_3_mux_27_OUT_3_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T2_Tcnt_3_Tmin_3_mux_27_OUT_2_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T2_Tcnt_3_Tmin_3_mux_27_OUT_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T2_Tcnt_3_Tmin_3_mux_27_OUT_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T2_Ucnt_3_Umin_3_mux_30_OUT_3_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T2_Ucnt_3_Umin_3_mux_30_OUT_2_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T2_Ucnt_3_Umin_3_mux_30_OUT_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T2_Ucnt_3_Umin_3_mux_30_OUT_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T2_n0127_537 : STD_LOGIC; 
  signal ALARMCLOCK_D1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_A_2_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_B_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_2_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T2_Umin_3_Tmin_3_AND_21_o_543 : STD_LOGIC; 
  signal ALARMCLOCK_D1_T2_Tmax_3_Umax_3_OR_92_o_544 : STD_LOGIC; 
  signal ALARMCLOCK_D1_T2_n0142_inv : STD_LOGIC; 
  signal ALARMCLOCK_D1_T2_n0150_inv : STD_LOGIC; 
  signal ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q_547 : STD_LOGIC; 
  signal ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q_548 : STD_LOGIC; 
  signal ALARMCLOCK_D1_T2_Mmux_Tcnt_3_Tmin_3_mux_27_OUT41 : STD_LOGIC; 
  signal ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Umin_3_mux_30_OUT41 : STD_LOGIC; 
  signal ALARMCLOCK_D1_T3_upDwn_cnten_AND_12_o : STD_LOGIC; 
  signal ALARMCLOCK_D1_T3_Tcnt_3_Tmin_3_mux_27_OUT_3_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T3_Tcnt_3_Tmin_3_mux_27_OUT_2_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T3_Tcnt_3_Tmin_3_mux_27_OUT_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T3_Tcnt_3_Tmin_3_mux_27_OUT_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T3_Ucnt_3_Umin_3_mux_30_OUT_3_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T3_Ucnt_3_Umin_3_mux_30_OUT_2_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T3_Ucnt_3_Umin_3_mux_30_OUT_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T3_Ucnt_3_Umin_3_mux_30_OUT_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T3_n0127_560 : STD_LOGIC; 
  signal ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_A_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_A_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_B_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T3_Umin_3_Tmin_3_AND_21_o_566 : STD_LOGIC; 
  signal ALARMCLOCK_D1_T3_Tmax_3_Umax_3_OR_92_o : STD_LOGIC; 
  signal ALARMCLOCK_D1_T3_n0142_inv : STD_LOGIC; 
  signal ALARMCLOCK_D1_T3_n0150_inv : STD_LOGIC; 
  signal ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_2_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_3_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q_573 : STD_LOGIC; 
  signal ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_2_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q_576 : STD_LOGIC; 
  signal ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Umin_3_mux_30_OUT41 : STD_LOGIC; 
  signal ALARMCLOCK_D1_SD_Mmux_DayUout23 : STD_LOGIC; 
  signal ALARMCLOCK_D1_Udaycheck_3_Uday_3_LessThan_21_o1 : STD_LOGIC; 
  signal ALARMCLOCK_D1_endEdit_0 : STD_LOGIC; 
  signal ALARMCLOCK_D1_present_state_FSM_FFd1_In1 : STD_LOGIC; 
  signal ALARMCLOCK_D1_present_state_FSM_FFd2_In1 : STD_LOGIC; 
  signal ALARMCLOCK_D1_setMaxDay_4_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_setMaxDay_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_setMaxDay_3_Q : STD_LOGIC; 
  signal ALARMCLOCK_D1_cntenT3 : STD_LOGIC; 
  signal ALARMCLOCK_D1_cntenT2 : STD_LOGIC; 
  signal ALARMCLOCK_D1_cntenT1 : STD_LOGIC; 
  signal ALARMCLOCK_D1_upDwn : STD_LOGIC; 
  signal ALARMCLOCK_D1_present_state_FSM_FFd2_590 : STD_LOGIC; 
  signal ALARMCLOCK_D1_present_state_FSM_FFd1_591 : STD_LOGIC; 
  signal ALARMCLOCK_A1_T1_upDwn_cnten_AND_12_o : STD_LOGIC; 
  signal ALARMCLOCK_A1_T1_Tcnt_3_Tmin_3_mux_27_OUT_2_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T1_Tcnt_3_Tmin_3_mux_27_OUT_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T1_Tcnt_3_Tmin_3_mux_27_OUT_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T1_Ucnt_3_Umin_3_mux_30_OUT_3_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T1_Ucnt_3_Umin_3_mux_30_OUT_2_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T1_Ucnt_3_Umin_3_mux_30_OUT_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T1_Ucnt_3_Umin_3_mux_30_OUT_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T1_n0127_600 : STD_LOGIC; 
  signal ALARMCLOCK_A1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_A_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_2_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T1_Umin_3_Tmin_3_AND_21_o_604 : STD_LOGIC; 
  signal ALARMCLOCK_A1_T1_Tmax_3_Umax_3_OR_92_o_605 : STD_LOGIC; 
  signal ALARMCLOCK_A1_T1_n0142_inv : STD_LOGIC; 
  signal ALARMCLOCK_A1_T1_n0150_inv : STD_LOGIC; 
  signal ALARMCLOCK_A1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q_610 : STD_LOGIC; 
  signal ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q_612 : STD_LOGIC; 
  signal ALARMCLOCK_A1_T1_Mmux_Tcnt_3_Tmin_3_mux_27_OUT41 : STD_LOGIC; 
  signal ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT41 : STD_LOGIC; 
  signal ALARMCLOCK_A1_T2_upDwn_cnten_AND_12_o : STD_LOGIC; 
  signal ALARMCLOCK_A1_T2_Tcnt_3_Tmin_3_mux_27_OUT_2_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T2_Tcnt_3_Tmin_3_mux_27_OUT_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T2_Tcnt_3_Tmin_3_mux_27_OUT_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T2_Ucnt_3_Umin_3_mux_30_OUT_3_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T2_Ucnt_3_Umin_3_mux_30_OUT_2_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T2_Ucnt_3_Umin_3_mux_30_OUT_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T2_Ucnt_3_Umin_3_mux_30_OUT_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T2_n0127_623 : STD_LOGIC; 
  signal ALARMCLOCK_A1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_A_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_2_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T2_Umin_3_Tmin_3_AND_21_o_627 : STD_LOGIC; 
  signal ALARMCLOCK_A1_T2_Tmax_3_Umax_3_OR_92_o_628 : STD_LOGIC; 
  signal ALARMCLOCK_A1_T2_n0142_inv : STD_LOGIC; 
  signal ALARMCLOCK_A1_T2_n0150_inv : STD_LOGIC; 
  signal ALARMCLOCK_A1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q_633 : STD_LOGIC; 
  signal ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q_635 : STD_LOGIC; 
  signal ALARMCLOCK_A1_T2_Mmux_Tcnt_3_Tmin_3_mux_27_OUT41 : STD_LOGIC; 
  signal ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Umin_3_mux_30_OUT41 : STD_LOGIC; 
  signal ALARMCLOCK_A1_T3_upDwn_cnten_AND_12_o : STD_LOGIC; 
  signal ALARMCLOCK_A1_T3_Tcnt_3_Tmin_3_mux_27_OUT_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T3_Tcnt_3_Tmin_3_mux_27_OUT_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T3_Ucnt_3_Umin_3_mux_30_OUT_3_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T3_Ucnt_3_Umin_3_mux_30_OUT_2_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T3_Ucnt_3_Umin_3_mux_30_OUT_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T3_Ucnt_3_Umin_3_mux_30_OUT_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T3_n0127_645 : STD_LOGIC; 
  signal ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_2_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_1_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_T3_Umin_3_Tmin_3_AND_21_o : STD_LOGIC; 
  signal ALARMCLOCK_A1_T3_Tmax_3_Umax_3_OR_92_o : STD_LOGIC; 
  signal ALARMCLOCK_A1_T3_n0142_inv : STD_LOGIC; 
  signal ALARMCLOCK_A1_T3_n0150_inv : STD_LOGIC; 
  signal ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q_653 : STD_LOGIC; 
  signal ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q_654 : STD_LOGIC; 
  signal ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Umin_3_mux_30_OUT41 : STD_LOGIC; 
  signal ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_7_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_cy_6_Q_657 : STD_LOGIC; 
  signal ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_6_Q_658 : STD_LOGIC; 
  signal ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_cy_5_Q_659 : STD_LOGIC; 
  signal ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_5_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_cy_4_Q_661 : STD_LOGIC; 
  signal ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_4_Q_662 : STD_LOGIC; 
  signal ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_cy_3_Q_663 : STD_LOGIC; 
  signal ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_3_Q_664 : STD_LOGIC; 
  signal ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_cy_2_Q_665 : STD_LOGIC; 
  signal ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_2_Q : STD_LOGIC; 
  signal ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_cy_1_Q_667 : STD_LOGIC; 
  signal ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_1_Q_668 : STD_LOGIC; 
  signal ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_cy_0_Q_669 : STD_LOGIC; 
  signal ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_0_Q_670 : STD_LOGIC; 
  signal ALARMCLOCK_A1_endEdit_0 : STD_LOGIC; 
  signal ALARMCLOCK_A1_present_state_FSM_FFd1_In1 : STD_LOGIC; 
  signal ALARMCLOCK_A1_present_state_FSM_FFd2_In1 : STD_LOGIC; 
  signal ALARMCLOCK_A1_n0067_inv : STD_LOGIC; 
  signal ALARMCLOCK_A1_n0063_inv : STD_LOGIC; 
  signal ALARMCLOCK_A1_onOff_INV_57_o : STD_LOGIC; 
  signal ALARMCLOCK_A1_cntenT3 : STD_LOGIC; 
  signal ALARMCLOCK_A1_cntenT2 : STD_LOGIC; 
  signal ALARMCLOCK_A1_cntenT1 : STD_LOGIC; 
  signal ALARMCLOCK_A1_onOff_680 : STD_LOGIC; 
  signal ALARMCLOCK_A1_upDwn : STD_LOGIC; 
  signal ALARMCLOCK_A1_n0057 : STD_LOGIC; 
  signal ALARMCLOCK_A1_present_state_FSM_FFd2_683 : STD_LOGIC; 
  signal ALARMCLOCK_A1_present_state_FSM_FFd1_684 : STD_LOGIC; 
  signal ALARMCLOCK_A1_countcheck_23_counterInput_23_equal_15_o : STD_LOGIC; 
  signal T1_T1ms_pulse_16_1_708 : STD_LOGIC; 
  signal T1_T1ms_pulse_16_2_709 : STD_LOGIC; 
  signal T1_T10ms_pulse_19_1_711 : STD_LOGIC; 
  signal T1_T10ms_pulse_19_2_712 : STD_LOGIC; 
  signal T1_T100ms_pulse_23_1_714 : STD_LOGIC; 
  signal T1_T100ms_pulse_23_2_715 : STD_LOGIC; 
  signal T1_T100ms_pulse_23_3_716 : STD_LOGIC; 
  signal T1_T1s_pulse_26_1_718 : STD_LOGIC; 
  signal T1_T1s_pulse_26_2_719 : STD_LOGIC; 
  signal W1_C1_Mmux_bcdout12 : STD_LOGIC; 
  signal W1_C1_Mmux_bcdout122_721 : STD_LOGIC; 
  signal W1_C1_Mmux_bcdout123_722 : STD_LOGIC; 
  signal W1_C1_Mmux_bcdout124_723 : STD_LOGIC; 
  signal W1_C1_Mmux_bcdout126_724 : STD_LOGIC; 
  signal W1_C1_Mmux_bcdout16 : STD_LOGIC; 
  signal W1_C1_Mmux_bcdout161_726 : STD_LOGIC; 
  signal W1_C1_Mmux_bcdout162_727 : STD_LOGIC; 
  signal W1_C1_Mmux_bcdout42 : STD_LOGIC; 
  signal W1_C1_Mmux_bcdout43_729 : STD_LOGIC; 
  signal W1_C1_Mmux_bcdout44_730 : STD_LOGIC; 
  signal W1_C1_Mmux_bcdout45_731 : STD_LOGIC; 
  signal W1_C1_Mmux_bcdout46_732 : STD_LOGIC; 
  signal W1_C1_Mmux_bcdout8 : STD_LOGIC; 
  signal W1_C1_Mmux_bcdout81_734 : STD_LOGIC; 
  signal W1_C1_Mmux_bcdout82_735 : STD_LOGIC; 
  signal W1_C1_Mmux_bcdout83_736 : STD_LOGIC; 
  signal W1_C1_Mmux_bcdout84_737 : STD_LOGIC; 
  signal W1_C1_Mmux_bcdout85_738 : STD_LOGIC; 
  signal W1_C1_Mmux_bcdout86_739 : STD_LOGIC; 
  signal SELSHOWFUNC_Mmux_ostate1 : STD_LOGIC; 
  signal SELSHOWFUNC_Mmux_ostate2 : STD_LOGIC; 
  signal SELSHOWFUNC_Mmux_ostate3 : STD_LOGIC; 
  signal SELSHOWFUNC_Mmux_ostate4 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal ALARMCLOCK_T1_T3_n0142_inv1_745 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal ALARMCLOCK_T1_T2_n0142_inv1_748 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal ALARMCLOCK_T1_T1_n0142_inv1_754 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal ALARMCLOCK_D1_T1_n0142_inv1_765 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal ALARMCLOCK_D1_T2_n0142_inv1_769 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal ALARMCLOCK_D1_T3_n0142_inv1_775 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal ALARMCLOCK_D1_Mmux_cntenT31 : STD_LOGIC; 
  signal ALARMCLOCK_D1_Mmux_cntenT311_779 : STD_LOGIC; 
  signal ALARMCLOCK_D1_Mmux_cntenT312_780 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal ALARMCLOCK_D1_Udaycheck_3_Uday_3_LessThan_21_o3_782 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal ALARMCLOCK_A1_T1_n0142_inv1_787 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal ALARMCLOCK_A1_T2_n0142_inv1_792 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal ALARMCLOCK_A1_T3_n0142_inv1_796 : STD_LOGIC; 
  signal T1_T1s_Mcount_cnt_signal_cy_1_rt_819 : STD_LOGIC; 
  signal T1_T1s_Mcount_cnt_signal_cy_2_rt_820 : STD_LOGIC; 
  signal T1_T1s_Mcount_cnt_signal_cy_3_rt_821 : STD_LOGIC; 
  signal T1_T1s_Mcount_cnt_signal_cy_4_rt_822 : STD_LOGIC; 
  signal T1_T1s_Mcount_cnt_signal_cy_5_rt_823 : STD_LOGIC; 
  signal T1_T1s_Mcount_cnt_signal_cy_6_rt_824 : STD_LOGIC; 
  signal T1_T1s_Mcount_cnt_signal_cy_7_rt_825 : STD_LOGIC; 
  signal T1_T1s_Mcount_cnt_signal_cy_8_rt_826 : STD_LOGIC; 
  signal T1_T1s_Mcount_cnt_signal_cy_9_rt_827 : STD_LOGIC; 
  signal T1_T1s_Mcount_cnt_signal_cy_10_rt_828 : STD_LOGIC; 
  signal T1_T1s_Mcount_cnt_signal_cy_11_rt_829 : STD_LOGIC; 
  signal T1_T1s_Mcount_cnt_signal_cy_12_rt_830 : STD_LOGIC; 
  signal T1_T1s_Mcount_cnt_signal_cy_13_rt_831 : STD_LOGIC; 
  signal T1_T1s_Mcount_cnt_signal_cy_14_rt_832 : STD_LOGIC; 
  signal T1_T1s_Mcount_cnt_signal_cy_15_rt_833 : STD_LOGIC; 
  signal T1_T1s_Mcount_cnt_signal_cy_16_rt_834 : STD_LOGIC; 
  signal T1_T1s_Mcount_cnt_signal_cy_17_rt_835 : STD_LOGIC; 
  signal T1_T1s_Mcount_cnt_signal_cy_18_rt_836 : STD_LOGIC; 
  signal T1_T1s_Mcount_cnt_signal_cy_19_rt_837 : STD_LOGIC; 
  signal T1_T1s_Mcount_cnt_signal_cy_20_rt_838 : STD_LOGIC; 
  signal T1_T1s_Mcount_cnt_signal_cy_21_rt_839 : STD_LOGIC; 
  signal T1_T1s_Mcount_cnt_signal_cy_22_rt_840 : STD_LOGIC; 
  signal T1_T1s_Mcount_cnt_signal_cy_23_rt_841 : STD_LOGIC; 
  signal T1_T1s_Mcount_cnt_signal_cy_24_rt_842 : STD_LOGIC; 
  signal T1_T1s_Mcount_cnt_signal_cy_25_rt_843 : STD_LOGIC; 
  signal T1_T1ms_Mcount_cnt_signal_cy_1_rt_844 : STD_LOGIC; 
  signal T1_T1ms_Mcount_cnt_signal_cy_2_rt_845 : STD_LOGIC; 
  signal T1_T1ms_Mcount_cnt_signal_cy_3_rt_846 : STD_LOGIC; 
  signal T1_T1ms_Mcount_cnt_signal_cy_4_rt_847 : STD_LOGIC; 
  signal T1_T1ms_Mcount_cnt_signal_cy_5_rt_848 : STD_LOGIC; 
  signal T1_T1ms_Mcount_cnt_signal_cy_6_rt_849 : STD_LOGIC; 
  signal T1_T1ms_Mcount_cnt_signal_cy_7_rt_850 : STD_LOGIC; 
  signal T1_T1ms_Mcount_cnt_signal_cy_8_rt_851 : STD_LOGIC; 
  signal T1_T1ms_Mcount_cnt_signal_cy_9_rt_852 : STD_LOGIC; 
  signal T1_T1ms_Mcount_cnt_signal_cy_10_rt_853 : STD_LOGIC; 
  signal T1_T1ms_Mcount_cnt_signal_cy_11_rt_854 : STD_LOGIC; 
  signal T1_T1ms_Mcount_cnt_signal_cy_12_rt_855 : STD_LOGIC; 
  signal T1_T1ms_Mcount_cnt_signal_cy_13_rt_856 : STD_LOGIC; 
  signal T1_T1ms_Mcount_cnt_signal_cy_14_rt_857 : STD_LOGIC; 
  signal T1_T1ms_Mcount_cnt_signal_cy_15_rt_858 : STD_LOGIC; 
  signal T1_T10ms_Mcount_cnt_signal_cy_1_rt_859 : STD_LOGIC; 
  signal T1_T10ms_Mcount_cnt_signal_cy_2_rt_860 : STD_LOGIC; 
  signal T1_T10ms_Mcount_cnt_signal_cy_3_rt_861 : STD_LOGIC; 
  signal T1_T10ms_Mcount_cnt_signal_cy_4_rt_862 : STD_LOGIC; 
  signal T1_T10ms_Mcount_cnt_signal_cy_5_rt_863 : STD_LOGIC; 
  signal T1_T10ms_Mcount_cnt_signal_cy_6_rt_864 : STD_LOGIC; 
  signal T1_T10ms_Mcount_cnt_signal_cy_7_rt_865 : STD_LOGIC; 
  signal T1_T10ms_Mcount_cnt_signal_cy_8_rt_866 : STD_LOGIC; 
  signal T1_T10ms_Mcount_cnt_signal_cy_9_rt_867 : STD_LOGIC; 
  signal T1_T10ms_Mcount_cnt_signal_cy_10_rt_868 : STD_LOGIC; 
  signal T1_T10ms_Mcount_cnt_signal_cy_11_rt_869 : STD_LOGIC; 
  signal T1_T10ms_Mcount_cnt_signal_cy_12_rt_870 : STD_LOGIC; 
  signal T1_T10ms_Mcount_cnt_signal_cy_13_rt_871 : STD_LOGIC; 
  signal T1_T10ms_Mcount_cnt_signal_cy_14_rt_872 : STD_LOGIC; 
  signal T1_T10ms_Mcount_cnt_signal_cy_15_rt_873 : STD_LOGIC; 
  signal T1_T10ms_Mcount_cnt_signal_cy_16_rt_874 : STD_LOGIC; 
  signal T1_T10ms_Mcount_cnt_signal_cy_17_rt_875 : STD_LOGIC; 
  signal T1_T10ms_Mcount_cnt_signal_cy_18_rt_876 : STD_LOGIC; 
  signal T1_T100ms_Mcount_cnt_signal_cy_1_rt_877 : STD_LOGIC; 
  signal T1_T100ms_Mcount_cnt_signal_cy_2_rt_878 : STD_LOGIC; 
  signal T1_T100ms_Mcount_cnt_signal_cy_3_rt_879 : STD_LOGIC; 
  signal T1_T100ms_Mcount_cnt_signal_cy_4_rt_880 : STD_LOGIC; 
  signal T1_T100ms_Mcount_cnt_signal_cy_5_rt_881 : STD_LOGIC; 
  signal T1_T100ms_Mcount_cnt_signal_cy_6_rt_882 : STD_LOGIC; 
  signal T1_T100ms_Mcount_cnt_signal_cy_7_rt_883 : STD_LOGIC; 
  signal T1_T100ms_Mcount_cnt_signal_cy_8_rt_884 : STD_LOGIC; 
  signal T1_T100ms_Mcount_cnt_signal_cy_9_rt_885 : STD_LOGIC; 
  signal T1_T100ms_Mcount_cnt_signal_cy_10_rt_886 : STD_LOGIC; 
  signal T1_T100ms_Mcount_cnt_signal_cy_11_rt_887 : STD_LOGIC; 
  signal T1_T100ms_Mcount_cnt_signal_cy_12_rt_888 : STD_LOGIC; 
  signal T1_T100ms_Mcount_cnt_signal_cy_13_rt_889 : STD_LOGIC; 
  signal T1_T100ms_Mcount_cnt_signal_cy_14_rt_890 : STD_LOGIC; 
  signal T1_T100ms_Mcount_cnt_signal_cy_15_rt_891 : STD_LOGIC; 
  signal T1_T100ms_Mcount_cnt_signal_cy_16_rt_892 : STD_LOGIC; 
  signal T1_T100ms_Mcount_cnt_signal_cy_17_rt_893 : STD_LOGIC; 
  signal T1_T100ms_Mcount_cnt_signal_cy_18_rt_894 : STD_LOGIC; 
  signal T1_T100ms_Mcount_cnt_signal_cy_19_rt_895 : STD_LOGIC; 
  signal T1_T100ms_Mcount_cnt_signal_cy_20_rt_896 : STD_LOGIC; 
  signal T1_T100ms_Mcount_cnt_signal_cy_21_rt_897 : STD_LOGIC; 
  signal T1_T100ms_Mcount_cnt_signal_cy_22_rt_898 : STD_LOGIC; 
  signal T1_T1s_Mcount_cnt_signal_xor_26_rt_899 : STD_LOGIC; 
  signal T1_T1ms_Mcount_cnt_signal_xor_16_rt_900 : STD_LOGIC; 
  signal T1_T10ms_Mcount_cnt_signal_xor_19_rt_901 : STD_LOGIC; 
  signal T1_T100ms_Mcount_cnt_signal_xor_23_rt_902 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal N114 : STD_LOGIC; 
  signal N120 : STD_LOGIC; 
  signal N122 : STD_LOGIC; 
  signal N123 : STD_LOGIC; 
  signal N131 : STD_LOGIC; 
  signal N132 : STD_LOGIC; 
  signal N136 : STD_LOGIC; 
  signal N144 : STD_LOGIC; 
  signal N145 : STD_LOGIC; 
  signal N151 : STD_LOGIC; 
  signal N152 : STD_LOGIC; 
  signal N154 : STD_LOGIC; 
  signal N156 : STD_LOGIC; 
  signal N157 : STD_LOGIC; 
  signal N158 : STD_LOGIC; 
  signal N160 : STD_LOGIC; 
  signal N161 : STD_LOGIC; 
  signal N162 : STD_LOGIC; 
  signal N165 : STD_LOGIC; 
  signal N166 : STD_LOGIC; 
  signal N168 : STD_LOGIC; 
  signal N170 : STD_LOGIC; 
  signal N172 : STD_LOGIC; 
  signal N174 : STD_LOGIC; 
  signal N175 : STD_LOGIC; 
  signal N177 : STD_LOGIC; 
  signal N178 : STD_LOGIC; 
  signal N180 : STD_LOGIC; 
  signal N190 : STD_LOGIC; 
  signal N191 : STD_LOGIC; 
  signal N192 : STD_LOGIC; 
  signal N194 : STD_LOGIC; 
  signal N196 : STD_LOGIC; 
  signal N198 : STD_LOGIC; 
  signal N204 : STD_LOGIC; 
  signal N205 : STD_LOGIC; 
  signal N207 : STD_LOGIC; 
  signal N209 : STD_LOGIC; 
  signal N211 : STD_LOGIC; 
  signal N213 : STD_LOGIC; 
  signal ALARMCLOCK_D1_T1_Ucnt_2_rstpot_944 : STD_LOGIC; 
  signal N215 : STD_LOGIC; 
  signal N216 : STD_LOGIC; 
  signal N217 : STD_LOGIC; 
  signal N219 : STD_LOGIC; 
  signal N220 : STD_LOGIC; 
  signal N221 : STD_LOGIC; 
  signal N227 : STD_LOGIC; 
  signal N229 : STD_LOGIC; 
  signal N230 : STD_LOGIC; 
  signal N232 : STD_LOGIC; 
  signal N233 : STD_LOGIC; 
  signal N234 : STD_LOGIC; 
  signal N235 : STD_LOGIC; 
  signal N236 : STD_LOGIC; 
  signal N237 : STD_LOGIC; 
  signal N238 : STD_LOGIC; 
  signal N239 : STD_LOGIC; 
  signal N244 : STD_LOGIC; 
  signal N246 : STD_LOGIC; 
  signal N248 : STD_LOGIC; 
  signal N250 : STD_LOGIC; 
  signal N252 : STD_LOGIC; 
  signal N254 : STD_LOGIC; 
  signal N256 : STD_LOGIC; 
  signal N260 : STD_LOGIC; 
  signal N262 : STD_LOGIC; 
  signal N264 : STD_LOGIC; 
  signal N266 : STD_LOGIC; 
  signal T1_T1s_pulse_26_7_973 : STD_LOGIC; 
  signal N268 : STD_LOGIC; 
  signal N269 : STD_LOGIC; 
  signal N270 : STD_LOGIC; 
  signal N271 : STD_LOGIC; 
  signal N272 : STD_LOGIC; 
  signal N273 : STD_LOGIC; 
  signal N274 : STD_LOGIC; 
  signal N275 : STD_LOGIC; 
  signal N276 : STD_LOGIC; 
  signal N277 : STD_LOGIC; 
  signal N278 : STD_LOGIC; 
  signal N279 : STD_LOGIC; 
  signal sysclk_BUFGP_IBUFG_2 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal S_s_ostate : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal S_edit : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal ALARMCLOCK_D1_T3_Tcnt : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal ALARMCLOCK_D1_T3_Ucnt : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal ALARMCLOCK_D1_T2_Tcnt : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal ALARMCLOCK_D1_T2_Ucnt : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal ALARMCLOCK_D1_T1_Tcnt : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal ALARMCLOCK_D1_T1_Ucnt : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal ostate : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal T1_T1ms_cnt_signal : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal T1_T10ms_cnt_signal : STD_LOGIC_VECTOR ( 19 downto 6 ); 
  signal T1_T1s_cnt_signal : STD_LOGIC_VECTOR ( 26 downto 5 ); 
  signal T1_T100ms_cnt_signal : STD_LOGIC_VECTOR ( 23 downto 7 ); 
  signal BUTTONS1_B1_debouncer1_del : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal BUTTONS1_B2_debouncer1_del : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal BUTTONS1_B3_debouncer1_del : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal BUTTONS1_B4_debouncer1_del : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal BUTTONS1_B5_debouncer1_del : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal W1_bcdout_int : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal W1_C1_dignr_int : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 26 downto 0 ); 
  signal T1_T1s_Mcount_cnt_signal_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal T1_T1s_Mcount_cnt_signal_cy : STD_LOGIC_VECTOR ( 25 downto 0 ); 
  signal T1_T1ms_Mcount_cnt_signal_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal T1_T1ms_Mcount_cnt_signal_cy : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal T1_T10ms_Mcount_cnt_signal_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal T1_T10ms_Mcount_cnt_signal_cy : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal T1_T100ms_Mcount_cnt_signal_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal T1_T100ms_Mcount_cnt_signal_cy : STD_LOGIC_VECTOR ( 22 downto 0 ); 
  signal ALARMCLOCK_T1_T1_Ucnt : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal ALARMCLOCK_T1_T1_Tcnt : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal ALARMCLOCK_T1_T2_Ucnt : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal ALARMCLOCK_T1_T2_Tcnt : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal ALARMCLOCK_T1_T3_Ucnt : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal ALARMCLOCK_T1_T3_Tcnt : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal ALARMCLOCK_A1_T3_Ucnt : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal ALARMCLOCK_A1_T3_Tcnt : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal ALARMCLOCK_A1_T2_Ucnt : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal ALARMCLOCK_A1_T2_Tcnt : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal ALARMCLOCK_A1_countcheck : STD_LOGIC_VECTOR ( 15 downto 15 ); 
  signal ALARMCLOCK_A1_T1_Ucnt : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal ALARMCLOCK_A1_T1_Tcnt : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal T1_T1ms_pulse : STD_LOGIC_VECTOR ( 16 downto 16 ); 
  signal T1_T10ms_pulse : STD_LOGIC_VECTOR ( 19 downto 19 ); 
  signal T1_T100ms_pulse : STD_LOGIC_VECTOR ( 23 downto 23 ); 
  signal T1_T1s_pulse : STD_LOGIC_VECTOR ( 26 downto 26 ); 
begin
  XST_VCC : X_ONE
    port map (
      O => N0
    );
  XST_GND : X_ZERO
    port map (
      O => ALARMCLOCK_A1_countcheck(15)
    );
  reset : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => init_inv,
      O => reset_112,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  BUTTONS1_B1_debouncer1_del_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => pulse_10ms,
      I => BUTTONS1_B1_debouncer1_del(3),
      O => BUTTONS1_B1_debouncer1_del(4),
      SET => GND,
      RST => GND
    );
  BUTTONS1_B1_debouncer1_del_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => pulse_10ms,
      I => BUTTONS1_B1_debouncer1_del(2),
      O => BUTTONS1_B1_debouncer1_del(3),
      SET => GND,
      RST => GND
    );
  BUTTONS1_B1_debouncer1_del_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => pulse_10ms,
      I => BUTTONS1_B1_debouncer1_del(1),
      O => BUTTONS1_B1_debouncer1_del(2),
      SET => GND,
      RST => GND
    );
  BUTTONS1_B1_debouncer1_del_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => pulse_10ms,
      I => btn_l_IBUF_4,
      O => BUTTONS1_B1_debouncer1_del(1),
      SET => GND,
      RST => GND
    );
  BUTTONS1_B2_debouncer1_del_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => pulse_10ms,
      I => BUTTONS1_B2_debouncer1_del(3),
      O => BUTTONS1_B2_debouncer1_del(4),
      SET => GND,
      RST => GND
    );
  BUTTONS1_B2_debouncer1_del_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => pulse_10ms,
      I => BUTTONS1_B2_debouncer1_del(2),
      O => BUTTONS1_B2_debouncer1_del(3),
      SET => GND,
      RST => GND
    );
  BUTTONS1_B2_debouncer1_del_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => pulse_10ms,
      I => BUTTONS1_B2_debouncer1_del(1),
      O => BUTTONS1_B2_debouncer1_del(2),
      SET => GND,
      RST => GND
    );
  BUTTONS1_B2_debouncer1_del_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => pulse_10ms,
      I => btn_r_IBUF_5,
      O => BUTTONS1_B2_debouncer1_del(1),
      SET => GND,
      RST => GND
    );
  BUTTONS1_B3_debouncer1_del_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => pulse_10ms,
      I => BUTTONS1_B3_debouncer1_del(3),
      O => BUTTONS1_B3_debouncer1_del(4),
      SET => GND,
      RST => GND
    );
  BUTTONS1_B3_debouncer1_del_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => pulse_10ms,
      I => BUTTONS1_B3_debouncer1_del(2),
      O => BUTTONS1_B3_debouncer1_del(3),
      SET => GND,
      RST => GND
    );
  BUTTONS1_B3_debouncer1_del_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => pulse_10ms,
      I => BUTTONS1_B3_debouncer1_del(1),
      O => BUTTONS1_B3_debouncer1_del(2),
      SET => GND,
      RST => GND
    );
  BUTTONS1_B3_debouncer1_del_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => pulse_10ms,
      I => btn_c_IBUF_6,
      O => BUTTONS1_B3_debouncer1_del(1),
      SET => GND,
      RST => GND
    );
  BUTTONS1_B4_debouncer1_del_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => pulse_10ms,
      I => BUTTONS1_B4_debouncer1_del(3),
      O => BUTTONS1_B4_debouncer1_del(4),
      SET => GND,
      RST => GND
    );
  BUTTONS1_B4_debouncer1_del_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => pulse_10ms,
      I => BUTTONS1_B4_debouncer1_del(2),
      O => BUTTONS1_B4_debouncer1_del(3),
      SET => GND,
      RST => GND
    );
  BUTTONS1_B4_debouncer1_del_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => pulse_10ms,
      I => BUTTONS1_B4_debouncer1_del(1),
      O => BUTTONS1_B4_debouncer1_del(2),
      SET => GND,
      RST => GND
    );
  BUTTONS1_B4_debouncer1_del_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => pulse_10ms,
      I => btn_u_IBUF_7,
      O => BUTTONS1_B4_debouncer1_del(1),
      SET => GND,
      RST => GND
    );
  BUTTONS1_B5_debouncer1_del_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => pulse_10ms,
      I => BUTTONS1_B5_debouncer1_del(3),
      O => BUTTONS1_B5_debouncer1_del(4),
      SET => GND,
      RST => GND
    );
  BUTTONS1_B5_debouncer1_del_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => pulse_10ms,
      I => BUTTONS1_B5_debouncer1_del(2),
      O => BUTTONS1_B5_debouncer1_del(3),
      SET => GND,
      RST => GND
    );
  BUTTONS1_B5_debouncer1_del_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => pulse_10ms,
      I => BUTTONS1_B5_debouncer1_del(1),
      O => BUTTONS1_B5_debouncer1_del(2),
      SET => GND,
      RST => GND
    );
  BUTTONS1_B5_debouncer1_del_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => pulse_10ms,
      I => btn_d_IBUF_8,
      O => BUTTONS1_B5_debouncer1_del(1),
      SET => GND,
      RST => GND
    );
  DATATODISPLAY_B1_blink_on : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => pulse_100ms,
      I => DATATODISPLAY_B1_blink_on_INV_60_o,
      O => DATATODISPLAY_B1_blink_on_213,
      SET => GND,
      RST => GND
    );
  W1_C1_dignr_int_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => pulse_1ms,
      I => W1_C1_Mram_dignr_int_1_GND_153_o_wide_mux_0_OUT1,
      O => W1_C1_dignr_int(1),
      SET => GND,
      RST => GND
    );
  W1_C1_dignr_int_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => pulse_1ms,
      I => W1_C1_Mram_dignr_int_1_GND_153_o_wide_mux_0_OUT,
      O => W1_C1_dignr_int(0),
      SET => GND,
      RST => GND
    );
  T1_T1ms_cnt_signal_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result(0),
      SRST => pulse_1ms,
      O => T1_T1ms_cnt_signal(0),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1ms_cnt_signal_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result(1),
      SRST => pulse_1ms,
      O => T1_T1ms_cnt_signal(1),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1ms_cnt_signal_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result(2),
      SRST => pulse_1ms,
      O => T1_T1ms_cnt_signal(2),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1ms_cnt_signal_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result(3),
      SRST => pulse_1ms,
      O => T1_T1ms_cnt_signal(3),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1ms_cnt_signal_4 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result(4),
      SRST => pulse_1ms,
      O => T1_T1ms_cnt_signal(4),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1ms_cnt_signal_5 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result(5),
      SRST => pulse_1ms,
      O => T1_T1ms_cnt_signal(5),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1ms_cnt_signal_6 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result(6),
      SRST => pulse_1ms,
      O => T1_T1ms_cnt_signal(6),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1ms_cnt_signal_7 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result(7),
      SRST => pulse_1ms,
      O => T1_T1ms_cnt_signal(7),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1ms_cnt_signal_8 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result(8),
      SRST => pulse_1ms,
      O => T1_T1ms_cnt_signal(8),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1ms_cnt_signal_9 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result(9),
      SRST => pulse_1ms,
      O => T1_T1ms_cnt_signal(9),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1ms_cnt_signal_10 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result(10),
      SRST => pulse_1ms,
      O => T1_T1ms_cnt_signal(10),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1ms_cnt_signal_11 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result(11),
      SRST => pulse_1ms,
      O => T1_T1ms_cnt_signal(11),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1ms_cnt_signal_12 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result(12),
      SRST => pulse_1ms,
      O => T1_T1ms_cnt_signal(12),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1ms_cnt_signal_13 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result(13),
      SRST => pulse_1ms,
      O => T1_T1ms_cnt_signal(13),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1ms_cnt_signal_14 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result(14),
      SRST => pulse_1ms,
      O => T1_T1ms_cnt_signal(14),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1ms_cnt_signal_15 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result(15),
      SRST => pulse_1ms,
      O => T1_T1ms_cnt_signal(15),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1ms_cnt_signal_16 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result(16),
      SRST => pulse_1ms,
      O => T1_T1ms_cnt_signal(16),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1s_cnt_signal_5 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_5_1,
      SRST => pulse_1s,
      O => T1_T1s_cnt_signal(5),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1s_cnt_signal_6 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_6_1,
      SRST => pulse_1s,
      O => T1_T1s_cnt_signal(6),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1s_cnt_signal_7 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_7_1,
      SRST => pulse_1s,
      O => T1_T1s_cnt_signal(7),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1s_cnt_signal_8 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_8_1,
      SRST => pulse_1s,
      O => T1_T1s_cnt_signal(8),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1s_cnt_signal_9 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_9_1,
      SRST => pulse_1s,
      O => T1_T1s_cnt_signal(9),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1s_cnt_signal_10 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_10_1,
      SRST => pulse_1s,
      O => T1_T1s_cnt_signal(10),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1s_cnt_signal_11 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_11_1,
      SRST => pulse_1s,
      O => T1_T1s_cnt_signal(11),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1s_cnt_signal_12 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_12_1,
      SRST => pulse_1s,
      O => T1_T1s_cnt_signal(12),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1s_cnt_signal_13 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_13_1,
      SRST => pulse_1s,
      O => T1_T1s_cnt_signal(13),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1s_cnt_signal_14 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_14_1,
      SRST => pulse_1s,
      O => T1_T1s_cnt_signal(14),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1s_cnt_signal_15 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_15_1,
      SRST => pulse_1s,
      O => T1_T1s_cnt_signal(15),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1s_cnt_signal_16 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_16_1,
      SRST => pulse_1s,
      O => T1_T1s_cnt_signal(16),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1s_cnt_signal_17 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result(17),
      SRST => pulse_1s,
      O => T1_T1s_cnt_signal(17),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1s_cnt_signal_18 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result(18),
      SRST => pulse_1s,
      O => T1_T1s_cnt_signal(18),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1s_cnt_signal_19 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result(19),
      SRST => pulse_1s,
      O => T1_T1s_cnt_signal(19),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1s_cnt_signal_20 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result(20),
      SRST => pulse_1s,
      O => T1_T1s_cnt_signal(20),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1s_cnt_signal_21 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result(21),
      SRST => pulse_1s,
      O => T1_T1s_cnt_signal(21),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1s_cnt_signal_22 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result(22),
      SRST => pulse_1s,
      O => T1_T1s_cnt_signal(22),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1s_cnt_signal_23 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result(23),
      SRST => pulse_1s,
      O => T1_T1s_cnt_signal(23),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1s_cnt_signal_24 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result(24),
      SRST => pulse_1s,
      O => T1_T1s_cnt_signal(24),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1s_cnt_signal_25 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result(25),
      SRST => pulse_1s,
      O => T1_T1s_cnt_signal(25),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T1s_cnt_signal_26 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result(26),
      SRST => pulse_1s,
      O => T1_T1s_cnt_signal(26),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T10ms_cnt_signal_6 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_6_2,
      SRST => pulse_10ms,
      O => T1_T10ms_cnt_signal(6),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T10ms_cnt_signal_7 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_7_2,
      SRST => pulse_10ms,
      O => T1_T10ms_cnt_signal(7),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T10ms_cnt_signal_8 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_8_2,
      SRST => pulse_10ms,
      O => T1_T10ms_cnt_signal(8),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T10ms_cnt_signal_9 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_9_2,
      SRST => pulse_10ms,
      O => T1_T10ms_cnt_signal(9),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T10ms_cnt_signal_10 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_10_2,
      SRST => pulse_10ms,
      O => T1_T10ms_cnt_signal(10),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T10ms_cnt_signal_11 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_11_2,
      SRST => pulse_10ms,
      O => T1_T10ms_cnt_signal(11),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T10ms_cnt_signal_12 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_12_2,
      SRST => pulse_10ms,
      O => T1_T10ms_cnt_signal(12),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T10ms_cnt_signal_13 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_13_2,
      SRST => pulse_10ms,
      O => T1_T10ms_cnt_signal(13),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T10ms_cnt_signal_14 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_14_2,
      SRST => pulse_10ms,
      O => T1_T10ms_cnt_signal(14),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T10ms_cnt_signal_15 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_15_2,
      SRST => pulse_10ms,
      O => T1_T10ms_cnt_signal(15),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T10ms_cnt_signal_16 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_16_2,
      SRST => pulse_10ms,
      O => T1_T10ms_cnt_signal(16),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T10ms_cnt_signal_17 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_17_1,
      SRST => pulse_10ms,
      O => T1_T10ms_cnt_signal(17),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T10ms_cnt_signal_18 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_18_1,
      SRST => pulse_10ms,
      O => T1_T10ms_cnt_signal(18),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T10ms_cnt_signal_19 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_19_1,
      SRST => pulse_10ms,
      O => T1_T10ms_cnt_signal(19),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T100ms_cnt_signal_7 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_7_3,
      SRST => pulse_100ms,
      O => T1_T100ms_cnt_signal(7),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T100ms_cnt_signal_8 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_8_3,
      SRST => pulse_100ms,
      O => T1_T100ms_cnt_signal(8),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T100ms_cnt_signal_9 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_9_3,
      SRST => pulse_100ms,
      O => T1_T100ms_cnt_signal(9),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T100ms_cnt_signal_10 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_10_3,
      SRST => pulse_100ms,
      O => T1_T100ms_cnt_signal(10),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T100ms_cnt_signal_11 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_11_3,
      SRST => pulse_100ms,
      O => T1_T100ms_cnt_signal(11),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T100ms_cnt_signal_12 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_12_3,
      SRST => pulse_100ms,
      O => T1_T100ms_cnt_signal(12),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T100ms_cnt_signal_13 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_13_3,
      SRST => pulse_100ms,
      O => T1_T100ms_cnt_signal(13),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T100ms_cnt_signal_14 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_14_3,
      SRST => pulse_100ms,
      O => T1_T100ms_cnt_signal(14),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T100ms_cnt_signal_15 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_15_3,
      SRST => pulse_100ms,
      O => T1_T100ms_cnt_signal(15),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T100ms_cnt_signal_16 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_16_3,
      SRST => pulse_100ms,
      O => T1_T100ms_cnt_signal(16),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T100ms_cnt_signal_17 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_17_2,
      SRST => pulse_100ms,
      O => T1_T100ms_cnt_signal(17),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T100ms_cnt_signal_18 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_18_2,
      SRST => pulse_100ms,
      O => T1_T100ms_cnt_signal(18),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T100ms_cnt_signal_19 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_19_2,
      SRST => pulse_100ms,
      O => T1_T100ms_cnt_signal(19),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T100ms_cnt_signal_20 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_20_1,
      SRST => pulse_100ms,
      O => T1_T100ms_cnt_signal(20),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T100ms_cnt_signal_21 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_21_1,
      SRST => pulse_100ms,
      O => T1_T100ms_cnt_signal(21),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T100ms_cnt_signal_22 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_22_1,
      SRST => pulse_100ms,
      O => T1_T100ms_cnt_signal(22),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  T1_T100ms_cnt_signal_23 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => Result_23_1,
      SRST => pulse_100ms,
      O => T1_T100ms_cnt_signal(23),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  BUTTONS1_B1_one_pulse1_current_state_FSM_FFd3 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => BUTTONS1_B1_one_pulse1_current_state_FSM_FFd3_In,
      O => BUTTONS1_B1_one_pulse1_current_state_FSM_FFd3_292,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  BUTTONS1_B2_one_pulse1_current_state_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => BUTTONS1_B2_one_pulse1_current_state_FSM_FFd2_In,
      O => BUTTONS1_B2_one_pulse1_current_state_FSM_FFd2_14,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  BUTTONS1_B1_one_pulse1_current_state_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => BUTTONS1_B1_one_pulse1_current_state_FSM_FFd2_In,
      O => BUTTONS1_B1_one_pulse1_current_state_FSM_FFd2_13,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  BUTTONS1_B2_one_pulse1_current_state_FSM_FFd3 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => BUTTONS1_B2_one_pulse1_current_state_FSM_FFd3_In,
      O => BUTTONS1_B2_one_pulse1_current_state_FSM_FFd3_295,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  BUTTONS1_B3_one_pulse1_current_state_FSM_FFd3 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => BUTTONS1_B3_one_pulse1_current_state_FSM_FFd3_In,
      O => BUTTONS1_B3_one_pulse1_current_state_FSM_FFd3_298,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  BUTTONS1_B3_one_pulse1_current_state_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => BUTTONS1_B3_one_pulse1_current_state_FSM_FFd2_In,
      O => BUTTONS1_B3_one_pulse1_current_state_FSM_FFd2_15,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  BUTTONS1_B4_one_pulse1_current_state_FSM_FFd3 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => BUTTONS1_B4_one_pulse1_current_state_FSM_FFd3_In,
      O => BUTTONS1_B4_one_pulse1_current_state_FSM_FFd3_301,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  BUTTONS1_B4_one_pulse1_current_state_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => BUTTONS1_B4_one_pulse1_current_state_FSM_FFd2_In,
      O => BUTTONS1_B4_one_pulse1_current_state_FSM_FFd2_16,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  BUTTONS1_B5_one_pulse1_current_state_FSM_FFd3 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => BUTTONS1_B5_one_pulse1_current_state_FSM_FFd3_In,
      O => BUTTONS1_B5_one_pulse1_current_state_FSM_FFd3_304,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  BUTTONS1_B5_one_pulse1_current_state_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => BUTTONS1_B5_one_pulse1_current_state_FSM_FFd2_In,
      O => BUTTONS1_B5_one_pulse1_current_state_FSM_FFd2_17,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  T1_T1s_Mcount_cnt_signal_cy_0_Q : X_MUX2
    port map (
      IB => ALARMCLOCK_A1_countcheck(15),
      IA => N0,
      SEL => T1_T1s_Mcount_cnt_signal_lut(0),
      O => T1_T1s_Mcount_cnt_signal_cy(0)
    );
  T1_T1s_Mcount_cnt_signal_cy_1_Q : X_MUX2
    port map (
      IB => T1_T1s_Mcount_cnt_signal_cy(0),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1s_Mcount_cnt_signal_cy_1_rt_819,
      O => T1_T1s_Mcount_cnt_signal_cy(1)
    );
  T1_T1s_Mcount_cnt_signal_cy_2_Q : X_MUX2
    port map (
      IB => T1_T1s_Mcount_cnt_signal_cy(1),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1s_Mcount_cnt_signal_cy_2_rt_820,
      O => T1_T1s_Mcount_cnt_signal_cy(2)
    );
  T1_T1s_Mcount_cnt_signal_cy_3_Q : X_MUX2
    port map (
      IB => T1_T1s_Mcount_cnt_signal_cy(2),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1s_Mcount_cnt_signal_cy_3_rt_821,
      O => T1_T1s_Mcount_cnt_signal_cy(3)
    );
  T1_T1s_Mcount_cnt_signal_cy_4_Q : X_MUX2
    port map (
      IB => T1_T1s_Mcount_cnt_signal_cy(3),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1s_Mcount_cnt_signal_cy_4_rt_822,
      O => T1_T1s_Mcount_cnt_signal_cy(4)
    );
  T1_T1s_Mcount_cnt_signal_cy_5_Q : X_MUX2
    port map (
      IB => T1_T1s_Mcount_cnt_signal_cy(4),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1s_Mcount_cnt_signal_cy_5_rt_823,
      O => T1_T1s_Mcount_cnt_signal_cy(5)
    );
  T1_T1s_Mcount_cnt_signal_xor_5_Q : X_XOR2
    port map (
      I0 => T1_T1s_Mcount_cnt_signal_cy(4),
      I1 => T1_T1s_Mcount_cnt_signal_cy_5_rt_823,
      O => Result_5_1
    );
  T1_T1s_Mcount_cnt_signal_cy_6_Q : X_MUX2
    port map (
      IB => T1_T1s_Mcount_cnt_signal_cy(5),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1s_Mcount_cnt_signal_cy_6_rt_824,
      O => T1_T1s_Mcount_cnt_signal_cy(6)
    );
  T1_T1s_Mcount_cnt_signal_xor_6_Q : X_XOR2
    port map (
      I0 => T1_T1s_Mcount_cnt_signal_cy(5),
      I1 => T1_T1s_Mcount_cnt_signal_cy_6_rt_824,
      O => Result_6_1
    );
  T1_T1s_Mcount_cnt_signal_cy_7_Q : X_MUX2
    port map (
      IB => T1_T1s_Mcount_cnt_signal_cy(6),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1s_Mcount_cnt_signal_cy_7_rt_825,
      O => T1_T1s_Mcount_cnt_signal_cy(7)
    );
  T1_T1s_Mcount_cnt_signal_xor_7_Q : X_XOR2
    port map (
      I0 => T1_T1s_Mcount_cnt_signal_cy(6),
      I1 => T1_T1s_Mcount_cnt_signal_cy_7_rt_825,
      O => Result_7_1
    );
  T1_T1s_Mcount_cnt_signal_cy_8_Q : X_MUX2
    port map (
      IB => T1_T1s_Mcount_cnt_signal_cy(7),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1s_Mcount_cnt_signal_cy_8_rt_826,
      O => T1_T1s_Mcount_cnt_signal_cy(8)
    );
  T1_T1s_Mcount_cnt_signal_xor_8_Q : X_XOR2
    port map (
      I0 => T1_T1s_Mcount_cnt_signal_cy(7),
      I1 => T1_T1s_Mcount_cnt_signal_cy_8_rt_826,
      O => Result_8_1
    );
  T1_T1s_Mcount_cnt_signal_cy_9_Q : X_MUX2
    port map (
      IB => T1_T1s_Mcount_cnt_signal_cy(8),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1s_Mcount_cnt_signal_cy_9_rt_827,
      O => T1_T1s_Mcount_cnt_signal_cy(9)
    );
  T1_T1s_Mcount_cnt_signal_xor_9_Q : X_XOR2
    port map (
      I0 => T1_T1s_Mcount_cnt_signal_cy(8),
      I1 => T1_T1s_Mcount_cnt_signal_cy_9_rt_827,
      O => Result_9_1
    );
  T1_T1s_Mcount_cnt_signal_cy_10_Q : X_MUX2
    port map (
      IB => T1_T1s_Mcount_cnt_signal_cy(9),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1s_Mcount_cnt_signal_cy_10_rt_828,
      O => T1_T1s_Mcount_cnt_signal_cy(10)
    );
  T1_T1s_Mcount_cnt_signal_xor_10_Q : X_XOR2
    port map (
      I0 => T1_T1s_Mcount_cnt_signal_cy(9),
      I1 => T1_T1s_Mcount_cnt_signal_cy_10_rt_828,
      O => Result_10_1
    );
  T1_T1s_Mcount_cnt_signal_cy_11_Q : X_MUX2
    port map (
      IB => T1_T1s_Mcount_cnt_signal_cy(10),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1s_Mcount_cnt_signal_cy_11_rt_829,
      O => T1_T1s_Mcount_cnt_signal_cy(11)
    );
  T1_T1s_Mcount_cnt_signal_xor_11_Q : X_XOR2
    port map (
      I0 => T1_T1s_Mcount_cnt_signal_cy(10),
      I1 => T1_T1s_Mcount_cnt_signal_cy_11_rt_829,
      O => Result_11_1
    );
  T1_T1s_Mcount_cnt_signal_cy_12_Q : X_MUX2
    port map (
      IB => T1_T1s_Mcount_cnt_signal_cy(11),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1s_Mcount_cnt_signal_cy_12_rt_830,
      O => T1_T1s_Mcount_cnt_signal_cy(12)
    );
  T1_T1s_Mcount_cnt_signal_xor_12_Q : X_XOR2
    port map (
      I0 => T1_T1s_Mcount_cnt_signal_cy(11),
      I1 => T1_T1s_Mcount_cnt_signal_cy_12_rt_830,
      O => Result_12_1
    );
  T1_T1s_Mcount_cnt_signal_cy_13_Q : X_MUX2
    port map (
      IB => T1_T1s_Mcount_cnt_signal_cy(12),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1s_Mcount_cnt_signal_cy_13_rt_831,
      O => T1_T1s_Mcount_cnt_signal_cy(13)
    );
  T1_T1s_Mcount_cnt_signal_xor_13_Q : X_XOR2
    port map (
      I0 => T1_T1s_Mcount_cnt_signal_cy(12),
      I1 => T1_T1s_Mcount_cnt_signal_cy_13_rt_831,
      O => Result_13_1
    );
  T1_T1s_Mcount_cnt_signal_cy_14_Q : X_MUX2
    port map (
      IB => T1_T1s_Mcount_cnt_signal_cy(13),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1s_Mcount_cnt_signal_cy_14_rt_832,
      O => T1_T1s_Mcount_cnt_signal_cy(14)
    );
  T1_T1s_Mcount_cnt_signal_xor_14_Q : X_XOR2
    port map (
      I0 => T1_T1s_Mcount_cnt_signal_cy(13),
      I1 => T1_T1s_Mcount_cnt_signal_cy_14_rt_832,
      O => Result_14_1
    );
  T1_T1s_Mcount_cnt_signal_cy_15_Q : X_MUX2
    port map (
      IB => T1_T1s_Mcount_cnt_signal_cy(14),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1s_Mcount_cnt_signal_cy_15_rt_833,
      O => T1_T1s_Mcount_cnt_signal_cy(15)
    );
  T1_T1s_Mcount_cnt_signal_xor_15_Q : X_XOR2
    port map (
      I0 => T1_T1s_Mcount_cnt_signal_cy(14),
      I1 => T1_T1s_Mcount_cnt_signal_cy_15_rt_833,
      O => Result_15_1
    );
  T1_T1s_Mcount_cnt_signal_cy_16_Q : X_MUX2
    port map (
      IB => T1_T1s_Mcount_cnt_signal_cy(15),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1s_Mcount_cnt_signal_cy_16_rt_834,
      O => T1_T1s_Mcount_cnt_signal_cy(16)
    );
  T1_T1s_Mcount_cnt_signal_xor_16_Q : X_XOR2
    port map (
      I0 => T1_T1s_Mcount_cnt_signal_cy(15),
      I1 => T1_T1s_Mcount_cnt_signal_cy_16_rt_834,
      O => Result_16_1
    );
  T1_T1s_Mcount_cnt_signal_cy_17_Q : X_MUX2
    port map (
      IB => T1_T1s_Mcount_cnt_signal_cy(16),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1s_Mcount_cnt_signal_cy_17_rt_835,
      O => T1_T1s_Mcount_cnt_signal_cy(17)
    );
  T1_T1s_Mcount_cnt_signal_xor_17_Q : X_XOR2
    port map (
      I0 => T1_T1s_Mcount_cnt_signal_cy(16),
      I1 => T1_T1s_Mcount_cnt_signal_cy_17_rt_835,
      O => Result(17)
    );
  T1_T1s_Mcount_cnt_signal_cy_18_Q : X_MUX2
    port map (
      IB => T1_T1s_Mcount_cnt_signal_cy(17),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1s_Mcount_cnt_signal_cy_18_rt_836,
      O => T1_T1s_Mcount_cnt_signal_cy(18)
    );
  T1_T1s_Mcount_cnt_signal_xor_18_Q : X_XOR2
    port map (
      I0 => T1_T1s_Mcount_cnt_signal_cy(17),
      I1 => T1_T1s_Mcount_cnt_signal_cy_18_rt_836,
      O => Result(18)
    );
  T1_T1s_Mcount_cnt_signal_cy_19_Q : X_MUX2
    port map (
      IB => T1_T1s_Mcount_cnt_signal_cy(18),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1s_Mcount_cnt_signal_cy_19_rt_837,
      O => T1_T1s_Mcount_cnt_signal_cy(19)
    );
  T1_T1s_Mcount_cnt_signal_xor_19_Q : X_XOR2
    port map (
      I0 => T1_T1s_Mcount_cnt_signal_cy(18),
      I1 => T1_T1s_Mcount_cnt_signal_cy_19_rt_837,
      O => Result(19)
    );
  T1_T1s_Mcount_cnt_signal_cy_20_Q : X_MUX2
    port map (
      IB => T1_T1s_Mcount_cnt_signal_cy(19),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1s_Mcount_cnt_signal_cy_20_rt_838,
      O => T1_T1s_Mcount_cnt_signal_cy(20)
    );
  T1_T1s_Mcount_cnt_signal_xor_20_Q : X_XOR2
    port map (
      I0 => T1_T1s_Mcount_cnt_signal_cy(19),
      I1 => T1_T1s_Mcount_cnt_signal_cy_20_rt_838,
      O => Result(20)
    );
  T1_T1s_Mcount_cnt_signal_cy_21_Q : X_MUX2
    port map (
      IB => T1_T1s_Mcount_cnt_signal_cy(20),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1s_Mcount_cnt_signal_cy_21_rt_839,
      O => T1_T1s_Mcount_cnt_signal_cy(21)
    );
  T1_T1s_Mcount_cnt_signal_xor_21_Q : X_XOR2
    port map (
      I0 => T1_T1s_Mcount_cnt_signal_cy(20),
      I1 => T1_T1s_Mcount_cnt_signal_cy_21_rt_839,
      O => Result(21)
    );
  T1_T1s_Mcount_cnt_signal_cy_22_Q : X_MUX2
    port map (
      IB => T1_T1s_Mcount_cnt_signal_cy(21),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1s_Mcount_cnt_signal_cy_22_rt_840,
      O => T1_T1s_Mcount_cnt_signal_cy(22)
    );
  T1_T1s_Mcount_cnt_signal_xor_22_Q : X_XOR2
    port map (
      I0 => T1_T1s_Mcount_cnt_signal_cy(21),
      I1 => T1_T1s_Mcount_cnt_signal_cy_22_rt_840,
      O => Result(22)
    );
  T1_T1s_Mcount_cnt_signal_cy_23_Q : X_MUX2
    port map (
      IB => T1_T1s_Mcount_cnt_signal_cy(22),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1s_Mcount_cnt_signal_cy_23_rt_841,
      O => T1_T1s_Mcount_cnt_signal_cy(23)
    );
  T1_T1s_Mcount_cnt_signal_xor_23_Q : X_XOR2
    port map (
      I0 => T1_T1s_Mcount_cnt_signal_cy(22),
      I1 => T1_T1s_Mcount_cnt_signal_cy_23_rt_841,
      O => Result(23)
    );
  T1_T1s_Mcount_cnt_signal_cy_24_Q : X_MUX2
    port map (
      IB => T1_T1s_Mcount_cnt_signal_cy(23),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1s_Mcount_cnt_signal_cy_24_rt_842,
      O => T1_T1s_Mcount_cnt_signal_cy(24)
    );
  T1_T1s_Mcount_cnt_signal_xor_24_Q : X_XOR2
    port map (
      I0 => T1_T1s_Mcount_cnt_signal_cy(23),
      I1 => T1_T1s_Mcount_cnt_signal_cy_24_rt_842,
      O => Result(24)
    );
  T1_T1s_Mcount_cnt_signal_cy_25_Q : X_MUX2
    port map (
      IB => T1_T1s_Mcount_cnt_signal_cy(24),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1s_Mcount_cnt_signal_cy_25_rt_843,
      O => T1_T1s_Mcount_cnt_signal_cy(25)
    );
  T1_T1s_Mcount_cnt_signal_xor_25_Q : X_XOR2
    port map (
      I0 => T1_T1s_Mcount_cnt_signal_cy(24),
      I1 => T1_T1s_Mcount_cnt_signal_cy_25_rt_843,
      O => Result(25)
    );
  T1_T1s_Mcount_cnt_signal_xor_26_Q : X_XOR2
    port map (
      I0 => T1_T1s_Mcount_cnt_signal_cy(25),
      I1 => T1_T1s_Mcount_cnt_signal_xor_26_rt_899,
      O => Result(26)
    );
  T1_T1ms_Mcount_cnt_signal_cy_0_Q : X_MUX2
    port map (
      IB => ALARMCLOCK_A1_countcheck(15),
      IA => N0,
      SEL => T1_T1ms_Mcount_cnt_signal_lut(0),
      O => T1_T1ms_Mcount_cnt_signal_cy(0)
    );
  T1_T1ms_Mcount_cnt_signal_xor_0_Q : X_XOR2
    port map (
      I0 => ALARMCLOCK_A1_countcheck(15),
      I1 => T1_T1ms_Mcount_cnt_signal_lut(0),
      O => Result(0)
    );
  T1_T1ms_Mcount_cnt_signal_cy_1_Q : X_MUX2
    port map (
      IB => T1_T1ms_Mcount_cnt_signal_cy(0),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1ms_Mcount_cnt_signal_cy_1_rt_844,
      O => T1_T1ms_Mcount_cnt_signal_cy(1)
    );
  T1_T1ms_Mcount_cnt_signal_xor_1_Q : X_XOR2
    port map (
      I0 => T1_T1ms_Mcount_cnt_signal_cy(0),
      I1 => T1_T1ms_Mcount_cnt_signal_cy_1_rt_844,
      O => Result(1)
    );
  T1_T1ms_Mcount_cnt_signal_cy_2_Q : X_MUX2
    port map (
      IB => T1_T1ms_Mcount_cnt_signal_cy(1),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1ms_Mcount_cnt_signal_cy_2_rt_845,
      O => T1_T1ms_Mcount_cnt_signal_cy(2)
    );
  T1_T1ms_Mcount_cnt_signal_xor_2_Q : X_XOR2
    port map (
      I0 => T1_T1ms_Mcount_cnt_signal_cy(1),
      I1 => T1_T1ms_Mcount_cnt_signal_cy_2_rt_845,
      O => Result(2)
    );
  T1_T1ms_Mcount_cnt_signal_cy_3_Q : X_MUX2
    port map (
      IB => T1_T1ms_Mcount_cnt_signal_cy(2),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1ms_Mcount_cnt_signal_cy_3_rt_846,
      O => T1_T1ms_Mcount_cnt_signal_cy(3)
    );
  T1_T1ms_Mcount_cnt_signal_xor_3_Q : X_XOR2
    port map (
      I0 => T1_T1ms_Mcount_cnt_signal_cy(2),
      I1 => T1_T1ms_Mcount_cnt_signal_cy_3_rt_846,
      O => Result(3)
    );
  T1_T1ms_Mcount_cnt_signal_cy_4_Q : X_MUX2
    port map (
      IB => T1_T1ms_Mcount_cnt_signal_cy(3),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1ms_Mcount_cnt_signal_cy_4_rt_847,
      O => T1_T1ms_Mcount_cnt_signal_cy(4)
    );
  T1_T1ms_Mcount_cnt_signal_xor_4_Q : X_XOR2
    port map (
      I0 => T1_T1ms_Mcount_cnt_signal_cy(3),
      I1 => T1_T1ms_Mcount_cnt_signal_cy_4_rt_847,
      O => Result(4)
    );
  T1_T1ms_Mcount_cnt_signal_cy_5_Q : X_MUX2
    port map (
      IB => T1_T1ms_Mcount_cnt_signal_cy(4),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1ms_Mcount_cnt_signal_cy_5_rt_848,
      O => T1_T1ms_Mcount_cnt_signal_cy(5)
    );
  T1_T1ms_Mcount_cnt_signal_xor_5_Q : X_XOR2
    port map (
      I0 => T1_T1ms_Mcount_cnt_signal_cy(4),
      I1 => T1_T1ms_Mcount_cnt_signal_cy_5_rt_848,
      O => Result(5)
    );
  T1_T1ms_Mcount_cnt_signal_cy_6_Q : X_MUX2
    port map (
      IB => T1_T1ms_Mcount_cnt_signal_cy(5),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1ms_Mcount_cnt_signal_cy_6_rt_849,
      O => T1_T1ms_Mcount_cnt_signal_cy(6)
    );
  T1_T1ms_Mcount_cnt_signal_xor_6_Q : X_XOR2
    port map (
      I0 => T1_T1ms_Mcount_cnt_signal_cy(5),
      I1 => T1_T1ms_Mcount_cnt_signal_cy_6_rt_849,
      O => Result(6)
    );
  T1_T1ms_Mcount_cnt_signal_cy_7_Q : X_MUX2
    port map (
      IB => T1_T1ms_Mcount_cnt_signal_cy(6),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1ms_Mcount_cnt_signal_cy_7_rt_850,
      O => T1_T1ms_Mcount_cnt_signal_cy(7)
    );
  T1_T1ms_Mcount_cnt_signal_xor_7_Q : X_XOR2
    port map (
      I0 => T1_T1ms_Mcount_cnt_signal_cy(6),
      I1 => T1_T1ms_Mcount_cnt_signal_cy_7_rt_850,
      O => Result(7)
    );
  T1_T1ms_Mcount_cnt_signal_cy_8_Q : X_MUX2
    port map (
      IB => T1_T1ms_Mcount_cnt_signal_cy(7),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1ms_Mcount_cnt_signal_cy_8_rt_851,
      O => T1_T1ms_Mcount_cnt_signal_cy(8)
    );
  T1_T1ms_Mcount_cnt_signal_xor_8_Q : X_XOR2
    port map (
      I0 => T1_T1ms_Mcount_cnt_signal_cy(7),
      I1 => T1_T1ms_Mcount_cnt_signal_cy_8_rt_851,
      O => Result(8)
    );
  T1_T1ms_Mcount_cnt_signal_cy_9_Q : X_MUX2
    port map (
      IB => T1_T1ms_Mcount_cnt_signal_cy(8),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1ms_Mcount_cnt_signal_cy_9_rt_852,
      O => T1_T1ms_Mcount_cnt_signal_cy(9)
    );
  T1_T1ms_Mcount_cnt_signal_xor_9_Q : X_XOR2
    port map (
      I0 => T1_T1ms_Mcount_cnt_signal_cy(8),
      I1 => T1_T1ms_Mcount_cnt_signal_cy_9_rt_852,
      O => Result(9)
    );
  T1_T1ms_Mcount_cnt_signal_cy_10_Q : X_MUX2
    port map (
      IB => T1_T1ms_Mcount_cnt_signal_cy(9),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1ms_Mcount_cnt_signal_cy_10_rt_853,
      O => T1_T1ms_Mcount_cnt_signal_cy(10)
    );
  T1_T1ms_Mcount_cnt_signal_xor_10_Q : X_XOR2
    port map (
      I0 => T1_T1ms_Mcount_cnt_signal_cy(9),
      I1 => T1_T1ms_Mcount_cnt_signal_cy_10_rt_853,
      O => Result(10)
    );
  T1_T1ms_Mcount_cnt_signal_cy_11_Q : X_MUX2
    port map (
      IB => T1_T1ms_Mcount_cnt_signal_cy(10),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1ms_Mcount_cnt_signal_cy_11_rt_854,
      O => T1_T1ms_Mcount_cnt_signal_cy(11)
    );
  T1_T1ms_Mcount_cnt_signal_xor_11_Q : X_XOR2
    port map (
      I0 => T1_T1ms_Mcount_cnt_signal_cy(10),
      I1 => T1_T1ms_Mcount_cnt_signal_cy_11_rt_854,
      O => Result(11)
    );
  T1_T1ms_Mcount_cnt_signal_cy_12_Q : X_MUX2
    port map (
      IB => T1_T1ms_Mcount_cnt_signal_cy(11),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1ms_Mcount_cnt_signal_cy_12_rt_855,
      O => T1_T1ms_Mcount_cnt_signal_cy(12)
    );
  T1_T1ms_Mcount_cnt_signal_xor_12_Q : X_XOR2
    port map (
      I0 => T1_T1ms_Mcount_cnt_signal_cy(11),
      I1 => T1_T1ms_Mcount_cnt_signal_cy_12_rt_855,
      O => Result(12)
    );
  T1_T1ms_Mcount_cnt_signal_cy_13_Q : X_MUX2
    port map (
      IB => T1_T1ms_Mcount_cnt_signal_cy(12),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1ms_Mcount_cnt_signal_cy_13_rt_856,
      O => T1_T1ms_Mcount_cnt_signal_cy(13)
    );
  T1_T1ms_Mcount_cnt_signal_xor_13_Q : X_XOR2
    port map (
      I0 => T1_T1ms_Mcount_cnt_signal_cy(12),
      I1 => T1_T1ms_Mcount_cnt_signal_cy_13_rt_856,
      O => Result(13)
    );
  T1_T1ms_Mcount_cnt_signal_cy_14_Q : X_MUX2
    port map (
      IB => T1_T1ms_Mcount_cnt_signal_cy(13),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1ms_Mcount_cnt_signal_cy_14_rt_857,
      O => T1_T1ms_Mcount_cnt_signal_cy(14)
    );
  T1_T1ms_Mcount_cnt_signal_xor_14_Q : X_XOR2
    port map (
      I0 => T1_T1ms_Mcount_cnt_signal_cy(13),
      I1 => T1_T1ms_Mcount_cnt_signal_cy_14_rt_857,
      O => Result(14)
    );
  T1_T1ms_Mcount_cnt_signal_cy_15_Q : X_MUX2
    port map (
      IB => T1_T1ms_Mcount_cnt_signal_cy(14),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T1ms_Mcount_cnt_signal_cy_15_rt_858,
      O => T1_T1ms_Mcount_cnt_signal_cy(15)
    );
  T1_T1ms_Mcount_cnt_signal_xor_15_Q : X_XOR2
    port map (
      I0 => T1_T1ms_Mcount_cnt_signal_cy(14),
      I1 => T1_T1ms_Mcount_cnt_signal_cy_15_rt_858,
      O => Result(15)
    );
  T1_T1ms_Mcount_cnt_signal_xor_16_Q : X_XOR2
    port map (
      I0 => T1_T1ms_Mcount_cnt_signal_cy(15),
      I1 => T1_T1ms_Mcount_cnt_signal_xor_16_rt_900,
      O => Result(16)
    );
  T1_T10ms_Mcount_cnt_signal_cy_0_Q : X_MUX2
    port map (
      IB => ALARMCLOCK_A1_countcheck(15),
      IA => N0,
      SEL => T1_T10ms_Mcount_cnt_signal_lut(0),
      O => T1_T10ms_Mcount_cnt_signal_cy(0)
    );
  T1_T10ms_Mcount_cnt_signal_cy_1_Q : X_MUX2
    port map (
      IB => T1_T10ms_Mcount_cnt_signal_cy(0),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T10ms_Mcount_cnt_signal_cy_1_rt_859,
      O => T1_T10ms_Mcount_cnt_signal_cy(1)
    );
  T1_T10ms_Mcount_cnt_signal_cy_2_Q : X_MUX2
    port map (
      IB => T1_T10ms_Mcount_cnt_signal_cy(1),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T10ms_Mcount_cnt_signal_cy_2_rt_860,
      O => T1_T10ms_Mcount_cnt_signal_cy(2)
    );
  T1_T10ms_Mcount_cnt_signal_cy_3_Q : X_MUX2
    port map (
      IB => T1_T10ms_Mcount_cnt_signal_cy(2),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T10ms_Mcount_cnt_signal_cy_3_rt_861,
      O => T1_T10ms_Mcount_cnt_signal_cy(3)
    );
  T1_T10ms_Mcount_cnt_signal_cy_4_Q : X_MUX2
    port map (
      IB => T1_T10ms_Mcount_cnt_signal_cy(3),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T10ms_Mcount_cnt_signal_cy_4_rt_862,
      O => T1_T10ms_Mcount_cnt_signal_cy(4)
    );
  T1_T10ms_Mcount_cnt_signal_cy_5_Q : X_MUX2
    port map (
      IB => T1_T10ms_Mcount_cnt_signal_cy(4),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T10ms_Mcount_cnt_signal_cy_5_rt_863,
      O => T1_T10ms_Mcount_cnt_signal_cy(5)
    );
  T1_T10ms_Mcount_cnt_signal_cy_6_Q : X_MUX2
    port map (
      IB => T1_T10ms_Mcount_cnt_signal_cy(5),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T10ms_Mcount_cnt_signal_cy_6_rt_864,
      O => T1_T10ms_Mcount_cnt_signal_cy(6)
    );
  T1_T10ms_Mcount_cnt_signal_xor_6_Q : X_XOR2
    port map (
      I0 => T1_T10ms_Mcount_cnt_signal_cy(5),
      I1 => T1_T10ms_Mcount_cnt_signal_cy_6_rt_864,
      O => Result_6_2
    );
  T1_T10ms_Mcount_cnt_signal_cy_7_Q : X_MUX2
    port map (
      IB => T1_T10ms_Mcount_cnt_signal_cy(6),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T10ms_Mcount_cnt_signal_cy_7_rt_865,
      O => T1_T10ms_Mcount_cnt_signal_cy(7)
    );
  T1_T10ms_Mcount_cnt_signal_xor_7_Q : X_XOR2
    port map (
      I0 => T1_T10ms_Mcount_cnt_signal_cy(6),
      I1 => T1_T10ms_Mcount_cnt_signal_cy_7_rt_865,
      O => Result_7_2
    );
  T1_T10ms_Mcount_cnt_signal_cy_8_Q : X_MUX2
    port map (
      IB => T1_T10ms_Mcount_cnt_signal_cy(7),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T10ms_Mcount_cnt_signal_cy_8_rt_866,
      O => T1_T10ms_Mcount_cnt_signal_cy(8)
    );
  T1_T10ms_Mcount_cnt_signal_xor_8_Q : X_XOR2
    port map (
      I0 => T1_T10ms_Mcount_cnt_signal_cy(7),
      I1 => T1_T10ms_Mcount_cnt_signal_cy_8_rt_866,
      O => Result_8_2
    );
  T1_T10ms_Mcount_cnt_signal_cy_9_Q : X_MUX2
    port map (
      IB => T1_T10ms_Mcount_cnt_signal_cy(8),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T10ms_Mcount_cnt_signal_cy_9_rt_867,
      O => T1_T10ms_Mcount_cnt_signal_cy(9)
    );
  T1_T10ms_Mcount_cnt_signal_xor_9_Q : X_XOR2
    port map (
      I0 => T1_T10ms_Mcount_cnt_signal_cy(8),
      I1 => T1_T10ms_Mcount_cnt_signal_cy_9_rt_867,
      O => Result_9_2
    );
  T1_T10ms_Mcount_cnt_signal_cy_10_Q : X_MUX2
    port map (
      IB => T1_T10ms_Mcount_cnt_signal_cy(9),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T10ms_Mcount_cnt_signal_cy_10_rt_868,
      O => T1_T10ms_Mcount_cnt_signal_cy(10)
    );
  T1_T10ms_Mcount_cnt_signal_xor_10_Q : X_XOR2
    port map (
      I0 => T1_T10ms_Mcount_cnt_signal_cy(9),
      I1 => T1_T10ms_Mcount_cnt_signal_cy_10_rt_868,
      O => Result_10_2
    );
  T1_T10ms_Mcount_cnt_signal_cy_11_Q : X_MUX2
    port map (
      IB => T1_T10ms_Mcount_cnt_signal_cy(10),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T10ms_Mcount_cnt_signal_cy_11_rt_869,
      O => T1_T10ms_Mcount_cnt_signal_cy(11)
    );
  T1_T10ms_Mcount_cnt_signal_xor_11_Q : X_XOR2
    port map (
      I0 => T1_T10ms_Mcount_cnt_signal_cy(10),
      I1 => T1_T10ms_Mcount_cnt_signal_cy_11_rt_869,
      O => Result_11_2
    );
  T1_T10ms_Mcount_cnt_signal_cy_12_Q : X_MUX2
    port map (
      IB => T1_T10ms_Mcount_cnt_signal_cy(11),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T10ms_Mcount_cnt_signal_cy_12_rt_870,
      O => T1_T10ms_Mcount_cnt_signal_cy(12)
    );
  T1_T10ms_Mcount_cnt_signal_xor_12_Q : X_XOR2
    port map (
      I0 => T1_T10ms_Mcount_cnt_signal_cy(11),
      I1 => T1_T10ms_Mcount_cnt_signal_cy_12_rt_870,
      O => Result_12_2
    );
  T1_T10ms_Mcount_cnt_signal_cy_13_Q : X_MUX2
    port map (
      IB => T1_T10ms_Mcount_cnt_signal_cy(12),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T10ms_Mcount_cnt_signal_cy_13_rt_871,
      O => T1_T10ms_Mcount_cnt_signal_cy(13)
    );
  T1_T10ms_Mcount_cnt_signal_xor_13_Q : X_XOR2
    port map (
      I0 => T1_T10ms_Mcount_cnt_signal_cy(12),
      I1 => T1_T10ms_Mcount_cnt_signal_cy_13_rt_871,
      O => Result_13_2
    );
  T1_T10ms_Mcount_cnt_signal_cy_14_Q : X_MUX2
    port map (
      IB => T1_T10ms_Mcount_cnt_signal_cy(13),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T10ms_Mcount_cnt_signal_cy_14_rt_872,
      O => T1_T10ms_Mcount_cnt_signal_cy(14)
    );
  T1_T10ms_Mcount_cnt_signal_xor_14_Q : X_XOR2
    port map (
      I0 => T1_T10ms_Mcount_cnt_signal_cy(13),
      I1 => T1_T10ms_Mcount_cnt_signal_cy_14_rt_872,
      O => Result_14_2
    );
  T1_T10ms_Mcount_cnt_signal_cy_15_Q : X_MUX2
    port map (
      IB => T1_T10ms_Mcount_cnt_signal_cy(14),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T10ms_Mcount_cnt_signal_cy_15_rt_873,
      O => T1_T10ms_Mcount_cnt_signal_cy(15)
    );
  T1_T10ms_Mcount_cnt_signal_xor_15_Q : X_XOR2
    port map (
      I0 => T1_T10ms_Mcount_cnt_signal_cy(14),
      I1 => T1_T10ms_Mcount_cnt_signal_cy_15_rt_873,
      O => Result_15_2
    );
  T1_T10ms_Mcount_cnt_signal_cy_16_Q : X_MUX2
    port map (
      IB => T1_T10ms_Mcount_cnt_signal_cy(15),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T10ms_Mcount_cnt_signal_cy_16_rt_874,
      O => T1_T10ms_Mcount_cnt_signal_cy(16)
    );
  T1_T10ms_Mcount_cnt_signal_xor_16_Q : X_XOR2
    port map (
      I0 => T1_T10ms_Mcount_cnt_signal_cy(15),
      I1 => T1_T10ms_Mcount_cnt_signal_cy_16_rt_874,
      O => Result_16_2
    );
  T1_T10ms_Mcount_cnt_signal_cy_17_Q : X_MUX2
    port map (
      IB => T1_T10ms_Mcount_cnt_signal_cy(16),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T10ms_Mcount_cnt_signal_cy_17_rt_875,
      O => T1_T10ms_Mcount_cnt_signal_cy(17)
    );
  T1_T10ms_Mcount_cnt_signal_xor_17_Q : X_XOR2
    port map (
      I0 => T1_T10ms_Mcount_cnt_signal_cy(16),
      I1 => T1_T10ms_Mcount_cnt_signal_cy_17_rt_875,
      O => Result_17_1
    );
  T1_T10ms_Mcount_cnt_signal_cy_18_Q : X_MUX2
    port map (
      IB => T1_T10ms_Mcount_cnt_signal_cy(17),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T10ms_Mcount_cnt_signal_cy_18_rt_876,
      O => T1_T10ms_Mcount_cnt_signal_cy(18)
    );
  T1_T10ms_Mcount_cnt_signal_xor_18_Q : X_XOR2
    port map (
      I0 => T1_T10ms_Mcount_cnt_signal_cy(17),
      I1 => T1_T10ms_Mcount_cnt_signal_cy_18_rt_876,
      O => Result_18_1
    );
  T1_T10ms_Mcount_cnt_signal_xor_19_Q : X_XOR2
    port map (
      I0 => T1_T10ms_Mcount_cnt_signal_cy(18),
      I1 => T1_T10ms_Mcount_cnt_signal_xor_19_rt_901,
      O => Result_19_1
    );
  T1_T100ms_Mcount_cnt_signal_cy_0_Q : X_MUX2
    port map (
      IB => ALARMCLOCK_A1_countcheck(15),
      IA => N0,
      SEL => T1_T100ms_Mcount_cnt_signal_lut(0),
      O => T1_T100ms_Mcount_cnt_signal_cy(0)
    );
  T1_T100ms_Mcount_cnt_signal_cy_1_Q : X_MUX2
    port map (
      IB => T1_T100ms_Mcount_cnt_signal_cy(0),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T100ms_Mcount_cnt_signal_cy_1_rt_877,
      O => T1_T100ms_Mcount_cnt_signal_cy(1)
    );
  T1_T100ms_Mcount_cnt_signal_cy_2_Q : X_MUX2
    port map (
      IB => T1_T100ms_Mcount_cnt_signal_cy(1),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T100ms_Mcount_cnt_signal_cy_2_rt_878,
      O => T1_T100ms_Mcount_cnt_signal_cy(2)
    );
  T1_T100ms_Mcount_cnt_signal_cy_3_Q : X_MUX2
    port map (
      IB => T1_T100ms_Mcount_cnt_signal_cy(2),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T100ms_Mcount_cnt_signal_cy_3_rt_879,
      O => T1_T100ms_Mcount_cnt_signal_cy(3)
    );
  T1_T100ms_Mcount_cnt_signal_cy_4_Q : X_MUX2
    port map (
      IB => T1_T100ms_Mcount_cnt_signal_cy(3),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T100ms_Mcount_cnt_signal_cy_4_rt_880,
      O => T1_T100ms_Mcount_cnt_signal_cy(4)
    );
  T1_T100ms_Mcount_cnt_signal_cy_5_Q : X_MUX2
    port map (
      IB => T1_T100ms_Mcount_cnt_signal_cy(4),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T100ms_Mcount_cnt_signal_cy_5_rt_881,
      O => T1_T100ms_Mcount_cnt_signal_cy(5)
    );
  T1_T100ms_Mcount_cnt_signal_cy_6_Q : X_MUX2
    port map (
      IB => T1_T100ms_Mcount_cnt_signal_cy(5),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T100ms_Mcount_cnt_signal_cy_6_rt_882,
      O => T1_T100ms_Mcount_cnt_signal_cy(6)
    );
  T1_T100ms_Mcount_cnt_signal_cy_7_Q : X_MUX2
    port map (
      IB => T1_T100ms_Mcount_cnt_signal_cy(6),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T100ms_Mcount_cnt_signal_cy_7_rt_883,
      O => T1_T100ms_Mcount_cnt_signal_cy(7)
    );
  T1_T100ms_Mcount_cnt_signal_xor_7_Q : X_XOR2
    port map (
      I0 => T1_T100ms_Mcount_cnt_signal_cy(6),
      I1 => T1_T100ms_Mcount_cnt_signal_cy_7_rt_883,
      O => Result_7_3
    );
  T1_T100ms_Mcount_cnt_signal_cy_8_Q : X_MUX2
    port map (
      IB => T1_T100ms_Mcount_cnt_signal_cy(7),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T100ms_Mcount_cnt_signal_cy_8_rt_884,
      O => T1_T100ms_Mcount_cnt_signal_cy(8)
    );
  T1_T100ms_Mcount_cnt_signal_xor_8_Q : X_XOR2
    port map (
      I0 => T1_T100ms_Mcount_cnt_signal_cy(7),
      I1 => T1_T100ms_Mcount_cnt_signal_cy_8_rt_884,
      O => Result_8_3
    );
  T1_T100ms_Mcount_cnt_signal_cy_9_Q : X_MUX2
    port map (
      IB => T1_T100ms_Mcount_cnt_signal_cy(8),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T100ms_Mcount_cnt_signal_cy_9_rt_885,
      O => T1_T100ms_Mcount_cnt_signal_cy(9)
    );
  T1_T100ms_Mcount_cnt_signal_xor_9_Q : X_XOR2
    port map (
      I0 => T1_T100ms_Mcount_cnt_signal_cy(8),
      I1 => T1_T100ms_Mcount_cnt_signal_cy_9_rt_885,
      O => Result_9_3
    );
  T1_T100ms_Mcount_cnt_signal_cy_10_Q : X_MUX2
    port map (
      IB => T1_T100ms_Mcount_cnt_signal_cy(9),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T100ms_Mcount_cnt_signal_cy_10_rt_886,
      O => T1_T100ms_Mcount_cnt_signal_cy(10)
    );
  T1_T100ms_Mcount_cnt_signal_xor_10_Q : X_XOR2
    port map (
      I0 => T1_T100ms_Mcount_cnt_signal_cy(9),
      I1 => T1_T100ms_Mcount_cnt_signal_cy_10_rt_886,
      O => Result_10_3
    );
  T1_T100ms_Mcount_cnt_signal_cy_11_Q : X_MUX2
    port map (
      IB => T1_T100ms_Mcount_cnt_signal_cy(10),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T100ms_Mcount_cnt_signal_cy_11_rt_887,
      O => T1_T100ms_Mcount_cnt_signal_cy(11)
    );
  T1_T100ms_Mcount_cnt_signal_xor_11_Q : X_XOR2
    port map (
      I0 => T1_T100ms_Mcount_cnt_signal_cy(10),
      I1 => T1_T100ms_Mcount_cnt_signal_cy_11_rt_887,
      O => Result_11_3
    );
  T1_T100ms_Mcount_cnt_signal_cy_12_Q : X_MUX2
    port map (
      IB => T1_T100ms_Mcount_cnt_signal_cy(11),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T100ms_Mcount_cnt_signal_cy_12_rt_888,
      O => T1_T100ms_Mcount_cnt_signal_cy(12)
    );
  T1_T100ms_Mcount_cnt_signal_xor_12_Q : X_XOR2
    port map (
      I0 => T1_T100ms_Mcount_cnt_signal_cy(11),
      I1 => T1_T100ms_Mcount_cnt_signal_cy_12_rt_888,
      O => Result_12_3
    );
  T1_T100ms_Mcount_cnt_signal_cy_13_Q : X_MUX2
    port map (
      IB => T1_T100ms_Mcount_cnt_signal_cy(12),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T100ms_Mcount_cnt_signal_cy_13_rt_889,
      O => T1_T100ms_Mcount_cnt_signal_cy(13)
    );
  T1_T100ms_Mcount_cnt_signal_xor_13_Q : X_XOR2
    port map (
      I0 => T1_T100ms_Mcount_cnt_signal_cy(12),
      I1 => T1_T100ms_Mcount_cnt_signal_cy_13_rt_889,
      O => Result_13_3
    );
  T1_T100ms_Mcount_cnt_signal_cy_14_Q : X_MUX2
    port map (
      IB => T1_T100ms_Mcount_cnt_signal_cy(13),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T100ms_Mcount_cnt_signal_cy_14_rt_890,
      O => T1_T100ms_Mcount_cnt_signal_cy(14)
    );
  T1_T100ms_Mcount_cnt_signal_xor_14_Q : X_XOR2
    port map (
      I0 => T1_T100ms_Mcount_cnt_signal_cy(13),
      I1 => T1_T100ms_Mcount_cnt_signal_cy_14_rt_890,
      O => Result_14_3
    );
  T1_T100ms_Mcount_cnt_signal_cy_15_Q : X_MUX2
    port map (
      IB => T1_T100ms_Mcount_cnt_signal_cy(14),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T100ms_Mcount_cnt_signal_cy_15_rt_891,
      O => T1_T100ms_Mcount_cnt_signal_cy(15)
    );
  T1_T100ms_Mcount_cnt_signal_xor_15_Q : X_XOR2
    port map (
      I0 => T1_T100ms_Mcount_cnt_signal_cy(14),
      I1 => T1_T100ms_Mcount_cnt_signal_cy_15_rt_891,
      O => Result_15_3
    );
  T1_T100ms_Mcount_cnt_signal_cy_16_Q : X_MUX2
    port map (
      IB => T1_T100ms_Mcount_cnt_signal_cy(15),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T100ms_Mcount_cnt_signal_cy_16_rt_892,
      O => T1_T100ms_Mcount_cnt_signal_cy(16)
    );
  T1_T100ms_Mcount_cnt_signal_xor_16_Q : X_XOR2
    port map (
      I0 => T1_T100ms_Mcount_cnt_signal_cy(15),
      I1 => T1_T100ms_Mcount_cnt_signal_cy_16_rt_892,
      O => Result_16_3
    );
  T1_T100ms_Mcount_cnt_signal_cy_17_Q : X_MUX2
    port map (
      IB => T1_T100ms_Mcount_cnt_signal_cy(16),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T100ms_Mcount_cnt_signal_cy_17_rt_893,
      O => T1_T100ms_Mcount_cnt_signal_cy(17)
    );
  T1_T100ms_Mcount_cnt_signal_xor_17_Q : X_XOR2
    port map (
      I0 => T1_T100ms_Mcount_cnt_signal_cy(16),
      I1 => T1_T100ms_Mcount_cnt_signal_cy_17_rt_893,
      O => Result_17_2
    );
  T1_T100ms_Mcount_cnt_signal_cy_18_Q : X_MUX2
    port map (
      IB => T1_T100ms_Mcount_cnt_signal_cy(17),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T100ms_Mcount_cnt_signal_cy_18_rt_894,
      O => T1_T100ms_Mcount_cnt_signal_cy(18)
    );
  T1_T100ms_Mcount_cnt_signal_xor_18_Q : X_XOR2
    port map (
      I0 => T1_T100ms_Mcount_cnt_signal_cy(17),
      I1 => T1_T100ms_Mcount_cnt_signal_cy_18_rt_894,
      O => Result_18_2
    );
  T1_T100ms_Mcount_cnt_signal_cy_19_Q : X_MUX2
    port map (
      IB => T1_T100ms_Mcount_cnt_signal_cy(18),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T100ms_Mcount_cnt_signal_cy_19_rt_895,
      O => T1_T100ms_Mcount_cnt_signal_cy(19)
    );
  T1_T100ms_Mcount_cnt_signal_xor_19_Q : X_XOR2
    port map (
      I0 => T1_T100ms_Mcount_cnt_signal_cy(18),
      I1 => T1_T100ms_Mcount_cnt_signal_cy_19_rt_895,
      O => Result_19_2
    );
  T1_T100ms_Mcount_cnt_signal_cy_20_Q : X_MUX2
    port map (
      IB => T1_T100ms_Mcount_cnt_signal_cy(19),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T100ms_Mcount_cnt_signal_cy_20_rt_896,
      O => T1_T100ms_Mcount_cnt_signal_cy(20)
    );
  T1_T100ms_Mcount_cnt_signal_xor_20_Q : X_XOR2
    port map (
      I0 => T1_T100ms_Mcount_cnt_signal_cy(19),
      I1 => T1_T100ms_Mcount_cnt_signal_cy_20_rt_896,
      O => Result_20_1
    );
  T1_T100ms_Mcount_cnt_signal_cy_21_Q : X_MUX2
    port map (
      IB => T1_T100ms_Mcount_cnt_signal_cy(20),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T100ms_Mcount_cnt_signal_cy_21_rt_897,
      O => T1_T100ms_Mcount_cnt_signal_cy(21)
    );
  T1_T100ms_Mcount_cnt_signal_xor_21_Q : X_XOR2
    port map (
      I0 => T1_T100ms_Mcount_cnt_signal_cy(20),
      I1 => T1_T100ms_Mcount_cnt_signal_cy_21_rt_897,
      O => Result_21_1
    );
  T1_T100ms_Mcount_cnt_signal_cy_22_Q : X_MUX2
    port map (
      IB => T1_T100ms_Mcount_cnt_signal_cy(21),
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => T1_T100ms_Mcount_cnt_signal_cy_22_rt_898,
      O => T1_T100ms_Mcount_cnt_signal_cy(22)
    );
  T1_T100ms_Mcount_cnt_signal_xor_22_Q : X_XOR2
    port map (
      I0 => T1_T100ms_Mcount_cnt_signal_cy(21),
      I1 => T1_T100ms_Mcount_cnt_signal_cy_22_rt_898,
      O => Result_22_1
    );
  T1_T100ms_Mcount_cnt_signal_xor_23_Q : X_XOR2
    port map (
      I0 => T1_T100ms_Mcount_cnt_signal_cy(22),
      I1 => T1_T100ms_Mcount_cnt_signal_xor_23_rt_902,
      O => Result_23_1
    );
  S_current_edit_FSM_FFd1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => S_current_edit_FSM_FFd1_In,
      SRST => ALARMCLOCK_A1_ledOut_96,
      O => S_current_edit_FSM_FFd1_115,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  S_current_edit_FSM_FFd2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => S_current_edit_FSM_FFd2_In,
      SRST => ALARMCLOCK_A1_ledOut_96,
      O => S_current_edit_FSM_FFd2_116,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  S_edit_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => S_alarm_is_buzzing_inv,
      I => S_current_edit_1_X_14_o_wide_mux_8_OUT_8_Q,
      O => S_edit(8),
      SET => GND,
      RST => GND
    );
  S_edit_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => S_alarm_is_buzzing_inv,
      I => S_current_edit_1_X_14_o_wide_mux_8_OUT_7_Q,
      O => S_edit(7),
      SET => GND,
      RST => GND
    );
  S_edit_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => S_alarm_is_buzzing_inv,
      I => S_current_edit_1_X_14_o_wide_mux_8_OUT_6_Q,
      O => S_edit(6),
      SET => GND,
      RST => GND
    );
  S_edit_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => S_alarm_is_buzzing_inv,
      I => S_current_edit_1_X_14_o_wide_mux_8_OUT_5_Q,
      O => S_edit(5),
      SET => GND,
      RST => GND
    );
  S_edit_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => S_alarm_is_buzzing_inv,
      I => S_current_edit_1_X_14_o_wide_mux_8_OUT_4_Q,
      O => S_edit(4),
      SET => GND,
      RST => GND
    );
  S_edit_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => S_alarm_is_buzzing_inv,
      I => S_current_edit_1_X_14_o_wide_mux_8_OUT_3_Q,
      O => S_edit(3),
      SET => GND,
      RST => GND
    );
  S_edit_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => S_alarm_is_buzzing_inv,
      I => S_current_edit_1_X_14_o_wide_mux_8_OUT_2_Q,
      O => S_edit(2),
      SET => GND,
      RST => GND
    );
  S_edit_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => S_alarm_is_buzzing_inv,
      I => S_current_edit_1_X_14_o_wide_mux_8_OUT_1_Q,
      O => S_edit(1),
      SET => GND,
      RST => GND
    );
  S_edit_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => S_alarm_is_buzzing_inv,
      I => S_current_edit_1_X_14_o_wide_mux_8_OUT_0_Q,
      O => S_edit(0),
      SET => GND,
      RST => GND
    );
  S_s_ostate_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => S_n0051_inv,
      I => S_PWR_14_o_s_ostate_2_mux_5_OUT_2_Q,
      O => S_s_ostate(2),
      SET => GND,
      RST => GND
    );
  S_U1_active : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => S_alarm_is_buzzing_inv,
      I => S_current_edit_1_X_14_o_Mux_9_o,
      O => S_U1_active_22,
      SET => GND,
      RST => GND
    );
  S_U3_active : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => S_alarm_is_buzzing_inv,
      I => S_current_edit_1_INV_30_o,
      O => S_U3_active_30,
      SET => GND,
      RST => GND
    );
  S_U2_active : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => S_alarm_is_buzzing_inv,
      I => S_current_edit_0_INV_29_o,
      O => S_U2_active_26,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_count_t_0 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ALARMCLOCK_T1_T1_Ucnt(0),
      CLK => sysclk_BUFGP,
      O => ALARMCLOCK_count_t_0_50,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_count_t_1 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ALARMCLOCK_T1_T1_Ucnt(1),
      CLK => sysclk_BUFGP,
      O => ALARMCLOCK_count_t_1_49,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_count_t_3 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ALARMCLOCK_T1_T1_Ucnt(3),
      CLK => sysclk_BUFGP,
      O => ALARMCLOCK_count_t_3_47,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_count_t_4 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ALARMCLOCK_T1_T1_Tcnt(0),
      CLK => sysclk_BUFGP,
      O => ALARMCLOCK_count_t_4_46,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_count_t_2 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ALARMCLOCK_T1_T1_Ucnt(2),
      CLK => sysclk_BUFGP,
      O => ALARMCLOCK_count_t_2_48,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_count_t_6 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ALARMCLOCK_T1_T1_Tcnt(2),
      CLK => sysclk_BUFGP,
      O => ALARMCLOCK_count_t_6_44,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_count_t_5 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ALARMCLOCK_T1_T1_Tcnt(1),
      CLK => sysclk_BUFGP,
      O => ALARMCLOCK_count_t_5_45,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_count_t_8 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ALARMCLOCK_T1_T2_Ucnt(0),
      CLK => sysclk_BUFGP,
      O => ALARMCLOCK_count_t_8_43,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_count_t_9 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ALARMCLOCK_T1_T2_Ucnt(1),
      CLK => sysclk_BUFGP,
      O => ALARMCLOCK_count_t_9_42,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_count_t_10 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ALARMCLOCK_T1_T2_Ucnt(2),
      CLK => sysclk_BUFGP,
      O => ALARMCLOCK_count_t_10_41,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_count_t_11 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ALARMCLOCK_T1_T2_Ucnt(3),
      CLK => sysclk_BUFGP,
      O => ALARMCLOCK_count_t_11_40,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_count_t_13 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ALARMCLOCK_T1_T2_Tcnt(1),
      CLK => sysclk_BUFGP,
      O => ALARMCLOCK_count_t_13_38,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_count_t_14 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ALARMCLOCK_T1_T2_Tcnt(2),
      CLK => sysclk_BUFGP,
      O => ALARMCLOCK_count_t_14_37,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_count_t_12 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ALARMCLOCK_T1_T2_Tcnt(0),
      CLK => sysclk_BUFGP,
      O => ALARMCLOCK_count_t_12_39,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_count_t_16 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ALARMCLOCK_T1_T3_Ucnt(0),
      CLK => sysclk_BUFGP,
      O => ALARMCLOCK_count_t_16_36,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_count_t_17 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ALARMCLOCK_T1_T3_Ucnt(1),
      CLK => sysclk_BUFGP,
      O => ALARMCLOCK_count_t_17_35,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_count_t_18 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ALARMCLOCK_T1_T3_Ucnt(2),
      CLK => sysclk_BUFGP,
      O => ALARMCLOCK_count_t_18_34,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_count_t_20 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ALARMCLOCK_T1_T3_Tcnt(0),
      CLK => sysclk_BUFGP,
      O => ALARMCLOCK_count_t_20_32,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_count_t_21 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ALARMCLOCK_T1_T3_Tcnt(1),
      CLK => sysclk_BUFGP,
      O => ALARMCLOCK_count_t_21_31,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_count_t_19 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ALARMCLOCK_T1_T3_Ucnt(3),
      CLK => sysclk_BUFGP,
      O => ALARMCLOCK_count_t_19_33,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_T1_present_state_FSM_FFd1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => ALARMCLOCK_T1_present_state_FSM_FFd1_In1,
      SRST => ALARMCLOCK_T1_endEdit_0,
      O => ALARMCLOCK_T1_present_state_FSM_FFd1_441,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_T1_present_state_FSM_FFd2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => ALARMCLOCK_T1_present_state_FSM_FFd2_In1,
      SRST => ALARMCLOCK_T1_endEdit_0,
      O => ALARMCLOCK_T1_present_state_FSM_FFd2_440,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_T1_T3_Ucnt_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_T1_T3_n0150_inv,
      I => ALARMCLOCK_T1_T3_Ucnt_3_Umin_3_mux_30_OUT_3_Q,
      SRST => ALARMCLOCK_T1_T3_n0127_455,
      O => ALARMCLOCK_T1_T3_Ucnt(3),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_T1_T3_Ucnt_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_T1_T3_n0150_inv,
      I => ALARMCLOCK_T1_T3_Ucnt_3_Umin_3_mux_30_OUT_2_Q,
      SRST => ALARMCLOCK_T1_T3_n0127_455,
      O => ALARMCLOCK_T1_T3_Ucnt(2),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_T1_T3_Ucnt_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_T1_T3_n0150_inv,
      I => ALARMCLOCK_T1_T3_Ucnt_3_Umin_3_mux_30_OUT_1_Q,
      SRST => ALARMCLOCK_T1_T3_n0127_455,
      O => ALARMCLOCK_T1_T3_Ucnt(1),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_T1_T3_Ucnt_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_T1_T3_n0150_inv,
      I => ALARMCLOCK_T1_T3_Ucnt_3_Umin_3_mux_30_OUT_0_Q,
      SRST => ALARMCLOCK_T1_T3_n0127_455,
      O => ALARMCLOCK_T1_T3_Ucnt(0),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_T1_T3_Tcnt_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_T1_T3_n0142_inv,
      I => ALARMCLOCK_T1_T3_Tcnt_3_Tmin_3_mux_27_OUT_1_Q,
      O => ALARMCLOCK_T1_T3_Tcnt(1),
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_T1_T3_Tcnt_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_T1_T3_n0142_inv,
      I => ALARMCLOCK_T1_T3_Tcnt_3_Tmin_3_mux_27_OUT_0_Q,
      O => ALARMCLOCK_T1_T3_Tcnt(0),
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_T1_T2_Ucnt_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_T1_T2_n0150_inv,
      I => ALARMCLOCK_T1_T2_Ucnt_3_Umin_3_mux_30_OUT_3_Q,
      SRST => ALARMCLOCK_T1_T2_n0127_476,
      O => ALARMCLOCK_T1_T2_Ucnt(3),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_T1_T2_Ucnt_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_T1_T2_n0150_inv,
      I => ALARMCLOCK_T1_T2_Ucnt_3_Umin_3_mux_30_OUT_2_Q,
      SRST => ALARMCLOCK_T1_T2_n0127_476,
      O => ALARMCLOCK_T1_T2_Ucnt(2),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_T1_T2_Ucnt_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_T1_T2_n0150_inv,
      I => ALARMCLOCK_T1_T2_Ucnt_3_Umin_3_mux_30_OUT_1_Q,
      SRST => ALARMCLOCK_T1_T2_n0127_476,
      O => ALARMCLOCK_T1_T2_Ucnt(1),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_T1_T2_Ucnt_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_T1_T2_n0150_inv,
      I => ALARMCLOCK_T1_T2_Ucnt_3_Umin_3_mux_30_OUT_0_Q,
      SRST => ALARMCLOCK_T1_T2_n0127_476,
      O => ALARMCLOCK_T1_T2_Ucnt(0),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_T1_T2_Tcnt_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_T1_T2_n0142_inv,
      I => ALARMCLOCK_T1_T2_Tcnt_3_Tmin_3_mux_27_OUT_2_Q,
      O => ALARMCLOCK_T1_T2_Tcnt(2),
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_T1_T2_Tcnt_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_T1_T2_n0142_inv,
      I => ALARMCLOCK_T1_T2_Tcnt_3_Tmin_3_mux_27_OUT_1_Q,
      O => ALARMCLOCK_T1_T2_Tcnt(1),
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_T1_T2_Tcnt_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_T1_T2_n0142_inv,
      I => ALARMCLOCK_T1_T2_Tcnt_3_Tmin_3_mux_27_OUT_0_Q,
      O => ALARMCLOCK_T1_T2_Tcnt(0),
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_T1_T1_Ucnt_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_T1_T1_n0150_inv,
      I => ALARMCLOCK_T1_T1_Ucnt_3_Umin_3_mux_30_OUT_3_Q,
      SRST => ALARMCLOCK_T1_T1_n0127_498,
      O => ALARMCLOCK_T1_T1_Ucnt(3),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_T1_T1_Ucnt_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_T1_T1_n0150_inv,
      I => ALARMCLOCK_T1_T1_Ucnt_3_Umin_3_mux_30_OUT_2_Q,
      SRST => ALARMCLOCK_T1_T1_n0127_498,
      O => ALARMCLOCK_T1_T1_Ucnt(2),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_T1_T1_Ucnt_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_T1_T1_n0150_inv,
      I => ALARMCLOCK_T1_T1_Ucnt_3_Umin_3_mux_30_OUT_1_Q,
      SRST => ALARMCLOCK_T1_T1_n0127_498,
      O => ALARMCLOCK_T1_T1_Ucnt(1),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_T1_T1_Ucnt_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_T1_T1_n0150_inv,
      I => ALARMCLOCK_T1_T1_Ucnt_3_Umin_3_mux_30_OUT_0_Q,
      SRST => ALARMCLOCK_T1_T1_n0127_498,
      O => ALARMCLOCK_T1_T1_Ucnt(0),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_T1_T1_Tcnt_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_T1_T1_n0142_inv,
      I => ALARMCLOCK_T1_T1_Tcnt_3_Tmin_3_mux_27_OUT_2_Q,
      O => ALARMCLOCK_T1_T1_Tcnt(2),
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_T1_T1_Tcnt_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_T1_T1_n0142_inv,
      I => ALARMCLOCK_T1_T1_Tcnt_3_Tmin_3_mux_27_OUT_1_Q,
      O => ALARMCLOCK_T1_T1_Tcnt(1),
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_T1_T1_Tcnt_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_T1_T1_n0142_inv,
      I => ALARMCLOCK_T1_T1_Tcnt_3_Tmin_3_mux_27_OUT_0_Q,
      O => ALARMCLOCK_T1_T1_Tcnt(0),
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_D1_T1_Tcnt_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_D1_T1_n0142_inv,
      I => ALARMCLOCK_D1_T1_Tcnt_3_Tmin_3_mux_27_OUT_0_Q,
      O => ALARMCLOCK_D1_T1_Tcnt(0),
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_D1_T1_Tcnt_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_D1_T1_n0142_inv,
      I => ALARMCLOCK_D1_T1_Tcnt_3_Tmin_3_mux_27_OUT_1_Q,
      O => ALARMCLOCK_D1_T1_Tcnt(1),
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_D1_T1_Tcnt_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_D1_T1_n0142_inv,
      I => ALARMCLOCK_D1_T1_Tcnt_3_Tmin_3_mux_27_OUT_2_Q,
      O => ALARMCLOCK_D1_T1_Tcnt(2),
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_D1_T1_Tcnt_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_D1_T1_n0142_inv,
      I => ALARMCLOCK_D1_T1_Tcnt_3_Tmin_3_mux_27_OUT_3_Q,
      O => ALARMCLOCK_D1_T1_Tcnt(3),
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_D1_T1_Ucnt_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_D1_T1_n0150_inv,
      I => ALARMCLOCK_D1_T1_Ucnt_3_Umin_3_mux_30_OUT_0_Q,
      SRST => ALARMCLOCK_D1_T1_n0127_514,
      O => ALARMCLOCK_D1_T1_Ucnt(0),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_D1_T1_Ucnt_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_D1_T1_n0150_inv,
      I => ALARMCLOCK_D1_T1_Ucnt_3_Umin_3_mux_30_OUT_1_Q,
      SRST => ALARMCLOCK_D1_T1_n0127_514,
      O => ALARMCLOCK_D1_T1_Ucnt(1),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_D1_T1_Ucnt_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_D1_T1_n0150_inv,
      I => ALARMCLOCK_D1_T1_Ucnt_3_Umin_3_mux_30_OUT_3_Q,
      SRST => ALARMCLOCK_D1_T1_n0127_514,
      O => ALARMCLOCK_D1_T1_Ucnt(3),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_D1_T2_Tcnt_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_D1_T2_n0142_inv,
      I => ALARMCLOCK_D1_T2_Tcnt_3_Tmin_3_mux_27_OUT_0_Q,
      O => ALARMCLOCK_D1_T2_Tcnt(0),
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_D1_T2_Tcnt_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_D1_T2_n0142_inv,
      I => ALARMCLOCK_D1_T2_Tcnt_3_Tmin_3_mux_27_OUT_1_Q,
      O => ALARMCLOCK_D1_T2_Tcnt(1),
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_D1_T2_Tcnt_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_D1_T2_n0142_inv,
      I => ALARMCLOCK_D1_T2_Tcnt_3_Tmin_3_mux_27_OUT_2_Q,
      O => ALARMCLOCK_D1_T2_Tcnt(2),
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_D1_T2_Tcnt_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_D1_T2_n0142_inv,
      I => ALARMCLOCK_D1_T2_Tcnt_3_Tmin_3_mux_27_OUT_3_Q,
      O => ALARMCLOCK_D1_T2_Tcnt(3),
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_D1_T2_Ucnt_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_D1_T2_n0150_inv,
      I => ALARMCLOCK_D1_T2_Ucnt_3_Umin_3_mux_30_OUT_0_Q,
      SRST => ALARMCLOCK_D1_T2_n0127_537,
      O => ALARMCLOCK_D1_T2_Ucnt(0),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_D1_T2_Ucnt_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_D1_T2_n0150_inv,
      I => ALARMCLOCK_D1_T2_Ucnt_3_Umin_3_mux_30_OUT_1_Q,
      SRST => ALARMCLOCK_D1_T2_n0127_537,
      O => ALARMCLOCK_D1_T2_Ucnt(1),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_D1_T2_Ucnt_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_D1_T2_n0150_inv,
      I => ALARMCLOCK_D1_T2_Ucnt_3_Umin_3_mux_30_OUT_2_Q,
      SRST => ALARMCLOCK_D1_T2_n0127_537,
      O => ALARMCLOCK_D1_T2_Ucnt(2),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_D1_T2_Ucnt_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_D1_T2_n0150_inv,
      I => ALARMCLOCK_D1_T2_Ucnt_3_Umin_3_mux_30_OUT_3_Q,
      SRST => ALARMCLOCK_D1_T2_n0127_537,
      O => ALARMCLOCK_D1_T2_Ucnt(3),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_D1_T3_Tcnt_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_D1_T3_n0142_inv,
      I => ALARMCLOCK_D1_T3_Tcnt_3_Tmin_3_mux_27_OUT_0_Q,
      O => ALARMCLOCK_D1_T3_Tcnt(0),
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_D1_T3_Tcnt_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_D1_T3_n0142_inv,
      I => ALARMCLOCK_D1_T3_Tcnt_3_Tmin_3_mux_27_OUT_1_Q,
      O => ALARMCLOCK_D1_T3_Tcnt(1),
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_D1_T3_Tcnt_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_D1_T3_n0142_inv,
      I => ALARMCLOCK_D1_T3_Tcnt_3_Tmin_3_mux_27_OUT_2_Q,
      O => ALARMCLOCK_D1_T3_Tcnt(2),
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_D1_T3_Tcnt_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_D1_T3_n0142_inv,
      I => ALARMCLOCK_D1_T3_Tcnt_3_Tmin_3_mux_27_OUT_3_Q,
      O => ALARMCLOCK_D1_T3_Tcnt(3),
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_D1_T3_Ucnt_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_D1_T3_n0150_inv,
      I => ALARMCLOCK_D1_T3_Ucnt_3_Umin_3_mux_30_OUT_0_Q,
      SRST => ALARMCLOCK_D1_T3_n0127_560,
      O => ALARMCLOCK_D1_T3_Ucnt(0),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_D1_T3_Ucnt_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_D1_T3_n0150_inv,
      I => ALARMCLOCK_D1_T3_Ucnt_3_Umin_3_mux_30_OUT_1_Q,
      SRST => ALARMCLOCK_D1_T3_n0127_560,
      O => ALARMCLOCK_D1_T3_Ucnt(1),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_D1_T3_Ucnt_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_D1_T3_n0150_inv,
      I => ALARMCLOCK_D1_T3_Ucnt_3_Umin_3_mux_30_OUT_2_Q,
      SRST => ALARMCLOCK_D1_T3_n0127_560,
      O => ALARMCLOCK_D1_T3_Ucnt(2),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_D1_T3_Ucnt_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_D1_T3_n0150_inv,
      I => ALARMCLOCK_D1_T3_Ucnt_3_Umin_3_mux_30_OUT_3_Q,
      SRST => ALARMCLOCK_D1_T3_n0127_560,
      O => ALARMCLOCK_D1_T3_Ucnt(3),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_D1_present_state_FSM_FFd2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => ALARMCLOCK_D1_present_state_FSM_FFd2_In1,
      SRST => ALARMCLOCK_D1_endEdit_0,
      O => ALARMCLOCK_D1_present_state_FSM_FFd2_590,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_D1_present_state_FSM_FFd1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => ALARMCLOCK_D1_present_state_FSM_FFd1_In1,
      SRST => ALARMCLOCK_D1_endEdit_0,
      O => ALARMCLOCK_D1_present_state_FSM_FFd1_591,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_A1_T1_Tcnt_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_A1_T1_n0142_inv,
      I => ALARMCLOCK_A1_T1_Tcnt_3_Tmin_3_mux_27_OUT_0_Q,
      O => ALARMCLOCK_A1_T1_Tcnt(0),
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_A1_T1_Tcnt_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_A1_T1_n0142_inv,
      I => ALARMCLOCK_A1_T1_Tcnt_3_Tmin_3_mux_27_OUT_1_Q,
      O => ALARMCLOCK_A1_T1_Tcnt(1),
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_A1_T1_Tcnt_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_A1_T1_n0142_inv,
      I => ALARMCLOCK_A1_T1_Tcnt_3_Tmin_3_mux_27_OUT_2_Q,
      O => ALARMCLOCK_A1_T1_Tcnt(2),
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_A1_T1_Ucnt_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_A1_T1_n0150_inv,
      I => ALARMCLOCK_A1_T1_Ucnt_3_Umin_3_mux_30_OUT_0_Q,
      SRST => ALARMCLOCK_A1_T1_n0127_600,
      O => ALARMCLOCK_A1_T1_Ucnt(0),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_A1_T1_Ucnt_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_A1_T1_n0150_inv,
      I => ALARMCLOCK_A1_T1_Ucnt_3_Umin_3_mux_30_OUT_1_Q,
      SRST => ALARMCLOCK_A1_T1_n0127_600,
      O => ALARMCLOCK_A1_T1_Ucnt(1),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_A1_T1_Ucnt_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_A1_T1_n0150_inv,
      I => ALARMCLOCK_A1_T1_Ucnt_3_Umin_3_mux_30_OUT_2_Q,
      SRST => ALARMCLOCK_A1_T1_n0127_600,
      O => ALARMCLOCK_A1_T1_Ucnt(2),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_A1_T1_Ucnt_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_A1_T1_n0150_inv,
      I => ALARMCLOCK_A1_T1_Ucnt_3_Umin_3_mux_30_OUT_3_Q,
      SRST => ALARMCLOCK_A1_T1_n0127_600,
      O => ALARMCLOCK_A1_T1_Ucnt(3),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_A1_T2_Tcnt_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_A1_T2_n0142_inv,
      I => ALARMCLOCK_A1_T2_Tcnt_3_Tmin_3_mux_27_OUT_0_Q,
      O => ALARMCLOCK_A1_T2_Tcnt(0),
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_A1_T2_Tcnt_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_A1_T2_n0142_inv,
      I => ALARMCLOCK_A1_T2_Tcnt_3_Tmin_3_mux_27_OUT_1_Q,
      O => ALARMCLOCK_A1_T2_Tcnt(1),
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_A1_T2_Tcnt_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_A1_T2_n0142_inv,
      I => ALARMCLOCK_A1_T2_Tcnt_3_Tmin_3_mux_27_OUT_2_Q,
      O => ALARMCLOCK_A1_T2_Tcnt(2),
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_A1_T2_Ucnt_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_A1_T2_n0150_inv,
      I => ALARMCLOCK_A1_T2_Ucnt_3_Umin_3_mux_30_OUT_0_Q,
      SRST => ALARMCLOCK_A1_T2_n0127_623,
      O => ALARMCLOCK_A1_T2_Ucnt(0),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_A1_T2_Ucnt_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_A1_T2_n0150_inv,
      I => ALARMCLOCK_A1_T2_Ucnt_3_Umin_3_mux_30_OUT_1_Q,
      SRST => ALARMCLOCK_A1_T2_n0127_623,
      O => ALARMCLOCK_A1_T2_Ucnt(1),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_A1_T2_Ucnt_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_A1_T2_n0150_inv,
      I => ALARMCLOCK_A1_T2_Ucnt_3_Umin_3_mux_30_OUT_2_Q,
      SRST => ALARMCLOCK_A1_T2_n0127_623,
      O => ALARMCLOCK_A1_T2_Ucnt(2),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_A1_T2_Ucnt_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_A1_T2_n0150_inv,
      I => ALARMCLOCK_A1_T2_Ucnt_3_Umin_3_mux_30_OUT_3_Q,
      SRST => ALARMCLOCK_A1_T2_n0127_623,
      O => ALARMCLOCK_A1_T2_Ucnt(3),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_A1_T3_Tcnt_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_A1_T3_n0142_inv,
      I => ALARMCLOCK_A1_T3_Tcnt_3_Tmin_3_mux_27_OUT_0_Q,
      O => ALARMCLOCK_A1_T3_Tcnt(0),
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_A1_T3_Tcnt_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_A1_T3_n0142_inv,
      I => ALARMCLOCK_A1_T3_Tcnt_3_Tmin_3_mux_27_OUT_1_Q,
      O => ALARMCLOCK_A1_T3_Tcnt(1),
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_A1_T3_Ucnt_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_A1_T3_n0150_inv,
      I => ALARMCLOCK_A1_T3_Ucnt_3_Umin_3_mux_30_OUT_0_Q,
      SRST => ALARMCLOCK_A1_T3_n0127_645,
      O => ALARMCLOCK_A1_T3_Ucnt(0),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_A1_T3_Ucnt_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_A1_T3_n0150_inv,
      I => ALARMCLOCK_A1_T3_Ucnt_3_Umin_3_mux_30_OUT_1_Q,
      SRST => ALARMCLOCK_A1_T3_n0127_645,
      O => ALARMCLOCK_A1_T3_Ucnt(1),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_A1_T3_Ucnt_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_A1_T3_n0150_inv,
      I => ALARMCLOCK_A1_T3_Ucnt_3_Umin_3_mux_30_OUT_2_Q,
      SRST => ALARMCLOCK_A1_T3_n0127_645,
      O => ALARMCLOCK_A1_T3_Ucnt(2),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_A1_T3_Ucnt_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_A1_T3_n0150_inv,
      I => ALARMCLOCK_A1_T3_Ucnt_3_Umin_3_mux_30_OUT_3_Q,
      SRST => ALARMCLOCK_A1_T3_n0127_645,
      O => ALARMCLOCK_A1_T3_Ucnt(3),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_cy_7_Q : X_MUX2
    port map (
      IB => ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_cy_6_Q_657,
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_7_Q,
      O => ALARMCLOCK_A1_countcheck_23_counterInput_23_equal_15_o
    );
  ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_cy_6_Q : X_MUX2
    port map (
      IB => ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_cy_5_Q_659,
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_6_Q_658,
      O => ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_cy_6_Q_657
    );
  ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_6_Q : X_LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T3_Ucnt(2),
      ADR1 => ALARMCLOCK_T1_T3_Ucnt(2),
      ADR2 => ALARMCLOCK_A1_T3_Ucnt(3),
      ADR3 => ALARMCLOCK_T1_T3_Ucnt(3),
      ADR4 => ALARMCLOCK_A1_T3_Tcnt(0),
      ADR5 => ALARMCLOCK_T1_T3_Tcnt(0),
      O => ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_6_Q_658
    );
  ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_cy_5_Q : X_MUX2
    port map (
      IB => ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_cy_4_Q_661,
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_5_Q,
      O => ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_cy_5_Q_659
    );
  ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_cy_4_Q : X_MUX2
    port map (
      IB => ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_cy_3_Q_663,
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_4_Q_662,
      O => ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_cy_4_Q_661
    );
  ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_4_Q : X_LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T2_Tcnt(0),
      ADR1 => ALARMCLOCK_T1_T2_Tcnt(0),
      ADR2 => ALARMCLOCK_A1_T2_Tcnt(1),
      ADR3 => ALARMCLOCK_T1_T2_Tcnt(1),
      ADR4 => ALARMCLOCK_A1_T2_Tcnt(2),
      ADR5 => ALARMCLOCK_T1_T2_Tcnt(2),
      O => ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_4_Q_662
    );
  ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_cy_3_Q : X_MUX2
    port map (
      IB => ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_cy_2_Q_665,
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_3_Q_664,
      O => ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_cy_3_Q_663
    );
  ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_3_Q : X_LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T2_Ucnt(1),
      ADR1 => ALARMCLOCK_T1_T2_Ucnt(1),
      ADR2 => ALARMCLOCK_A1_T2_Ucnt(2),
      ADR3 => ALARMCLOCK_T1_T2_Ucnt(2),
      ADR4 => ALARMCLOCK_A1_T2_Ucnt(3),
      ADR5 => ALARMCLOCK_T1_T2_Ucnt(3),
      O => ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_3_Q_664
    );
  ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_cy_2_Q : X_MUX2
    port map (
      IB => ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_cy_1_Q_667,
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_2_Q,
      O => ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_cy_2_Q_665
    );
  ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_cy_1_Q : X_MUX2
    port map (
      IB => ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_cy_0_Q_669,
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_1_Q_668,
      O => ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_cy_1_Q_667
    );
  ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_1_Q : X_LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T1_Ucnt(3),
      ADR1 => ALARMCLOCK_T1_T1_Ucnt(3),
      ADR2 => ALARMCLOCK_A1_T1_Tcnt(0),
      ADR3 => ALARMCLOCK_T1_T1_Tcnt(0),
      ADR4 => ALARMCLOCK_A1_T1_Tcnt(1),
      ADR5 => ALARMCLOCK_T1_T1_Tcnt(1),
      O => ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_1_Q_668
    );
  ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_cy_0_Q : X_MUX2
    port map (
      IB => N0,
      IA => ALARMCLOCK_A1_countcheck(15),
      SEL => ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_0_Q_670,
      O => ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_cy_0_Q_669
    );
  ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_0_Q : X_LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T1_Ucnt(0),
      ADR1 => ALARMCLOCK_T1_T1_Ucnt(0),
      ADR2 => ALARMCLOCK_A1_T1_Ucnt(1),
      ADR3 => ALARMCLOCK_T1_T1_Ucnt(1),
      ADR4 => ALARMCLOCK_A1_T1_Ucnt(2),
      ADR5 => ALARMCLOCK_T1_T1_Ucnt(2),
      O => ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_0_Q_670
    );
  ALARMCLOCK_A1_present_state_FSM_FFd1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => ALARMCLOCK_A1_present_state_FSM_FFd1_In1,
      SRST => ALARMCLOCK_A1_endEdit_0,
      O => ALARMCLOCK_A1_present_state_FSM_FFd1_684,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_A1_present_state_FSM_FFd2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => ALARMCLOCK_A1_present_state_FSM_FFd2_In1,
      SRST => ALARMCLOCK_A1_endEdit_0,
      O => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_A1_alarmOutput_21 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => ALARMCLOCK_A1_T3_Tcnt(1),
      O => ALARMCLOCK_A1_alarmOutput_21_Q,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_A1_alarmOutput_20 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => ALARMCLOCK_A1_T3_Tcnt(0),
      O => ALARMCLOCK_A1_alarmOutput_20_Q,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_A1_alarmOutput_19 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => ALARMCLOCK_A1_T3_Ucnt(3),
      O => ALARMCLOCK_A1_alarmOutput_19_Q,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_A1_alarmOutput_18 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => ALARMCLOCK_A1_T3_Ucnt(2),
      O => ALARMCLOCK_A1_alarmOutput_18_Q,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_A1_alarmOutput_17 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => ALARMCLOCK_A1_T3_Ucnt(1),
      O => ALARMCLOCK_A1_alarmOutput_17_Q,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_A1_alarmOutput_16 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => ALARMCLOCK_A1_T3_Ucnt(0),
      O => ALARMCLOCK_A1_alarmOutput_16_Q,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_A1_alarmOutput_14 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => ALARMCLOCK_A1_T2_Tcnt(2),
      O => ALARMCLOCK_A1_alarmOutput_14_Q,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_A1_alarmOutput_13 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => ALARMCLOCK_A1_T2_Tcnt(1),
      O => ALARMCLOCK_A1_alarmOutput_13_Q,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_A1_alarmOutput_12 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => ALARMCLOCK_A1_T2_Tcnt(0),
      O => ALARMCLOCK_A1_alarmOutput_12_Q,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_A1_alarmOutput_11 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => ALARMCLOCK_A1_T2_Ucnt(3),
      O => ALARMCLOCK_A1_alarmOutput_11_Q,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_A1_alarmOutput_10 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => ALARMCLOCK_A1_T2_Ucnt(2),
      O => ALARMCLOCK_A1_alarmOutput_10_Q,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_A1_alarmOutput_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => ALARMCLOCK_A1_T2_Ucnt(1),
      O => ALARMCLOCK_A1_alarmOutput_9_Q,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_A1_alarmOutput_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => ALARMCLOCK_A1_T2_Ucnt(0),
      O => ALARMCLOCK_A1_alarmOutput_8_Q,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_A1_alarmOutput_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => ALARMCLOCK_A1_T1_Tcnt(2),
      O => ALARMCLOCK_A1_alarmOutput_6_Q,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_A1_alarmOutput_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => ALARMCLOCK_A1_T1_Tcnt(1),
      O => ALARMCLOCK_A1_alarmOutput_5_Q,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_A1_alarmOutput_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => ALARMCLOCK_A1_T1_Tcnt(0),
      O => ALARMCLOCK_A1_alarmOutput_4_Q,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_A1_alarmOutput_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => ALARMCLOCK_A1_T1_Ucnt(3),
      O => ALARMCLOCK_A1_alarmOutput_3_Q,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_A1_alarmOutput_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => ALARMCLOCK_A1_T1_Ucnt(2),
      O => ALARMCLOCK_A1_alarmOutput_2_Q,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_A1_alarmOutput_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => ALARMCLOCK_A1_T1_Ucnt(1),
      O => ALARMCLOCK_A1_alarmOutput_1_Q,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_A1_alarmOutput_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => ALARMCLOCK_A1_T1_Ucnt(0),
      O => ALARMCLOCK_A1_alarmOutput_0_Q,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_A1_ledOn : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => ALARMCLOCK_A1_onOff_680,
      O => ALARMCLOCK_A1_ledOn_95,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_A1_ledOut : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_A1_n0067_inv,
      I => N0,
      SRST => ALARMCLOCK_A1_n0057,
      O => ALARMCLOCK_A1_ledOut_96,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALARMCLOCK_A1_onOff : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      CE => ALARMCLOCK_A1_n0063_inv,
      I => ALARMCLOCK_A1_onOff_INV_57_o,
      O => ALARMCLOCK_A1_onOff_680,
      SET => GND,
      RST => GND
    );
  DATATODISPLAY_B1_n00131 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => ostate(3),
      ADR1 => ostate(2),
      ADR2 => ostate(1),
      ADR3 => ostate(0),
      O => DATATODISPLAY_B1_n0013
    );
  DATATODISPLAY_B1_n0023_3_1 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => ostate(3),
      ADR1 => ostate(1),
      ADR2 => ostate(0),
      ADR3 => ostate(2),
      O => DATATODISPLAY_B1_n0023
    );
  W1_C1_Mram_dignr_int_1_GND_153_o_wide_mux_0_OUT111 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => W1_C1_dignr_int(0),
      ADR1 => W1_C1_dignr_int(1),
      O => W1_C1_Mram_dignr_int_1_GND_153_o_wide_mux_0_OUT1
    );
  W1_D1_Mram_segm41 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => W1_bcdout_int(0),
      ADR1 => W1_bcdout_int(1),
      ADR2 => W1_bcdout_int(2),
      ADR3 => W1_bcdout_int(3),
      O => cath_4_OBUF_103
    );
  W1_C1_Mmux_dignrout41 : X_LUT4
    generic map(
      INIT => X"8FFF"
    )
    port map (
      ADR0 => DATATODISPLAY_B1_n0023,
      ADR1 => DATATODISPLAY_B1_blink_on_213,
      ADR2 => W1_C1_dignr_int(0),
      ADR3 => W1_C1_dignr_int(1),
      O => an_3_OBUF_108
    );
  W1_C1_Mmux_dignrout31 : X_LUT4
    generic map(
      INIT => X"FF8F"
    )
    port map (
      ADR0 => DATATODISPLAY_B1_blink_on_213,
      ADR1 => DATATODISPLAY_B1_n0023,
      ADR2 => W1_C1_dignr_int(1),
      ADR3 => W1_C1_dignr_int(0),
      O => an_2_OBUF_109
    );
  W1_C1_Mmux_dignrout21 : X_LUT4
    generic map(
      INIT => X"FF8F"
    )
    port map (
      ADR0 => DATATODISPLAY_B1_istate_3_GND_151_o_wide_mux_0_OUT_3_Q,
      ADR1 => DATATODISPLAY_B1_blink_on_213,
      ADR2 => W1_C1_dignr_int(0),
      ADR3 => W1_C1_dignr_int(1),
      O => an_1_OBUF_110
    );
  W1_C1_Mmux_dignrout11 : X_LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      ADR0 => DATATODISPLAY_B1_blink_on_213,
      ADR1 => DATATODISPLAY_B1_istate_3_GND_151_o_wide_mux_0_OUT_3_Q,
      ADR2 => W1_C1_dignr_int(0),
      ADR3 => W1_C1_dignr_int(1),
      O => an_0_OBUF_111
    );
  Mmux_sel_out31 : X_LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      ADR0 => S_current_edit_FSM_FFd1_115,
      ADR1 => S_current_edit_FSM_FFd2_116,
      ADR2 => S_s_ostate(2),
      O => sel_out_2_OBUF_114
    );
  W1_C1_Mmux_bcdout1211 : X_LUT3
    generic map(
      INIT => X"F9"
    )
    port map (
      ADR0 => S_current_edit_FSM_FFd2_116,
      ADR1 => S_current_edit_FSM_FFd1_115,
      ADR2 => S_s_ostate(2),
      O => W1_C1_Mmux_bcdout121_395
    );
  DATATODISPLAY_B1_istate_3_GND_151_o_wide_mux_0_OUT_3_1 : X_LUT4
    generic map(
      INIT => X"0110"
    )
    port map (
      ADR0 => ostate(2),
      ADR1 => ostate(3),
      ADR2 => ostate(0),
      ADR3 => ostate(1),
      O => DATATODISPLAY_B1_istate_3_GND_151_o_wide_mux_0_OUT_3_Q
    );
  W1_D1_Mram_segm51 : X_LUT4
    generic map(
      INIT => X"E5E4"
    )
    port map (
      ADR0 => W1_bcdout_int(2),
      ADR1 => W1_bcdout_int(1),
      ADR2 => W1_bcdout_int(3),
      ADR3 => W1_bcdout_int(0),
      O => cath_5_OBUF_102
    );
  BUTTONS1_B1_one_pulse1_current_state_FSM_FFd3_In1 : X_LUT5
    generic map(
      INIT => X"15555555"
    )
    port map (
      ADR0 => BUTTONS1_B1_one_pulse1_current_state_FSM_FFd2_13,
      ADR1 => BUTTONS1_B1_debouncer1_del(1),
      ADR2 => BUTTONS1_B1_debouncer1_del(2),
      ADR3 => BUTTONS1_B1_debouncer1_del(3),
      ADR4 => BUTTONS1_B1_debouncer1_del(4),
      O => BUTTONS1_B1_one_pulse1_current_state_FSM_FFd3_In
    );
  BUTTONS1_B1_one_pulse1_current_state_FSM_FFd2_In1 : X_LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      ADR0 => BUTTONS1_B1_one_pulse1_current_state_FSM_FFd3_292,
      ADR1 => BUTTONS1_B1_debouncer1_del(4),
      ADR2 => BUTTONS1_B1_debouncer1_del(3),
      ADR3 => BUTTONS1_B1_debouncer1_del(2),
      ADR4 => BUTTONS1_B1_debouncer1_del(1),
      O => BUTTONS1_B1_one_pulse1_current_state_FSM_FFd2_In
    );
  BUTTONS1_B2_one_pulse1_current_state_FSM_FFd3_In1 : X_LUT5
    generic map(
      INIT => X"15555555"
    )
    port map (
      ADR0 => BUTTONS1_B2_one_pulse1_current_state_FSM_FFd2_14,
      ADR1 => BUTTONS1_B2_debouncer1_del(1),
      ADR2 => BUTTONS1_B2_debouncer1_del(2),
      ADR3 => BUTTONS1_B2_debouncer1_del(3),
      ADR4 => BUTTONS1_B2_debouncer1_del(4),
      O => BUTTONS1_B2_one_pulse1_current_state_FSM_FFd3_In
    );
  BUTTONS1_B2_one_pulse1_current_state_FSM_FFd2_In1 : X_LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      ADR0 => BUTTONS1_B2_one_pulse1_current_state_FSM_FFd3_295,
      ADR1 => BUTTONS1_B2_debouncer1_del(4),
      ADR2 => BUTTONS1_B2_debouncer1_del(3),
      ADR3 => BUTTONS1_B2_debouncer1_del(2),
      ADR4 => BUTTONS1_B2_debouncer1_del(1),
      O => BUTTONS1_B2_one_pulse1_current_state_FSM_FFd2_In
    );
  BUTTONS1_B3_one_pulse1_current_state_FSM_FFd3_In1 : X_LUT5
    generic map(
      INIT => X"15555555"
    )
    port map (
      ADR0 => BUTTONS1_B3_one_pulse1_current_state_FSM_FFd2_15,
      ADR1 => BUTTONS1_B3_debouncer1_del(1),
      ADR2 => BUTTONS1_B3_debouncer1_del(2),
      ADR3 => BUTTONS1_B3_debouncer1_del(3),
      ADR4 => BUTTONS1_B3_debouncer1_del(4),
      O => BUTTONS1_B3_one_pulse1_current_state_FSM_FFd3_In
    );
  BUTTONS1_B3_one_pulse1_current_state_FSM_FFd2_In1 : X_LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      ADR0 => BUTTONS1_B3_one_pulse1_current_state_FSM_FFd3_298,
      ADR1 => BUTTONS1_B3_debouncer1_del(4),
      ADR2 => BUTTONS1_B3_debouncer1_del(3),
      ADR3 => BUTTONS1_B3_debouncer1_del(2),
      ADR4 => BUTTONS1_B3_debouncer1_del(1),
      O => BUTTONS1_B3_one_pulse1_current_state_FSM_FFd2_In
    );
  BUTTONS1_B4_one_pulse1_current_state_FSM_FFd3_In1 : X_LUT5
    generic map(
      INIT => X"15555555"
    )
    port map (
      ADR0 => BUTTONS1_B4_one_pulse1_current_state_FSM_FFd2_16,
      ADR1 => BUTTONS1_B4_debouncer1_del(1),
      ADR2 => BUTTONS1_B4_debouncer1_del(2),
      ADR3 => BUTTONS1_B4_debouncer1_del(3),
      ADR4 => BUTTONS1_B4_debouncer1_del(4),
      O => BUTTONS1_B4_one_pulse1_current_state_FSM_FFd3_In
    );
  BUTTONS1_B4_one_pulse1_current_state_FSM_FFd2_In1 : X_LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      ADR0 => BUTTONS1_B4_one_pulse1_current_state_FSM_FFd3_301,
      ADR1 => BUTTONS1_B4_debouncer1_del(4),
      ADR2 => BUTTONS1_B4_debouncer1_del(3),
      ADR3 => BUTTONS1_B4_debouncer1_del(2),
      ADR4 => BUTTONS1_B4_debouncer1_del(1),
      O => BUTTONS1_B4_one_pulse1_current_state_FSM_FFd2_In
    );
  BUTTONS1_B5_one_pulse1_current_state_FSM_FFd3_In1 : X_LUT5
    generic map(
      INIT => X"15555555"
    )
    port map (
      ADR0 => BUTTONS1_B5_one_pulse1_current_state_FSM_FFd2_17,
      ADR1 => BUTTONS1_B5_debouncer1_del(1),
      ADR2 => BUTTONS1_B5_debouncer1_del(2),
      ADR3 => BUTTONS1_B5_debouncer1_del(3),
      ADR4 => BUTTONS1_B5_debouncer1_del(4),
      O => BUTTONS1_B5_one_pulse1_current_state_FSM_FFd3_In
    );
  BUTTONS1_B5_one_pulse1_current_state_FSM_FFd2_In1 : X_LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      ADR0 => BUTTONS1_B5_one_pulse1_current_state_FSM_FFd3_304,
      ADR1 => BUTTONS1_B5_debouncer1_del(4),
      ADR2 => BUTTONS1_B5_debouncer1_del(3),
      ADR3 => BUTTONS1_B5_debouncer1_del(2),
      ADR4 => BUTTONS1_B5_debouncer1_del(1),
      O => BUTTONS1_B5_one_pulse1_current_state_FSM_FFd2_In
    );
  W1_D1_Mram_segm21 : X_LUT4
    generic map(
      INIT => X"A8AC"
    )
    port map (
      ADR0 => W1_bcdout_int(3),
      ADR1 => W1_bcdout_int(1),
      ADR2 => W1_bcdout_int(2),
      ADR3 => W1_bcdout_int(0),
      O => cath_2_OBUF_105
    );
  W1_D1_Mram_segm12 : X_LUT4
    generic map(
      INIT => X"F0C6"
    )
    port map (
      ADR0 => W1_bcdout_int(0),
      ADR1 => W1_bcdout_int(2),
      ADR2 => W1_bcdout_int(3),
      ADR3 => W1_bcdout_int(1),
      O => cath_0_OBUF_107
    );
  W1_D1_Mram_segm111 : X_LUT4
    generic map(
      INIT => X"CAE8"
    )
    port map (
      ADR0 => W1_bcdout_int(2),
      ADR1 => W1_bcdout_int(3),
      ADR2 => W1_bcdout_int(1),
      ADR3 => W1_bcdout_int(0),
      O => cath_1_OBUF_106
    );
  W1_D1_Mram_segm61 : X_LUT4
    generic map(
      INIT => X"EE91"
    )
    port map (
      ADR0 => W1_bcdout_int(2),
      ADR1 => W1_bcdout_int(1),
      ADR2 => W1_bcdout_int(0),
      ADR3 => W1_bcdout_int(3),
      O => cath_6_OBUF_101
    );
  S_Mmux_PWR_14_o_s_ostate_2_mux_5_OUT31 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_ledOut_96,
      ADR1 => S_current_edit_FSM_FFd1_115,
      O => S_PWR_14_o_s_ostate_2_mux_5_OUT_2_Q
    );
  S_Mmux_current_edit_1_X_14_o_wide_mux_8_OUT11 : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => S_current_edit_FSM_FFd1_115,
      ADR1 => S_current_edit_FSM_FFd2_116,
      ADR2 => BUTTONS1_B2_one_pulse1_current_state_FSM_FFd2_14,
      O => S_current_edit_1_X_14_o_wide_mux_8_OUT_0_Q
    );
  S_Mmux_current_edit_1_X_14_o_wide_mux_8_OUT21 : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => S_current_edit_FSM_FFd1_115,
      ADR1 => S_current_edit_FSM_FFd2_116,
      ADR2 => BUTTONS1_B4_one_pulse1_current_state_FSM_FFd2_16,
      O => S_current_edit_1_X_14_o_wide_mux_8_OUT_1_Q
    );
  S_Mmux_current_edit_1_X_14_o_wide_mux_8_OUT31 : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => S_current_edit_FSM_FFd1_115,
      ADR1 => S_current_edit_FSM_FFd2_116,
      ADR2 => BUTTONS1_B5_one_pulse1_current_state_FSM_FFd2_17,
      O => S_current_edit_1_X_14_o_wide_mux_8_OUT_2_Q
    );
  S_Mmux_current_edit_1_X_14_o_wide_mux_8_OUT41 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => S_current_edit_FSM_FFd1_115,
      ADR1 => S_current_edit_FSM_FFd2_116,
      ADR2 => BUTTONS1_B2_one_pulse1_current_state_FSM_FFd2_14,
      O => S_current_edit_1_X_14_o_wide_mux_8_OUT_3_Q
    );
  S_Mmux_current_edit_1_X_14_o_wide_mux_8_OUT51 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => S_current_edit_FSM_FFd1_115,
      ADR1 => S_current_edit_FSM_FFd2_116,
      ADR2 => BUTTONS1_B4_one_pulse1_current_state_FSM_FFd2_16,
      O => S_current_edit_1_X_14_o_wide_mux_8_OUT_4_Q
    );
  S_Mmux_current_edit_1_X_14_o_wide_mux_8_OUT61 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => S_current_edit_FSM_FFd1_115,
      ADR1 => S_current_edit_FSM_FFd2_116,
      ADR2 => BUTTONS1_B5_one_pulse1_current_state_FSM_FFd2_17,
      O => S_current_edit_1_X_14_o_wide_mux_8_OUT_5_Q
    );
  S_Mmux_current_edit_1_X_14_o_wide_mux_8_OUT71 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => S_current_edit_FSM_FFd1_115,
      ADR1 => BUTTONS1_B2_one_pulse1_current_state_FSM_FFd2_14,
      O => S_current_edit_1_X_14_o_wide_mux_8_OUT_6_Q
    );
  S_Mmux_current_edit_1_X_14_o_wide_mux_8_OUT81 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => S_current_edit_FSM_FFd1_115,
      ADR1 => BUTTONS1_B4_one_pulse1_current_state_FSM_FFd2_16,
      O => S_current_edit_1_X_14_o_wide_mux_8_OUT_7_Q
    );
  S_Mmux_current_edit_1_X_14_o_wide_mux_8_OUT91 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => S_current_edit_FSM_FFd1_115,
      ADR1 => BUTTONS1_B5_one_pulse1_current_state_FSM_FFd2_17,
      O => S_current_edit_1_X_14_o_wide_mux_8_OUT_8_Q
    );
  S_current_edit_FSM_FFd1_In1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => BUTTONS1_B1_one_pulse1_current_state_FSM_FFd2_13,
      ADR1 => S_current_edit_FSM_FFd2_116,
      ADR2 => S_current_edit_FSM_FFd1_115,
      O => S_current_edit_FSM_FFd1_In
    );
  S_current_edit_FSM_FFd2_In1 : X_LUT3
    generic map(
      INIT => X"46"
    )
    port map (
      ADR0 => BUTTONS1_B1_one_pulse1_current_state_FSM_FFd2_13,
      ADR1 => S_current_edit_FSM_FFd2_116,
      ADR2 => S_current_edit_FSM_FFd1_115,
      O => S_current_edit_FSM_FFd2_In
    );
  S_current_edit_n0056_3_1 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => S_current_edit_FSM_FFd1_115,
      ADR1 => S_current_edit_FSM_FFd2_116,
      O => S_current_edit_1_X_14_o_Mux_9_o
    );
  S_n0051_inv1 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_ledOut_96,
      ADR1 => BUTTONS1_B1_one_pulse1_current_state_FSM_FFd2_13,
      O => S_n0051_inv
    );
  ALARMCLOCK_T1_cntenT11 : X_LUT5
    generic map(
      INIT => X"55514440"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_present_state_FSM_FFd1_441,
      ADR1 => ALARMCLOCK_T1_present_state_FSM_FFd2_440,
      ADR2 => S_edit(2),
      ADR3 => S_edit(1),
      ADR4 => pulse_1s,
      O => ALARMCLOCK_T1_cntenT1
    );
  ALARMCLOCK_T1_present_state_FSM_FFd1_In11 : X_LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_present_state_FSM_FFd1_441,
      ADR1 => ALARMCLOCK_T1_present_state_FSM_FFd2_440,
      ADR2 => S_edit(0),
      O => ALARMCLOCK_T1_present_state_FSM_FFd1_In1
    );
  ALARMCLOCK_T1_Mmux_upDwn11 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => S_edit(2),
      ADR1 => S_edit(1),
      O => ALARMCLOCK_T1_upDwn
    );
  ALARMCLOCK_T1_endEdit_01 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => S_U1_active_22,
      ADR1 => reset_112,
      O => ALARMCLOCK_T1_endEdit_0
    );
  ALARMCLOCK_T1_present_state_FSM_FFd2_In11 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => S_edit(0),
      ADR1 => ALARMCLOCK_T1_present_state_FSM_FFd2_440,
      O => ALARMCLOCK_T1_present_state_FSM_FFd2_In1
    );
  ALARMCLOCK_T1_T3_Tmax_3_Umax_3_OR_92_o1 : X_LUT6
    generic map(
      INIT => X"CCCCCCC8CCCCCC88"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T3_Tcnt(0),
      ADR1 => ALARMCLOCK_T1_T3_Tcnt(1),
      ADR2 => ALARMCLOCK_T1_T3_Ucnt(1),
      ADR3 => ALARMCLOCK_T1_T3_Ucnt(3),
      ADR4 => ALARMCLOCK_T1_T3_Ucnt(2),
      ADR5 => ALARMCLOCK_T1_T3_Ucnt(0),
      O => ALARMCLOCK_T1_T3_Tmax_3_Umax_3_OR_92_o
    );
  ALARMCLOCK_T1_T3_Umin_3_Tmin_3_AND_21_o1 : X_LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T3_Tcnt(1),
      ADR1 => ALARMCLOCK_T1_T3_Tcnt(0),
      ADR2 => ALARMCLOCK_T1_T3_Ucnt(1),
      ADR3 => ALARMCLOCK_T1_T3_Ucnt(3),
      ADR4 => ALARMCLOCK_T1_T3_Ucnt(2),
      ADR5 => ALARMCLOCK_T1_T3_Ucnt(0),
      O => ALARMCLOCK_T1_T3_Umin_3_Tmin_3_AND_21_o
    );
  ALARMCLOCK_T1_T3_n0150_inv1 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_cntenT3,
      ADR1 => reset_112,
      O => ALARMCLOCK_T1_T3_n0150_inv
    );
  ALARMCLOCK_T1_T2_Mmux_Tcnt_3_Tmin_3_mux_27_OUT21 : X_LUT5
    generic map(
      INIT => X"41441114"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_T1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_1_Q,
      ADR2 => ALARMCLOCK_T1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_Q,
      ADR3 => ALARMCLOCK_T1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_A_0_Q,
      ADR4 => ALARMCLOCK_T1_T2_upDwn_cnten_AND_12_o,
      O => ALARMCLOCK_T1_T2_Tcnt_3_Tmin_3_mux_27_OUT_1_Q
    );
  ALARMCLOCK_T1_T2_Mmux_Ucnt_3_Umin_3_mux_30_OUT11 : X_LUT3
    generic map(
      INIT => X"41"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_T1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q,
      ADR2 => ALARMCLOCK_T1_T2_upDwn_cnten_AND_12_o,
      O => ALARMCLOCK_T1_T2_Ucnt_3_Umin_3_mux_30_OUT_0_Q
    );
  ALARMCLOCK_T1_T2_Mmux_Tcnt_3_Tmin_3_mux_27_OUT11 : X_LUT3
    generic map(
      INIT => X"41"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_T1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_Q,
      ADR2 => ALARMCLOCK_T1_T2_upDwn_cnten_AND_12_o,
      O => ALARMCLOCK_T1_T2_Tcnt_3_Tmin_3_mux_27_OUT_0_Q
    );
  ALARMCLOCK_T1_T2_n0150_inv1 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_cntenT2_437,
      ADR1 => reset_112,
      O => ALARMCLOCK_T1_T2_n0150_inv
    );
  ALARMCLOCK_T1_T1_Mmux_Tcnt_3_Tmin_3_mux_27_OUT21 : X_LUT5
    generic map(
      INIT => X"41441114"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_T1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_1_Q,
      ADR2 => ALARMCLOCK_T1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_Q,
      ADR3 => ALARMCLOCK_T1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_A_0_Q,
      ADR4 => ALARMCLOCK_T1_T1_upDwn_cnten_AND_12_o,
      O => ALARMCLOCK_T1_T1_Tcnt_3_Tmin_3_mux_27_OUT_1_Q
    );
  ALARMCLOCK_T1_T1_Mmux_Tcnt_3_Tmin_3_mux_27_OUT11 : X_LUT3
    generic map(
      INIT => X"41"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_T1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_Q,
      ADR2 => ALARMCLOCK_T1_T1_upDwn_cnten_AND_12_o,
      O => ALARMCLOCK_T1_T1_Tcnt_3_Tmin_3_mux_27_OUT_0_Q
    );
  ALARMCLOCK_D1_T1_n0150_inv1 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_D1_cntenT1,
      O => ALARMCLOCK_D1_T1_n0150_inv
    );
  ALARMCLOCK_D1_T1_Mmux_Tcnt_3_Tmin_3_mux_27_OUT31 : X_LUT3
    generic map(
      INIT => X"41"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_D1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_2_Q,
      ADR2 => ALARMCLOCK_D1_T1_Mmux_Tcnt_3_Tmin_3_mux_27_OUT41,
      O => ALARMCLOCK_D1_T1_Tcnt_3_Tmin_3_mux_27_OUT_2_Q
    );
  ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT42 : X_LUT5
    generic map(
      INIT => X"40154510"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT41,
      ADR2 => ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_2_Q,
      ADR3 => ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q_525,
      ADR4 => ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_2_Q,
      O => ALARMCLOCK_D1_T1_Ucnt_3_Umin_3_mux_30_OUT_3_Q
    );
  ALARMCLOCK_D1_T2_n0150_inv1 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_D1_cntenT2,
      O => ALARMCLOCK_D1_T2_n0150_inv
    );
  ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_B11 : X_LUT3
    generic map(
      INIT => X"35"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Umin_3_Tmin_3_AND_21_o_566,
      ADR1 => ALARMCLOCK_D1_T3_Tmax_3_Umax_3_OR_92_o,
      ADR2 => ALARMCLOCK_D1_T3_upDwn_cnten_AND_12_o,
      O => ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_B_0_Q
    );
  ALARMCLOCK_D1_T3_n0150_inv1 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_D1_cntenT3,
      O => ALARMCLOCK_D1_T3_n0150_inv
    );
  ALARMCLOCK_D1_SD_Mmux_DayTout_1_0_11 : X_LUT6
    generic map(
      INIT => X"00000000011F015A"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T2_Ucnt(2),
      ADR1 => ALARMCLOCK_D1_T2_Ucnt(1),
      ADR2 => ALARMCLOCK_D1_T2_Tcnt(0),
      ADR3 => ALARMCLOCK_D1_T2_Ucnt(3),
      ADR4 => ALARMCLOCK_D1_T2_Ucnt(0),
      ADR5 => ALARMCLOCK_D1_SD_Mmux_DayUout23,
      O => ALARMCLOCK_D1_setMaxDay_4_Q
    );
  ALARMCLOCK_D1_SD_Mmux_DayUout21 : X_LUT6
    generic map(
      INIT => X"FFFFFFFFFAF9E8E9"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T2_Tcnt(0),
      ADR1 => ALARMCLOCK_D1_T2_Ucnt(2),
      ADR2 => ALARMCLOCK_D1_T2_Ucnt(3),
      ADR3 => ALARMCLOCK_D1_T2_Ucnt(0),
      ADR4 => ALARMCLOCK_D1_T2_Ucnt(1),
      ADR5 => ALARMCLOCK_D1_SD_Mmux_DayUout23,
      O => ALARMCLOCK_D1_setMaxDay_3_Q
    );
  ALARMCLOCK_D1_present_state_FSM_FFd1_In11 : X_LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_present_state_FSM_FFd1_591,
      ADR1 => S_edit(3),
      ADR2 => ALARMCLOCK_D1_present_state_FSM_FFd2_590,
      O => ALARMCLOCK_D1_present_state_FSM_FFd1_In1
    );
  ALARMCLOCK_D1_SD_Mmux_DayUout231 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T2_Tcnt(3),
      ADR1 => ALARMCLOCK_D1_T2_Tcnt(1),
      ADR2 => ALARMCLOCK_D1_T2_Tcnt(2),
      O => ALARMCLOCK_D1_SD_Mmux_DayUout23
    );
  ALARMCLOCK_D1_Mmux_upDwn11 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => S_edit(5),
      ADR1 => S_edit(4),
      O => ALARMCLOCK_D1_upDwn
    );
  ALARMCLOCK_D1_endEdit_01 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => S_U2_active_26,
      ADR1 => reset_112,
      O => ALARMCLOCK_D1_endEdit_0
    );
  ALARMCLOCK_D1_present_state_FSM_FFd2_In11 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => S_edit(3),
      ADR1 => ALARMCLOCK_D1_present_state_FSM_FFd2_590,
      O => ALARMCLOCK_D1_present_state_FSM_FFd2_In1
    );
  ALARMCLOCK_A1_T3_Umin_3_Tmin_3_AND_21_o1 : X_LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T3_Ucnt(0),
      ADR1 => ALARMCLOCK_A1_T3_Tcnt(0),
      ADR2 => ALARMCLOCK_A1_T3_Ucnt(3),
      ADR3 => ALARMCLOCK_A1_T3_Ucnt(2),
      ADR4 => ALARMCLOCK_A1_T3_Ucnt(1),
      ADR5 => ALARMCLOCK_A1_T3_Tcnt(1),
      O => ALARMCLOCK_A1_T3_Umin_3_Tmin_3_AND_21_o
    );
  ALARMCLOCK_A1_T3_Tmax_3_Umax_3_OR_92_o1 : X_LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA888"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T3_Tcnt(1),
      ADR1 => ALARMCLOCK_A1_T3_Ucnt(3),
      ADR2 => ALARMCLOCK_A1_T3_Ucnt(1),
      ADR3 => ALARMCLOCK_A1_T3_Ucnt(0),
      ADR4 => ALARMCLOCK_A1_T3_Ucnt(2),
      ADR5 => ALARMCLOCK_A1_T3_Tcnt(0),
      O => ALARMCLOCK_A1_T3_Tmax_3_Umax_3_OR_92_o
    );
  ALARMCLOCK_A1_present_state_FSM_FFd1_In11 : X_LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_present_state_FSM_FFd1_684,
      ADR1 => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      ADR2 => S_edit(6),
      O => ALARMCLOCK_A1_present_state_FSM_FFd1_In1
    );
  ALARMCLOCK_A1_n0063_inv1 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_ledOut_96,
      ADR1 => BUTTONS1_B3_one_pulse1_current_state_FSM_FFd2_15,
      O => ALARMCLOCK_A1_n0063_inv
    );
  ALARMCLOCK_A1_Mmux_upDwn11 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => S_edit(8),
      ADR1 => S_edit(7),
      O => ALARMCLOCK_A1_upDwn
    );
  ALARMCLOCK_A1_endEdit_01 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => S_U3_active_30,
      ADR1 => reset_112,
      O => ALARMCLOCK_A1_endEdit_0
    );
  ALARMCLOCK_A1_present_state_FSM_FFd2_In11 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => S_edit(6),
      ADR1 => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      O => ALARMCLOCK_A1_present_state_FSM_FFd2_In1
    );
  ALARMCLOCK_A1_n00571 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => BUTTONS1_B3_one_pulse1_current_state_FSM_FFd2_15,
      ADR1 => ALARMCLOCK_A1_ledOut_96,
      O => ALARMCLOCK_A1_n0057
    );
  T1_T1ms_pulse_16_1 : X_LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(7),
      ADR1 => T1_T1ms_cnt_signal(4),
      ADR2 => T1_T1ms_cnt_signal(10),
      ADR3 => T1_T1ms_cnt_signal(9),
      ADR4 => T1_T1ms_cnt_signal(16),
      ADR5 => T1_T1ms_cnt_signal(15),
      O => T1_T1ms_pulse(16)
    );
  T1_T1ms_pulse_16_2 : X_LUT6
    generic map(
      INIT => X"1000000000000000"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(5),
      ADR1 => T1_T1ms_cnt_signal(6),
      ADR2 => T1_T1ms_cnt_signal(3),
      ADR3 => T1_T1ms_cnt_signal(2),
      ADR4 => T1_T1ms_cnt_signal(1),
      ADR5 => T1_T1ms_cnt_signal(0),
      O => T1_T1ms_pulse_16_1_708
    );
  T1_T1ms_pulse_16_3 : X_LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(11),
      ADR1 => T1_T1ms_cnt_signal(8),
      ADR2 => T1_T1ms_cnt_signal(12),
      ADR3 => T1_T1ms_cnt_signal(13),
      ADR4 => T1_T1ms_cnt_signal(14),
      O => T1_T1ms_pulse_16_2_709
    );
  T1_T1ms_pulse_16_4 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => T1_T1ms_pulse(16),
      ADR1 => T1_T1ms_pulse_16_1_708,
      ADR2 => T1_T1ms_pulse_16_2_709,
      O => pulse_1ms
    );
  T1_T10ms_pulse_19_1 : X_LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      ADR0 => T1_T10ms_cnt_signal(14),
      ADR1 => T1_T10ms_cnt_signal(9),
      ADR2 => T1_T10ms_cnt_signal(17),
      ADR3 => T1_T10ms_cnt_signal(16),
      ADR4 => T1_T10ms_cnt_signal(19),
      ADR5 => T1_T10ms_cnt_signal(18),
      O => T1_T10ms_pulse(19)
    );
  T1_T10ms_pulse_19_2 : X_LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(5),
      ADR1 => T1_T1ms_cnt_signal(4),
      ADR2 => T1_T1ms_cnt_signal(2),
      ADR3 => T1_T1ms_cnt_signal(3),
      ADR4 => T1_T1ms_cnt_signal(0),
      ADR5 => T1_T1ms_cnt_signal(1),
      O => T1_T10ms_pulse_19_1_711
    );
  T1_T10ms_pulse_19_3 : X_LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => T1_T10ms_cnt_signal(7),
      ADR1 => T1_T10ms_cnt_signal(6),
      ADR2 => T1_T10ms_cnt_signal(8),
      ADR3 => T1_T10ms_cnt_signal(10),
      ADR4 => T1_T10ms_cnt_signal(11),
      ADR5 => T1_T10ms_cnt_signal(12),
      O => T1_T10ms_pulse_19_2_712
    );
  T1_T10ms_pulse_19_4 : X_LUT5
    generic map(
      INIT => X"00000080"
    )
    port map (
      ADR0 => T1_T10ms_pulse(19),
      ADR1 => T1_T10ms_pulse_19_1_711,
      ADR2 => T1_T10ms_pulse_19_2_712,
      ADR3 => T1_T10ms_cnt_signal(15),
      ADR4 => T1_T10ms_cnt_signal(13),
      O => pulse_10ms
    );
  T1_T100ms_pulse_23_1 : X_LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      ADR0 => T1_T100ms_cnt_signal(12),
      ADR1 => T1_T100ms_cnt_signal(10),
      ADR2 => T1_T100ms_cnt_signal(19),
      ADR3 => T1_T100ms_cnt_signal(15),
      ADR4 => T1_T100ms_cnt_signal(23),
      ADR5 => T1_T100ms_cnt_signal(20),
      O => T1_T100ms_pulse(23)
    );
  T1_T100ms_pulse_23_2 : X_LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(3),
      ADR1 => T1_T1ms_cnt_signal(2),
      ADR2 => T1_T1s_cnt_signal(5),
      ADR3 => T1_T1ms_cnt_signal(4),
      ADR4 => T1_T100ms_cnt_signal(9),
      ADR5 => T1_T1s_cnt_signal(6),
      O => T1_T100ms_pulse_23_1_714
    );
  T1_T100ms_pulse_23_3 : X_LUT6
    generic map(
      INIT => X"0001000000000000"
    )
    port map (
      ADR0 => T1_T100ms_cnt_signal(7),
      ADR1 => T1_T100ms_cnt_signal(8),
      ADR2 => T1_T100ms_cnt_signal(11),
      ADR3 => T1_T100ms_cnt_signal(13),
      ADR4 => T1_T1ms_cnt_signal(1),
      ADR5 => T1_T1ms_cnt_signal(0),
      O => T1_T100ms_pulse_23_2_715
    );
  T1_T100ms_pulse_23_4 : X_LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => T1_T100ms_cnt_signal(16),
      ADR1 => T1_T100ms_cnt_signal(14),
      ADR2 => T1_T100ms_cnt_signal(17),
      ADR3 => T1_T100ms_cnt_signal(18),
      ADR4 => T1_T100ms_cnt_signal(21),
      ADR5 => T1_T100ms_cnt_signal(22),
      O => T1_T100ms_pulse_23_3_716
    );
  T1_T100ms_pulse_23_5 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => T1_T100ms_pulse(23),
      ADR1 => T1_T100ms_pulse_23_1_714,
      ADR2 => T1_T100ms_pulse_23_2_715,
      ADR3 => T1_T100ms_pulse_23_3_716,
      O => pulse_100ms
    );
  T1_T1s_pulse_26_1 : X_LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(9),
      ADR1 => T1_T1s_cnt_signal(8),
      ADR2 => T1_T1s_cnt_signal(10),
      ADR3 => T1_T1s_cnt_signal(11),
      ADR4 => T1_T1s_cnt_signal(12),
      ADR5 => T1_T1s_cnt_signal(17),
      O => T1_T1s_pulse(26)
    );
  T1_T1s_pulse_26_2 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(25),
      ADR1 => T1_T1s_cnt_signal(19),
      O => T1_T1s_pulse_26_1_718
    );
  T1_T1s_pulse_26_3 : X_LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(15),
      ADR1 => T1_T1s_cnt_signal(16),
      ADR2 => T1_T1s_cnt_signal(13),
      ADR3 => T1_T1s_cnt_signal(14),
      ADR4 => T1_T1s_cnt_signal(7),
      ADR5 => T1_T1s_cnt_signal(6),
      O => T1_T1s_pulse_26_2_719
    );
  W1_C1_Mmux_bcdout121 : X_LUT5
    generic map(
      INIT => X"5E0E5404"
    )
    port map (
      ADR0 => W1_C1_dignr_int(0),
      ADR1 => ALARMCLOCK_A1_alarmOutput_10_Q,
      ADR2 => W1_C1_dignr_int(1),
      ADR3 => ALARMCLOCK_A1_alarmOutput_18_Q,
      ADR4 => ALARMCLOCK_A1_alarmOutput_14_Q,
      O => W1_C1_Mmux_bcdout12
    );
  W1_C1_Mmux_bcdout122 : X_LUT6
    generic map(
      INIT => X"7775575522200200"
    )
    port map (
      ADR0 => DATATODISPLAY_B1_n0013,
      ADR1 => W1_C1_dignr_int(1),
      ADR2 => W1_C1_dignr_int(0),
      ADR3 => ALARMCLOCK_A1_alarmOutput_2_Q,
      ADR4 => ALARMCLOCK_A1_alarmOutput_6_Q,
      ADR5 => W1_C1_Mmux_bcdout12,
      O => W1_C1_Mmux_bcdout122_721
    );
  W1_C1_Mmux_bcdout123 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => W1_C1_dignr_int(0),
      ADR1 => W1_C1_dignr_int(1),
      ADR2 => ALARMCLOCK_D1_T2_Tcnt(2),
      ADR3 => ALARMCLOCK_D1_T3_Tcnt(2),
      ADR4 => ALARMCLOCK_D1_T3_Ucnt(2),
      ADR5 => ALARMCLOCK_D1_T2_Ucnt(2),
      O => W1_C1_Mmux_bcdout123_722
    );
  W1_C1_Mmux_bcdout124 : X_LUT6
    generic map(
      INIT => X"7775575522200200"
    )
    port map (
      ADR0 => DATATODISPLAY_B1_n0013,
      ADR1 => W1_C1_dignr_int(1),
      ADR2 => W1_C1_dignr_int(0),
      ADR3 => ALARMCLOCK_D1_T1_Ucnt(2),
      ADR4 => ALARMCLOCK_D1_T1_Tcnt(2),
      ADR5 => W1_C1_Mmux_bcdout123_722,
      O => W1_C1_Mmux_bcdout124_723
    );
  W1_C1_Mmux_bcdout126 : X_LUT5
    generic map(
      INIT => X"5E0E5404"
    )
    port map (
      ADR0 => W1_C1_dignr_int(0),
      ADR1 => ALARMCLOCK_count_t_10_41,
      ADR2 => W1_C1_dignr_int(1),
      ADR3 => ALARMCLOCK_count_t_18_34,
      ADR4 => ALARMCLOCK_count_t_14_37,
      O => W1_C1_Mmux_bcdout126_724
    );
  W1_C1_Mmux_bcdout161 : X_LUT6
    generic map(
      INIT => X"1505140411011000"
    )
    port map (
      ADR0 => W1_C1_dignr_int(0),
      ADR1 => W1_C1_dignr_int(1),
      ADR2 => DATATODISPLAY_B1_n0013,
      ADR3 => ALARMCLOCK_A1_alarmOutput_3_Q,
      ADR4 => ALARMCLOCK_A1_alarmOutput_11_Q,
      ADR5 => ALARMCLOCK_A1_alarmOutput_19_Q,
      O => W1_C1_Mmux_bcdout16
    );
  W1_C1_Mmux_bcdout162 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => W1_C1_dignr_int(0),
      ADR1 => W1_C1_dignr_int(1),
      ADR2 => ALARMCLOCK_D1_T2_Tcnt(3),
      ADR3 => ALARMCLOCK_D1_T3_Tcnt(3),
      ADR4 => ALARMCLOCK_D1_T3_Ucnt(3),
      ADR5 => ALARMCLOCK_D1_T2_Ucnt(3),
      O => W1_C1_Mmux_bcdout161_726
    );
  W1_C1_Mmux_bcdout163 : X_LUT6
    generic map(
      INIT => X"7775575522200200"
    )
    port map (
      ADR0 => DATATODISPLAY_B1_n0013,
      ADR1 => W1_C1_dignr_int(1),
      ADR2 => W1_C1_dignr_int(0),
      ADR3 => ALARMCLOCK_D1_T1_Ucnt(3),
      ADR4 => ALARMCLOCK_D1_T1_Tcnt(3),
      ADR5 => W1_C1_Mmux_bcdout161_726,
      O => W1_C1_Mmux_bcdout162_727
    );
  W1_C1_Mmux_bcdout44 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => W1_C1_dignr_int(0),
      ADR1 => W1_C1_dignr_int(1),
      ADR2 => ALARMCLOCK_D1_T2_Tcnt(0),
      ADR3 => ALARMCLOCK_D1_T3_Tcnt(0),
      ADR4 => ALARMCLOCK_D1_T3_Ucnt(0),
      ADR5 => ALARMCLOCK_D1_T2_Ucnt(0),
      O => W1_C1_Mmux_bcdout43_729
    );
  W1_C1_Mmux_bcdout45 : X_LUT6
    generic map(
      INIT => X"7775575522200200"
    )
    port map (
      ADR0 => DATATODISPLAY_B1_n0013,
      ADR1 => W1_C1_dignr_int(1),
      ADR2 => W1_C1_dignr_int(0),
      ADR3 => ALARMCLOCK_D1_T1_Ucnt(0),
      ADR4 => ALARMCLOCK_D1_T1_Tcnt(0),
      ADR5 => W1_C1_Mmux_bcdout43_729,
      O => W1_C1_Mmux_bcdout44_730
    );
  W1_C1_Mmux_bcdout46 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => W1_C1_dignr_int(0),
      ADR1 => W1_C1_dignr_int(1),
      ADR2 => ALARMCLOCK_A1_alarmOutput_12_Q,
      ADR3 => ALARMCLOCK_A1_alarmOutput_20_Q,
      ADR4 => ALARMCLOCK_A1_alarmOutput_16_Q,
      ADR5 => ALARMCLOCK_A1_alarmOutput_8_Q,
      O => W1_C1_Mmux_bcdout45_731
    );
  W1_C1_Mmux_bcdout47 : X_LUT6
    generic map(
      INIT => X"7775575522200200"
    )
    port map (
      ADR0 => DATATODISPLAY_B1_n0013,
      ADR1 => W1_C1_dignr_int(1),
      ADR2 => W1_C1_dignr_int(0),
      ADR3 => ALARMCLOCK_A1_alarmOutput_0_Q,
      ADR4 => ALARMCLOCK_A1_alarmOutput_4_Q,
      ADR5 => W1_C1_Mmux_bcdout45_731,
      O => W1_C1_Mmux_bcdout46_732
    );
  W1_C1_Mmux_bcdout48 : X_LUT6
    generic map(
      INIT => X"FFFFFFFF05400040"
    )
    port map (
      ADR0 => S_s_ostate(2),
      ADR1 => W1_C1_Mmux_bcdout46_732,
      ADR2 => S_current_edit_FSM_FFd1_115,
      ADR3 => S_current_edit_FSM_FFd2_116,
      ADR4 => W1_C1_Mmux_bcdout44_730,
      ADR5 => W1_C1_Mmux_bcdout42,
      O => W1_bcdout_int(0)
    );
  W1_C1_Mmux_bcdout81 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => W1_C1_dignr_int(0),
      ADR1 => W1_C1_dignr_int(1),
      ADR2 => ALARMCLOCK_count_t_13_38,
      ADR3 => ALARMCLOCK_count_t_21_31,
      ADR4 => ALARMCLOCK_count_t_17_35,
      ADR5 => ALARMCLOCK_count_t_9_42,
      O => W1_C1_Mmux_bcdout8
    );
  W1_C1_Mmux_bcdout82 : X_LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      ADR0 => W1_C1_dignr_int(1),
      ADR1 => W1_C1_dignr_int(0),
      ADR2 => ALARMCLOCK_count_t_1_49,
      ADR3 => ALARMCLOCK_count_t_5_45,
      O => W1_C1_Mmux_bcdout81_734
    );
  W1_C1_Mmux_bcdout84 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => W1_C1_dignr_int(0),
      ADR1 => W1_C1_dignr_int(1),
      ADR2 => ALARMCLOCK_D1_T2_Tcnt(1),
      ADR3 => ALARMCLOCK_D1_T3_Tcnt(1),
      ADR4 => ALARMCLOCK_D1_T3_Ucnt(1),
      ADR5 => ALARMCLOCK_D1_T2_Ucnt(1),
      O => W1_C1_Mmux_bcdout83_736
    );
  W1_C1_Mmux_bcdout85 : X_LUT6
    generic map(
      INIT => X"7775575522200200"
    )
    port map (
      ADR0 => DATATODISPLAY_B1_n0013,
      ADR1 => W1_C1_dignr_int(1),
      ADR2 => W1_C1_dignr_int(0),
      ADR3 => ALARMCLOCK_D1_T1_Ucnt(1),
      ADR4 => ALARMCLOCK_D1_T1_Tcnt(1),
      ADR5 => W1_C1_Mmux_bcdout83_736,
      O => W1_C1_Mmux_bcdout84_737
    );
  W1_C1_Mmux_bcdout86 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => W1_C1_dignr_int(0),
      ADR1 => W1_C1_dignr_int(1),
      ADR2 => ALARMCLOCK_A1_alarmOutput_13_Q,
      ADR3 => ALARMCLOCK_A1_alarmOutput_21_Q,
      ADR4 => ALARMCLOCK_A1_alarmOutput_17_Q,
      ADR5 => ALARMCLOCK_A1_alarmOutput_9_Q,
      O => W1_C1_Mmux_bcdout85_738
    );
  W1_C1_Mmux_bcdout87 : X_LUT6
    generic map(
      INIT => X"7775575522200200"
    )
    port map (
      ADR0 => DATATODISPLAY_B1_n0013,
      ADR1 => W1_C1_dignr_int(1),
      ADR2 => W1_C1_dignr_int(0),
      ADR3 => ALARMCLOCK_A1_alarmOutput_1_Q,
      ADR4 => ALARMCLOCK_A1_alarmOutput_5_Q,
      ADR5 => W1_C1_Mmux_bcdout85_738,
      O => W1_C1_Mmux_bcdout86_739
    );
  W1_C1_Mmux_bcdout88 : X_LUT6
    generic map(
      INIT => X"FFFFFFFF05400040"
    )
    port map (
      ADR0 => S_s_ostate(2),
      ADR1 => W1_C1_Mmux_bcdout86_739,
      ADR2 => S_current_edit_FSM_FFd1_115,
      ADR3 => S_current_edit_FSM_FFd2_116,
      ADR4 => W1_C1_Mmux_bcdout84_737,
      ADR5 => W1_C1_Mmux_bcdout82_735,
      O => W1_bcdout_int(1)
    );
  SELSHOWFUNC_Mmux_ostate12 : X_LUT6
    generic map(
      INIT => X"2F2F2F2F22202022"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_present_state_FSM_FFd2_440,
      ADR1 => ALARMCLOCK_T1_present_state_FSM_FFd1_441,
      ADR2 => S_s_ostate(2),
      ADR3 => S_current_edit_FSM_FFd1_115,
      ADR4 => S_current_edit_FSM_FFd2_116,
      ADR5 => SELSHOWFUNC_Mmux_ostate1,
      O => ostate(0)
    );
  SELSHOWFUNC_Mmux_ostate22 : X_LUT6
    generic map(
      INIT => X"2F2F2F2F22202022"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_present_state_FSM_FFd1_441,
      ADR1 => ALARMCLOCK_T1_present_state_FSM_FFd2_440,
      ADR2 => S_s_ostate(2),
      ADR3 => S_current_edit_FSM_FFd1_115,
      ADR4 => S_current_edit_FSM_FFd2_116,
      ADR5 => SELSHOWFUNC_Mmux_ostate2,
      O => ostate(1)
    );
  SELSHOWFUNC_Mmux_ostate32 : X_LUT6
    generic map(
      INIT => X"8F8F8F8F88808088"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_present_state_FSM_FFd1_441,
      ADR1 => ALARMCLOCK_T1_present_state_FSM_FFd2_440,
      ADR2 => S_s_ostate(2),
      ADR3 => S_current_edit_FSM_FFd2_116,
      ADR4 => S_current_edit_FSM_FFd1_115,
      ADR5 => SELSHOWFUNC_Mmux_ostate3,
      O => ostate(2)
    );
  SELSHOWFUNC_Mmux_ostate42 : X_LUT6
    generic map(
      INIT => X"1F1F1F1F11101011"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_present_state_FSM_FFd2_440,
      ADR1 => ALARMCLOCK_T1_present_state_FSM_FFd1_441,
      ADR2 => S_s_ostate(2),
      ADR3 => S_current_edit_FSM_FFd2_116,
      ADR4 => S_current_edit_FSM_FFd1_115,
      ADR5 => SELSHOWFUNC_Mmux_ostate4,
      O => ostate(3)
    );
  ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_A1_SW0 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T3_Ucnt(1),
      ADR1 => ALARMCLOCK_T1_T3_Ucnt(2),
      O => N8
    );
  ALARMCLOCK_T1_T3_n0127_SW0 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T3_Ucnt(2),
      ADR1 => reset_112,
      O => N10
    );
  ALARMCLOCK_T1_T2_n0142_inv1 : X_LUT6
    generic map(
      INIT => X"222222222222E223"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T2_Umin_3_Tmin_3_AND_21_o_472,
      ADR1 => ALARMCLOCK_T1_upDwn,
      ADR2 => ALARMCLOCK_T1_T2_Ucnt(0),
      ADR3 => ALARMCLOCK_T1_T2_Ucnt(3),
      ADR4 => ALARMCLOCK_T1_T2_Ucnt(1),
      ADR5 => ALARMCLOCK_T1_T2_Ucnt(2),
      O => ALARMCLOCK_T1_T2_n0142_inv1_748
    );
  ALARMCLOCK_T1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_A1_SW0 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T2_Ucnt(2),
      ADR1 => ALARMCLOCK_T1_T2_Ucnt(3),
      O => N16
    );
  ALARMCLOCK_T1_T2_Tmax_3_Umax_3_OR_92_o_SW0 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T2_Tcnt(0),
      ADR1 => ALARMCLOCK_T1_T2_Ucnt(3),
      O => N18
    );
  ALARMCLOCK_T1_T2_Tmax_3_Umax_3_OR_92_o : X_LUT6
    generic map(
      INIT => X"AAAAAAAA88888880"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T2_Tcnt(2),
      ADR1 => N18,
      ADR2 => ALARMCLOCK_T1_T2_Ucnt(1),
      ADR3 => ALARMCLOCK_T1_T2_Ucnt(0),
      ADR4 => ALARMCLOCK_T1_T2_Ucnt(2),
      ADR5 => ALARMCLOCK_T1_T2_Tcnt(1),
      O => ALARMCLOCK_T1_T2_Tmax_3_Umax_3_OR_92_o_471
    );
  ALARMCLOCK_T1_T2_Umin_3_Tmin_3_AND_21_o_SW0 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T2_Tcnt(0),
      ADR1 => ALARMCLOCK_T1_T2_Ucnt(3),
      O => N20
    );
  ALARMCLOCK_T1_T2_Umin_3_Tmin_3_AND_21_o : X_LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T2_Ucnt(1),
      ADR1 => ALARMCLOCK_T1_T2_Tcnt(1),
      ADR2 => ALARMCLOCK_T1_T2_Ucnt(0),
      ADR3 => ALARMCLOCK_T1_T2_Ucnt(2),
      ADR4 => ALARMCLOCK_T1_T2_Tcnt(2),
      ADR5 => N20,
      O => ALARMCLOCK_T1_T2_Umin_3_Tmin_3_AND_21_o_472
    );
  ALARMCLOCK_T1_T2_n0127_SW0 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_T1_T2_Tmax_3_Umax_3_OR_92_o_471,
      O => N22
    );
  ALARMCLOCK_T1_T2_n0127 : X_LUT6
    generic map(
      INIT => X"0000000000002000"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T2_Ucnt(3),
      ADR1 => ALARMCLOCK_T1_T2_Ucnt(1),
      ADR2 => ALARMCLOCK_T1_T2_Ucnt(0),
      ADR3 => ALARMCLOCK_T1_T2_upDwn_cnten_AND_12_o,
      ADR4 => ALARMCLOCK_T1_T2_Ucnt(2),
      ADR5 => N22,
      O => ALARMCLOCK_T1_T2_n0127_476
    );
  ALARMCLOCK_T1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_SW0 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T2_Ucnt(0),
      ADR1 => ALARMCLOCK_T1_T2_Ucnt(2),
      O => N24
    );
  ALARMCLOCK_T1_T1_n0142_inv2 : X_LUT6
    generic map(
      INIT => X"FFFFFFFFAAAA8A80"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_cntenT1,
      ADR1 => ALARMCLOCK_T1_T1_Tmax_3_Umax_3_OR_92_o_493,
      ADR2 => ALARMCLOCK_T1_upDwn,
      ADR3 => ALARMCLOCK_T1_T1_Umin_3_Tmin_3_AND_21_o_494,
      ADR4 => ALARMCLOCK_T1_T1_n0142_inv1_754,
      ADR5 => reset_112,
      O => ALARMCLOCK_T1_T1_n0142_inv
    );
  ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_A1_SW0 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T1_Ucnt(2),
      ADR1 => ALARMCLOCK_T1_T1_Ucnt(3),
      O => N28
    );
  ALARMCLOCK_T1_T1_Tmax_3_Umax_3_OR_92_o_SW0 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T1_Tcnt(0),
      ADR1 => ALARMCLOCK_T1_T1_Ucnt(3),
      O => N30
    );
  ALARMCLOCK_T1_T1_Tmax_3_Umax_3_OR_92_o : X_LUT6
    generic map(
      INIT => X"AAAAAAAA88888880"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T1_Tcnt(2),
      ADR1 => N30,
      ADR2 => ALARMCLOCK_T1_T1_Ucnt(1),
      ADR3 => ALARMCLOCK_T1_T1_Ucnt(2),
      ADR4 => ALARMCLOCK_T1_T1_Ucnt(0),
      ADR5 => ALARMCLOCK_T1_T1_Tcnt(1),
      O => ALARMCLOCK_T1_T1_Tmax_3_Umax_3_OR_92_o_493
    );
  ALARMCLOCK_T1_T1_Umin_3_Tmin_3_AND_21_o_SW0 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T1_Tcnt(0),
      ADR1 => ALARMCLOCK_T1_T1_Ucnt(3),
      O => N32
    );
  ALARMCLOCK_T1_T1_Umin_3_Tmin_3_AND_21_o : X_LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T1_Tcnt(1),
      ADR1 => ALARMCLOCK_T1_T1_Ucnt(1),
      ADR2 => ALARMCLOCK_T1_T1_Ucnt(2),
      ADR3 => ALARMCLOCK_T1_T1_Ucnt(0),
      ADR4 => ALARMCLOCK_T1_T1_Tcnt(2),
      ADR5 => N32,
      O => ALARMCLOCK_T1_T1_Umin_3_Tmin_3_AND_21_o_494
    );
  ALARMCLOCK_T1_T1_n0127_SW0 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_T1_T1_Tmax_3_Umax_3_OR_92_o_493,
      O => N34
    );
  ALARMCLOCK_T1_T1_n0127 : X_LUT6
    generic map(
      INIT => X"0000000000002000"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T1_Ucnt(3),
      ADR1 => ALARMCLOCK_T1_T1_Ucnt(1),
      ADR2 => ALARMCLOCK_T1_T1_upDwn_cnten_AND_12_o,
      ADR3 => ALARMCLOCK_T1_T1_Ucnt(0),
      ADR4 => ALARMCLOCK_T1_T1_Ucnt(2),
      ADR5 => N34,
      O => ALARMCLOCK_T1_T1_n0127_498
    );
  ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_SW0 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T1_Ucnt(2),
      ADR1 => ALARMCLOCK_T1_T1_Ucnt(0),
      O => N36
    );
  ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_SW0 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T1_Ucnt(2),
      ADR1 => ALARMCLOCK_T1_T1_Ucnt(0),
      ADR2 => ALARMCLOCK_T1_T1_Ucnt(3),
      O => N38
    );
  ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_SW0 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Ucnt(0),
      ADR1 => ALARMCLOCK_D1_T1_Ucnt(2),
      ADR2 => ALARMCLOCK_D1_T1_Ucnt(3),
      O => N40
    );
  ALARMCLOCK_D1_T1_n0127_SW0 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Ucnt(3),
      ADR1 => reset_112,
      O => N44
    );
  ALARMCLOCK_D1_T1_Umin_3_Tmin_3_AND_21_o_SW0 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Tcnt(1),
      ADR1 => ALARMCLOCK_D1_T1_Tcnt(2),
      ADR2 => ALARMCLOCK_D1_T1_Ucnt(3),
      O => N46
    );
  ALARMCLOCK_D1_T1_Umin_3_Tmin_3_AND_21_o : X_LUT6
    generic map(
      INIT => X"0000000000002000"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Ucnt(1),
      ADR1 => ALARMCLOCK_D1_T1_Ucnt(0),
      ADR2 => ALARMCLOCK_D1_T1_Tcnt(0),
      ADR3 => ALARMCLOCK_D1_T1_Ucnt(2),
      ADR4 => ALARMCLOCK_D1_T1_Tcnt(3),
      ADR5 => N46,
      O => ALARMCLOCK_D1_T1_Umin_3_Tmin_3_AND_21_o_518
    );
  ALARMCLOCK_D1_T1_Tmax_3_Umax_3_OR_92_o_SW0 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Ucnt(1),
      ADR1 => ALARMCLOCK_D1_T1_Ucnt(0),
      ADR2 => ALARMCLOCK_D1_T1_Ucnt(2),
      O => N48
    );
  ALARMCLOCK_D1_T1_Tmax_3_Umax_3_OR_92_o : X_LUT6
    generic map(
      INIT => X"AAAAAAAAA8888888"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Tcnt(3),
      ADR1 => ALARMCLOCK_D1_T1_Tcnt(2),
      ADR2 => ALARMCLOCK_D1_T1_Tcnt(0),
      ADR3 => ALARMCLOCK_D1_T1_Ucnt(3),
      ADR4 => N48,
      ADR5 => ALARMCLOCK_D1_T1_Tcnt(1),
      O => ALARMCLOCK_D1_T1_Tmax_3_Umax_3_OR_92_o_519
    );
  ALARMCLOCK_D1_T1_n0142_inv1 : X_LUT6
    generic map(
      INIT => X"222222222222E223"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Umin_3_Tmin_3_AND_21_o_518,
      ADR1 => ALARMCLOCK_D1_upDwn,
      ADR2 => ALARMCLOCK_D1_T1_Ucnt(0),
      ADR3 => ALARMCLOCK_D1_T1_Ucnt(3),
      ADR4 => ALARMCLOCK_D1_T1_Ucnt(1),
      ADR5 => ALARMCLOCK_D1_T1_Ucnt(2),
      O => ALARMCLOCK_D1_T1_n0142_inv1_765
    );
  ALARMCLOCK_D1_T2_n0127_SW0 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T2_Ucnt(2),
      ADR1 => reset_112,
      O => N56
    );
  ALARMCLOCK_D1_T2_Umin_3_Tmin_3_AND_21_o_SW0 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T2_Tcnt(2),
      ADR1 => ALARMCLOCK_D1_T2_Ucnt(2),
      ADR2 => ALARMCLOCK_D1_T2_Ucnt(3),
      O => N58
    );
  ALARMCLOCK_D1_T2_Umin_3_Tmin_3_AND_21_o : X_LUT6
    generic map(
      INIT => X"0000000000000010"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T2_Ucnt(1),
      ADR1 => ALARMCLOCK_D1_T2_Tcnt(0),
      ADR2 => ALARMCLOCK_D1_T2_Ucnt(0),
      ADR3 => ALARMCLOCK_D1_T2_Tcnt(3),
      ADR4 => ALARMCLOCK_D1_T2_Tcnt(1),
      ADR5 => N58,
      O => ALARMCLOCK_D1_T2_Umin_3_Tmin_3_AND_21_o_543
    );
  ALARMCLOCK_D1_T2_Tmax_3_Umax_3_OR_92_o_SW0 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T2_Ucnt(2),
      ADR1 => ALARMCLOCK_D1_T2_Ucnt(3),
      O => N60
    );
  ALARMCLOCK_D1_T2_Tmax_3_Umax_3_OR_92_o : X_LUT6
    generic map(
      INIT => X"FFFFFEFEFFFEFEFE"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T2_Tcnt(3),
      ADR1 => ALARMCLOCK_D1_T2_Tcnt(2),
      ADR2 => ALARMCLOCK_D1_T2_Tcnt(1),
      ADR3 => ALARMCLOCK_D1_T2_Ucnt(1),
      ADR4 => ALARMCLOCK_D1_T2_Tcnt(0),
      ADR5 => N60,
      O => ALARMCLOCK_D1_T2_Tmax_3_Umax_3_OR_92_o_544
    );
  ALARMCLOCK_D1_T2_n0142_inv1 : X_LUT6
    generic map(
      INIT => X"222222222222E223"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T2_Umin_3_Tmin_3_AND_21_o_543,
      ADR1 => ALARMCLOCK_D1_upDwn,
      ADR2 => ALARMCLOCK_D1_T2_Ucnt(0),
      ADR3 => ALARMCLOCK_D1_T2_Ucnt(3),
      ADR4 => ALARMCLOCK_D1_T2_Ucnt(1),
      ADR5 => ALARMCLOCK_D1_T2_Ucnt(2),
      O => ALARMCLOCK_D1_T2_n0142_inv1_769
    );
  ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_SW0 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Ucnt(1),
      ADR1 => ALARMCLOCK_D1_T3_Ucnt(0),
      ADR2 => ALARMCLOCK_D1_T3_Ucnt(3),
      O => N64
    );
  ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q : X_LUT6
    generic map(
      INIT => X"FF000E0E00FFF1F1"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Ucnt(2),
      ADR1 => N64,
      ADR2 => ALARMCLOCK_D1_T3_Umin_3_Tmin_3_AND_21_o_566,
      ADR3 => ALARMCLOCK_D1_T3_Tmax_3_Umax_3_OR_92_o,
      ADR4 => ALARMCLOCK_D1_T3_upDwn_cnten_AND_12_o,
      ADR5 => ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q,
      O => ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q_573
    );
  ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_SW0 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Ucnt(2),
      ADR1 => ALARMCLOCK_D1_T3_Ucnt(1),
      ADR2 => ALARMCLOCK_D1_T3_Ucnt(0),
      O => N66
    );
  ALARMCLOCK_D1_T3_n0127_SW0 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Ucnt(3),
      ADR1 => reset_112,
      O => N68
    );
  ALARMCLOCK_D1_T3_n0127 : X_LUT6
    generic map(
      INIT => X"0001000000000000"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Tmax_3_Umax_3_OR_92_o,
      ADR1 => ALARMCLOCK_D1_T3_Ucnt(2),
      ADR2 => ALARMCLOCK_D1_T3_Ucnt(1),
      ADR3 => N68,
      ADR4 => ALARMCLOCK_D1_T3_Ucnt(0),
      ADR5 => ALARMCLOCK_D1_T3_upDwn_cnten_AND_12_o,
      O => ALARMCLOCK_D1_T3_n0127_560
    );
  ALARMCLOCK_D1_T3_Umin_3_Tmin_3_AND_21_o_SW0 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Tcnt(3),
      ADR1 => ALARMCLOCK_D1_T3_Tcnt(2),
      ADR2 => ALARMCLOCK_D1_T3_Tcnt(0),
      O => N70
    );
  ALARMCLOCK_D1_T3_Umin_3_Tmin_3_AND_21_o : X_LUT6
    generic map(
      INIT => X"0000000000000010"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Ucnt(2),
      ADR1 => ALARMCLOCK_D1_T3_Ucnt(1),
      ADR2 => ALARMCLOCK_D1_T3_Ucnt(0),
      ADR3 => ALARMCLOCK_D1_T3_Tcnt(1),
      ADR4 => ALARMCLOCK_D1_T3_Ucnt(3),
      ADR5 => N70,
      O => ALARMCLOCK_D1_T3_Umin_3_Tmin_3_AND_21_o_566
    );
  ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_A1_SW0 : X_LUT5
    generic map(
      INIT => X"CCCD0001"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Ucnt(2),
      ADR1 => ALARMCLOCK_D1_T3_Umin_3_Tmin_3_AND_21_o_566,
      ADR2 => ALARMCLOCK_D1_T3_Ucnt(1),
      ADR3 => ALARMCLOCK_D1_T3_Ucnt(3),
      ADR4 => ALARMCLOCK_D1_setMaxDay_0_Q,
      O => N72
    );
  ALARMCLOCK_D1_T3_n0142_inv1 : X_LUT6
    generic map(
      INIT => X"222222222222E223"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Umin_3_Tmin_3_AND_21_o_566,
      ADR1 => ALARMCLOCK_D1_upDwn,
      ADR2 => ALARMCLOCK_D1_T3_Ucnt(0),
      ADR3 => ALARMCLOCK_D1_T3_Ucnt(3),
      ADR4 => ALARMCLOCK_D1_T3_Ucnt(1),
      ADR5 => ALARMCLOCK_D1_T3_Ucnt(2),
      O => ALARMCLOCK_D1_T3_n0142_inv1_775
    );
  ALARMCLOCK_D1_Mmux_cntenT311 : X_LUT6
    generic map(
      INIT => X"FEEEFEEEFEEEEEEE"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Tcnt(3),
      ADR1 => ALARMCLOCK_D1_T3_Tcnt(2),
      ADR2 => ALARMCLOCK_D1_present_state_FSM_FFd1_591,
      ADR3 => ALARMCLOCK_D1_present_state_FSM_FFd2_590,
      ADR4 => S_edit(5),
      ADR5 => S_edit(4),
      O => ALARMCLOCK_D1_Mmux_cntenT31
    );
  ALARMCLOCK_D1_Mmux_cntenT312 : X_LUT6
    generic map(
      INIT => X"8088A8AA008088A8"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Tcnt(1),
      ADR1 => ALARMCLOCK_D1_T3_Tcnt(0),
      ADR2 => ALARMCLOCK_D1_T3_Ucnt(3),
      ADR3 => ALARMCLOCK_D1_setMaxDay_3_Q,
      ADR4 => ALARMCLOCK_D1_setMaxDay_4_Q,
      ADR5 => ALARMCLOCK_D1_Udaycheck_3_Uday_3_LessThan_21_o1,
      O => ALARMCLOCK_D1_Mmux_cntenT311_779
    );
  ALARMCLOCK_D1_SD_Mmux_DayUout1_SW0 : X_LUT5
    generic map(
      INIT => X"CFC7CFCB"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Tcnt(0),
      ADR1 => ALARMCLOCK_D1_T2_Ucnt(1),
      ADR2 => ALARMCLOCK_D1_T2_Ucnt(3),
      ADR3 => ALARMCLOCK_D1_T1_Ucnt(0),
      ADR4 => ALARMCLOCK_D1_T1_Ucnt(1),
      O => N78
    );
  ALARMCLOCK_D1_SD_Mmux_DayUout1 : X_LUT6
    generic map(
      INIT => X"0000030400000315"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T2_Ucnt(2),
      ADR1 => ALARMCLOCK_D1_T2_Tcnt(0),
      ADR2 => ALARMCLOCK_D1_T2_Ucnt(3),
      ADR3 => ALARMCLOCK_D1_T2_Ucnt(0),
      ADR4 => ALARMCLOCK_D1_SD_Mmux_DayUout23,
      ADR5 => N78,
      O => ALARMCLOCK_D1_setMaxDay_0_Q
    );
  ALARMCLOCK_D1_Udaycheck_3_Uday_3_LessThan_21_o3 : X_LUT6
    generic map(
      INIT => X"000F0007000F000B"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Tcnt(0),
      ADR1 => ALARMCLOCK_D1_T2_Ucnt(1),
      ADR2 => ALARMCLOCK_D1_T2_Tcnt(0),
      ADR3 => ALARMCLOCK_D1_T2_Ucnt(3),
      ADR4 => ALARMCLOCK_D1_T1_Ucnt(0),
      ADR5 => ALARMCLOCK_D1_T1_Ucnt(1),
      O => ALARMCLOCK_D1_Udaycheck_3_Uday_3_LessThan_21_o3_782
    );
  ALARMCLOCK_A1_T1_n0127_SW0 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T1_Ucnt(3),
      ADR1 => reset_112,
      O => N84
    );
  ALARMCLOCK_A1_T1_n0127 : X_LUT6
    generic map(
      INIT => X"0001000000000000"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T1_Tmax_3_Umax_3_OR_92_o_605,
      ADR1 => ALARMCLOCK_A1_T1_Ucnt(1),
      ADR2 => ALARMCLOCK_A1_T1_Ucnt(2),
      ADR3 => N84,
      ADR4 => ALARMCLOCK_A1_T1_upDwn_cnten_AND_12_o,
      ADR5 => ALARMCLOCK_A1_T1_Ucnt(0),
      O => ALARMCLOCK_A1_T1_n0127_600
    );
  ALARMCLOCK_A1_T1_Umin_3_Tmin_3_AND_21_o_SW0 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T1_Tcnt(0),
      ADR1 => ALARMCLOCK_A1_T1_Ucnt(3),
      O => N86
    );
  ALARMCLOCK_A1_T1_Umin_3_Tmin_3_AND_21_o : X_LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T1_Tcnt(1),
      ADR1 => ALARMCLOCK_A1_T1_Ucnt(1),
      ADR2 => ALARMCLOCK_A1_T1_Ucnt(0),
      ADR3 => ALARMCLOCK_A1_T1_Ucnt(2),
      ADR4 => ALARMCLOCK_A1_T1_Tcnt(2),
      ADR5 => N86,
      O => ALARMCLOCK_A1_T1_Umin_3_Tmin_3_AND_21_o_604
    );
  ALARMCLOCK_A1_T1_Tmax_3_Umax_3_OR_92_o_SW0 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T1_Tcnt(0),
      ADR1 => ALARMCLOCK_A1_T1_Ucnt(3),
      O => N88
    );
  ALARMCLOCK_A1_T1_Tmax_3_Umax_3_OR_92_o : X_LUT6
    generic map(
      INIT => X"AAAAAAAA88888880"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T1_Tcnt(2),
      ADR1 => N88,
      ADR2 => ALARMCLOCK_A1_T1_Ucnt(1),
      ADR3 => ALARMCLOCK_A1_T1_Ucnt(0),
      ADR4 => ALARMCLOCK_A1_T1_Ucnt(2),
      ADR5 => ALARMCLOCK_A1_T1_Tcnt(1),
      O => ALARMCLOCK_A1_T1_Tmax_3_Umax_3_OR_92_o_605
    );
  ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_A1_SW0 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T1_Ucnt(2),
      ADR1 => ALARMCLOCK_A1_T1_Ucnt(3),
      O => N90
    );
  ALARMCLOCK_A1_T1_n0142_inv2 : X_LUT6
    generic map(
      INIT => X"FFFFFFFFAAAA8A80"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_cntenT1,
      ADR1 => ALARMCLOCK_A1_T1_Tmax_3_Umax_3_OR_92_o_605,
      ADR2 => ALARMCLOCK_A1_upDwn,
      ADR3 => ALARMCLOCK_A1_T1_Umin_3_Tmin_3_AND_21_o_604,
      ADR4 => ALARMCLOCK_A1_T1_n0142_inv1_787,
      ADR5 => reset_112,
      O => ALARMCLOCK_A1_T1_n0142_inv
    );
  ALARMCLOCK_A1_T2_n0127_SW0 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T2_Ucnt(3),
      ADR1 => reset_112,
      O => N96
    );
  ALARMCLOCK_A1_T2_n0127 : X_LUT6
    generic map(
      INIT => X"0001000000000000"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T2_Tmax_3_Umax_3_OR_92_o_628,
      ADR1 => ALARMCLOCK_A1_T2_Ucnt(1),
      ADR2 => ALARMCLOCK_A1_T2_Ucnt(2),
      ADR3 => N96,
      ADR4 => ALARMCLOCK_A1_T2_upDwn_cnten_AND_12_o,
      ADR5 => ALARMCLOCK_A1_T2_Ucnt(0),
      O => ALARMCLOCK_A1_T2_n0127_623
    );
  ALARMCLOCK_A1_T2_Umin_3_Tmin_3_AND_21_o_SW0 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T2_Tcnt(0),
      ADR1 => ALARMCLOCK_A1_T2_Ucnt(3),
      O => N98
    );
  ALARMCLOCK_A1_T2_Umin_3_Tmin_3_AND_21_o : X_LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T2_Ucnt(1),
      ADR1 => ALARMCLOCK_A1_T2_Tcnt(1),
      ADR2 => ALARMCLOCK_A1_T2_Ucnt(0),
      ADR3 => ALARMCLOCK_A1_T2_Ucnt(2),
      ADR4 => ALARMCLOCK_A1_T2_Tcnt(2),
      ADR5 => N98,
      O => ALARMCLOCK_A1_T2_Umin_3_Tmin_3_AND_21_o_627
    );
  ALARMCLOCK_A1_T2_Tmax_3_Umax_3_OR_92_o_SW0 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T2_Tcnt(0),
      ADR1 => ALARMCLOCK_A1_T2_Ucnt(3),
      O => N100
    );
  ALARMCLOCK_A1_T2_Tmax_3_Umax_3_OR_92_o : X_LUT6
    generic map(
      INIT => X"AAAAAAAA88888880"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T2_Tcnt(2),
      ADR1 => N100,
      ADR2 => ALARMCLOCK_A1_T2_Ucnt(1),
      ADR3 => ALARMCLOCK_A1_T2_Ucnt(0),
      ADR4 => ALARMCLOCK_A1_T2_Ucnt(2),
      ADR5 => ALARMCLOCK_A1_T2_Tcnt(1),
      O => ALARMCLOCK_A1_T2_Tmax_3_Umax_3_OR_92_o_628
    );
  ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_A1_SW0 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T2_Ucnt(2),
      ADR1 => ALARMCLOCK_A1_T2_Ucnt(3),
      O => N102
    );
  ALARMCLOCK_A1_T2_n0142_inv2 : X_LUT6
    generic map(
      INIT => X"FFFFFFFFAAAA8A80"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_cntenT2,
      ADR1 => ALARMCLOCK_A1_T2_Tmax_3_Umax_3_OR_92_o_628,
      ADR2 => ALARMCLOCK_A1_upDwn,
      ADR3 => ALARMCLOCK_A1_T2_Umin_3_Tmin_3_AND_21_o_627,
      ADR4 => ALARMCLOCK_A1_T2_n0142_inv1_792,
      ADR5 => reset_112,
      O => ALARMCLOCK_A1_T2_n0142_inv
    );
  ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_SW0 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T3_Ucnt(0),
      ADR1 => ALARMCLOCK_A1_T3_Ucnt(1),
      ADR2 => ALARMCLOCK_A1_T3_Ucnt(2),
      O => N104
    );
  ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q : X_LUT6
    generic map(
      INIT => X"95A695A695A69595"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q,
      ADR1 => ALARMCLOCK_A1_T3_upDwn_cnten_AND_12_o,
      ADR2 => ALARMCLOCK_A1_T3_Tmax_3_Umax_3_OR_92_o,
      ADR3 => ALARMCLOCK_A1_T3_Umin_3_Tmin_3_AND_21_o,
      ADR4 => ALARMCLOCK_A1_T3_Ucnt(3),
      ADR5 => N104,
      O => ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q_653
    );
  ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_SW0 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T3_Ucnt(1),
      ADR1 => ALARMCLOCK_A1_T3_Ucnt(2),
      O => N106
    );
  ALARMCLOCK_A1_T3_n0127_SW0 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T3_Ucnt(2),
      ADR1 => reset_112,
      O => N108
    );
  ALARMCLOCK_A1_T3_n0142_inv2 : X_LUT6
    generic map(
      INIT => X"FFFFFFFFAAAA8A80"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_cntenT3,
      ADR1 => ALARMCLOCK_A1_T3_Tmax_3_Umax_3_OR_92_o,
      ADR2 => ALARMCLOCK_A1_upDwn,
      ADR3 => ALARMCLOCK_A1_T3_Umin_3_Tmin_3_AND_21_o,
      ADR4 => ALARMCLOCK_A1_T3_n0142_inv1_796,
      ADR5 => reset_112,
      O => ALARMCLOCK_A1_T3_n0142_inv
    );
  btn_l_IBUF : X_BUF
    port map (
      I => btn_l,
      O => btn_l_IBUF_4
    );
  btn_r_IBUF : X_BUF
    port map (
      I => btn_r,
      O => btn_r_IBUF_5
    );
  btn_c_IBUF : X_BUF
    port map (
      I => btn_c,
      O => btn_c_IBUF_6
    );
  btn_u_IBUF : X_BUF
    port map (
      I => btn_u,
      O => btn_u_IBUF_7
    );
  btn_d_IBUF : X_BUF
    port map (
      I => btn_d,
      O => btn_d_IBUF_8
    );
  init : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => N0,
      O => init_113,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_7_1 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T3_Tcnt(1),
      ADR1 => ALARMCLOCK_T1_T3_Tcnt(1),
      O => ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_7_Q
    );
  ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_5_1 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T3_Ucnt(0),
      ADR1 => ALARMCLOCK_T1_T3_Ucnt(0),
      ADR2 => ALARMCLOCK_A1_T3_Ucnt(1),
      ADR3 => ALARMCLOCK_T1_T3_Ucnt(1),
      O => ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_5_Q
    );
  ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_2_1 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T1_Tcnt(2),
      ADR1 => ALARMCLOCK_T1_T1_Tcnt(2),
      ADR2 => ALARMCLOCK_A1_T2_Ucnt(0),
      ADR3 => ALARMCLOCK_T1_T2_Ucnt(0),
      O => ALARMCLOCK_A1_Mcompar_countcheck_23_counterInput_23_equal_15_o_lut_2_Q
    );
  T1_T1s_Mcount_cnt_signal_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(1),
      O => T1_T1s_Mcount_cnt_signal_cy_1_rt_819,
      ADR1 => GND
    );
  T1_T1s_Mcount_cnt_signal_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(2),
      O => T1_T1s_Mcount_cnt_signal_cy_2_rt_820,
      ADR1 => GND
    );
  T1_T1s_Mcount_cnt_signal_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(3),
      O => T1_T1s_Mcount_cnt_signal_cy_3_rt_821,
      ADR1 => GND
    );
  T1_T1s_Mcount_cnt_signal_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(4),
      O => T1_T1s_Mcount_cnt_signal_cy_4_rt_822,
      ADR1 => GND
    );
  T1_T1s_Mcount_cnt_signal_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(5),
      O => T1_T1s_Mcount_cnt_signal_cy_5_rt_823,
      ADR1 => GND
    );
  T1_T1s_Mcount_cnt_signal_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(6),
      O => T1_T1s_Mcount_cnt_signal_cy_6_rt_824,
      ADR1 => GND
    );
  T1_T1s_Mcount_cnt_signal_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(7),
      O => T1_T1s_Mcount_cnt_signal_cy_7_rt_825,
      ADR1 => GND
    );
  T1_T1s_Mcount_cnt_signal_cy_8_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(8),
      O => T1_T1s_Mcount_cnt_signal_cy_8_rt_826,
      ADR1 => GND
    );
  T1_T1s_Mcount_cnt_signal_cy_9_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(9),
      O => T1_T1s_Mcount_cnt_signal_cy_9_rt_827,
      ADR1 => GND
    );
  T1_T1s_Mcount_cnt_signal_cy_10_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(10),
      O => T1_T1s_Mcount_cnt_signal_cy_10_rt_828,
      ADR1 => GND
    );
  T1_T1s_Mcount_cnt_signal_cy_11_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(11),
      O => T1_T1s_Mcount_cnt_signal_cy_11_rt_829,
      ADR1 => GND
    );
  T1_T1s_Mcount_cnt_signal_cy_12_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(12),
      O => T1_T1s_Mcount_cnt_signal_cy_12_rt_830,
      ADR1 => GND
    );
  T1_T1s_Mcount_cnt_signal_cy_13_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(13),
      O => T1_T1s_Mcount_cnt_signal_cy_13_rt_831,
      ADR1 => GND
    );
  T1_T1s_Mcount_cnt_signal_cy_14_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(14),
      O => T1_T1s_Mcount_cnt_signal_cy_14_rt_832,
      ADR1 => GND
    );
  T1_T1s_Mcount_cnt_signal_cy_15_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(15),
      O => T1_T1s_Mcount_cnt_signal_cy_15_rt_833,
      ADR1 => GND
    );
  T1_T1s_Mcount_cnt_signal_cy_16_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(16),
      O => T1_T1s_Mcount_cnt_signal_cy_16_rt_834,
      ADR1 => GND
    );
  T1_T1s_Mcount_cnt_signal_cy_17_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(17),
      O => T1_T1s_Mcount_cnt_signal_cy_17_rt_835,
      ADR1 => GND
    );
  T1_T1s_Mcount_cnt_signal_cy_18_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(18),
      O => T1_T1s_Mcount_cnt_signal_cy_18_rt_836,
      ADR1 => GND
    );
  T1_T1s_Mcount_cnt_signal_cy_19_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(19),
      O => T1_T1s_Mcount_cnt_signal_cy_19_rt_837,
      ADR1 => GND
    );
  T1_T1s_Mcount_cnt_signal_cy_20_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(20),
      O => T1_T1s_Mcount_cnt_signal_cy_20_rt_838,
      ADR1 => GND
    );
  T1_T1s_Mcount_cnt_signal_cy_21_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(21),
      O => T1_T1s_Mcount_cnt_signal_cy_21_rt_839,
      ADR1 => GND
    );
  T1_T1s_Mcount_cnt_signal_cy_22_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(22),
      O => T1_T1s_Mcount_cnt_signal_cy_22_rt_840,
      ADR1 => GND
    );
  T1_T1s_Mcount_cnt_signal_cy_23_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(23),
      O => T1_T1s_Mcount_cnt_signal_cy_23_rt_841,
      ADR1 => GND
    );
  T1_T1s_Mcount_cnt_signal_cy_24_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(24),
      O => T1_T1s_Mcount_cnt_signal_cy_24_rt_842,
      ADR1 => GND
    );
  T1_T1s_Mcount_cnt_signal_cy_25_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(25),
      O => T1_T1s_Mcount_cnt_signal_cy_25_rt_843,
      ADR1 => GND
    );
  T1_T1ms_Mcount_cnt_signal_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(1),
      O => T1_T1ms_Mcount_cnt_signal_cy_1_rt_844,
      ADR1 => GND
    );
  T1_T1ms_Mcount_cnt_signal_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(2),
      O => T1_T1ms_Mcount_cnt_signal_cy_2_rt_845,
      ADR1 => GND
    );
  T1_T1ms_Mcount_cnt_signal_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(3),
      O => T1_T1ms_Mcount_cnt_signal_cy_3_rt_846,
      ADR1 => GND
    );
  T1_T1ms_Mcount_cnt_signal_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(4),
      O => T1_T1ms_Mcount_cnt_signal_cy_4_rt_847,
      ADR1 => GND
    );
  T1_T1ms_Mcount_cnt_signal_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(5),
      O => T1_T1ms_Mcount_cnt_signal_cy_5_rt_848,
      ADR1 => GND
    );
  T1_T1ms_Mcount_cnt_signal_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(6),
      O => T1_T1ms_Mcount_cnt_signal_cy_6_rt_849,
      ADR1 => GND
    );
  T1_T1ms_Mcount_cnt_signal_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(7),
      O => T1_T1ms_Mcount_cnt_signal_cy_7_rt_850,
      ADR1 => GND
    );
  T1_T1ms_Mcount_cnt_signal_cy_8_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(8),
      O => T1_T1ms_Mcount_cnt_signal_cy_8_rt_851,
      ADR1 => GND
    );
  T1_T1ms_Mcount_cnt_signal_cy_9_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(9),
      O => T1_T1ms_Mcount_cnt_signal_cy_9_rt_852,
      ADR1 => GND
    );
  T1_T1ms_Mcount_cnt_signal_cy_10_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(10),
      O => T1_T1ms_Mcount_cnt_signal_cy_10_rt_853,
      ADR1 => GND
    );
  T1_T1ms_Mcount_cnt_signal_cy_11_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(11),
      O => T1_T1ms_Mcount_cnt_signal_cy_11_rt_854,
      ADR1 => GND
    );
  T1_T1ms_Mcount_cnt_signal_cy_12_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(12),
      O => T1_T1ms_Mcount_cnt_signal_cy_12_rt_855,
      ADR1 => GND
    );
  T1_T1ms_Mcount_cnt_signal_cy_13_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(13),
      O => T1_T1ms_Mcount_cnt_signal_cy_13_rt_856,
      ADR1 => GND
    );
  T1_T1ms_Mcount_cnt_signal_cy_14_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(14),
      O => T1_T1ms_Mcount_cnt_signal_cy_14_rt_857,
      ADR1 => GND
    );
  T1_T1ms_Mcount_cnt_signal_cy_15_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(15),
      O => T1_T1ms_Mcount_cnt_signal_cy_15_rt_858,
      ADR1 => GND
    );
  T1_T10ms_Mcount_cnt_signal_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(1),
      O => T1_T10ms_Mcount_cnt_signal_cy_1_rt_859,
      ADR1 => GND
    );
  T1_T10ms_Mcount_cnt_signal_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(2),
      O => T1_T10ms_Mcount_cnt_signal_cy_2_rt_860,
      ADR1 => GND
    );
  T1_T10ms_Mcount_cnt_signal_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(3),
      O => T1_T10ms_Mcount_cnt_signal_cy_3_rt_861,
      ADR1 => GND
    );
  T1_T10ms_Mcount_cnt_signal_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(4),
      O => T1_T10ms_Mcount_cnt_signal_cy_4_rt_862,
      ADR1 => GND
    );
  T1_T10ms_Mcount_cnt_signal_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(5),
      O => T1_T10ms_Mcount_cnt_signal_cy_5_rt_863,
      ADR1 => GND
    );
  T1_T10ms_Mcount_cnt_signal_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T10ms_cnt_signal(6),
      O => T1_T10ms_Mcount_cnt_signal_cy_6_rt_864,
      ADR1 => GND
    );
  T1_T10ms_Mcount_cnt_signal_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T10ms_cnt_signal(7),
      O => T1_T10ms_Mcount_cnt_signal_cy_7_rt_865,
      ADR1 => GND
    );
  T1_T10ms_Mcount_cnt_signal_cy_8_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T10ms_cnt_signal(8),
      O => T1_T10ms_Mcount_cnt_signal_cy_8_rt_866,
      ADR1 => GND
    );
  T1_T10ms_Mcount_cnt_signal_cy_9_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T10ms_cnt_signal(9),
      O => T1_T10ms_Mcount_cnt_signal_cy_9_rt_867,
      ADR1 => GND
    );
  T1_T10ms_Mcount_cnt_signal_cy_10_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T10ms_cnt_signal(10),
      O => T1_T10ms_Mcount_cnt_signal_cy_10_rt_868,
      ADR1 => GND
    );
  T1_T10ms_Mcount_cnt_signal_cy_11_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T10ms_cnt_signal(11),
      O => T1_T10ms_Mcount_cnt_signal_cy_11_rt_869,
      ADR1 => GND
    );
  T1_T10ms_Mcount_cnt_signal_cy_12_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T10ms_cnt_signal(12),
      O => T1_T10ms_Mcount_cnt_signal_cy_12_rt_870,
      ADR1 => GND
    );
  T1_T10ms_Mcount_cnt_signal_cy_13_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T10ms_cnt_signal(13),
      O => T1_T10ms_Mcount_cnt_signal_cy_13_rt_871,
      ADR1 => GND
    );
  T1_T10ms_Mcount_cnt_signal_cy_14_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T10ms_cnt_signal(14),
      O => T1_T10ms_Mcount_cnt_signal_cy_14_rt_872,
      ADR1 => GND
    );
  T1_T10ms_Mcount_cnt_signal_cy_15_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T10ms_cnt_signal(15),
      O => T1_T10ms_Mcount_cnt_signal_cy_15_rt_873,
      ADR1 => GND
    );
  T1_T10ms_Mcount_cnt_signal_cy_16_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T10ms_cnt_signal(16),
      O => T1_T10ms_Mcount_cnt_signal_cy_16_rt_874,
      ADR1 => GND
    );
  T1_T10ms_Mcount_cnt_signal_cy_17_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T10ms_cnt_signal(17),
      O => T1_T10ms_Mcount_cnt_signal_cy_17_rt_875,
      ADR1 => GND
    );
  T1_T10ms_Mcount_cnt_signal_cy_18_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T10ms_cnt_signal(18),
      O => T1_T10ms_Mcount_cnt_signal_cy_18_rt_876,
      ADR1 => GND
    );
  T1_T100ms_Mcount_cnt_signal_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(1),
      O => T1_T100ms_Mcount_cnt_signal_cy_1_rt_877,
      ADR1 => GND
    );
  T1_T100ms_Mcount_cnt_signal_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(2),
      O => T1_T100ms_Mcount_cnt_signal_cy_2_rt_878,
      ADR1 => GND
    );
  T1_T100ms_Mcount_cnt_signal_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(3),
      O => T1_T100ms_Mcount_cnt_signal_cy_3_rt_879,
      ADR1 => GND
    );
  T1_T100ms_Mcount_cnt_signal_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(4),
      O => T1_T100ms_Mcount_cnt_signal_cy_4_rt_880,
      ADR1 => GND
    );
  T1_T100ms_Mcount_cnt_signal_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(5),
      O => T1_T100ms_Mcount_cnt_signal_cy_5_rt_881,
      ADR1 => GND
    );
  T1_T100ms_Mcount_cnt_signal_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(6),
      O => T1_T100ms_Mcount_cnt_signal_cy_6_rt_882,
      ADR1 => GND
    );
  T1_T100ms_Mcount_cnt_signal_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T100ms_cnt_signal(7),
      O => T1_T100ms_Mcount_cnt_signal_cy_7_rt_883,
      ADR1 => GND
    );
  T1_T100ms_Mcount_cnt_signal_cy_8_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T100ms_cnt_signal(8),
      O => T1_T100ms_Mcount_cnt_signal_cy_8_rt_884,
      ADR1 => GND
    );
  T1_T100ms_Mcount_cnt_signal_cy_9_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T100ms_cnt_signal(9),
      O => T1_T100ms_Mcount_cnt_signal_cy_9_rt_885,
      ADR1 => GND
    );
  T1_T100ms_Mcount_cnt_signal_cy_10_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T100ms_cnt_signal(10),
      O => T1_T100ms_Mcount_cnt_signal_cy_10_rt_886,
      ADR1 => GND
    );
  T1_T100ms_Mcount_cnt_signal_cy_11_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T100ms_cnt_signal(11),
      O => T1_T100ms_Mcount_cnt_signal_cy_11_rt_887,
      ADR1 => GND
    );
  T1_T100ms_Mcount_cnt_signal_cy_12_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T100ms_cnt_signal(12),
      O => T1_T100ms_Mcount_cnt_signal_cy_12_rt_888,
      ADR1 => GND
    );
  T1_T100ms_Mcount_cnt_signal_cy_13_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T100ms_cnt_signal(13),
      O => T1_T100ms_Mcount_cnt_signal_cy_13_rt_889,
      ADR1 => GND
    );
  T1_T100ms_Mcount_cnt_signal_cy_14_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T100ms_cnt_signal(14),
      O => T1_T100ms_Mcount_cnt_signal_cy_14_rt_890,
      ADR1 => GND
    );
  T1_T100ms_Mcount_cnt_signal_cy_15_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T100ms_cnt_signal(15),
      O => T1_T100ms_Mcount_cnt_signal_cy_15_rt_891,
      ADR1 => GND
    );
  T1_T100ms_Mcount_cnt_signal_cy_16_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T100ms_cnt_signal(16),
      O => T1_T100ms_Mcount_cnt_signal_cy_16_rt_892,
      ADR1 => GND
    );
  T1_T100ms_Mcount_cnt_signal_cy_17_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T100ms_cnt_signal(17),
      O => T1_T100ms_Mcount_cnt_signal_cy_17_rt_893,
      ADR1 => GND
    );
  T1_T100ms_Mcount_cnt_signal_cy_18_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T100ms_cnt_signal(18),
      O => T1_T100ms_Mcount_cnt_signal_cy_18_rt_894,
      ADR1 => GND
    );
  T1_T100ms_Mcount_cnt_signal_cy_19_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T100ms_cnt_signal(19),
      O => T1_T100ms_Mcount_cnt_signal_cy_19_rt_895,
      ADR1 => GND
    );
  T1_T100ms_Mcount_cnt_signal_cy_20_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T100ms_cnt_signal(20),
      O => T1_T100ms_Mcount_cnt_signal_cy_20_rt_896,
      ADR1 => GND
    );
  T1_T100ms_Mcount_cnt_signal_cy_21_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T100ms_cnt_signal(21),
      O => T1_T100ms_Mcount_cnt_signal_cy_21_rt_897,
      ADR1 => GND
    );
  T1_T100ms_Mcount_cnt_signal_cy_22_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T100ms_cnt_signal(22),
      O => T1_T100ms_Mcount_cnt_signal_cy_22_rt_898,
      ADR1 => GND
    );
  T1_T1s_Mcount_cnt_signal_xor_26_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(26),
      O => T1_T1s_Mcount_cnt_signal_xor_26_rt_899,
      ADR1 => GND
    );
  T1_T1ms_Mcount_cnt_signal_xor_16_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T1ms_cnt_signal(16),
      O => T1_T1ms_Mcount_cnt_signal_xor_16_rt_900,
      ADR1 => GND
    );
  T1_T10ms_Mcount_cnt_signal_xor_19_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T10ms_cnt_signal(19),
      O => T1_T10ms_Mcount_cnt_signal_xor_19_rt_901,
      ADR1 => GND
    );
  T1_T100ms_Mcount_cnt_signal_xor_23_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => T1_T100ms_cnt_signal(23),
      O => T1_T100ms_Mcount_cnt_signal_xor_23_rt_902,
      ADR1 => GND
    );
  ALARMCLOCK_D1_T3_Tmax_3_Umax_3_OR_92_o6 : X_LUT6
    generic map(
      INIT => X"FEEEFEFEEEEEFEEE"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Tcnt(3),
      ADR1 => ALARMCLOCK_D1_T3_Tcnt(2),
      ADR2 => ALARMCLOCK_D1_T3_Tcnt(1),
      ADR3 => ALARMCLOCK_D1_T3_Tcnt(0),
      ADR4 => ALARMCLOCK_D1_setMaxDay_4_Q,
      ADR5 => N112,
      O => ALARMCLOCK_D1_T3_Tmax_3_Umax_3_OR_92_o
    );
  T1_T1s_pulse_26_7_SW0 : X_LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(24),
      ADR1 => T1_T1s_cnt_signal(23),
      ADR2 => T1_T1s_cnt_signal(22),
      ADR3 => T1_T1s_cnt_signal(21),
      ADR4 => T1_T1s_cnt_signal(20),
      ADR5 => T1_T1s_cnt_signal(18),
      O => N114
    );
  T1_T1s_pulse_26_7 : X_LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(26),
      ADR1 => T1_T1s_pulse_26_1_718,
      ADR2 => N114,
      ADR3 => T1_T1s_pulse(26),
      ADR4 => T1_T1s_pulse_26_2_719,
      ADR5 => T1_T10ms_pulse_19_1_711,
      O => pulse_1s
    );
  ALARMCLOCK_D1_Mmux_cntenT111_SW1 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => S_edit(5),
      ADR1 => S_edit(4),
      O => N120
    );
  ALARMCLOCK_T1_cntenT32_SW0 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => S_edit(2),
      ADR1 => S_edit(1),
      O => N122
    );
  ALARMCLOCK_D1_T1_Mmux_Tcnt_3_Tmin_3_mux_27_OUT42 : X_LUT6
    generic map(
      INIT => X"3133020001033230"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Tcnt(2),
      ADR1 => reset_112,
      ADR2 => ALARMCLOCK_D1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_2_Q,
      ADR3 => ALARMCLOCK_D1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_B_0_Q,
      ADR4 => ALARMCLOCK_D1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_3_Q,
      ADR5 => ALARMCLOCK_D1_T1_Mmux_Tcnt_3_Tmin_3_mux_27_OUT41,
      O => ALARMCLOCK_D1_T1_Tcnt_3_Tmin_3_mux_27_OUT_3_Q
    );
  ALARMCLOCK_D1_T2_Mmux_Tcnt_3_Tmin_3_mux_27_OUT42 : X_LUT6
    generic map(
      INIT => X"2020201313202020"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T2_Tcnt(3),
      ADR1 => reset_112,
      ADR2 => ALARMCLOCK_D1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_B_0_Q,
      ADR3 => ALARMCLOCK_D1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_A_2_Q,
      ADR4 => ALARMCLOCK_D1_T2_upDwn_cnten_AND_12_o,
      ADR5 => ALARMCLOCK_D1_T2_Mmux_Tcnt_3_Tmin_3_mux_27_OUT41,
      O => ALARMCLOCK_D1_T2_Tcnt_3_Tmin_3_mux_27_OUT_3_Q
    );
  ALARMCLOCK_D1_T3_Tmax_3_Umax_3_OR_92_o6_SW0 : X_LUT6
    generic map(
      INIT => X"AAA8FFFEAAAAFFFF"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Ucnt(3),
      ADR1 => ALARMCLOCK_D1_T3_Ucnt(0),
      ADR2 => ALARMCLOCK_D1_T3_Ucnt(1),
      ADR3 => ALARMCLOCK_D1_T3_Ucnt(2),
      ADR4 => ALARMCLOCK_D1_setMaxDay_3_Q,
      ADR5 => ALARMCLOCK_D1_setMaxDay_0_Q,
      O => N112
    );
  ALARMCLOCK_T1_cntenT2_SW0_SW3 : X_LUT5
    generic map(
      INIT => X"88888880"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T1_Tcnt(0),
      ADR1 => ALARMCLOCK_T1_T1_Ucnt(3),
      ADR2 => ALARMCLOCK_T1_T1_Ucnt(2),
      ADR3 => ALARMCLOCK_T1_T1_Ucnt(1),
      ADR4 => ALARMCLOCK_T1_T1_Ucnt(0),
      O => N131
    );
  ALARMCLOCK_T1_cntenT2_SW0_SW4 : X_LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T1_Tcnt(0),
      ADR1 => ALARMCLOCK_T1_T1_Ucnt(2),
      ADR2 => ALARMCLOCK_T1_T1_Ucnt(3),
      ADR3 => ALARMCLOCK_T1_T1_Ucnt(0),
      ADR4 => ALARMCLOCK_T1_T1_Ucnt(1),
      O => N132
    );
  ALARMCLOCK_T1_cntenT2_SW0 : X_LUT6
    generic map(
      INIT => X"55F577F755E577E7"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T1_Tcnt(2),
      ADR1 => ALARMCLOCK_T1_T1_Tcnt(1),
      ADR2 => S_edit(2),
      ADR3 => S_edit(1),
      ADR4 => N131,
      ADR5 => N132,
      O => N6
    );
  ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_1_SW0 : X_LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Umin_3_Tmin_3_AND_21_o_566,
      ADR1 => ALARMCLOCK_D1_T3_Tcnt(0),
      ADR2 => ALARMCLOCK_D1_setMaxDay_4_Q,
      O => N136
    );
  ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_1 : X_LUT6
    generic map(
      INIT => X"3366FFAA3C3CF0F0"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Tcnt(0),
      ADR1 => ALARMCLOCK_D1_upDwn,
      ADR2 => N136,
      ADR3 => ALARMCLOCK_D1_T3_Tmax_3_Umax_3_OR_92_o,
      ADR4 => ALARMCLOCK_D1_cntenT3,
      ADR5 => ALARMCLOCK_D1_T3_upDwn_cnten_AND_12_o,
      O => ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_Q
    );
  ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_A1 : X_LUT6
    generic map(
      INIT => X"FFCEBB8AFF0AFF0A"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Ucnt(0),
      ADR1 => ALARMCLOCK_D1_upDwn,
      ADR2 => ALARMCLOCK_D1_T3_Umin_3_Tmin_3_AND_21_o_566,
      ADR3 => N72,
      ADR4 => ALARMCLOCK_D1_T3_Tmax_3_Umax_3_OR_92_o,
      ADR5 => ALARMCLOCK_D1_cntenT3,
      O => ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q
    );
  ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Umin_3_mux_30_OUT31 : X_LUT6
    generic map(
      INIT => X"4150505050505041"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q_547,
      ADR2 => ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_2_Q,
      ADR3 => ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_1_Q,
      ADR4 => ALARMCLOCK_D1_T2_upDwn_cnten_AND_12_o,
      ADR5 => ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q,
      O => ALARMCLOCK_D1_T2_Ucnt_3_Umin_3_mux_30_OUT_2_Q
    );
  ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_A1 : X_LUT6
    generic map(
      INIT => X"00CC00CCFFFFCDCD"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T3_Ucnt(3),
      ADR1 => ALARMCLOCK_T1_T3_Ucnt(0),
      ADR2 => N8,
      ADR3 => ALARMCLOCK_T1_T3_Tmax_3_Umax_3_OR_92_o,
      ADR4 => ALARMCLOCK_T1_T3_Umin_3_Tmin_3_AND_21_o,
      ADR5 => ALARMCLOCK_T1_T3_upDwn_cnten_AND_12_o,
      O => ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q
    );
  ALARMCLOCK_T1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_A1 : X_LUT6
    generic map(
      INIT => X"0000AAAAFFABFFAB"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T2_Ucnt(0),
      ADR1 => ALARMCLOCK_T1_T2_Ucnt(1),
      ADR2 => N16,
      ADR3 => ALARMCLOCK_T1_T2_Umin_3_Tmin_3_AND_21_o_472,
      ADR4 => ALARMCLOCK_T1_T2_Tmax_3_Umax_3_OR_92_o_471,
      ADR5 => ALARMCLOCK_T1_T2_upDwn_cnten_AND_12_o,
      O => ALARMCLOCK_T1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q
    );
  ALARMCLOCK_T1_cntenT2 : X_LUT6
    generic map(
      INIT => X"2220333122202220"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_present_state_FSM_FFd1_441,
      ADR1 => ALARMCLOCK_T1_present_state_FSM_FFd2_440,
      ADR2 => S_edit(1),
      ADR3 => S_edit(2),
      ADR4 => N6,
      ADR5 => pulse_1s,
      O => ALARMCLOCK_T1_cntenT2_437
    );
  ALARMCLOCK_D1_Mmux_cntenT111_SW0 : X_LUT6
    generic map(
      INIT => X"078F05AF0F0F078F"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Tcnt(1),
      ADR1 => ALARMCLOCK_D1_T3_Tcnt(0),
      ADR2 => N144,
      ADR3 => N145,
      ADR4 => ALARMCLOCK_D1_setMaxDay_4_Q,
      ADR5 => N112,
      O => N76
    );
  ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Umin_3_mux_30_OUT42 : X_LUT6
    generic map(
      INIT => X"4144444411141414"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q_576,
      ADR2 => ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_2_Q,
      ADR3 => ALARMCLOCK_D1_T3_Ucnt(2),
      ADR4 => ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_B_0_Q,
      ADR5 => ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Umin_3_mux_30_OUT41,
      O => ALARMCLOCK_D1_T3_Ucnt_3_Umin_3_mux_30_OUT_3_Q
    );
  ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Umin_3_mux_30_OUT42 : X_LUT6
    generic map(
      INIT => X"4015550000554015"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_D1_upDwn,
      ADR2 => ALARMCLOCK_D1_cntenT2,
      ADR3 => ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q_548,
      ADR4 => ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_2_Q,
      ADR5 => ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Umin_3_mux_30_OUT41,
      O => ALARMCLOCK_D1_T2_Ucnt_3_Umin_3_mux_30_OUT_3_Q
    );
  ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tmin_3_mux_27_OUT21 : X_LUT5
    generic map(
      INIT => X"44441441"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_A_1_Q,
      ADR2 => ALARMCLOCK_D1_T3_upDwn_cnten_AND_12_o,
      ADR3 => ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_A_0_Q,
      ADR4 => ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_Q,
      O => ALARMCLOCK_D1_T3_Tcnt_3_Tmin_3_mux_27_OUT_1_Q
    );
  ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Umin_3_mux_30_OUT21 : X_LUT6
    generic map(
      INIT => X"4040151500555500"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_D1_upDwn,
      ADR2 => ALARMCLOCK_D1_cntenT3,
      ADR3 => ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q,
      ADR4 => ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_1_Q,
      ADR5 => ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q_573,
      O => ALARMCLOCK_D1_T3_Ucnt_3_Umin_3_mux_30_OUT_1_Q
    );
  ALARMCLOCK_T1_cntenT32 : X_LUT6
    generic map(
      INIT => X"8080808080809180"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_present_state_FSM_FFd1_441,
      ADR1 => ALARMCLOCK_T1_present_state_FSM_FFd2_440,
      ADR2 => N122,
      ADR3 => T1_T1s_pulse_26_7_973,
      ADR4 => N123,
      ADR5 => N6,
      O => ALARMCLOCK_T1_cntenT3
    );
  ALARMCLOCK_T1_cntenT32_SW1_SW3 : X_LUT5
    generic map(
      INIT => X"88888880"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T2_Tcnt(0),
      ADR1 => ALARMCLOCK_T1_T2_Ucnt(3),
      ADR2 => ALARMCLOCK_T1_T2_Ucnt(2),
      ADR3 => ALARMCLOCK_T1_T2_Ucnt(1),
      ADR4 => ALARMCLOCK_T1_T2_Ucnt(0),
      O => N151
    );
  ALARMCLOCK_T1_cntenT32_SW1_SW4 : X_LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T2_Tcnt(0),
      ADR1 => ALARMCLOCK_T1_T2_Ucnt(3),
      ADR2 => ALARMCLOCK_T1_T2_Ucnt(0),
      ADR3 => ALARMCLOCK_T1_T2_Ucnt(1),
      ADR4 => ALARMCLOCK_T1_T2_Ucnt(2),
      O => N152
    );
  ALARMCLOCK_T1_cntenT32_SW1 : X_LUT6
    generic map(
      INIT => X"55F577F755E577E7"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T2_Tcnt(2),
      ADR1 => ALARMCLOCK_T1_T2_Tcnt(1),
      ADR2 => S_edit(2),
      ADR3 => S_edit(1),
      ADR4 => N151,
      ADR5 => N152,
      O => N123
    );
  ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT11 : X_LUT6
    generic map(
      INIT => X"020F0D000D00020F"
    )
    port map (
      ADR0 => S_edit(5),
      ADR1 => S_edit(4),
      ADR2 => reset_112,
      ADR3 => ALARMCLOCK_D1_cntenT1,
      ADR4 => N154,
      ADR5 => ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q,
      O => ALARMCLOCK_D1_T1_Ucnt_3_Umin_3_mux_30_OUT_0_Q
    );
  ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tmin_3_mux_27_OUT31 : X_LUT6
    generic map(
      INIT => X"4411441104514510"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_D1_T3_upDwn_cnten_AND_12_o,
      ADR2 => ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_A_1_Q,
      ADR3 => ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_2_Q,
      ADR4 => ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_A_0_Q,
      ADR5 => ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_Q,
      O => ALARMCLOCK_D1_T3_Tcnt_3_Tmin_3_mux_27_OUT_2_Q
    );
  ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_A11 : X_LUT5
    generic map(
      INIT => X"00AAE2E2"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Tcnt(0),
      ADR1 => ALARMCLOCK_D1_T3_Umin_3_Tmin_3_AND_21_o_566,
      ADR2 => ALARMCLOCK_D1_setMaxDay_4_Q,
      ADR3 => ALARMCLOCK_D1_T3_Tmax_3_Umax_3_OR_92_o,
      ADR4 => ALARMCLOCK_D1_T3_upDwn_cnten_AND_12_o,
      O => ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_A_0_Q
    );
  ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_A21 : X_LUT4
    generic map(
      INIT => X"0A22"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Ucnt(1),
      ADR1 => ALARMCLOCK_D1_T3_Umin_3_Tmin_3_AND_21_o_566,
      ADR2 => ALARMCLOCK_D1_T3_Tmax_3_Umax_3_OR_92_o,
      ADR3 => ALARMCLOCK_D1_T3_upDwn_cnten_AND_12_o,
      O => ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_1_Q
    );
  ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_1_1 : X_LUT6
    generic map(
      INIT => X"3399FF553939F5F5"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Ucnt(1),
      ADR1 => ALARMCLOCK_D1_upDwn,
      ADR2 => ALARMCLOCK_D1_T3_Umin_3_Tmin_3_AND_21_o_566,
      ADR3 => ALARMCLOCK_D1_T3_Tmax_3_Umax_3_OR_92_o,
      ADR4 => ALARMCLOCK_D1_cntenT3,
      ADR5 => ALARMCLOCK_D1_T3_upDwn_cnten_AND_12_o,
      O => ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_1_Q
    );
  ALARMCLOCK_D1_Mmux_cntenT314_SW0 : X_LUT6
    generic map(
      INIT => X"EAEAEAFBEAFBEAFB"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_present_state_FSM_FFd1_591,
      ADR1 => ALARMCLOCK_D1_present_state_FSM_FFd2_590,
      ADR2 => N120,
      ADR3 => ALARMCLOCK_D1_Mmux_cntenT31,
      ADR4 => ALARMCLOCK_D1_Mmux_cntenT312_780,
      ADR5 => ALARMCLOCK_T1_cntenT3,
      O => N156
    );
  ALARMCLOCK_D1_Mmux_cntenT11 : X_LUT6
    generic map(
      INIT => X"555553505555535F"
    )
    port map (
      ADR0 => N157,
      ADR1 => N158,
      ADR2 => N74,
      ADR3 => ALARMCLOCK_D1_Mmux_cntenT311_779,
      ADR4 => N76,
      ADR5 => N156,
      O => ALARMCLOCK_D1_cntenT1
    );
  ALARMCLOCK_D1_Udaycheck_3_Uday_3_LessThan_21_o4_SW0_SW1 : X_LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE0F0"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T2_Tcnt(0),
      ADR1 => ALARMCLOCK_D1_T2_Ucnt(3),
      ADR2 => ALARMCLOCK_D1_T3_Ucnt(0),
      ADR3 => ALARMCLOCK_D1_T2_Ucnt(0),
      ADR4 => ALARMCLOCK_D1_T3_Ucnt(1),
      ADR5 => ALARMCLOCK_D1_T3_Ucnt(2),
      O => N161
    );
  ALARMCLOCK_D1_Udaycheck_3_Uday_3_LessThan_21_o4_SW0_SW2 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Ucnt(0),
      ADR1 => ALARMCLOCK_D1_T3_Ucnt(1),
      ADR2 => ALARMCLOCK_D1_T3_Ucnt(2),
      O => N162
    );
  ALARMCLOCK_D1_Udaycheck_3_Uday_3_LessThan_21_o4 : X_LUT6
    generic map(
      INIT => X"F3F3C0D1F3E2C0C0"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T2_Ucnt(2),
      ADR1 => ALARMCLOCK_D1_SD_Mmux_DayUout23,
      ADR2 => N162,
      ADR3 => ALARMCLOCK_D1_Udaycheck_3_Uday_3_LessThan_21_o3_782,
      ADR4 => N161,
      ADR5 => N160,
      O => ALARMCLOCK_D1_Udaycheck_3_Uday_3_LessThan_21_o1
    );
  ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Umin_3_mux_30_OUT31 : X_LUT6
    generic map(
      INIT => X"2111033312223000"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Ucnt(2),
      ADR1 => reset_112,
      ADR2 => ALARMCLOCK_D1_upDwn,
      ADR3 => ALARMCLOCK_D1_cntenT3,
      ADR4 => ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_B_0_Q,
      ADR5 => ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Umin_3_mux_30_OUT41,
      O => ALARMCLOCK_D1_T3_Ucnt_3_Umin_3_mux_30_OUT_2_Q
    );
  ALARMCLOCK_D1_T2_Mmux_Tcnt_3_Tmin_3_mux_27_OUT31 : X_LUT6
    generic map(
      INIT => X"5100045504555100"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => S_edit(5),
      ADR2 => S_edit(4),
      ADR3 => ALARMCLOCK_D1_cntenT2,
      ADR4 => ALARMCLOCK_D1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_A_2_Q,
      ADR5 => ALARMCLOCK_D1_T2_Mmux_Tcnt_3_Tmin_3_mux_27_OUT41,
      O => ALARMCLOCK_D1_T2_Tcnt_3_Tmin_3_mux_27_OUT_2_Q
    );
  ALARMCLOCK_D1_T2_Mmux_Tcnt_3_Tmin_3_mux_27_OUT411 : X_LUT6
    generic map(
      INIT => X"F0F1707100110011"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T2_Tcnt(1),
      ADR1 => ALARMCLOCK_D1_T2_Tcnt(0),
      ADR2 => ALARMCLOCK_D1_upDwn,
      ADR3 => ALARMCLOCK_D1_T2_Umin_3_Tmin_3_AND_21_o_543,
      ADR4 => ALARMCLOCK_D1_T2_Tmax_3_Umax_3_OR_92_o_544,
      ADR5 => ALARMCLOCK_D1_cntenT2,
      O => ALARMCLOCK_D1_T2_Mmux_Tcnt_3_Tmin_3_mux_27_OUT41
    );
  ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT411_SW1 : X_LUT6
    generic map(
      INIT => X"EFCCFFEFFFEFFFEF"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T1_Ucnt(0),
      ADR1 => ALARMCLOCK_T1_T1_Ucnt(1),
      ADR2 => N28,
      ADR3 => N38,
      ADR4 => ALARMCLOCK_T1_upDwn,
      ADR5 => ALARMCLOCK_T1_cntenT1,
      O => N165
    );
  ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_A1 : X_LUT6
    generic map(
      INIT => X"FFBBCE8AFFFF0A0A"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T2_Ucnt(0),
      ADR1 => ALARMCLOCK_D1_upDwn,
      ADR2 => ALARMCLOCK_D1_T2_Umin_3_Tmin_3_AND_21_o_543,
      ADR3 => ALARMCLOCK_D1_T2_Tmax_3_Umax_3_OR_92_o_544,
      ADR4 => N168,
      ADR5 => ALARMCLOCK_D1_cntenT2,
      O => ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q
    );
  ALARMCLOCK_D1_T3_Umin_3_Tmin_3_AND_21_o_SW1 : X_LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Tcnt(1),
      ADR1 => ALARMCLOCK_D1_T3_Ucnt(3),
      ADR2 => ALARMCLOCK_D1_T3_Ucnt(0),
      ADR3 => ALARMCLOCK_D1_T3_Ucnt(1),
      ADR4 => ALARMCLOCK_D1_T3_Ucnt(2),
      O => N170
    );
  ALARMCLOCK_D1_T3_Umin_3_Tmin_3_AND_21_o_SW2 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Tcnt(1),
      ADR1 => ALARMCLOCK_D1_T3_Ucnt(3),
      ADR2 => ALARMCLOCK_D1_T3_Ucnt(2),
      O => N172
    );
  ALARMCLOCK_D1_T3_Tmax_3_Umax_3_OR_92_o6_SW2 : X_LUT6
    generic map(
      INIT => X"FF0FFF2FFF0FFF0F"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Ucnt(0),
      ADR1 => ALARMCLOCK_D1_T3_Ucnt(1),
      ADR2 => S_edit(5),
      ADR3 => S_edit(4),
      ADR4 => N70,
      ADR5 => N172,
      O => N145
    );
  ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Umin_3_mux_30_OUT411 : X_LUT6
    generic map(
      INIT => X"D000DD00DD00DF0F"
    )
    port map (
      ADR0 => S_edit(5),
      ADR1 => S_edit(4),
      ADR2 => ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q_547,
      ADR3 => ALARMCLOCK_D1_cntenT2,
      ADR4 => ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_1_Q,
      ADR5 => ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q,
      O => ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Umin_3_mux_30_OUT41
    );
  ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Umin_3_mux_30_OUT21 : X_LUT6
    generic map(
      INIT => X"5155040054500105"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_D1_upDwn,
      ADR2 => ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q_547,
      ADR3 => ALARMCLOCK_D1_cntenT2,
      ADR4 => ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_1_Q,
      ADR5 => ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q,
      O => ALARMCLOCK_D1_T2_Ucnt_3_Umin_3_mux_30_OUT_1_Q
    );
  ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_A21 : X_LUT6
    generic map(
      INIT => X"0C08AEAAFFAAFFAA"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T2_Ucnt(1),
      ADR1 => S_edit(5),
      ADR2 => S_edit(4),
      ADR3 => ALARMCLOCK_D1_T2_Umin_3_Tmin_3_AND_21_o_543,
      ADR4 => ALARMCLOCK_D1_T2_Tmax_3_Umax_3_OR_92_o_544,
      ADR5 => ALARMCLOCK_D1_cntenT2,
      O => ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_1_Q
    );
  ALARMCLOCK_D1_Mmux_cntenT314_SW3 : X_LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_Mmux_cntenT31,
      ADR1 => ALARMCLOCK_D1_Mmux_cntenT312_780,
      ADR2 => ALARMCLOCK_T1_cntenT3,
      O => N174
    );
  ALARMCLOCK_D1_Mmux_cntenT314_SW4 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => S_edit(5),
      ADR1 => S_edit(4),
      O => N175
    );
  ALARMCLOCK_D1_Mmux_cntenT111 : X_LUT6
    generic map(
      INIT => X"2020313120203120"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_present_state_FSM_FFd1_591,
      ADR1 => ALARMCLOCK_D1_present_state_FSM_FFd2_590,
      ADR2 => N175,
      ADR3 => ALARMCLOCK_D1_Mmux_cntenT311_779,
      ADR4 => N76,
      ADR5 => N174,
      O => ALARMCLOCK_D1_cntenT2
    );
  ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT21_SW4 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Ucnt(1),
      ADR1 => ALARMCLOCK_D1_T1_Ucnt(0),
      O => N178
    );
  ALARMCLOCK_D1_T1_Mmux_Tcnt_3_Tmin_3_mux_27_OUT411 : X_LUT6
    generic map(
      INIT => X"F0F1707100110011"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Tcnt(1),
      ADR1 => ALARMCLOCK_D1_T1_Tcnt(0),
      ADR2 => ALARMCLOCK_D1_upDwn,
      ADR3 => ALARMCLOCK_D1_T1_Umin_3_Tmin_3_AND_21_o_518,
      ADR4 => ALARMCLOCK_D1_T1_Tmax_3_Umax_3_OR_92_o_519,
      ADR5 => ALARMCLOCK_D1_cntenT1,
      O => ALARMCLOCK_D1_T1_Mmux_Tcnt_3_Tmin_3_mux_27_OUT41
    );
  ALARMCLOCK_T1_T2_Mmux_Ucnt_3_Umin_3_mux_30_OUT411 : X_LUT6
    generic map(
      INIT => X"C0C0C0C040C0D5FF"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T2_Ucnt(1),
      ADR1 => ALARMCLOCK_T1_upDwn,
      ADR2 => ALARMCLOCK_T1_cntenT2_437,
      ADR3 => ALARMCLOCK_T1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_B_0_Q,
      ADR4 => ALARMCLOCK_T1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q,
      ADR5 => ALARMCLOCK_T1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q,
      O => ALARMCLOCK_T1_T2_Mmux_Ucnt_3_Umin_3_mux_30_OUT41_463
    );
  ALARMCLOCK_D1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_2_1_SW0 : X_LUT6
    generic map(
      INIT => X"CF45EF650F05AFA5"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Tcnt(2),
      ADR1 => N158,
      ADR2 => ALARMCLOCK_D1_upDwn,
      ADR3 => ALARMCLOCK_D1_T1_Umin_3_Tmin_3_AND_21_o_518,
      ADR4 => ALARMCLOCK_D1_T1_Tmax_3_Umax_3_OR_92_o_519,
      ADR5 => ALARMCLOCK_D1_Mmux_cntenT311_779,
      O => N190
    );
  ALARMCLOCK_D1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_2_1_SW2 : X_LUT6
    generic map(
      INIT => X"CF45EF65FF55FF55"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Tcnt(2),
      ADR1 => N158,
      ADR2 => ALARMCLOCK_D1_upDwn,
      ADR3 => ALARMCLOCK_D1_T1_Umin_3_Tmin_3_AND_21_o_518,
      ADR4 => ALARMCLOCK_D1_T1_Tmax_3_Umax_3_OR_92_o_519,
      ADR5 => ALARMCLOCK_D1_Mmux_cntenT311_779,
      O => N192
    );
  ALARMCLOCK_D1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_2_1 : X_LUT6
    generic map(
      INIT => X"CDCDC8C8CDC8CDC8"
    )
    port map (
      ADR0 => N74,
      ADR1 => N191,
      ADR2 => N76,
      ADR3 => N190,
      ADR4 => N192,
      ADR5 => N156,
      O => ALARMCLOCK_D1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_2_Q
    );
  ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Umin_3_mux_30_OUT31 : X_LUT6
    generic map(
      INIT => X"4444144444444441"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_2_Q,
      ADR2 => ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_1_Q,
      ADR3 => ALARMCLOCK_T1_T3_upDwn_cnten_AND_12_o,
      ADR4 => ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q,
      ADR5 => ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q,
      O => ALARMCLOCK_T1_T3_Ucnt_3_Umin_3_mux_30_OUT_2_Q
    );
  ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_SW1 : X_LUT6
    generic map(
      INIT => X"0F01FFF1FF11FF11"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Ucnt(1),
      ADR1 => N40,
      ADR2 => ALARMCLOCK_D1_upDwn,
      ADR3 => ALARMCLOCK_D1_T1_Umin_3_Tmin_3_AND_21_o_518,
      ADR4 => ALARMCLOCK_D1_T1_Tmax_3_Umax_3_OR_92_o_519,
      ADR5 => ALARMCLOCK_D1_cntenT1,
      O => N154
    );
  ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_A1 : X_LUT6
    generic map(
      INIT => X"0000AAAAFFABFFAB"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T1_Ucnt(0),
      ADR1 => ALARMCLOCK_T1_T1_Ucnt(1),
      ADR2 => N28,
      ADR3 => ALARMCLOCK_T1_T1_Umin_3_Tmin_3_AND_21_o_494,
      ADR4 => ALARMCLOCK_T1_T1_Tmax_3_Umax_3_OR_92_o_493,
      ADR5 => ALARMCLOCK_T1_T1_upDwn_cnten_AND_12_o,
      O => ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q
    );
  ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_A1 : X_LUT6
    generic map(
      INIT => X"55555501FF55FF01"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T3_upDwn_cnten_AND_12_o,
      ADR1 => ALARMCLOCK_A1_T3_Ucnt(3),
      ADR2 => N106,
      ADR3 => ALARMCLOCK_A1_T3_Ucnt(0),
      ADR4 => ALARMCLOCK_A1_T3_Umin_3_Tmin_3_AND_21_o,
      ADR5 => ALARMCLOCK_A1_T3_Tmax_3_Umax_3_OR_92_o,
      O => ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q
    );
  ALARMCLOCK_A1_Mmux_cntenT111 : X_LUT4
    generic map(
      INIT => X"4440"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_present_state_FSM_FFd1_684,
      ADR1 => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      ADR2 => S_edit(8),
      ADR3 => S_edit(7),
      O => ALARMCLOCK_A1_cntenT1
    );
  ALARMCLOCK_A1_Mmux_cntenT211 : X_LUT4
    generic map(
      INIT => X"4440"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      ADR1 => ALARMCLOCK_A1_present_state_FSM_FFd1_684,
      ADR2 => S_edit(8),
      ADR3 => S_edit(7),
      O => ALARMCLOCK_A1_cntenT2
    );
  ALARMCLOCK_A1_Mmux_cntenT311 : X_LUT4
    generic map(
      INIT => X"8880"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_present_state_FSM_FFd1_684,
      ADR1 => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      ADR2 => S_edit(8),
      ADR3 => S_edit(7),
      O => ALARMCLOCK_A1_cntenT3
    );
  ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT11 : X_LUT6
    generic map(
      INIT => X"5140550004150055"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_T1_upDwn,
      ADR2 => ALARMCLOCK_T1_T1_Tmax_3_Umax_3_OR_92_o_493,
      ADR3 => N194,
      ADR4 => ALARMCLOCK_T1_cntenT1,
      ADR5 => ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q,
      O => ALARMCLOCK_T1_T1_Ucnt_3_Umin_3_mux_30_OUT_0_Q
    );
  ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_SW1 : X_LUT5
    generic map(
      INIT => X"FF000E0E"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Ucnt(2),
      ADR1 => N64,
      ADR2 => ALARMCLOCK_D1_T3_Umin_3_Tmin_3_AND_21_o_566,
      ADR3 => ALARMCLOCK_D1_T3_Tmax_3_Umax_3_OR_92_o,
      ADR4 => ALARMCLOCK_D1_T3_upDwn_cnten_AND_12_o,
      O => N196
    );
  ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Umin_3_mux_30_OUT411 : X_LUT6
    generic map(
      INIT => X"88FF00880F0F0F0F"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_upDwn,
      ADR1 => ALARMCLOCK_D1_cntenT3,
      ADR2 => ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_1_Q,
      ADR3 => ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q,
      ADR4 => N196,
      ADR5 => ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_1_Q,
      O => ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Umin_3_mux_30_OUT41
    );
  ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q : X_LUT6
    generic map(
      INIT => X"0F01AFA1FF11FF11"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T2_Ucnt(3),
      ADR1 => N198,
      ADR2 => ALARMCLOCK_D1_upDwn,
      ADR3 => ALARMCLOCK_D1_T2_Umin_3_Tmin_3_AND_21_o_543,
      ADR4 => ALARMCLOCK_D1_T2_Tmax_3_Umax_3_OR_92_o_544,
      ADR5 => ALARMCLOCK_D1_cntenT2,
      O => ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q_548
    );
  ALARMCLOCK_T1_T2_Mmux_Tcnt_3_Tmin_3_mux_27_OUT31 : X_LUT6
    generic map(
      INIT => X"0022010133113232"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T2_Tcnt(2),
      ADR1 => reset_112,
      ADR2 => ALARMCLOCK_T1_T2_Umin_3_Tmin_3_AND_21_o_472,
      ADR3 => ALARMCLOCK_T1_T2_Tmax_3_Umax_3_OR_92_o_471,
      ADR4 => ALARMCLOCK_T1_T2_upDwn_cnten_AND_12_o,
      ADR5 => ALARMCLOCK_T1_T2_Mmux_Tcnt_3_Tmin_3_mux_27_OUT41,
      O => ALARMCLOCK_T1_T2_Tcnt_3_Tmin_3_mux_27_OUT_2_Q
    );
  ALARMCLOCK_T1_T1_Mmux_Tcnt_3_Tmin_3_mux_27_OUT31 : X_LUT6
    generic map(
      INIT => X"0022010133113232"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T1_Tcnt(2),
      ADR1 => reset_112,
      ADR2 => ALARMCLOCK_T1_T1_Umin_3_Tmin_3_AND_21_o_494,
      ADR3 => ALARMCLOCK_T1_T1_Tmax_3_Umax_3_OR_92_o_493,
      ADR4 => ALARMCLOCK_T1_T1_upDwn_cnten_AND_12_o,
      ADR5 => ALARMCLOCK_T1_T1_Mmux_Tcnt_3_Tmin_3_mux_27_OUT41,
      O => ALARMCLOCK_T1_T1_Tcnt_3_Tmin_3_mux_27_OUT_2_Q
    );
  ALARMCLOCK_T1_T3_Mmux_Tcnt_3_Tmin_3_mux_27_OUT21 : X_LUT6
    generic map(
      INIT => X"4144444411141414"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_T1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_1_Q,
      ADR2 => ALARMCLOCK_T1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_Q,
      ADR3 => ALARMCLOCK_T1_T3_Tcnt(0),
      ADR4 => ALARMCLOCK_T1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_B_0_Q,
      ADR5 => ALARMCLOCK_T1_T3_upDwn_cnten_AND_12_o,
      O => ALARMCLOCK_T1_T3_Tcnt_3_Tmin_3_mux_27_OUT_1_Q
    );
  ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Umin_3_mux_30_OUT41 : X_LUT6
    generic map(
      INIT => X"4444144414441111"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q_443,
      ADR2 => ALARMCLOCK_T1_T3_Ucnt(2),
      ADR3 => ALARMCLOCK_T1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_B_0_Q,
      ADR4 => ALARMCLOCK_T1_T3_upDwn_cnten_AND_12_o,
      ADR5 => ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Umin_3_mux_30_OUT41_442,
      O => ALARMCLOCK_T1_T3_Ucnt_3_Umin_3_mux_30_OUT_3_Q
    );
  ALARMCLOCK_T1_T2_Mmux_Ucnt_3_Umin_3_mux_30_OUT41 : X_LUT6
    generic map(
      INIT => X"4444144414441111"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_T1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q_465,
      ADR2 => ALARMCLOCK_T1_T2_Ucnt(2),
      ADR3 => ALARMCLOCK_T1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_B_0_Q,
      ADR4 => ALARMCLOCK_T1_T2_upDwn_cnten_AND_12_o,
      ADR5 => ALARMCLOCK_T1_T2_Mmux_Ucnt_3_Umin_3_mux_30_OUT41_463,
      O => ALARMCLOCK_T1_T2_Ucnt_3_Umin_3_mux_30_OUT_3_Q
    );
  ALARMCLOCK_D1_Mmux_cntenT312_SW0 : X_LUT5
    generic map(
      INIT => X"008088A8"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Tcnt(1),
      ADR1 => ALARMCLOCK_D1_T3_Tcnt(0),
      ADR2 => ALARMCLOCK_D1_T3_Ucnt(3),
      ADR3 => ALARMCLOCK_D1_setMaxDay_3_Q,
      ADR4 => ALARMCLOCK_D1_setMaxDay_4_Q,
      O => N204
    );
  ALARMCLOCK_D1_Mmux_cntenT312_SW1 : X_LUT5
    generic map(
      INIT => X"8088A8AA"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Tcnt(1),
      ADR1 => ALARMCLOCK_D1_T3_Tcnt(0),
      ADR2 => ALARMCLOCK_D1_T3_Ucnt(3),
      ADR3 => ALARMCLOCK_D1_setMaxDay_3_Q,
      ADR4 => ALARMCLOCK_D1_setMaxDay_4_Q,
      O => N205
    );
  ALARMCLOCK_D1_Mmux_cntenT314 : X_LUT6
    generic map(
      INIT => X"FFFEFBFAFFEEBBAA"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_Mmux_cntenT31,
      ADR1 => ALARMCLOCK_D1_Udaycheck_3_Uday_3_LessThan_21_o1,
      ADR2 => ALARMCLOCK_D1_Mmux_cntenT312_780,
      ADR3 => N204,
      ADR4 => N205,
      ADR5 => ALARMCLOCK_T1_cntenT3,
      O => ALARMCLOCK_D1_cntenT3
    );
  ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q : X_LUT6
    generic map(
      INIT => X"0000AAAA0F110F11"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Ucnt(3),
      ADR1 => N66,
      ADR2 => ALARMCLOCK_D1_setMaxDay_3_Q,
      ADR3 => ALARMCLOCK_D1_T3_Umin_3_Tmin_3_AND_21_o_566,
      ADR4 => ALARMCLOCK_D1_T3_Tmax_3_Umax_3_OR_92_o,
      ADR5 => ALARMCLOCK_D1_T3_upDwn_cnten_AND_12_o,
      O => ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q_576
    );
  ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_2_1 : X_LUT6
    generic map(
      INIT => X"3399FF553939F5F5"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Tcnt(2),
      ADR1 => ALARMCLOCK_D1_upDwn,
      ADR2 => ALARMCLOCK_D1_T3_Umin_3_Tmin_3_AND_21_o_566,
      ADR3 => ALARMCLOCK_D1_T3_Tmax_3_Umax_3_OR_92_o,
      ADR4 => ALARMCLOCK_D1_cntenT3,
      ADR5 => ALARMCLOCK_D1_T3_upDwn_cnten_AND_12_o,
      O => ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_2_Q
    );
  ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_2_1 : X_LUT6
    generic map(
      INIT => X"3399FF553939F5F5"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Ucnt(2),
      ADR1 => ALARMCLOCK_D1_upDwn,
      ADR2 => ALARMCLOCK_D1_T3_Umin_3_Tmin_3_AND_21_o_566,
      ADR3 => ALARMCLOCK_D1_T3_Tmax_3_Umax_3_OR_92_o,
      ADR4 => ALARMCLOCK_D1_cntenT3,
      ADR5 => ALARMCLOCK_D1_T3_upDwn_cnten_AND_12_o,
      O => ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_2_Q
    );
  ALARMCLOCK_D1_T1_upDwn_cnten_AND_12_o1_SW0 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Ucnt(0),
      ADR1 => ALARMCLOCK_D1_T1_Ucnt(2),
      O => N207
    );
  ALARMCLOCK_D1_T1_n0127 : X_LUT6
    generic map(
      INIT => X"0001000000000000"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Tmax_3_Umax_3_OR_92_o_519,
      ADR1 => N44,
      ADR2 => ALARMCLOCK_D1_T1_Ucnt(1),
      ADR3 => N207,
      ADR4 => ALARMCLOCK_D1_upDwn,
      ADR5 => ALARMCLOCK_D1_cntenT1,
      O => ALARMCLOCK_D1_T1_n0127_514
    );
  ALARMCLOCK_D1_T2_upDwn_cnten_AND_12_o1_SW2 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T2_Ucnt(0),
      ADR1 => ALARMCLOCK_D1_T2_Ucnt(1),
      O => N209
    );
  ALARMCLOCK_D1_T2_n0127 : X_LUT6
    generic map(
      INIT => X"0000020000000000"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T2_Ucnt(3),
      ADR1 => N209,
      ADR2 => N56,
      ADR3 => ALARMCLOCK_D1_upDwn,
      ADR4 => ALARMCLOCK_D1_T2_Tmax_3_Umax_3_OR_92_o_544,
      ADR5 => ALARMCLOCK_D1_cntenT2,
      O => ALARMCLOCK_D1_T2_n0127_537
    );
  ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q : X_LUT6
    generic map(
      INIT => X"0001A0A100110011"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Ucnt(3),
      ADR1 => N211,
      ADR2 => ALARMCLOCK_D1_upDwn,
      ADR3 => ALARMCLOCK_D1_T1_Umin_3_Tmin_3_AND_21_o_518,
      ADR4 => ALARMCLOCK_D1_T1_Tmax_3_Umax_3_OR_92_o_519,
      ADR5 => ALARMCLOCK_D1_cntenT1,
      O => ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q_525
    );
  ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_A1 : X_LUT6
    generic map(
      INIT => X"0F0EAFAEFFEEFFEE"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Ucnt(0),
      ADR1 => N213,
      ADR2 => ALARMCLOCK_D1_upDwn,
      ADR3 => ALARMCLOCK_D1_T1_Umin_3_Tmin_3_AND_21_o_518,
      ADR4 => ALARMCLOCK_D1_T1_Tmax_3_Umax_3_OR_92_o_519,
      ADR5 => ALARMCLOCK_D1_cntenT1,
      O => ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q
    );
  ALARMCLOCK_D1_T1_Ucnt_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => sysclk_BUFGP,
      I => ALARMCLOCK_D1_T1_Ucnt_2_rstpot_944,
      O => ALARMCLOCK_D1_T1_Ucnt(2),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  ALARMCLOCK_D1_T3_upDwn_cnten_AND_12_o1 : X_LUT6
    generic map(
      INIT => X"DDDDDDD0DDDDD0D0"
    )
    port map (
      ADR0 => S_edit(5),
      ADR1 => S_edit(4),
      ADR2 => ALARMCLOCK_D1_Mmux_cntenT31,
      ADR3 => ALARMCLOCK_D1_Mmux_cntenT312_780,
      ADR4 => ALARMCLOCK_D1_Mmux_cntenT311_779,
      ADR5 => ALARMCLOCK_T1_cntenT3,
      O => ALARMCLOCK_D1_T3_upDwn_cnten_AND_12_o
    );
  ALARMCLOCK_D1_Mmux_cntenT11_SW2 : X_LUT6
    generic map(
      INIT => X"AAA8FFFCFAA8FFFC"
    )
    port map (
      ADR0 => N157,
      ADR1 => N180,
      ADR2 => ALARMCLOCK_D1_T1_Ucnt(1),
      ADR3 => ALARMCLOCK_D1_T1_Ucnt(0),
      ADR4 => ALARMCLOCK_D1_upDwn,
      ADR5 => ALARMCLOCK_D1_T1_Tmax_3_Umax_3_OR_92_o_519,
      O => N216
    );
  ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT411 : X_LUT6
    generic map(
      INIT => X"01EF01EF00EE11FF"
    )
    port map (
      ADR0 => N74,
      ADR1 => N76,
      ADR2 => N217,
      ADR3 => N216,
      ADR4 => N215,
      ADR5 => N156,
      O => ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT41
    );
  ALARMCLOCK_D1_Mmux_cntenT11_SW4 : X_LUT6
    generic map(
      INIT => X"FF75EF65FFF5AFA5"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Ucnt(2),
      ADR1 => N158,
      ADR2 => ALARMCLOCK_D1_upDwn,
      ADR3 => ALARMCLOCK_D1_T1_Umin_3_Tmin_3_AND_21_o_518,
      ADR4 => ALARMCLOCK_D1_T1_Tmax_3_Umax_3_OR_92_o_519,
      ADR5 => ALARMCLOCK_D1_Mmux_cntenT311_779,
      O => N219
    );
  ALARMCLOCK_D1_Mmux_cntenT11_SW6 : X_LUT6
    generic map(
      INIT => X"FF75EF65FF55FF55"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Ucnt(2),
      ADR1 => N158,
      ADR2 => ALARMCLOCK_D1_upDwn,
      ADR3 => ALARMCLOCK_D1_T1_Umin_3_Tmin_3_AND_21_o_518,
      ADR4 => ALARMCLOCK_D1_T1_Tmax_3_Umax_3_OR_92_o_519,
      ADR5 => ALARMCLOCK_D1_Mmux_cntenT311_779,
      O => N221
    );
  ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_2_1 : X_LUT6
    generic map(
      INIT => X"CDCDC8C8CDC8CDC8"
    )
    port map (
      ADR0 => N74,
      ADR1 => N220,
      ADR2 => N76,
      ADR3 => N219,
      ADR4 => N221,
      ADR5 => N156,
      O => ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_2_Q
    );
  ALARMCLOCK_D1_T2_Mmux_Tcnt_3_Tmin_3_mux_27_OUT11 : X_LUT6
    generic map(
      INIT => X"0301131133113311"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T2_Tcnt(0),
      ADR1 => reset_112,
      ADR2 => ALARMCLOCK_D1_upDwn,
      ADR3 => ALARMCLOCK_D1_T2_Umin_3_Tmin_3_AND_21_o_543,
      ADR4 => ALARMCLOCK_D1_T2_Tmax_3_Umax_3_OR_92_o_544,
      ADR5 => ALARMCLOCK_D1_cntenT2,
      O => ALARMCLOCK_D1_T2_Tcnt_3_Tmin_3_mux_27_OUT_0_Q
    );
  ALARMCLOCK_D1_T1_Mmux_Tcnt_3_Tmin_3_mux_27_OUT11 : X_LUT6
    generic map(
      INIT => X"FFFDDFDDFFDDFFDD"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Tcnt(0),
      ADR1 => reset_112,
      ADR2 => ALARMCLOCK_D1_upDwn,
      ADR3 => ALARMCLOCK_D1_T1_Umin_3_Tmin_3_AND_21_o_518,
      ADR4 => ALARMCLOCK_D1_T1_Tmax_3_Umax_3_OR_92_o_519,
      ADR5 => ALARMCLOCK_D1_cntenT1,
      O => ALARMCLOCK_D1_T1_Tcnt_3_Tmin_3_mux_27_OUT_0_Q
    );
  ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT411 : X_LUT5
    generic map(
      INIT => X"F0F5C0C5"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T1_Umin_3_Tmin_3_AND_21_o_494,
      ADR1 => ALARMCLOCK_T1_T1_Tmax_3_Umax_3_OR_92_o_493,
      ADR2 => ALARMCLOCK_T1_T1_upDwn_cnten_AND_12_o,
      ADR3 => N165,
      ADR4 => N166,
      O => ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT41_485
    );
  ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q : X_LUT6
    generic map(
      INIT => X"00AA00AAFFFF5454"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T3_Ucnt(3),
      ADR1 => ALARMCLOCK_T1_T3_Ucnt(0),
      ADR2 => N8,
      ADR3 => ALARMCLOCK_T1_T3_Tmax_3_Umax_3_OR_92_o,
      ADR4 => ALARMCLOCK_T1_T3_Umin_3_Tmin_3_AND_21_o,
      ADR5 => ALARMCLOCK_T1_T3_upDwn_cnten_AND_12_o,
      O => ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q_443
    );
  ALARMCLOCK_T1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q : X_LUT6
    generic map(
      INIT => X"0000AAAA00450045"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T2_Ucnt(3),
      ADR1 => ALARMCLOCK_T1_T2_Ucnt(1),
      ADR2 => N24,
      ADR3 => ALARMCLOCK_T1_T2_Umin_3_Tmin_3_AND_21_o_472,
      ADR4 => ALARMCLOCK_T1_T2_Tmax_3_Umax_3_OR_92_o_471,
      ADR5 => ALARMCLOCK_T1_T2_upDwn_cnten_AND_12_o,
      O => ALARMCLOCK_T1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q_465
    );
  ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q : X_LUT6
    generic map(
      INIT => X"0000AAAA00450045"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T1_Ucnt(3),
      ADR1 => ALARMCLOCK_T1_T1_Ucnt(1),
      ADR2 => N36,
      ADR3 => ALARMCLOCK_T1_T1_Umin_3_Tmin_3_AND_21_o_494,
      ADR4 => ALARMCLOCK_T1_T1_Tmax_3_Umax_3_OR_92_o_493,
      ADR5 => ALARMCLOCK_T1_T1_upDwn_cnten_AND_12_o,
      O => ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q_487
    );
  ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_1_1 : X_LUT6
    generic map(
      INIT => X"3399FF553939F5F5"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T1_Ucnt(1),
      ADR1 => ALARMCLOCK_T1_upDwn,
      ADR2 => ALARMCLOCK_T1_T1_Umin_3_Tmin_3_AND_21_o_494,
      ADR3 => ALARMCLOCK_T1_T1_Tmax_3_Umax_3_OR_92_o_493,
      ADR4 => ALARMCLOCK_T1_cntenT1,
      ADR5 => ALARMCLOCK_T1_T1_upDwn_cnten_AND_12_o,
      O => ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_1_Q
    );
  ALARMCLOCK_D1_T2_upDwn_cnten_AND_12_o1_SW0 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T2_Ucnt(3),
      ADR1 => ALARMCLOCK_D1_T2_Ucnt(2),
      ADR2 => ALARMCLOCK_D1_T2_Umin_3_Tmin_3_AND_21_o_543,
      ADR3 => ALARMCLOCK_D1_T2_Ucnt(1),
      O => N168
    );
  ALARMCLOCK_T1_T2_Mmux_Ucnt_3_Umin_3_mux_30_OUT31 : X_LUT6
    generic map(
      INIT => X"0022313133110202"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T2_Ucnt(2),
      ADR1 => reset_112,
      ADR2 => ALARMCLOCK_T1_T2_Umin_3_Tmin_3_AND_21_o_472,
      ADR3 => ALARMCLOCK_T1_T2_Tmax_3_Umax_3_OR_92_o_471,
      ADR4 => ALARMCLOCK_T1_T2_upDwn_cnten_AND_12_o,
      ADR5 => ALARMCLOCK_T1_T2_Mmux_Ucnt_3_Umin_3_mux_30_OUT41_463,
      O => ALARMCLOCK_T1_T2_Ucnt_3_Umin_3_mux_30_OUT_2_Q
    );
  ALARMCLOCK_D1_T1_Ucnt_2_rstpot : X_LUT6
    generic map(
      INIT => X"00000000FCCFEEEE"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Ucnt(2),
      ADR1 => reset_112,
      ADR2 => ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT41,
      ADR3 => ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_2_Q,
      ADR4 => ALARMCLOCK_D1_cntenT1,
      ADR5 => ALARMCLOCK_D1_T1_n0127_514,
      O => ALARMCLOCK_D1_T1_Ucnt_2_rstpot_944
    );
  ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Umin_3_mux_30_OUT11 : X_LUT5
    generic map(
      INIT => X"FDF0F2FF"
    )
    port map (
      ADR0 => S_edit(5),
      ADR1 => S_edit(4),
      ADR2 => reset_112,
      ADR3 => ALARMCLOCK_D1_cntenT3,
      ADR4 => ALARMCLOCK_D1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q_573,
      O => ALARMCLOCK_D1_T3_Ucnt_3_Umin_3_mux_30_OUT_0_Q
    );
  ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT41 : X_LUT6
    generic map(
      INIT => X"4055150000405515"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_T1_upDwn,
      ADR2 => ALARMCLOCK_T1_cntenT1,
      ADR3 => ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_2_Q,
      ADR4 => ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q_487,
      ADR5 => ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT41_485,
      O => ALARMCLOCK_T1_T1_Ucnt_3_Umin_3_mux_30_OUT_3_Q
    );
  ALARMCLOCK_D1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_B11 : X_LUT5
    generic map(
      INIT => X"02DF0F0F"
    )
    port map (
      ADR0 => S_edit(5),
      ADR1 => S_edit(4),
      ADR2 => ALARMCLOCK_D1_T2_Umin_3_Tmin_3_AND_21_o_543,
      ADR3 => ALARMCLOCK_D1_T2_Tmax_3_Umax_3_OR_92_o_544,
      ADR4 => ALARMCLOCK_D1_cntenT2,
      O => ALARMCLOCK_D1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_B_0_Q
    );
  ALARMCLOCK_D1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_A31 : X_LUT6
    generic map(
      INIT => X"0008A2AA00AA00AA"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T2_Tcnt(2),
      ADR1 => S_edit(5),
      ADR2 => S_edit(4),
      ADR3 => ALARMCLOCK_D1_T2_Umin_3_Tmin_3_AND_21_o_543,
      ADR4 => ALARMCLOCK_D1_T2_Tmax_3_Umax_3_OR_92_o_544,
      ADR5 => ALARMCLOCK_D1_cntenT2,
      O => ALARMCLOCK_D1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_A_2_Q
    );
  ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_A31 : X_LUT6
    generic map(
      INIT => X"0008A2AA00AA00AA"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T2_Ucnt(2),
      ADR1 => S_edit(5),
      ADR2 => S_edit(4),
      ADR3 => ALARMCLOCK_D1_T2_Umin_3_Tmin_3_AND_21_o_543,
      ADR4 => ALARMCLOCK_D1_T2_Tmax_3_Umax_3_OR_92_o_544,
      ADR5 => ALARMCLOCK_D1_cntenT2,
      O => ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_2_Q
    );
  ALARMCLOCK_D1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_3_1 : X_LUT6
    generic map(
      INIT => X"0004A2A600550055"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Tcnt(3),
      ADR1 => S_edit(5),
      ADR2 => S_edit(4),
      ADR3 => ALARMCLOCK_D1_T1_Umin_3_Tmin_3_AND_21_o_518,
      ADR4 => ALARMCLOCK_D1_T1_Tmax_3_Umax_3_OR_92_o_519,
      ADR5 => ALARMCLOCK_D1_cntenT1,
      O => ALARMCLOCK_D1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_3_Q
    );
  ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_A31 : X_LUT6
    generic map(
      INIT => X"F3FBA2AA00AA00AA"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Ucnt(2),
      ADR1 => S_edit(5),
      ADR2 => S_edit(4),
      ADR3 => ALARMCLOCK_D1_T1_Umin_3_Tmin_3_AND_21_o_518,
      ADR4 => ALARMCLOCK_D1_T1_Tmax_3_Umax_3_OR_92_o_519,
      ADR5 => ALARMCLOCK_D1_cntenT1,
      O => ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_2_Q
    );
  ALARMCLOCK_D1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_B11 : X_LUT5
    generic map(
      INIT => X"02DF0F0F"
    )
    port map (
      ADR0 => S_edit(5),
      ADR1 => S_edit(4),
      ADR2 => ALARMCLOCK_D1_T1_Umin_3_Tmin_3_AND_21_o_518,
      ADR3 => ALARMCLOCK_D1_T1_Tmax_3_Umax_3_OR_92_o_519,
      ADR4 => ALARMCLOCK_D1_cntenT1,
      O => ALARMCLOCK_D1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_B_0_Q
    );
  ALARMCLOCK_D1_T1_n0142_inv2 : X_LUT6
    generic map(
      INIT => X"FFFFFDF0F0F0F0F0"
    )
    port map (
      ADR0 => S_edit(5),
      ADR1 => S_edit(4),
      ADR2 => reset_112,
      ADR3 => ALARMCLOCK_D1_T1_Tmax_3_Umax_3_OR_92_o_519,
      ADR4 => ALARMCLOCK_D1_T1_n0142_inv1_765,
      ADR5 => ALARMCLOCK_D1_cntenT1,
      O => ALARMCLOCK_D1_T1_n0142_inv
    );
  ALARMCLOCK_D1_T2_n0142_inv2 : X_LUT6
    generic map(
      INIT => X"FFFFFDF0F0F0F0F0"
    )
    port map (
      ADR0 => S_edit(5),
      ADR1 => S_edit(4),
      ADR2 => reset_112,
      ADR3 => ALARMCLOCK_D1_T2_Tmax_3_Umax_3_OR_92_o_544,
      ADR4 => ALARMCLOCK_D1_T2_n0142_inv1_769,
      ADR5 => ALARMCLOCK_D1_cntenT2,
      O => ALARMCLOCK_D1_T2_n0142_inv
    );
  ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_3_1 : X_LUT3
    generic map(
      INIT => X"0D"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Tcnt(3),
      ADR1 => ALARMCLOCK_D1_T3_Umin_3_Tmin_3_AND_21_o_566,
      ADR2 => ALARMCLOCK_D1_T3_upDwn_cnten_AND_12_o,
      O => ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_3_Q
    );
  ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_A21 : X_LUT6
    generic map(
      INIT => X"0C08AEAAFFAAFFAA"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Tcnt(1),
      ADR1 => S_edit(5),
      ADR2 => S_edit(4),
      ADR3 => ALARMCLOCK_D1_T3_Umin_3_Tmin_3_AND_21_o_566,
      ADR4 => ALARMCLOCK_D1_T3_Tmax_3_Umax_3_OR_92_o,
      ADR5 => ALARMCLOCK_D1_cntenT3,
      O => ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_A_1_Q
    );
  ALARMCLOCK_D1_T3_Tmax_3_Umax_3_OR_92_o6_SW1 : X_LUT6
    generic map(
      INIT => X"F3A2F3A2F3A2F3A6"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T3_Tcnt(2),
      ADR1 => S_edit(5),
      ADR2 => S_edit(4),
      ADR3 => ALARMCLOCK_D1_T3_Tcnt(3),
      ADR4 => ALARMCLOCK_D1_T3_Tcnt(0),
      ADR5 => N170,
      O => N144
    );
  ALARMCLOCK_D1_Mmux_cntenT313 : X_LUT6
    generic map(
      INIT => X"1111101101000000"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_present_state_FSM_FFd1_591,
      ADR1 => ALARMCLOCK_D1_present_state_FSM_FFd2_590,
      ADR2 => S_edit(1),
      ADR3 => S_edit(2),
      ADR4 => ALARMCLOCK_T1_T3_Umin_3_Tmin_3_AND_21_o,
      ADR5 => ALARMCLOCK_T1_T3_Tmax_3_Umax_3_OR_92_o,
      O => ALARMCLOCK_D1_Mmux_cntenT312_780
    );
  ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_SW1 : X_LUT5
    generic map(
      INIT => X"BBAB1101"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T1_upDwn_cnten_AND_12_o,
      ADR1 => ALARMCLOCK_T1_T1_Umin_3_Tmin_3_AND_21_o_494,
      ADR2 => N38,
      ADR3 => ALARMCLOCK_T1_T1_Ucnt(1),
      ADR4 => ALARMCLOCK_T1_T1_Tmax_3_Umax_3_OR_92_o_493,
      O => N227
    );
  ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT21 : X_LUT6
    generic map(
      INIT => X"4000155555400015"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_T1_upDwn,
      ADR2 => ALARMCLOCK_T1_cntenT1,
      ADR3 => N227,
      ADR4 => ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_1_Q,
      ADR5 => ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q,
      O => ALARMCLOCK_T1_T1_Ucnt_3_Umin_3_mux_30_OUT_1_Q
    );
  ALARMCLOCK_D1_T2_upDwn_cnten_AND_12_o1 : X_LUT3
    generic map(
      INIT => X"D0"
    )
    port map (
      ADR0 => S_edit(5),
      ADR1 => S_edit(4),
      ADR2 => ALARMCLOCK_D1_cntenT2,
      O => ALARMCLOCK_D1_T2_upDwn_cnten_AND_12_o
    );
  ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Umin_3_mux_30_OUT411 : X_LUT6
    generic map(
      INIT => X"B0B000B0B0B0B0FF"
    )
    port map (
      ADR0 => S_edit(1),
      ADR1 => S_edit(2),
      ADR2 => ALARMCLOCK_T1_cntenT3,
      ADR3 => ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_1_Q,
      ADR4 => ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q,
      ADR5 => ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q,
      O => ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Umin_3_mux_30_OUT41_442
    );
  ALARMCLOCK_T1_T3_upDwn_cnten_AND_12_o1 : X_LUT3
    generic map(
      INIT => X"D0"
    )
    port map (
      ADR0 => S_edit(2),
      ADR1 => S_edit(1),
      ADR2 => ALARMCLOCK_T1_cntenT3,
      O => ALARMCLOCK_T1_T3_upDwn_cnten_AND_12_o
    );
  ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT411_SW3 : X_LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Ucnt(2),
      ADR1 => ALARMCLOCK_D1_T1_Ucnt(3),
      ADR2 => ALARMCLOCK_D1_T1_Umin_3_Tmin_3_AND_21_o_518,
      O => N180
    );
  ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Umin_3_mux_30_OUT11 : X_LUT6
    generic map(
      INIT => X"FFF7FF55FF55FF55"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T2_Ucnt(0),
      ADR1 => S_edit(5),
      ADR2 => S_edit(4),
      ADR3 => reset_112,
      ADR4 => ALARMCLOCK_D1_T2_Tmax_3_Umax_3_OR_92_o_544,
      ADR5 => ALARMCLOCK_D1_cntenT2,
      O => ALARMCLOCK_D1_T2_Ucnt_3_Umin_3_mux_30_OUT_0_Q
    );
  ALARMCLOCK_T1_T2_upDwn_cnten_AND_12_o1 : X_LUT6
    generic map(
      INIT => X"2200330122002200"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_present_state_FSM_FFd1_441,
      ADR1 => ALARMCLOCK_T1_present_state_FSM_FFd2_440,
      ADR2 => S_edit(2),
      ADR3 => S_edit(1),
      ADR4 => N6,
      ADR5 => pulse_1s,
      O => ALARMCLOCK_T1_T2_upDwn_cnten_AND_12_o
    );
  ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q : X_LUT5
    generic map(
      INIT => X"AACCAACA"
    )
    port map (
      ADR0 => N229,
      ADR1 => N230,
      ADR2 => ALARMCLOCK_D1_Mmux_cntenT311_779,
      ADR3 => N76,
      ADR4 => N174,
      O => ALARMCLOCK_D1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q_547
    );
  ALARMCLOCK_D1_Udaycheck_3_Uday_3_LessThan_21_o4_SW0_SW0 : X_MUX2
    port map (
      IA => N232,
      IB => N233,
      SEL => ALARMCLOCK_D1_T2_Ucnt(3),
      O => N160
    );
  ALARMCLOCK_D1_Udaycheck_3_Uday_3_LessThan_21_o4_SW0_SW0_F : X_LUT5
    generic map(
      INIT => X"FFFFFF80"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T2_Tcnt(0),
      ADR1 => ALARMCLOCK_D1_T3_Ucnt(0),
      ADR2 => ALARMCLOCK_D1_T2_Ucnt(0),
      ADR3 => ALARMCLOCK_D1_T3_Ucnt(1),
      ADR4 => ALARMCLOCK_D1_T3_Ucnt(2),
      O => N232
    );
  ALARMCLOCK_D1_Udaycheck_3_Uday_3_LessThan_21_o4_SW0_SW0_G : X_LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF0E0"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T2_Tcnt(0),
      ADR1 => ALARMCLOCK_D1_T2_Ucnt(1),
      ADR2 => ALARMCLOCK_D1_T3_Ucnt(0),
      ADR3 => ALARMCLOCK_D1_T2_Ucnt(0),
      ADR4 => ALARMCLOCK_D1_T3_Ucnt(1),
      ADR5 => ALARMCLOCK_D1_T3_Ucnt(2),
      O => N233
    );
  ALARMCLOCK_D1_Mmux_cntenT11_SW1 : X_MUX2
    port map (
      IA => N234,
      IB => N235,
      SEL => ALARMCLOCK_D1_Mmux_cntenT311_779,
      O => N215
    );
  ALARMCLOCK_D1_Mmux_cntenT11_SW1_G : X_LUT6
    generic map(
      INIT => X"F0FFF8FFE0EEE8EE"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Ucnt(0),
      ADR1 => ALARMCLOCK_D1_T1_Ucnt(1),
      ADR2 => N158,
      ADR3 => ALARMCLOCK_D1_upDwn,
      ADR4 => ALARMCLOCK_D1_T1_Tmax_3_Umax_3_OR_92_o_519,
      ADR5 => N180,
      O => N235
    );
  ALARMCLOCK_D1_Mmux_cntenT11_SW3 : X_MUX2
    port map (
      IA => N236,
      IB => N237,
      SEL => ALARMCLOCK_D1_Mmux_cntenT311_779,
      O => N217
    );
  ALARMCLOCK_D1_Mmux_cntenT11_SW3_G : X_LUT6
    generic map(
      INIT => X"F0FFF8FFE0EEE8EE"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Ucnt(0),
      ADR1 => ALARMCLOCK_D1_T1_Ucnt(1),
      ADR2 => N158,
      ADR3 => ALARMCLOCK_D1_upDwn,
      ADR4 => ALARMCLOCK_D1_T1_Tmax_3_Umax_3_OR_92_o_519,
      ADR5 => N180,
      O => N237
    );
  ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT21 : X_MUX2
    port map (
      IA => N238,
      IB => N239,
      SEL => ALARMCLOCK_D1_cntenT1,
      O => ALARMCLOCK_D1_T1_Ucnt_3_Umin_3_mux_30_OUT_1_Q
    );
  ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT21_G : X_LUT6
    generic map(
      INIT => X"FFA8FFFDFFA8FFA8"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_upDwn,
      ADR1 => ALARMCLOCK_D1_T1_Tmax_3_Umax_3_OR_92_o_519,
      ADR2 => N178,
      ADR3 => reset_112,
      ADR4 => ALARMCLOCK_D1_T1_Umin_3_Tmin_3_AND_21_o_518,
      ADR5 => N177,
      O => N239
    );
  ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT411 : X_LUT6
    generic map(
      INIT => X"88880888888F088F"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_cntenT1,
      ADR1 => ALARMCLOCK_A1_upDwn,
      ADR2 => ALARMCLOCK_A1_T1_Ucnt(0),
      ADR3 => ALARMCLOCK_A1_T1_Ucnt(1),
      ADR4 => ALARMCLOCK_A1_T1_Tmax_3_Umax_3_OR_92_o_605,
      ADR5 => N244,
      O => ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT41
    );
  ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Umin_3_mux_30_OUT411 : X_LUT6
    generic map(
      INIT => X"88880888888F088F"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_cntenT2,
      ADR1 => ALARMCLOCK_A1_upDwn,
      ADR2 => ALARMCLOCK_A1_T2_Ucnt(0),
      ADR3 => ALARMCLOCK_A1_T2_Ucnt(1),
      ADR4 => ALARMCLOCK_A1_T2_Tmax_3_Umax_3_OR_92_o_628,
      ADR5 => N246,
      O => ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Umin_3_mux_30_OUT41
    );
  ALARMCLOCK_D1_T2_upDwn_cnten_AND_12_o1_SW1 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T2_Ucnt(0),
      ADR1 => ALARMCLOCK_D1_T2_Ucnt(2),
      ADR2 => ALARMCLOCK_D1_T2_Ucnt(1),
      O => N198
    );
  ALARMCLOCK_D1_T1_upDwn_cnten_AND_12_o1_SW1 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Ucnt(0),
      ADR1 => ALARMCLOCK_D1_T1_Ucnt(2),
      ADR2 => ALARMCLOCK_D1_T1_Ucnt(1),
      O => N211
    );
  ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Umin_3_mux_30_OUT21 : X_LUT6
    generic map(
      INIT => X"4444444414414141"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_1_Q,
      ADR2 => ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q,
      ADR3 => ALARMCLOCK_A1_cntenT3,
      ADR4 => ALARMCLOCK_A1_upDwn,
      ADR5 => ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q_653,
      O => ALARMCLOCK_A1_T3_Ucnt_3_Umin_3_mux_30_OUT_1_Q
    );
  ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Umin_3_mux_30_OUT21 : X_LUT5
    generic map(
      INIT => X"44144441"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_1_Q,
      ADR2 => ALARMCLOCK_T1_T3_upDwn_cnten_AND_12_o,
      ADR3 => ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q,
      ADR4 => ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q,
      O => ALARMCLOCK_T1_T3_Ucnt_3_Umin_3_mux_30_OUT_1_Q
    );
  SELSHOWFUNC_Mmux_ostate11 : X_LUT6
    generic map(
      INIT => X"0400262204000400"
    )
    port map (
      ADR0 => S_current_edit_FSM_FFd1_115,
      ADR1 => S_current_edit_FSM_FFd2_116,
      ADR2 => ALARMCLOCK_D1_present_state_FSM_FFd1_591,
      ADR3 => ALARMCLOCK_D1_present_state_FSM_FFd2_590,
      ADR4 => ALARMCLOCK_A1_present_state_FSM_FFd1_684,
      ADR5 => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      O => SELSHOWFUNC_Mmux_ostate1
    );
  SELSHOWFUNC_Mmux_ostate21 : X_LUT6
    generic map(
      INIT => X"0400262204000400"
    )
    port map (
      ADR0 => S_current_edit_FSM_FFd1_115,
      ADR1 => S_current_edit_FSM_FFd2_116,
      ADR2 => ALARMCLOCK_D1_present_state_FSM_FFd2_590,
      ADR3 => ALARMCLOCK_D1_present_state_FSM_FFd1_591,
      ADR4 => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      ADR5 => ALARMCLOCK_A1_present_state_FSM_FFd1_684,
      O => SELSHOWFUNC_Mmux_ostate2
    );
  SELSHOWFUNC_Mmux_ostate31 : X_LUT6
    generic map(
      INIT => X"6222400040004000"
    )
    port map (
      ADR0 => S_current_edit_FSM_FFd1_115,
      ADR1 => S_current_edit_FSM_FFd2_116,
      ADR2 => ALARMCLOCK_D1_present_state_FSM_FFd1_591,
      ADR3 => ALARMCLOCK_D1_present_state_FSM_FFd2_590,
      ADR4 => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      ADR5 => ALARMCLOCK_A1_present_state_FSM_FFd1_684,
      O => SELSHOWFUNC_Mmux_ostate3
    );
  W1_C1_Mmux_bcdout128_SW0 : X_LUT6
    generic map(
      INIT => X"888AA8AADDDFFDFF"
    )
    port map (
      ADR0 => DATATODISPLAY_B1_n0013,
      ADR1 => W1_C1_dignr_int(1),
      ADR2 => W1_C1_dignr_int(0),
      ADR3 => ALARMCLOCK_count_t_2_48,
      ADR4 => ALARMCLOCK_count_t_6_44,
      ADR5 => W1_C1_Mmux_bcdout126_724,
      O => N248
    );
  W1_C1_Mmux_bcdout128 : X_LUT6
    generic map(
      INIT => X"557D5571554D5541"
    )
    port map (
      ADR0 => N248,
      ADR1 => S_current_edit_FSM_FFd1_115,
      ADR2 => S_current_edit_FSM_FFd2_116,
      ADR3 => S_s_ostate(2),
      ADR4 => W1_C1_Mmux_bcdout122_721,
      ADR5 => W1_C1_Mmux_bcdout124_723,
      O => W1_bcdout_int(2)
    );
  W1_C1_Mmux_bcdout166_SW0 : X_LUT6
    generic map(
      INIT => X"FFA2FFF2FFA7FFF7"
    )
    port map (
      ADR0 => W1_C1_dignr_int(1),
      ADR1 => ALARMCLOCK_count_t_19_33,
      ADR2 => DATATODISPLAY_B1_n0013,
      ADR3 => W1_C1_dignr_int(0),
      ADR4 => ALARMCLOCK_count_t_3_47,
      ADR5 => ALARMCLOCK_count_t_11_40,
      O => N250
    );
  W1_C1_Mmux_bcdout166 : X_LUT6
    generic map(
      INIT => X"557D5571554D5541"
    )
    port map (
      ADR0 => N250,
      ADR1 => S_current_edit_FSM_FFd1_115,
      ADR2 => S_current_edit_FSM_FFd2_116,
      ADR3 => S_s_ostate(2),
      ADR4 => W1_C1_Mmux_bcdout16,
      ADR5 => W1_C1_Mmux_bcdout162_727,
      O => W1_bcdout_int(3)
    );
  ALARMCLOCK_T1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_1 : X_LUT6
    generic map(
      INIT => X"57FF575746CC4646"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_cntenT3,
      ADR1 => ALARMCLOCK_T1_T3_Tcnt(0),
      ADR2 => ALARMCLOCK_T1_T3_Tmax_3_Umax_3_OR_92_o,
      ADR3 => S_edit(1),
      ADR4 => S_edit(2),
      ADR5 => ALARMCLOCK_T1_T3_Umin_3_Tmin_3_AND_21_o,
      O => ALARMCLOCK_T1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_Q
    );
  ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_SW1 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T1_Ucnt(1),
      ADR1 => ALARMCLOCK_A1_T1_Ucnt(2),
      O => N252
    );
  ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q : X_LUT6
    generic map(
      INIT => X"01000101A1A0A1A1"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T1_upDwn_cnten_AND_12_o,
      ADR1 => ALARMCLOCK_A1_T1_Umin_3_Tmin_3_AND_21_o_604,
      ADR2 => ALARMCLOCK_A1_T1_Ucnt(3),
      ADR3 => ALARMCLOCK_A1_T1_Ucnt(0),
      ADR4 => N252,
      ADR5 => ALARMCLOCK_A1_T1_Tmax_3_Umax_3_OR_92_o_605,
      O => ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q_612
    );
  ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_SW1 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T2_Ucnt(1),
      ADR1 => ALARMCLOCK_A1_T2_Ucnt(2),
      O => N254
    );
  ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q : X_LUT6
    generic map(
      INIT => X"01000101A1A0A1A1"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T2_upDwn_cnten_AND_12_o,
      ADR1 => ALARMCLOCK_A1_T2_Umin_3_Tmin_3_AND_21_o_627,
      ADR2 => ALARMCLOCK_A1_T2_Ucnt(3),
      ADR3 => ALARMCLOCK_A1_T2_Ucnt(0),
      ADR4 => N254,
      ADR5 => ALARMCLOCK_A1_T2_Tmax_3_Umax_3_OR_92_o_628,
      O => ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q_635
    );
  ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT21_SW3 : X_LUT4
    generic map(
      INIT => X"9998"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Ucnt(0),
      ADR1 => ALARMCLOCK_D1_T1_Ucnt(1),
      ADR2 => ALARMCLOCK_D1_T1_Ucnt(2),
      ADR3 => ALARMCLOCK_D1_T1_Ucnt(3),
      O => N177
    );
  ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_A1 : X_LUT6
    generic map(
      INIT => X"55555510FF55FF10"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T1_upDwn_cnten_AND_12_o,
      ADR1 => ALARMCLOCK_A1_T1_Ucnt(1),
      ADR2 => N90,
      ADR3 => ALARMCLOCK_A1_T1_Ucnt(0),
      ADR4 => ALARMCLOCK_A1_T1_Umin_3_Tmin_3_AND_21_o_604,
      ADR5 => ALARMCLOCK_A1_T1_Tmax_3_Umax_3_OR_92_o_605,
      O => ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q
    );
  ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_A1 : X_LUT6
    generic map(
      INIT => X"55555510FF55FF10"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T2_upDwn_cnten_AND_12_o,
      ADR1 => ALARMCLOCK_A1_T2_Ucnt(1),
      ADR2 => N102,
      ADR3 => ALARMCLOCK_A1_T2_Ucnt(0),
      ADR4 => ALARMCLOCK_A1_T2_Umin_3_Tmin_3_AND_21_o_627,
      ADR5 => ALARMCLOCK_A1_T2_Tmax_3_Umax_3_OR_92_o_628,
      O => ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q
    );
  ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Umin_3_mux_30_OUT31 : X_LUT6
    generic map(
      INIT => X"4444444414444441"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_2_Q,
      ADR2 => ALARMCLOCK_A1_T3_upDwn_cnten_AND_12_o,
      ADR3 => ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_1_Q,
      ADR4 => ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q,
      ADR5 => ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q_653,
      O => ALARMCLOCK_A1_T3_Ucnt_3_Umin_3_mux_30_OUT_2_Q
    );
  ALARMCLOCK_T1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_B11 : X_LUT5
    generic map(
      INIT => X"0455F755"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T3_Umin_3_Tmin_3_AND_21_o,
      ADR1 => S_edit(2),
      ADR2 => S_edit(1),
      ADR3 => ALARMCLOCK_T1_cntenT3,
      ADR4 => ALARMCLOCK_T1_T3_Tmax_3_Umax_3_OR_92_o,
      O => ALARMCLOCK_T1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_B_0_Q
    );
  ALARMCLOCK_A1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_1_1 : X_LUT6
    generic map(
      INIT => X"27D8D8D800FFFFFF"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T1_upDwn_cnten_AND_12_o,
      ADR1 => ALARMCLOCK_A1_T1_Tmax_3_Umax_3_OR_92_o_605,
      ADR2 => ALARMCLOCK_A1_T1_Umin_3_Tmin_3_AND_21_o_604,
      ADR3 => ALARMCLOCK_A1_cntenT1,
      ADR4 => ALARMCLOCK_A1_upDwn,
      ADR5 => ALARMCLOCK_A1_T1_Tcnt(1),
      O => ALARMCLOCK_A1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_1_Q
    );
  ALARMCLOCK_A1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_1_1 : X_LUT6
    generic map(
      INIT => X"27D8D8D800FFFFFF"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T2_upDwn_cnten_AND_12_o,
      ADR1 => ALARMCLOCK_A1_T2_Tmax_3_Umax_3_OR_92_o_628,
      ADR2 => ALARMCLOCK_A1_T2_Umin_3_Tmin_3_AND_21_o_627,
      ADR3 => ALARMCLOCK_A1_cntenT2,
      ADR4 => ALARMCLOCK_A1_upDwn,
      ADR5 => ALARMCLOCK_A1_T2_Tcnt(1),
      O => ALARMCLOCK_A1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_1_Q
    );
  ALARMCLOCK_T1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_1_1 : X_LUT6
    generic map(
      INIT => X"0808000819195519"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T3_Tcnt(1),
      ADR1 => ALARMCLOCK_T1_cntenT3,
      ADR2 => ALARMCLOCK_T1_T3_Tmax_3_Umax_3_OR_92_o,
      ADR3 => S_edit(2),
      ADR4 => S_edit(1),
      ADR5 => ALARMCLOCK_T1_T3_Umin_3_Tmin_3_AND_21_o,
      O => ALARMCLOCK_T1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_1_Q
    );
  ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_A31 : X_LUT6
    generic map(
      INIT => X"00202222AA2A2222"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T3_Ucnt(2),
      ADR1 => ALARMCLOCK_T1_T3_Umin_3_Tmin_3_AND_21_o,
      ADR2 => S_edit(2),
      ADR3 => S_edit(1),
      ADR4 => ALARMCLOCK_T1_cntenT3,
      ADR5 => ALARMCLOCK_T1_T3_Tmax_3_Umax_3_OR_92_o,
      O => ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_2_Q
    );
  ALARMCLOCK_D1_Mmux_cntenT314_SW2 : X_LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_present_state_FSM_FFd2_590,
      ADR1 => S_edit(5),
      ADR2 => S_edit(4),
      ADR3 => ALARMCLOCK_D1_present_state_FSM_FFd1_591,
      O => N158
    );
  ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q : X_LUT6
    generic map(
      INIT => X"55551110DDDD9998"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T3_upDwn_cnten_AND_12_o,
      ADR1 => ALARMCLOCK_A1_T3_Ucnt(3),
      ADR2 => N106,
      ADR3 => ALARMCLOCK_A1_T3_Ucnt(0),
      ADR4 => ALARMCLOCK_A1_T3_Umin_3_Tmin_3_AND_21_o,
      ADR5 => ALARMCLOCK_A1_T3_Tmax_3_Umax_3_OR_92_o,
      O => ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q_654
    );
  ALARMCLOCK_D1_Mmux_cntenT314_SW1 : X_LUT4
    generic map(
      INIT => X"F1FF"
    )
    port map (
      ADR0 => S_edit(4),
      ADR1 => S_edit(5),
      ADR2 => ALARMCLOCK_D1_present_state_FSM_FFd1_591,
      ADR3 => ALARMCLOCK_D1_present_state_FSM_FFd2_590,
      O => N157
    );
  ALARMCLOCK_T1_T1_n0150_inv1 : X_LUT6
    generic map(
      INIT => X"FFFFFFFF55514440"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_present_state_FSM_FFd1_441,
      ADR1 => ALARMCLOCK_T1_present_state_FSM_FFd2_440,
      ADR2 => S_edit(2),
      ADR3 => S_edit(1),
      ADR4 => pulse_1s,
      ADR5 => reset_112,
      O => ALARMCLOCK_T1_T1_n0150_inv
    );
  ALARMCLOCK_D1_T1_upDwn_cnten_AND_12_o1_SW2 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Ucnt(1),
      ADR1 => ALARMCLOCK_D1_T1_Ucnt(2),
      ADR2 => ALARMCLOCK_D1_T1_Ucnt(3),
      O => N213
    );
  ALARMCLOCK_T1_T1_n0142_inv1 : X_LUT6
    generic map(
      INIT => X"1000100000011000"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T1_Ucnt(1),
      ADR1 => ALARMCLOCK_T1_T1_Ucnt(2),
      ADR2 => ALARMCLOCK_T1_T1_Ucnt(3),
      ADR3 => ALARMCLOCK_T1_T1_Ucnt(0),
      ADR4 => S_edit(2),
      ADR5 => S_edit(1),
      O => ALARMCLOCK_T1_T1_n0142_inv1_754
    );
  ALARMCLOCK_A1_T1_n0142_inv1 : X_LUT6
    generic map(
      INIT => X"1000100000011000"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T1_Ucnt(1),
      ADR1 => ALARMCLOCK_A1_T1_Ucnt(2),
      ADR2 => ALARMCLOCK_A1_T1_Ucnt(3),
      ADR3 => ALARMCLOCK_A1_T1_Ucnt(0),
      ADR4 => S_edit(8),
      ADR5 => S_edit(7),
      O => ALARMCLOCK_A1_T1_n0142_inv1_787
    );
  ALARMCLOCK_A1_T2_n0142_inv1 : X_LUT6
    generic map(
      INIT => X"1000100000011000"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T2_Ucnt(1),
      ADR1 => ALARMCLOCK_A1_T2_Ucnt(2),
      ADR2 => ALARMCLOCK_A1_T2_Ucnt(3),
      ADR3 => ALARMCLOCK_A1_T2_Ucnt(0),
      ADR4 => S_edit(8),
      ADR5 => S_edit(7),
      O => ALARMCLOCK_A1_T2_n0142_inv1_792
    );
  ALARMCLOCK_A1_T3_n0142_inv1 : X_LUT6
    generic map(
      INIT => X"1000100000011000"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T3_Ucnt(1),
      ADR1 => ALARMCLOCK_A1_T3_Ucnt(2),
      ADR2 => ALARMCLOCK_A1_T3_Ucnt(3),
      ADR3 => ALARMCLOCK_A1_T3_Ucnt(0),
      ADR4 => S_edit(8),
      ADR5 => S_edit(7),
      O => ALARMCLOCK_A1_T3_n0142_inv1_796
    );
  ALARMCLOCK_A1_T1_n0150_inv1 : X_LUT5
    generic map(
      INIT => X"FFFF4440"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_present_state_FSM_FFd1_684,
      ADR1 => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      ADR2 => S_edit(8),
      ADR3 => S_edit(7),
      ADR4 => reset_112,
      O => ALARMCLOCK_A1_T1_n0150_inv
    );
  ALARMCLOCK_A1_T2_n0150_inv1 : X_LUT5
    generic map(
      INIT => X"FFFF4440"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      ADR1 => ALARMCLOCK_A1_present_state_FSM_FFd1_684,
      ADR2 => S_edit(8),
      ADR3 => S_edit(7),
      ADR4 => reset_112,
      O => ALARMCLOCK_A1_T2_n0150_inv
    );
  ALARMCLOCK_A1_T3_n0150_inv1 : X_LUT5
    generic map(
      INIT => X"FFFF8880"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_present_state_FSM_FFd1_684,
      ADR1 => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      ADR2 => S_edit(8),
      ADR3 => S_edit(7),
      ADR4 => reset_112,
      O => ALARMCLOCK_A1_T3_n0150_inv
    );
  ALARMCLOCK_A1_T1_Mmux_Tcnt_3_Tmin_3_mux_27_OUT31 : X_LUT6
    generic map(
      INIT => X"1111411111144114"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_A1_T1_Mmux_Tcnt_3_Tmin_3_mux_27_OUT41,
      ADR2 => ALARMCLOCK_A1_T1_Tcnt(2),
      ADR3 => ALARMCLOCK_A1_T1_upDwn_cnten_AND_12_o,
      ADR4 => ALARMCLOCK_A1_T1_Tmax_3_Umax_3_OR_92_o_605,
      ADR5 => ALARMCLOCK_A1_T1_Umin_3_Tmin_3_AND_21_o_604,
      O => ALARMCLOCK_A1_T1_Tcnt_3_Tmin_3_mux_27_OUT_2_Q
    );
  ALARMCLOCK_A1_T2_Mmux_Tcnt_3_Tmin_3_mux_27_OUT31 : X_LUT6
    generic map(
      INIT => X"1111411111144114"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_A1_T2_Mmux_Tcnt_3_Tmin_3_mux_27_OUT41,
      ADR2 => ALARMCLOCK_A1_T2_Tcnt(2),
      ADR3 => ALARMCLOCK_A1_T2_upDwn_cnten_AND_12_o,
      ADR4 => ALARMCLOCK_A1_T2_Tmax_3_Umax_3_OR_92_o_628,
      ADR5 => ALARMCLOCK_A1_T2_Umin_3_Tmin_3_AND_21_o_627,
      O => ALARMCLOCK_A1_T2_Tcnt_3_Tmin_3_mux_27_OUT_2_Q
    );
  ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Umin_3_mux_30_OUT11 : X_LUT5
    generic map(
      INIT => X"0B00040F"
    )
    port map (
      ADR0 => S_edit(1),
      ADR1 => S_edit(2),
      ADR2 => reset_112,
      ADR3 => ALARMCLOCK_T1_cntenT3,
      ADR4 => ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q,
      O => ALARMCLOCK_T1_T3_Ucnt_3_Umin_3_mux_30_OUT_0_Q
    );
  ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT21 : X_LUT6
    generic map(
      INIT => X"4111111144141414"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_1_Q,
      ADR2 => ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q_610,
      ADR3 => ALARMCLOCK_A1_upDwn,
      ADR4 => ALARMCLOCK_A1_cntenT1,
      ADR5 => ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q,
      O => ALARMCLOCK_A1_T1_Ucnt_3_Umin_3_mux_30_OUT_1_Q
    );
  ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Umin_3_mux_30_OUT21 : X_LUT6
    generic map(
      INIT => X"4111111144141414"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_1_Q,
      ADR2 => ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q_633,
      ADR3 => ALARMCLOCK_A1_upDwn,
      ADR4 => ALARMCLOCK_A1_cntenT2,
      ADR5 => ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q,
      O => ALARMCLOCK_A1_T2_Ucnt_3_Umin_3_mux_30_OUT_1_Q
    );
  ALARMCLOCK_D1_Mmux_cntenT11_SW0 : X_LUT4
    generic map(
      INIT => X"02DF"
    )
    port map (
      ADR0 => S_edit(5),
      ADR1 => S_edit(4),
      ADR2 => ALARMCLOCK_D1_T2_Umin_3_Tmin_3_AND_21_o_543,
      ADR3 => ALARMCLOCK_D1_T2_Tmax_3_Umax_3_OR_92_o_544,
      O => N74
    );
  ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_A21 : X_LUT6
    generic map(
      INIT => X"22F2FFFF22A2AAAA"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T3_Ucnt(1),
      ADR1 => ALARMCLOCK_T1_T3_Tmax_3_Umax_3_OR_92_o,
      ADR2 => S_edit(2),
      ADR3 => S_edit(1),
      ADR4 => ALARMCLOCK_T1_cntenT3,
      ADR5 => ALARMCLOCK_T1_T3_Umin_3_Tmin_3_AND_21_o,
      O => ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_1_Q
    );
  ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT411_SW2 : X_LUT6
    generic map(
      INIT => X"F7FF737777773333"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T1_Ucnt(0),
      ADR1 => ALARMCLOCK_T1_T1_Ucnt(1),
      ADR2 => S_edit(1),
      ADR3 => S_edit(2),
      ADR4 => ALARMCLOCK_T1_T1_Tmax_3_Umax_3_OR_92_o_493,
      ADR5 => ALARMCLOCK_T1_cntenT1,
      O => N166
    );
  ALARMCLOCK_T1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_A11 : X_LUT6
    generic map(
      INIT => X"22F2FFFF22A2AAAA"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T2_Tcnt(0),
      ADR1 => ALARMCLOCK_T1_T2_Tmax_3_Umax_3_OR_92_o_471,
      ADR2 => S_edit(2),
      ADR3 => S_edit(1),
      ADR4 => ALARMCLOCK_T1_cntenT2_437,
      ADR5 => ALARMCLOCK_T1_T2_Umin_3_Tmin_3_AND_21_o_472,
      O => ALARMCLOCK_T1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_A_0_Q
    );
  ALARMCLOCK_T1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_A11 : X_LUT6
    generic map(
      INIT => X"22F2FFFF22A2AAAA"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T1_Tcnt(0),
      ADR1 => ALARMCLOCK_T1_T1_Tmax_3_Umax_3_OR_92_o_493,
      ADR2 => S_edit(2),
      ADR3 => S_edit(1),
      ADR4 => ALARMCLOCK_T1_cntenT1,
      ADR5 => ALARMCLOCK_T1_T1_Umin_3_Tmin_3_AND_21_o_494,
      O => ALARMCLOCK_T1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_A_0_Q
    );
  ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Umin_3_mux_30_OUT42 : X_LUT6
    generic map(
      INIT => X"4414141114111411"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q_654,
      ADR2 => ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_2_Q,
      ADR3 => ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Umin_3_mux_30_OUT41,
      ADR4 => ALARMCLOCK_A1_cntenT3,
      ADR5 => ALARMCLOCK_A1_upDwn,
      O => ALARMCLOCK_A1_T3_Ucnt_3_Umin_3_mux_30_OUT_3_Q
    );
  ALARMCLOCK_T1_T3_Mmux_Tcnt_3_Tmin_3_mux_27_OUT11 : X_LUT5
    generic map(
      INIT => X"41411141"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_T1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_Q,
      ADR2 => ALARMCLOCK_T1_cntenT3,
      ADR3 => S_edit(2),
      ADR4 => S_edit(1),
      O => ALARMCLOCK_T1_T3_Tcnt_3_Tmin_3_mux_27_OUT_0_Q
    );
  ALARMCLOCK_T1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_1 : X_LUT6
    generic map(
      INIT => X"0020222255252222"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T2_Tcnt(0),
      ADR1 => ALARMCLOCK_T1_T2_Umin_3_Tmin_3_AND_21_o_472,
      ADR2 => S_edit(2),
      ADR3 => S_edit(1),
      ADR4 => ALARMCLOCK_T1_cntenT2_437,
      ADR5 => ALARMCLOCK_T1_T2_Tmax_3_Umax_3_OR_92_o_471,
      O => ALARMCLOCK_T1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_Q
    );
  ALARMCLOCK_T1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_1 : X_LUT6
    generic map(
      INIT => X"0020222255252222"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T1_Tcnt(0),
      ADR1 => ALARMCLOCK_T1_T1_Umin_3_Tmin_3_AND_21_o_494,
      ADR2 => S_edit(2),
      ADR3 => S_edit(1),
      ADR4 => ALARMCLOCK_T1_cntenT1,
      ADR5 => ALARMCLOCK_T1_T1_Tmax_3_Umax_3_OR_92_o_493,
      O => ALARMCLOCK_T1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_Q
    );
  ALARMCLOCK_T1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_1_1 : X_LUT6
    generic map(
      INIT => X"5D5DFF5D19193319"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_cntenT2_437,
      ADR1 => ALARMCLOCK_T1_T2_Tcnt(1),
      ADR2 => ALARMCLOCK_T1_T2_Tmax_3_Umax_3_OR_92_o_471,
      ADR3 => S_edit(2),
      ADR4 => S_edit(1),
      ADR5 => ALARMCLOCK_T1_T2_Umin_3_Tmin_3_AND_21_o_472,
      O => ALARMCLOCK_T1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_1_Q
    );
  ALARMCLOCK_T1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_1_1 : X_LUT6
    generic map(
      INIT => X"5D5DFF5D19193319"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_cntenT1,
      ADR1 => ALARMCLOCK_T1_T1_Tcnt(1),
      ADR2 => ALARMCLOCK_T1_T1_Tmax_3_Umax_3_OR_92_o_493,
      ADR3 => S_edit(2),
      ADR4 => S_edit(1),
      ADR5 => ALARMCLOCK_T1_T1_Umin_3_Tmin_3_AND_21_o_494,
      O => ALARMCLOCK_T1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_1_Q
    );
  ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT31 : X_LUT6
    generic map(
      INIT => X"5100045504555100"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => S_edit(2),
      ADR2 => S_edit(1),
      ADR3 => ALARMCLOCK_T1_cntenT1,
      ADR4 => ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_2_Q,
      ADR5 => ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT41_485,
      O => ALARMCLOCK_T1_T1_Ucnt_3_Umin_3_mux_30_OUT_2_Q
    );
  ALARMCLOCK_T1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_B11 : X_LUT5
    generic map(
      INIT => X"04BF0F0F"
    )
    port map (
      ADR0 => S_edit(1),
      ADR1 => S_edit(2),
      ADR2 => ALARMCLOCK_T1_T2_Umin_3_Tmin_3_AND_21_o_472,
      ADR3 => ALARMCLOCK_T1_T2_Tmax_3_Umax_3_OR_92_o_471,
      ADR4 => ALARMCLOCK_T1_cntenT2_437,
      O => ALARMCLOCK_T1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_B_0_Q
    );
  ALARMCLOCK_T1_T3_n0127 : X_LUT6
    generic map(
      INIT => X"0000100000000000"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T3_Tcnt(1),
      ADR1 => ALARMCLOCK_T1_T3_Ucnt(1),
      ADR2 => ALARMCLOCK_T1_T3_Ucnt(3),
      ADR3 => ALARMCLOCK_T1_T3_Ucnt(0),
      ADR4 => N10,
      ADR5 => ALARMCLOCK_T1_T3_upDwn_cnten_AND_12_o,
      O => ALARMCLOCK_T1_T3_n0127_455
    );
  ALARMCLOCK_D1_T3_n0142_inv2 : X_LUT6
    generic map(
      INIT => X"FFFDFFF0F0F0F0F0"
    )
    port map (
      ADR0 => S_edit(5),
      ADR1 => S_edit(4),
      ADR2 => reset_112,
      ADR3 => ALARMCLOCK_D1_T3_n0142_inv1_775,
      ADR4 => ALARMCLOCK_D1_T3_Tmax_3_Umax_3_OR_92_o,
      ADR5 => ALARMCLOCK_D1_cntenT3,
      O => ALARMCLOCK_D1_T3_n0142_inv
    );
  ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tmin_3_mux_27_OUT11 : X_LUT6
    generic map(
      INIT => X"1011000110550045"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_D1_T3_upDwn_cnten_AND_12_o,
      ADR2 => ALARMCLOCK_D1_T3_Umin_3_Tmin_3_AND_21_o_566,
      ADR3 => ALARMCLOCK_D1_T3_Tcnt(0),
      ADR4 => ALARMCLOCK_D1_setMaxDay_4_Q,
      ADR5 => ALARMCLOCK_D1_T3_Tmax_3_Umax_3_OR_92_o,
      O => ALARMCLOCK_D1_T3_Tcnt_3_Tmin_3_mux_27_OUT_0_Q
    );
  ALARMCLOCK_T1_T1_upDwn_cnten_AND_12_o1 : X_LUT5
    generic map(
      INIT => X"55014400"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_present_state_FSM_FFd1_441,
      ADR1 => ALARMCLOCK_T1_present_state_FSM_FFd2_440,
      ADR2 => S_edit(2),
      ADR3 => S_edit(1),
      ADR4 => pulse_1s,
      O => ALARMCLOCK_T1_T1_upDwn_cnten_AND_12_o
    );
  ALARMCLOCK_A1_T1_Mmux_Tcnt_3_Tmin_3_mux_27_OUT21 : X_LUT6
    generic map(
      INIT => X"4111111144141414"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_A1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_1_Q,
      ADR2 => ALARMCLOCK_A1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_Q,
      ADR3 => ALARMCLOCK_A1_upDwn,
      ADR4 => ALARMCLOCK_A1_cntenT1,
      ADR5 => ALARMCLOCK_A1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_A_0_Q,
      O => ALARMCLOCK_A1_T1_Tcnt_3_Tmin_3_mux_27_OUT_1_Q
    );
  ALARMCLOCK_A1_T2_Mmux_Tcnt_3_Tmin_3_mux_27_OUT21 : X_LUT6
    generic map(
      INIT => X"4111111144141414"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_A1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_1_Q,
      ADR2 => ALARMCLOCK_A1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_Q,
      ADR3 => ALARMCLOCK_A1_upDwn,
      ADR4 => ALARMCLOCK_A1_cntenT2,
      ADR5 => ALARMCLOCK_A1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_A_0_Q,
      O => ALARMCLOCK_A1_T2_Tcnt_3_Tmin_3_mux_27_OUT_1_Q
    );
  ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT42 : X_LUT6
    generic map(
      INIT => X"4414141114111411"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q_612,
      ADR2 => ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_2_Q,
      ADR3 => ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT41,
      ADR4 => ALARMCLOCK_A1_cntenT1,
      ADR5 => ALARMCLOCK_A1_upDwn,
      O => ALARMCLOCK_A1_T1_Ucnt_3_Umin_3_mux_30_OUT_3_Q
    );
  ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Umin_3_mux_30_OUT42 : X_LUT6
    generic map(
      INIT => X"4414141114111411"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_3_Q_635,
      ADR2 => ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_2_Q,
      ADR3 => ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Umin_3_mux_30_OUT41,
      ADR4 => ALARMCLOCK_A1_cntenT2,
      ADR5 => ALARMCLOCK_A1_upDwn,
      O => ALARMCLOCK_A1_T2_Ucnt_3_Umin_3_mux_30_OUT_3_Q
    );
  ALARMCLOCK_T1_T3_n0142_inv2 : X_LUT6
    generic map(
      INIT => X"FFFFFFFFAAAA8088"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_cntenT3,
      ADR1 => ALARMCLOCK_T1_T3_Tmax_3_Umax_3_OR_92_o,
      ADR2 => S_edit(1),
      ADR3 => S_edit(2),
      ADR4 => ALARMCLOCK_T1_T3_n0142_inv1_745,
      ADR5 => reset_112,
      O => ALARMCLOCK_T1_T3_n0142_inv
    );
  ALARMCLOCK_T1_T2_n0142_inv2 : X_LUT6
    generic map(
      INIT => X"FFFFFFFFAAAA8088"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_cntenT2_437,
      ADR1 => ALARMCLOCK_T1_T2_Tmax_3_Umax_3_OR_92_o_471,
      ADR2 => S_edit(1),
      ADR3 => S_edit(2),
      ADR4 => ALARMCLOCK_T1_T2_n0142_inv1_748,
      ADR5 => reset_112,
      O => ALARMCLOCK_T1_T2_n0142_inv
    );
  ALARMCLOCK_A1_n0067_inv1 : X_LUT5
    generic map(
      INIT => X"00000008"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_countcheck_23_counterInput_23_equal_15_o,
      ADR1 => ALARMCLOCK_A1_onOff_680,
      ADR2 => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      ADR3 => ALARMCLOCK_A1_present_state_FSM_FFd1_684,
      ADR4 => BUTTONS1_B3_one_pulse1_current_state_FSM_FFd2_15,
      O => ALARMCLOCK_A1_n0067_inv
    );
  ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT11_SW0 : X_LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T1_Umin_3_Tmin_3_AND_21_o_494,
      ADR1 => ALARMCLOCK_T1_T1_Ucnt(2),
      ADR2 => ALARMCLOCK_T1_T1_Ucnt(0),
      ADR3 => ALARMCLOCK_T1_T1_Ucnt(3),
      ADR4 => ALARMCLOCK_T1_T1_Ucnt(1),
      O => N194
    );
  ALARMCLOCK_A1_T3_n0127 : X_LUT6
    generic map(
      INIT => X"0000000000002000"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T3_Ucnt(0),
      ADR1 => ALARMCLOCK_A1_T3_Tcnt(1),
      ADR2 => ALARMCLOCK_A1_T3_Ucnt(3),
      ADR3 => ALARMCLOCK_A1_T3_upDwn_cnten_AND_12_o,
      ADR4 => ALARMCLOCK_A1_T3_Ucnt(1),
      ADR5 => N108,
      O => ALARMCLOCK_A1_T3_n0127_645
    );
  W1_D1_Mram_segm31 : X_LUT4
    generic map(
      INIT => X"EE92"
    )
    port map (
      ADR0 => W1_bcdout_int(2),
      ADR1 => W1_bcdout_int(1),
      ADR2 => W1_bcdout_int(0),
      ADR3 => W1_bcdout_int(3),
      O => cath_3_OBUF_104
    );
  W1_C1_Mmux_bcdout83 : X_LUT6
    generic map(
      INIT => X"F9F9F90000F90000"
    )
    port map (
      ADR0 => S_current_edit_FSM_FFd2_116,
      ADR1 => S_current_edit_FSM_FFd1_115,
      ADR2 => S_s_ostate(2),
      ADR3 => DATATODISPLAY_B1_n0013,
      ADR4 => W1_C1_Mmux_bcdout8,
      ADR5 => W1_C1_Mmux_bcdout81_734,
      O => W1_C1_Mmux_bcdout82_735
    );
  SELSHOWFUNC_Mmux_ostate41 : X_LUT6
    generic map(
      INIT => X"0004000400042226"
    )
    port map (
      ADR0 => S_current_edit_FSM_FFd2_116,
      ADR1 => S_current_edit_FSM_FFd1_115,
      ADR2 => ALARMCLOCK_A1_present_state_FSM_FFd1_684,
      ADR3 => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      ADR4 => ALARMCLOCK_D1_present_state_FSM_FFd2_590,
      ADR5 => ALARMCLOCK_D1_present_state_FSM_FFd1_591,
      O => SELSHOWFUNC_Mmux_ostate4
    );
  ALARMCLOCK_D1_Mmux_cntenT11_SW1_F : X_LUT6
    generic map(
      INIT => X"22222220F2F22220"
    )
    port map (
      ADR0 => S_edit(5),
      ADR1 => S_edit(4),
      ADR2 => ALARMCLOCK_D1_T1_Ucnt(0),
      ADR3 => N180,
      ADR4 => ALARMCLOCK_D1_T1_Ucnt(1),
      ADR5 => ALARMCLOCK_D1_T1_Tmax_3_Umax_3_OR_92_o_519,
      O => N234
    );
  ALARMCLOCK_D1_T1_Mmux_Tcnt_3_Tmin_3_mux_27_OUT21_SW1 : X_LUT3
    generic map(
      INIT => X"D0"
    )
    port map (
      ADR0 => S_edit(5),
      ADR1 => S_edit(4),
      ADR2 => ALARMCLOCK_D1_cntenT1,
      O => N256
    );
  ALARMCLOCK_D1_T1_Mmux_Tcnt_3_Tmin_3_mux_27_OUT21 : X_LUT6
    generic map(
      INIT => X"0000060600090009"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Tcnt(1),
      ADR1 => ALARMCLOCK_D1_T1_Tcnt(0),
      ADR2 => reset_112,
      ADR3 => ALARMCLOCK_D1_T1_Umin_3_Tmin_3_AND_21_o_518,
      ADR4 => ALARMCLOCK_D1_T1_Tmax_3_Umax_3_OR_92_o_519,
      ADR5 => N256,
      O => ALARMCLOCK_D1_T1_Tcnt_3_Tmin_3_mux_27_OUT_1_Q
    );
  ALARMCLOCK_D1_T2_Mmux_Tcnt_3_Tmin_3_mux_27_OUT21 : X_LUT6
    generic map(
      INIT => X"0000060600090009"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T2_Tcnt(1),
      ADR1 => ALARMCLOCK_D1_T2_Tcnt(0),
      ADR2 => reset_112,
      ADR3 => ALARMCLOCK_D1_T2_Umin_3_Tmin_3_AND_21_o_543,
      ADR4 => ALARMCLOCK_D1_T2_Tmax_3_Umax_3_OR_92_o_544,
      ADR5 => ALARMCLOCK_D1_T2_upDwn_cnten_AND_12_o,
      O => ALARMCLOCK_D1_T2_Tcnt_3_Tmin_3_mux_27_OUT_1_Q
    );
  ALARMCLOCK_T1_T2_Mmux_Ucnt_3_Umin_3_mux_30_OUT21_SW0 : X_LUT5
    generic map(
      INIT => X"FFFF2FD0"
    )
    port map (
      ADR0 => S_edit(2),
      ADR1 => S_edit(1),
      ADR2 => ALARMCLOCK_T1_cntenT2_437,
      ADR3 => ALARMCLOCK_T1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q,
      ADR4 => ALARMCLOCK_T1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q,
      O => N260
    );
  ALARMCLOCK_T1_T2_Mmux_Ucnt_3_Umin_3_mux_30_OUT21 : X_LUT6
    generic map(
      INIT => X"0022020233113131"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T2_Ucnt(1),
      ADR1 => reset_112,
      ADR2 => ALARMCLOCK_T1_T2_Umin_3_Tmin_3_AND_21_o_472,
      ADR3 => ALARMCLOCK_T1_T2_Tmax_3_Umax_3_OR_92_o_471,
      ADR4 => ALARMCLOCK_T1_T2_upDwn_cnten_AND_12_o,
      ADR5 => N260,
      O => ALARMCLOCK_T1_T2_Ucnt_3_Umin_3_mux_30_OUT_1_Q
    );
  ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_1_1 : X_LUT6
    generic map(
      INIT => X"27D8D8D800FFFFFF"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T1_upDwn_cnten_AND_12_o,
      ADR1 => ALARMCLOCK_A1_T1_Tmax_3_Umax_3_OR_92_o_605,
      ADR2 => ALARMCLOCK_A1_T1_Umin_3_Tmin_3_AND_21_o_604,
      ADR3 => ALARMCLOCK_A1_cntenT1,
      ADR4 => ALARMCLOCK_A1_upDwn,
      ADR5 => ALARMCLOCK_A1_T1_Ucnt(1),
      O => ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_1_Q
    );
  ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_1_1 : X_LUT6
    generic map(
      INIT => X"27D8D8D800FFFFFF"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T2_upDwn_cnten_AND_12_o,
      ADR1 => ALARMCLOCK_A1_T2_Tmax_3_Umax_3_OR_92_o_628,
      ADR2 => ALARMCLOCK_A1_T2_Umin_3_Tmin_3_AND_21_o_627,
      ADR3 => ALARMCLOCK_A1_cntenT2,
      ADR4 => ALARMCLOCK_A1_upDwn,
      ADR5 => ALARMCLOCK_A1_T2_Ucnt(1),
      O => ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_1_Q
    );
  ALARMCLOCK_D1_Mmux_cntenT111_SW3 : X_LUT6
    generic map(
      INIT => X"CFCFCCCDC3C3CCC9"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_present_state_FSM_FFd1_591,
      ADR1 => ALARMCLOCK_D1_T2_Ucnt(0),
      ADR2 => ALARMCLOCK_D1_present_state_FSM_FFd2_590,
      ADR3 => S_edit(5),
      ADR4 => S_edit(4),
      ADR5 => ALARMCLOCK_D1_T2_Tmax_3_Umax_3_OR_92_o_544,
      O => N230
    );
  ALARMCLOCK_D1_Mmux_cntenT111_SW2 : X_LUT5
    generic map(
      INIT => X"CECCC6CC"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_present_state_FSM_FFd1_591,
      ADR1 => ALARMCLOCK_D1_T2_Ucnt(0),
      ADR2 => ALARMCLOCK_D1_present_state_FSM_FFd2_590,
      ADR3 => S_edit(4),
      ADR4 => ALARMCLOCK_D1_T2_Tmax_3_Umax_3_OR_92_o_544,
      O => N229
    );
  ALARMCLOCK_D1_Mmux_cntenT11_SW3_F : X_LUT4
    generic map(
      INIT => X"FFF1"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Ucnt(2),
      ADR1 => ALARMCLOCK_D1_T1_Ucnt(3),
      ADR2 => ALARMCLOCK_D1_T1_Ucnt(1),
      ADR3 => ALARMCLOCK_D1_T1_Ucnt(0),
      O => N236
    );
  ALARMCLOCK_D1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_2_1_SW1 : X_LUT6
    generic map(
      INIT => X"A2AAF3FFAEAAF3FF"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Umin_3_Tmin_3_AND_21_o_518,
      ADR1 => S_edit(4),
      ADR2 => ALARMCLOCK_D1_present_state_FSM_FFd1_591,
      ADR3 => ALARMCLOCK_D1_present_state_FSM_FFd2_590,
      ADR4 => ALARMCLOCK_D1_T1_Tcnt(2),
      ADR5 => ALARMCLOCK_D1_T1_Tmax_3_Umax_3_OR_92_o_519,
      O => N191
    );
  ALARMCLOCK_D1_Mmux_cntenT11_SW5 : X_LUT6
    generic map(
      INIT => X"FFFFEFFF75556555"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Ucnt(2),
      ADR1 => ALARMCLOCK_D1_present_state_FSM_FFd1_591,
      ADR2 => ALARMCLOCK_D1_present_state_FSM_FFd2_590,
      ADR3 => S_edit(4),
      ADR4 => ALARMCLOCK_D1_T1_Tmax_3_Umax_3_OR_92_o_519,
      ADR5 => ALARMCLOCK_D1_T1_Umin_3_Tmin_3_AND_21_o_518,
      O => N220
    );
  ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_A21 : X_LUT6
    generic map(
      INIT => X"3FBFFFFF2AAAAAAA"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T3_Ucnt(1),
      ADR1 => S_edit(7),
      ADR2 => ALARMCLOCK_A1_present_state_FSM_FFd1_684,
      ADR3 => ALARMCLOCK_A1_T3_Tmax_3_Umax_3_OR_92_o,
      ADR4 => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      ADR5 => ALARMCLOCK_A1_T3_Umin_3_Tmin_3_AND_21_o,
      O => ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_1_Q
    );
  ALARMCLOCK_A1_T3_Mmux_Tcnt_3_Tmin_3_mux_27_OUT11 : X_LUT6
    generic map(
      INIT => X"0001010111010101"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_A1_T3_Tcnt(0),
      ADR2 => ALARMCLOCK_A1_T3_Umin_3_Tmin_3_AND_21_o,
      ADR3 => ALARMCLOCK_A1_cntenT3,
      ADR4 => ALARMCLOCK_A1_upDwn,
      ADR5 => ALARMCLOCK_A1_T3_Tmax_3_Umax_3_OR_92_o,
      O => ALARMCLOCK_A1_T3_Tcnt_3_Tmin_3_mux_27_OUT_0_Q
    );
  ALARMCLOCK_A1_T1_Mmux_Tcnt_3_Tmin_3_mux_27_OUT11 : X_LUT6
    generic map(
      INIT => X"0155555501111111"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_A1_T1_Tcnt(0),
      ADR2 => ALARMCLOCK_A1_T1_Tmax_3_Umax_3_OR_92_o_605,
      ADR3 => ALARMCLOCK_A1_cntenT1,
      ADR4 => ALARMCLOCK_A1_upDwn,
      ADR5 => ALARMCLOCK_A1_T1_Umin_3_Tmin_3_AND_21_o_604,
      O => ALARMCLOCK_A1_T1_Tcnt_3_Tmin_3_mux_27_OUT_0_Q
    );
  ALARMCLOCK_A1_T2_Mmux_Tcnt_3_Tmin_3_mux_27_OUT11 : X_LUT6
    generic map(
      INIT => X"0155555501111111"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_A1_T2_Tcnt(0),
      ADR2 => ALARMCLOCK_A1_T2_Tmax_3_Umax_3_OR_92_o_628,
      ADR3 => ALARMCLOCK_A1_cntenT2,
      ADR4 => ALARMCLOCK_A1_upDwn,
      ADR5 => ALARMCLOCK_A1_T2_Umin_3_Tmin_3_AND_21_o_627,
      O => ALARMCLOCK_A1_T2_Tcnt_3_Tmin_3_mux_27_OUT_0_Q
    );
  ALARMCLOCK_T1_T3_n0142_inv1 : X_LUT6
    generic map(
      INIT => X"1000100000011000"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T3_Ucnt(2),
      ADR1 => ALARMCLOCK_T1_T3_Ucnt(1),
      ADR2 => ALARMCLOCK_T1_T3_Ucnt(0),
      ADR3 => ALARMCLOCK_T1_T3_Ucnt(3),
      ADR4 => S_edit(2),
      ADR5 => S_edit(1),
      O => ALARMCLOCK_T1_T3_n0142_inv1_745
    );
  ALARMCLOCK_A1_T3_Mmux_Tcnt_3_Tmin_3_mux_27_OUT21_SW0 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T3_Tcnt(0),
      ADR1 => ALARMCLOCK_A1_T3_Tcnt(1),
      O => N262
    );
  ALARMCLOCK_A1_T3_Mmux_Tcnt_3_Tmin_3_mux_27_OUT21 : X_LUT6
    generic map(
      INIT => X"1101550551415505"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_A1_cntenT3,
      ADR2 => N262,
      ADR3 => ALARMCLOCK_A1_T3_Umin_3_Tmin_3_AND_21_o,
      ADR4 => ALARMCLOCK_A1_upDwn,
      ADR5 => ALARMCLOCK_A1_T3_Tmax_3_Umax_3_OR_92_o,
      O => ALARMCLOCK_A1_T3_Tcnt_3_Tmin_3_mux_27_OUT_1_Q
    );
  ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_SW1 : X_LUT5
    generic map(
      INIT => X"55555554"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T1_Umin_3_Tmin_3_AND_21_o_604,
      ADR1 => ALARMCLOCK_A1_T1_Ucnt(0),
      ADR2 => ALARMCLOCK_A1_T1_Ucnt(1),
      ADR3 => ALARMCLOCK_A1_T1_Ucnt(2),
      ADR4 => ALARMCLOCK_A1_T1_Ucnt(3),
      O => N264
    );
  ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_SW1 : X_LUT5
    generic map(
      INIT => X"55555554"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T2_Umin_3_Tmin_3_AND_21_o_627,
      ADR1 => ALARMCLOCK_A1_T2_Ucnt(0),
      ADR2 => ALARMCLOCK_A1_T2_Ucnt(1),
      ADR3 => ALARMCLOCK_A1_T2_Ucnt(2),
      ADR4 => ALARMCLOCK_A1_T2_Ucnt(3),
      O => N266
    );
  ALARMCLOCK_D1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT21_F : X_LUT5
    generic map(
      INIT => X"FFFF9998"
    )
    port map (
      ADR0 => ALARMCLOCK_D1_T1_Ucnt(1),
      ADR1 => ALARMCLOCK_D1_T1_Ucnt(0),
      ADR2 => ALARMCLOCK_D1_T1_Ucnt(2),
      ADR3 => ALARMCLOCK_D1_T1_Ucnt(3),
      ADR4 => reset_112,
      O => N238
    );
  ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT411_SW3 : X_LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T1_Ucnt(2),
      ADR1 => ALARMCLOCK_A1_T1_Ucnt(3),
      ADR2 => ALARMCLOCK_A1_T1_Umin_3_Tmin_3_AND_21_o_604,
      O => N244
    );
  ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Umin_3_mux_30_OUT411_SW3 : X_LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T2_Ucnt(2),
      ADR1 => ALARMCLOCK_A1_T2_Ucnt(3),
      ADR2 => ALARMCLOCK_A1_T2_Umin_3_Tmin_3_AND_21_o_627,
      O => N246
    );
  ALARMCLOCK_A1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_A11 : X_LUT6
    generic map(
      INIT => X"FF3BFFFFAA2AAAAA"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T1_Tcnt(0),
      ADR1 => S_edit(7),
      ADR2 => ALARMCLOCK_A1_T1_Tmax_3_Umax_3_OR_92_o_605,
      ADR3 => ALARMCLOCK_A1_present_state_FSM_FFd1_684,
      ADR4 => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      ADR5 => ALARMCLOCK_A1_T1_Umin_3_Tmin_3_AND_21_o_604,
      O => ALARMCLOCK_A1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_A_0_Q
    );
  ALARMCLOCK_A1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_A11 : X_LUT6
    generic map(
      INIT => X"FF3BFFFFAA2AAAAA"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T2_Tcnt(0),
      ADR1 => S_edit(7),
      ADR2 => ALARMCLOCK_A1_T2_Tmax_3_Umax_3_OR_92_o_628,
      ADR3 => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      ADR4 => ALARMCLOCK_A1_present_state_FSM_FFd1_684,
      ADR5 => ALARMCLOCK_A1_T2_Umin_3_Tmin_3_AND_21_o_627,
      O => ALARMCLOCK_A1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_A_0_Q
    );
  ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT11 : X_LUT5
    generic map(
      INIT => X"11411111"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q_610,
      ADR2 => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      ADR3 => ALARMCLOCK_A1_present_state_FSM_FFd1_684,
      ADR4 => S_edit(7),
      O => ALARMCLOCK_A1_T1_Ucnt_3_Umin_3_mux_30_OUT_0_Q
    );
  ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Umin_3_mux_30_OUT11 : X_LUT5
    generic map(
      INIT => X"11411111"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q_633,
      ADR2 => ALARMCLOCK_A1_present_state_FSM_FFd1_684,
      ADR3 => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      ADR4 => S_edit(7),
      O => ALARMCLOCK_A1_T2_Ucnt_3_Umin_3_mux_30_OUT_0_Q
    );
  ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Umin_3_mux_30_OUT11 : X_LUT5
    generic map(
      INIT => X"41111111"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q_653,
      ADR2 => ALARMCLOCK_A1_present_state_FSM_FFd1_684,
      ADR3 => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      ADR4 => S_edit(7),
      O => ALARMCLOCK_A1_T3_Ucnt_3_Umin_3_mux_30_OUT_0_Q
    );
  ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT31 : X_LUT6
    generic map(
      INIT => X"1414141441141414"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Umin_3_mux_30_OUT41,
      ADR2 => ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_2_Q,
      ADR3 => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      ADR4 => S_edit(7),
      ADR5 => ALARMCLOCK_A1_present_state_FSM_FFd1_684,
      O => ALARMCLOCK_A1_T1_Ucnt_3_Umin_3_mux_30_OUT_2_Q
    );
  ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Umin_3_mux_30_OUT31 : X_LUT6
    generic map(
      INIT => X"1414141441141414"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Umin_3_mux_30_OUT41,
      ADR2 => ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_2_Q,
      ADR3 => ALARMCLOCK_A1_present_state_FSM_FFd1_684,
      ADR4 => S_edit(7),
      ADR5 => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      O => ALARMCLOCK_A1_T2_Ucnt_3_Umin_3_mux_30_OUT_2_Q
    );
  ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_A31 : X_LUT6
    generic map(
      INIT => X"0222AAAAAAAAAAAA"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T1_Ucnt(2),
      ADR1 => ALARMCLOCK_T1_T1_Tcnt(1),
      ADR2 => ALARMCLOCK_T1_T1_Ucnt(3),
      ADR3 => ALARMCLOCK_T1_T1_Tcnt(0),
      ADR4 => ALARMCLOCK_T1_T1_upDwn_cnten_AND_12_o,
      ADR5 => ALARMCLOCK_T1_T1_Tcnt(2),
      O => ALARMCLOCK_T1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_2_Q
    );
  ALARMCLOCK_A1_T1_upDwn_cnten_AND_12_o1 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_present_state_FSM_FFd1_684,
      ADR1 => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      ADR2 => S_edit(7),
      O => ALARMCLOCK_A1_T1_upDwn_cnten_AND_12_o
    );
  ALARMCLOCK_A1_T2_upDwn_cnten_AND_12_o1 : X_LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      ADR1 => ALARMCLOCK_A1_present_state_FSM_FFd1_684,
      ADR2 => S_edit(7),
      O => ALARMCLOCK_A1_T2_upDwn_cnten_AND_12_o
    );
  ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q : X_LUT6
    generic map(
      INIT => X"99A9999999599999"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q,
      ADR1 => N264,
      ADR2 => S_edit(7),
      ADR3 => ALARMCLOCK_A1_present_state_FSM_FFd1_684,
      ADR4 => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      ADR5 => ALARMCLOCK_A1_T1_Tmax_3_Umax_3_OR_92_o_605,
      O => ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q_610
    );
  ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q : X_LUT6
    generic map(
      INIT => X"99A9999999599999"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q,
      ADR1 => N266,
      ADR2 => S_edit(7),
      ADR3 => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      ADR4 => ALARMCLOCK_A1_present_state_FSM_FFd1_684,
      ADR5 => ALARMCLOCK_A1_T2_Tmax_3_Umax_3_OR_92_o_628,
      O => ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q_633
    );
  ALARMCLOCK_A1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_1 : X_LUT6
    generic map(
      INIT => X"2022222225222222"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T1_Tcnt(0),
      ADR1 => ALARMCLOCK_A1_T1_Umin_3_Tmin_3_AND_21_o_604,
      ADR2 => ALARMCLOCK_A1_present_state_FSM_FFd1_684,
      ADR3 => S_edit(7),
      ADR4 => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      ADR5 => ALARMCLOCK_A1_T1_Tmax_3_Umax_3_OR_92_o_605,
      O => ALARMCLOCK_A1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_Q
    );
  ALARMCLOCK_A1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_1 : X_LUT6
    generic map(
      INIT => X"2022222225222222"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T2_Tcnt(0),
      ADR1 => ALARMCLOCK_A1_T2_Umin_3_Tmin_3_AND_21_o_627,
      ADR2 => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      ADR3 => S_edit(7),
      ADR4 => ALARMCLOCK_A1_present_state_FSM_FFd1_684,
      ADR5 => ALARMCLOCK_A1_T2_Tmax_3_Umax_3_OR_92_o_628,
      O => ALARMCLOCK_A1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_Q
    );
  ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Umin_3_mux_30_OUT411 : X_LUT6
    generic map(
      INIT => X"80800080808080FF"
    )
    port map (
      ADR0 => S_edit(7),
      ADR1 => ALARMCLOCK_A1_present_state_FSM_FFd1_684,
      ADR2 => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      ADR3 => ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_1_Q,
      ADR4 => ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q_653,
      ADR5 => ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_0_Q,
      O => ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Umin_3_mux_30_OUT41
    );
  ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_A31 : X_LUT6
    generic map(
      INIT => X"0222AAAAAAAAAAAA"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T1_Ucnt(2),
      ADR1 => ALARMCLOCK_A1_T1_Tcnt(1),
      ADR2 => ALARMCLOCK_A1_T1_Ucnt(3),
      ADR3 => ALARMCLOCK_A1_T1_Tcnt(0),
      ADR4 => ALARMCLOCK_A1_T1_upDwn_cnten_AND_12_o,
      ADR5 => ALARMCLOCK_A1_T1_Tcnt(2),
      O => ALARMCLOCK_A1_T1_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_2_Q
    );
  ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_A31 : X_LUT6
    generic map(
      INIT => X"0222AAAAAAAAAAAA"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T2_Ucnt(2),
      ADR1 => ALARMCLOCK_A1_T2_Tcnt(1),
      ADR2 => ALARMCLOCK_A1_T2_Ucnt(3),
      ADR3 => ALARMCLOCK_A1_T2_Tcnt(0),
      ADR4 => ALARMCLOCK_A1_T2_upDwn_cnten_AND_12_o,
      ADR5 => ALARMCLOCK_A1_T2_Tcnt(2),
      O => ALARMCLOCK_A1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_2_Q
    );
  ALARMCLOCK_A1_T3_upDwn_cnten_AND_12_o1 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_present_state_FSM_FFd1_684,
      ADR1 => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      ADR2 => S_edit(7),
      O => ALARMCLOCK_A1_T3_upDwn_cnten_AND_12_o
    );
  ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_A31 : X_LUT5
    generic map(
      INIT => X"2AAAAAAA"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T3_Ucnt(2),
      ADR1 => ALARMCLOCK_A1_present_state_FSM_FFd1_684,
      ADR2 => ALARMCLOCK_A1_present_state_FSM_FFd2_683,
      ADR3 => S_edit(7),
      ADR4 => ALARMCLOCK_A1_T3_Tcnt(1),
      O => ALARMCLOCK_A1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_A_2_Q
    );
  ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_1 : X_LUT6
    generic map(
      INIT => X"0020222255252222"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T3_Ucnt(0),
      ADR1 => ALARMCLOCK_T1_T3_Umin_3_Tmin_3_AND_21_o,
      ADR2 => S_edit(2),
      ADR3 => S_edit(1),
      ADR4 => ALARMCLOCK_T1_cntenT3,
      ADR5 => ALARMCLOCK_T1_T3_Tmax_3_Umax_3_OR_92_o,
      O => ALARMCLOCK_T1_T3_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q
    );
  T1_T1s_pulse_26_7_1 : X_LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      ADR0 => T1_T1s_cnt_signal(26),
      ADR1 => T1_T1s_pulse_26_1_718,
      ADR2 => N114,
      ADR3 => T1_T1s_pulse(26),
      ADR4 => T1_T1s_pulse_26_2_719,
      ADR5 => T1_T10ms_pulse_19_1_711,
      O => T1_T1s_pulse_26_7_973
    );
  ALARMCLOCK_T1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_1 : X_LUT3
    generic map(
      INIT => X"1A"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T2_Ucnt(0),
      ADR1 => ALARMCLOCK_T1_T2_Tmax_3_Umax_3_OR_92_o_471,
      ADR2 => ALARMCLOCK_T1_T2_upDwn_cnten_AND_12_o,
      O => ALARMCLOCK_T1_T2_Mmux_Ucnt_3_Ucnt_3_mux_29_OUT_rs_lut_0_Q
    );
  T1_T1s_Mcount_cnt_signal_lut_0_INV_0 : X_INV
    port map (
      I => T1_T1ms_cnt_signal(0),
      O => T1_T1s_Mcount_cnt_signal_lut(0)
    );
  T1_T1ms_Mcount_cnt_signal_lut_0_INV_0 : X_INV
    port map (
      I => T1_T1ms_cnt_signal(0),
      O => T1_T1ms_Mcount_cnt_signal_lut(0)
    );
  T1_T10ms_Mcount_cnt_signal_lut_0_INV_0 : X_INV
    port map (
      I => T1_T1ms_cnt_signal(0),
      O => T1_T10ms_Mcount_cnt_signal_lut(0)
    );
  T1_T100ms_Mcount_cnt_signal_lut_0_INV_0 : X_INV
    port map (
      I => T1_T1ms_cnt_signal(0),
      O => T1_T100ms_Mcount_cnt_signal_lut(0)
    );
  init_inv1_INV_0 : X_INV
    port map (
      I => init_113,
      O => init_inv
    );
  DATATODISPLAY_B1_blink_on_INV_60_o1_INV_0 : X_INV
    port map (
      I => DATATODISPLAY_B1_blink_on_213,
      O => DATATODISPLAY_B1_blink_on_INV_60_o
    );
  W1_C1_Mram_dignr_int_1_GND_153_o_wide_mux_0_OUT12_INV_0 : X_INV
    port map (
      I => W1_C1_dignr_int(0),
      O => W1_C1_Mram_dignr_int_1_GND_153_o_wide_mux_0_OUT
    );
  S_current_edit_0_INV_29_o1_INV_0 : X_INV
    port map (
      I => S_current_edit_FSM_FFd2_116,
      O => S_current_edit_0_INV_29_o
    );
  S_current_edit_1_INV_30_o1_INV_0 : X_INV
    port map (
      I => S_current_edit_FSM_FFd1_115,
      O => S_current_edit_1_INV_30_o
    );
  S_alarm_is_buzzing_inv1_INV_0 : X_INV
    port map (
      I => ALARMCLOCK_A1_ledOut_96,
      O => S_alarm_is_buzzing_inv
    );
  ALARMCLOCK_A1_onOff_INV_57_o1_INV_0 : X_INV
    port map (
      I => ALARMCLOCK_A1_onOff_680,
      O => ALARMCLOCK_A1_onOff_INV_57_o
    );
  W1_C1_Mmux_bcdout43 : X_MUX2
    port map (
      IA => N268,
      IB => N269,
      SEL => W1_C1_dignr_int(0),
      O => W1_C1_Mmux_bcdout42
    );
  W1_C1_Mmux_bcdout43_F : X_LUT6
    generic map(
      INIT => X"2A0A280822022000"
    )
    port map (
      ADR0 => W1_C1_Mmux_bcdout121_395,
      ADR1 => DATATODISPLAY_B1_n0013,
      ADR2 => W1_C1_dignr_int(1),
      ADR3 => ALARMCLOCK_count_t_16_36,
      ADR4 => ALARMCLOCK_count_t_8_43,
      ADR5 => ALARMCLOCK_count_t_0_50,
      O => N268
    );
  W1_C1_Mmux_bcdout43_G : X_LUT6
    generic map(
      INIT => X"2A0A280822022000"
    )
    port map (
      ADR0 => W1_C1_Mmux_bcdout121_395,
      ADR1 => DATATODISPLAY_B1_n0013,
      ADR2 => W1_C1_dignr_int(1),
      ADR3 => ALARMCLOCK_count_t_20_32,
      ADR4 => ALARMCLOCK_count_t_12_39,
      ADR5 => ALARMCLOCK_count_t_4_46,
      O => N269
    );
  ALARMCLOCK_A1_T1_Mmux_Tcnt_3_Tmin_3_mux_27_OUT411 : X_MUX2
    port map (
      IA => N270,
      IB => N271,
      SEL => ALARMCLOCK_A1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_1_Q,
      O => ALARMCLOCK_A1_T1_Mmux_Tcnt_3_Tmin_3_mux_27_OUT41
    );
  ALARMCLOCK_A1_T1_Mmux_Tcnt_3_Tmin_3_mux_27_OUT411_F : X_LUT4
    generic map(
      INIT => X"D8FF"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T1_upDwn_cnten_AND_12_o,
      ADR1 => ALARMCLOCK_A1_T1_Tmax_3_Umax_3_OR_92_o_605,
      ADR2 => ALARMCLOCK_A1_T1_Umin_3_Tmin_3_AND_21_o_604,
      ADR3 => ALARMCLOCK_A1_T1_Tcnt(1),
      O => N270
    );
  ALARMCLOCK_A1_T1_Mmux_Tcnt_3_Tmin_3_mux_27_OUT411_G : X_LUT5
    generic map(
      INIT => X"8808DD5D"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_Q,
      ADR1 => ALARMCLOCK_A1_cntenT1,
      ADR2 => S_edit(8),
      ADR3 => S_edit(7),
      ADR4 => ALARMCLOCK_A1_T1_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_A_0_Q,
      O => N271
    );
  ALARMCLOCK_A1_T2_Mmux_Tcnt_3_Tmin_3_mux_27_OUT411 : X_MUX2
    port map (
      IA => N272,
      IB => N273,
      SEL => ALARMCLOCK_A1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_1_Q,
      O => ALARMCLOCK_A1_T2_Mmux_Tcnt_3_Tmin_3_mux_27_OUT41
    );
  ALARMCLOCK_A1_T2_Mmux_Tcnt_3_Tmin_3_mux_27_OUT411_F : X_LUT3
    generic map(
      INIT => X"8F"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T2_Tmax_3_Umax_3_OR_92_o_628,
      ADR1 => ALARMCLOCK_A1_T2_upDwn_cnten_AND_12_o,
      ADR2 => ALARMCLOCK_A1_T2_Tcnt(1),
      O => N272
    );
  ALARMCLOCK_A1_T2_Mmux_Tcnt_3_Tmin_3_mux_27_OUT411_G : X_LUT5
    generic map(
      INIT => X"8808DD5D"
    )
    port map (
      ADR0 => ALARMCLOCK_A1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_Q,
      ADR1 => ALARMCLOCK_A1_cntenT2,
      ADR2 => S_edit(8),
      ADR3 => S_edit(7),
      ADR4 => ALARMCLOCK_A1_T2_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_A_0_Q,
      O => N273
    );
  ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tmin_3_mux_27_OUT42 : X_MUX2
    port map (
      IA => N274,
      IB => N275,
      SEL => ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_2_Q,
      O => ALARMCLOCK_D1_T3_Tcnt_3_Tmin_3_mux_27_OUT_3_Q
    );
  ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tmin_3_mux_27_OUT42_F : X_LUT6
    generic map(
      INIT => X"4444441414441414"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_3_Q,
      ADR2 => ALARMCLOCK_D1_T3_Tcnt(2),
      ADR3 => ALARMCLOCK_D1_T3_upDwn_cnten_AND_12_o,
      ADR4 => ALARMCLOCK_D1_T3_Umin_3_Tmin_3_AND_21_o_566,
      ADR5 => ALARMCLOCK_D1_T3_Tmax_3_Umax_3_OR_92_o,
      O => N274
    );
  ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tmin_3_mux_27_OUT42_G : X_LUT6
    generic map(
      INIT => X"4141414111414144"
    )
    port map (
      ADR0 => reset_112,
      ADR1 => ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_3_Q,
      ADR2 => ALARMCLOCK_D1_T3_upDwn_cnten_AND_12_o,
      ADR3 => ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_A_1_Q,
      ADR4 => ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_A_0_Q,
      ADR5 => ALARMCLOCK_D1_T3_Mmux_Tcnt_3_Tcnt_3_mux_26_OUT_rs_lut_0_Q,
      O => N275
    );
  ALARMCLOCK_T1_T2_Mmux_Tcnt_3_Tmin_3_mux_27_OUT411 : X_MUX2
    port map (
      IA => N276,
      IB => N277,
      SEL => ALARMCLOCK_T1_cntenT2_437,
      O => ALARMCLOCK_T1_T2_Mmux_Tcnt_3_Tmin_3_mux_27_OUT41
    );
  ALARMCLOCK_T1_T2_Mmux_Tcnt_3_Tmin_3_mux_27_OUT411_F : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T2_Tcnt(1),
      ADR1 => ALARMCLOCK_T1_T2_Umin_3_Tmin_3_AND_21_o_472,
      ADR2 => ALARMCLOCK_T1_T2_Tcnt(0),
      O => N276
    );
  ALARMCLOCK_T1_T2_Mmux_Tcnt_3_Tmin_3_mux_27_OUT411_G : X_LUT6
    generic map(
      INIT => X"CCCDFFFF44CD55FF"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_T2_Tcnt(0),
      ADR1 => S_edit(1),
      ADR2 => ALARMCLOCK_T1_T2_Umin_3_Tmin_3_AND_21_o_472,
      ADR3 => ALARMCLOCK_T1_T2_Tcnt(1),
      ADR4 => S_edit(2),
      ADR5 => ALARMCLOCK_T1_T2_Tmax_3_Umax_3_OR_92_o_471,
      O => N277
    );
  ALARMCLOCK_T1_T1_Mmux_Tcnt_3_Tmin_3_mux_27_OUT411 : X_MUX2
    port map (
      IA => N278,
      IB => N279,
      SEL => ALARMCLOCK_T1_T1_Tcnt(1),
      O => ALARMCLOCK_T1_T1_Mmux_Tcnt_3_Tmin_3_mux_27_OUT41
    );
  ALARMCLOCK_T1_T1_Mmux_Tcnt_3_Tmin_3_mux_27_OUT411_F : X_LUT6
    generic map(
      INIT => X"AAAA20AABBBB33BB"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_cntenT1,
      ADR1 => ALARMCLOCK_T1_T1_Umin_3_Tmin_3_AND_21_o_494,
      ADR2 => ALARMCLOCK_T1_upDwn,
      ADR3 => S_edit(2),
      ADR4 => S_edit(1),
      ADR5 => ALARMCLOCK_T1_T1_Tcnt(0),
      O => N278
    );
  ALARMCLOCK_T1_T1_Mmux_Tcnt_3_Tmin_3_mux_27_OUT411_G : X_LUT6
    generic map(
      INIT => X"8808AA0A88088808"
    )
    port map (
      ADR0 => ALARMCLOCK_T1_cntenT1,
      ADR1 => ALARMCLOCK_T1_T1_Tmax_3_Umax_3_OR_92_o_493,
      ADR2 => S_edit(2),
      ADR3 => S_edit(1),
      ADR4 => ALARMCLOCK_T1_T1_Tcnt(0),
      ADR5 => ALARMCLOCK_T1_upDwn,
      O => N279
    );
  sysclk_BUFGP_BUFG : X_CKBUF
    port map (
      I => sysclk_BUFGP_IBUFG_2,
      O => sysclk_BUFGP
    );
  sysclk_BUFGP_IBUFG : X_CKBUF
    port map (
      I => sysclk,
      O => sysclk_BUFGP_IBUFG_2
    );
  an_3_OBUF : X_OBUF
    port map (
      I => an_3_OBUF_108,
      O => an(3)
    );
  an_2_OBUF : X_OBUF
    port map (
      I => an_2_OBUF_109,
      O => an(2)
    );
  an_1_OBUF : X_OBUF
    port map (
      I => an_1_OBUF_110,
      O => an(1)
    );
  an_0_OBUF : X_OBUF
    port map (
      I => an_0_OBUF_111,
      O => an(0)
    );
  cath_6_OBUF : X_OBUF
    port map (
      I => cath_6_OBUF_101,
      O => cath(6)
    );
  cath_5_OBUF : X_OBUF
    port map (
      I => cath_5_OBUF_102,
      O => cath(5)
    );
  cath_4_OBUF : X_OBUF
    port map (
      I => cath_4_OBUF_103,
      O => cath(4)
    );
  cath_3_OBUF : X_OBUF
    port map (
      I => cath_3_OBUF_104,
      O => cath(3)
    );
  cath_2_OBUF : X_OBUF
    port map (
      I => cath_2_OBUF_105,
      O => cath(2)
    );
  cath_1_OBUF : X_OBUF
    port map (
      I => cath_1_OBUF_106,
      O => cath(1)
    );
  cath_0_OBUF : X_OBUF
    port map (
      I => cath_0_OBUF_107,
      O => cath(0)
    );
  sel_out_2_OBUF : X_OBUF
    port map (
      I => sel_out_2_OBUF_114,
      O => sel_out(2)
    );
  sel_out_1_OBUF : X_OBUF
    port map (
      I => S_current_edit_FSM_FFd1_115,
      O => sel_out(1)
    );
  sel_out_0_OBUF : X_OBUF
    port map (
      I => S_current_edit_FSM_FFd2_116,
      O => sel_out(0)
    );
  led_alarm_buzzing_OBUF : X_OBUF
    port map (
      I => ALARMCLOCK_A1_ledOut_96,
      O => led_alarm_buzzing
    );
  led_alarm_on_OBUF : X_OBUF
    port map (
      I => ALARMCLOCK_A1_ledOn_95,
      O => led_alarm_on
    );
  NlwBlock_clock_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_clock_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

