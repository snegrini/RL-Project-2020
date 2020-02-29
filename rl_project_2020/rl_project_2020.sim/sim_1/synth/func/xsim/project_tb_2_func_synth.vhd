-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Sat Feb 29 16:41:36 2020
-- Host        : dumevm running 64-bit Ubuntu 16.04.6 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/snegrini/Documents/RL-Project-2020-new/rl_project_2020/rl_project_2020.sim/sim_1/synth/func/xsim/project_tb_2_func_synth.vhd
-- Design      : project_reti_logiche
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_reti_logiche is
  port (
    i_clk : in STD_LOGIC;
    i_start : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_address : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_done : out STD_LOGIC;
    o_en : out STD_LOGIC;
    o_we : out STD_LOGIC;
    o_data : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of project_reti_logiche : entity is true;
end project_reti_logiche;

architecture STRUCTURE of project_reti_logiche is
  signal COUNT : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \FSM_sequential_pres_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_16_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_17_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_18_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_19_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_20_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_21_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_22_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_23_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_24_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_25_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state_reg[2]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state_reg[2]_i_13_n_1\ : STD_LOGIC;
  signal \FSM_sequential_pres_state_reg[2]_i_13_n_2\ : STD_LOGIC;
  signal \FSM_sequential_pres_state_reg[2]_i_13_n_3\ : STD_LOGIC;
  signal i_clk_IBUF : STD_LOGIC;
  signal i_clk_IBUF_BUFG : STD_LOGIC;
  signal i_data_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i_rst_IBUF : STD_LOGIC;
  signal i_start_IBUF : STD_LOGIC;
  signal is_target_address_set : STD_LOGIC;
  signal is_target_address_set_i_1_n_0 : STD_LOGIC;
  signal o_address_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal o_address_next : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \o_address_next_next[0]_i_2_n_0\ : STD_LOGIC;
  signal \o_address_next_next[0]_i_3_n_0\ : STD_LOGIC;
  signal \o_address_next_next[0]_i_4_n_0\ : STD_LOGIC;
  signal \o_address_next_next[0]_i_5_n_0\ : STD_LOGIC;
  signal \o_address_next_next[0]_i_6_n_0\ : STD_LOGIC;
  signal \o_address_next_next[15]_i_1_n_0\ : STD_LOGIC;
  signal \o_address_next_next[15]_i_3_n_0\ : STD_LOGIC;
  signal \o_address_next_next[15]_i_5_n_0\ : STD_LOGIC;
  signal \o_address_next_next[15]_i_6_n_0\ : STD_LOGIC;
  signal \o_address_next_next[3]_i_2_n_0\ : STD_LOGIC;
  signal \o_address_next_next[3]_i_3_n_0\ : STD_LOGIC;
  signal \o_address_next_next_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \o_address_next_next_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \o_address_next_next_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \o_address_next_next_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \o_address_next_next_reg[15]_i_4_n_2\ : STD_LOGIC;
  signal \o_address_next_next_reg[15]_i_4_n_3\ : STD_LOGIC;
  signal \o_address_next_next_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \o_address_next_next_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \o_address_next_next_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \o_address_next_next_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \o_address_next_next_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \o_address_next_next_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \o_address_next_next_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \o_address_next_next_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal o_data_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_data_next : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_en_OBUF : STD_LOGIC;
  signal o_en_next : STD_LOGIC;
  signal o_we_OBUF : STD_LOGIC;
  signal o_we_next : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal pres_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal target_address0 : STD_LOGIC;
  signal \target_address_reg_n_0_[0]\ : STD_LOGIC;
  signal \target_address_reg_n_0_[1]\ : STD_LOGIC;
  signal \target_address_reg_n_0_[2]\ : STD_LOGIC;
  signal \target_address_reg_n_0_[3]\ : STD_LOGIC;
  signal \target_address_reg_n_0_[4]\ : STD_LOGIC;
  signal \target_address_reg_n_0_[5]\ : STD_LOGIC;
  signal \target_address_reg_n_0_[6]\ : STD_LOGIC;
  signal \target_address_reg_n_0_[7]\ : STD_LOGIC;
  signal wz_bit : STD_LOGIC;
  signal wz_bit_next : STD_LOGIC;
  signal wz_offset : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \wz_offset[0]_i_2_n_0\ : STD_LOGIC;
  signal \wz_offset[0]_i_4_n_0\ : STD_LOGIC;
  signal \wz_offset[0]_i_5_n_0\ : STD_LOGIC;
  signal \wz_offset[0]_i_6_n_0\ : STD_LOGIC;
  signal \wz_offset[0]_i_7_n_0\ : STD_LOGIC;
  signal \wz_offset[3]_i_1_n_0\ : STD_LOGIC;
  signal \wz_offset[3]_i_3_n_0\ : STD_LOGIC;
  signal \wz_offset[3]_i_5_n_0\ : STD_LOGIC;
  signal \wz_offset[3]_i_6_n_0\ : STD_LOGIC;
  signal \wz_offset[3]_i_7_n_0\ : STD_LOGIC;
  signal \wz_offset[3]_i_8_n_0\ : STD_LOGIC;
  signal \wz_offset[3]_i_9_n_0\ : STD_LOGIC;
  signal wz_offset_next : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \wz_offset_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \wz_offset_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \wz_offset_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \wz_offset_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \wz_offset_reg[3]_i_4_n_1\ : STD_LOGIC;
  signal \wz_offset_reg[3]_i_4_n_2\ : STD_LOGIC;
  signal \wz_offset_reg[3]_i_4_n_3\ : STD_LOGIC;
  signal \NLW_FSM_sequential_pres_state_reg[2]_i_13_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_address_next_next_reg[15]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_o_address_next_next_reg[15]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_wz_offset_reg[0]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_pres_state[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_pres_state[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_pres_state[2]_i_14\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_pres_state[2]_i_15\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_pres_state[2]_i_16\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_pres_state[2]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_pres_state[2]_i_6\ : label is "soft_lutpair9";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_pres_state_reg[0]\ : label is "done:101,get_addr:011,wait_ram:010,write_back:100,fetch_addr:001,idle:000,iSTATE:110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_pres_state_reg[1]\ : label is "done:101,get_addr:011,wait_ram:010,write_back:100,fetch_addr:001,idle:000,iSTATE:110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_pres_state_reg[2]\ : label is "done:101,get_addr:011,wait_ram:010,write_back:100,fetch_addr:001,idle:000,iSTATE:110";
  attribute SOFT_HLUTNM of is_target_address_set_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_address_next_next[0]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_address_next_next[0]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \o_address_next_next[0]_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \o_address_next_next[15]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \o_address_next_next[15]_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \o_data[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_data[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \o_data[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \o_data[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of o_en_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \wz_offset[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wz_offset[3]_i_5\ : label is "soft_lutpair3";
begin
\FSM_sequential_pres_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAAFFFFBEBEFFF0"
    )
        port map (
      I0 => \FSM_sequential_pres_state[0]_i_2_n_0\,
      I1 => is_target_address_set,
      I2 => pres_state(1),
      I3 => i_start_IBUF,
      I4 => pres_state(0),
      I5 => pres_state(2),
      O => \FSM_sequential_pres_state[0]_i_1_n_0\
    );
\FSM_sequential_pres_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000051"
    )
        port map (
      I0 => pres_state(2),
      I1 => \FSM_sequential_pres_state[0]_i_3_n_0\,
      I2 => \o_address_next_next[0]_i_2_n_0\,
      I3 => \FSM_sequential_pres_state[2]_i_2_n_0\,
      I4 => \o_address_next_next[0]_i_3_n_0\,
      O => \FSM_sequential_pres_state[0]_i_2_n_0\
    );
\FSM_sequential_pres_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => \o_address_next_next[15]_i_3_n_0\,
      I1 => o_address_OBUF(1),
      I2 => o_address_OBUF(2),
      I3 => \o_address_next_next[15]_i_5_n_0\,
      I4 => plusOp(1),
      I5 => plusOp(2),
      O => \FSM_sequential_pres_state[0]_i_3_n_0\
    );
\FSM_sequential_pres_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"085A"
    )
        port map (
      I0 => pres_state(1),
      I1 => i_start_IBUF,
      I2 => pres_state(0),
      I3 => pres_state(2),
      O => \FSM_sequential_pres_state[1]_i_1_n_0\
    );
\FSM_sequential_pres_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB0FFFFFFB00000"
    )
        port map (
      I0 => \FSM_sequential_pres_state[2]_i_2_n_0\,
      I1 => \FSM_sequential_pres_state[2]_i_3_n_0\,
      I2 => \FSM_sequential_pres_state[2]_i_4_n_0\,
      I3 => \FSM_sequential_pres_state[2]_i_5_n_0\,
      I4 => \FSM_sequential_pres_state[2]_i_6_n_0\,
      I5 => pres_state(2),
      O => \FSM_sequential_pres_state[2]_i_1_n_0\
    );
\FSM_sequential_pres_state[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => plusOp(11),
      I1 => plusOp(14),
      I2 => plusOp(15),
      I3 => plusOp(13),
      I4 => \FSM_sequential_pres_state[2]_i_15_n_0\,
      I5 => plusOp(12),
      O => \FSM_sequential_pres_state[2]_i_10_n_0\
    );
\FSM_sequential_pres_state[2]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCEC"
    )
        port map (
      I0 => o_address_OBUF(4),
      I1 => \FSM_sequential_pres_state[2]_i_16_n_0\,
      I2 => \o_address_next_next[3]_i_3_n_0\,
      I3 => o_address_OBUF(3),
      O => \FSM_sequential_pres_state[2]_i_11_n_0\
    );
\FSM_sequential_pres_state[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC0FFC0FFC0EAC0"
    )
        port map (
      I0 => plusOp(3),
      I1 => \o_address_next_next[3]_i_3_n_0\,
      I2 => o_address_OBUF(15),
      I3 => \FSM_sequential_pres_state[2]_i_15_n_0\,
      I4 => plusOp(5),
      I5 => plusOp(4),
      O => \FSM_sequential_pres_state[2]_i_12_n_0\
    );
\FSM_sequential_pres_state[2]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \o_address_next_next[0]_i_2_n_0\,
      I1 => \FSM_sequential_pres_state[0]_i_3_n_0\,
      O => \FSM_sequential_pres_state[2]_i_14_n_0\
    );
\FSM_sequential_pres_state[2]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => \FSM_sequential_pres_state[2]_i_25_n_0\,
      I1 => pres_state(1),
      I2 => \wz_offset[0]_i_2_n_0\,
      I3 => \FSM_sequential_pres_state_reg[2]_i_13_n_0\,
      O => \FSM_sequential_pres_state[2]_i_15_n_0\
    );
\FSM_sequential_pres_state[2]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F10"
    )
        port map (
      I0 => is_target_address_set,
      I1 => pres_state(1),
      I2 => pres_state(0),
      I3 => pres_state(2),
      O => \FSM_sequential_pres_state[2]_i_16_n_0\
    );
\FSM_sequential_pres_state[2]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \target_address_reg_n_0_[7]\,
      I1 => i_data_IBUF(7),
      I2 => \target_address_reg_n_0_[6]\,
      I3 => i_data_IBUF(6),
      O => \FSM_sequential_pres_state[2]_i_17_n_0\
    );
\FSM_sequential_pres_state[2]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \target_address_reg_n_0_[5]\,
      I1 => i_data_IBUF(5),
      I2 => \target_address_reg_n_0_[4]\,
      I3 => i_data_IBUF(4),
      O => \FSM_sequential_pres_state[2]_i_18_n_0\
    );
\FSM_sequential_pres_state[2]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \target_address_reg_n_0_[3]\,
      I1 => i_data_IBUF(3),
      I2 => \target_address_reg_n_0_[2]\,
      I3 => i_data_IBUF(2),
      O => \FSM_sequential_pres_state[2]_i_19_n_0\
    );
\FSM_sequential_pres_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_sequential_pres_state[2]_i_7_n_0\,
      I1 => \FSM_sequential_pres_state[2]_i_8_n_0\,
      I2 => \FSM_sequential_pres_state[2]_i_9_n_0\,
      I3 => \FSM_sequential_pres_state[2]_i_10_n_0\,
      I4 => \FSM_sequential_pres_state[2]_i_11_n_0\,
      I5 => \FSM_sequential_pres_state[2]_i_12_n_0\,
      O => \FSM_sequential_pres_state[2]_i_2_n_0\
    );
\FSM_sequential_pres_state[2]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \target_address_reg_n_0_[1]\,
      I1 => i_data_IBUF(1),
      I2 => \target_address_reg_n_0_[0]\,
      I3 => i_data_IBUF(0),
      O => \FSM_sequential_pres_state[2]_i_20_n_0\
    );
\FSM_sequential_pres_state[2]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => i_data_IBUF(7),
      I1 => \target_address_reg_n_0_[7]\,
      I2 => i_data_IBUF(6),
      I3 => \target_address_reg_n_0_[6]\,
      O => \FSM_sequential_pres_state[2]_i_21_n_0\
    );
\FSM_sequential_pres_state[2]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => i_data_IBUF(5),
      I1 => \target_address_reg_n_0_[5]\,
      I2 => i_data_IBUF(4),
      I3 => \target_address_reg_n_0_[4]\,
      O => \FSM_sequential_pres_state[2]_i_22_n_0\
    );
\FSM_sequential_pres_state[2]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => i_data_IBUF(3),
      I1 => \target_address_reg_n_0_[3]\,
      I2 => i_data_IBUF(2),
      I3 => \target_address_reg_n_0_[2]\,
      O => \FSM_sequential_pres_state[2]_i_23_n_0\
    );
\FSM_sequential_pres_state[2]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => i_data_IBUF(1),
      I1 => \target_address_reg_n_0_[1]\,
      I2 => i_data_IBUF(0),
      I3 => \target_address_reg_n_0_[0]\,
      O => \FSM_sequential_pres_state[2]_i_24_n_0\
    );
\FSM_sequential_pres_state[2]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000045000000"
    )
        port map (
      I0 => \FSM_sequential_pres_state[2]_i_2_n_0\,
      I1 => \o_address_next_next[0]_i_2_n_0\,
      I2 => \FSM_sequential_pres_state[0]_i_3_n_0\,
      I3 => is_target_address_set,
      I4 => pres_state(0),
      I5 => pres_state(2),
      O => \FSM_sequential_pres_state[2]_i_25_n_0\
    );
\FSM_sequential_pres_state[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \wz_offset[0]_i_2_n_0\,
      I1 => \FSM_sequential_pres_state_reg[2]_i_13_n_0\,
      O => \FSM_sequential_pres_state[2]_i_3_n_0\
    );
\FSM_sequential_pres_state[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA00"
    )
        port map (
      I0 => pres_state(2),
      I1 => is_target_address_set,
      I2 => pres_state(0),
      I3 => pres_state(1),
      O => \FSM_sequential_pres_state[2]_i_4_n_0\
    );
\FSM_sequential_pres_state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF3000AAFF0000"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => \FSM_sequential_pres_state[2]_i_14_n_0\,
      I2 => is_target_address_set,
      I3 => pres_state(0),
      I4 => pres_state(2),
      I5 => pres_state(1),
      O => \FSM_sequential_pres_state[2]_i_5_n_0\
    );
\FSM_sequential_pres_state[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFE"
    )
        port map (
      I0 => pres_state(1),
      I1 => i_start_IBUF,
      I2 => pres_state(0),
      I3 => pres_state(2),
      O => \FSM_sequential_pres_state[2]_i_6_n_0\
    );
\FSM_sequential_pres_state[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => o_address_OBUF(10),
      I1 => o_address_OBUF(13),
      I2 => o_address_OBUF(14),
      I3 => o_address_OBUF(12),
      I4 => \o_address_next_next[3]_i_3_n_0\,
      I5 => o_address_OBUF(11),
      O => \FSM_sequential_pres_state[2]_i_7_n_0\
    );
\FSM_sequential_pres_state[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => o_address_OBUF(5),
      I1 => o_address_OBUF(8),
      I2 => o_address_OBUF(9),
      I3 => o_address_OBUF(7),
      I4 => \o_address_next_next[3]_i_3_n_0\,
      I5 => o_address_OBUF(6),
      O => \FSM_sequential_pres_state[2]_i_8_n_0\
    );
\FSM_sequential_pres_state[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => plusOp(6),
      I1 => plusOp(9),
      I2 => plusOp(10),
      I3 => plusOp(8),
      I4 => \FSM_sequential_pres_state[2]_i_15_n_0\,
      I5 => plusOp(7),
      O => \FSM_sequential_pres_state[2]_i_9_n_0\
    );
\FSM_sequential_pres_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => \FSM_sequential_pres_state[0]_i_1_n_0\,
      Q => pres_state(0)
    );
\FSM_sequential_pres_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => \FSM_sequential_pres_state[1]_i_1_n_0\,
      Q => pres_state(1)
    );
\FSM_sequential_pres_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => \FSM_sequential_pres_state[2]_i_1_n_0\,
      Q => pres_state(2)
    );
\FSM_sequential_pres_state_reg[2]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \FSM_sequential_pres_state_reg[2]_i_13_n_0\,
      CO(2) => \FSM_sequential_pres_state_reg[2]_i_13_n_1\,
      CO(1) => \FSM_sequential_pres_state_reg[2]_i_13_n_2\,
      CO(0) => \FSM_sequential_pres_state_reg[2]_i_13_n_3\,
      CYINIT => '1',
      DI(3) => \FSM_sequential_pres_state[2]_i_17_n_0\,
      DI(2) => \FSM_sequential_pres_state[2]_i_18_n_0\,
      DI(1) => \FSM_sequential_pres_state[2]_i_19_n_0\,
      DI(0) => \FSM_sequential_pres_state[2]_i_20_n_0\,
      O(3 downto 0) => \NLW_FSM_sequential_pres_state_reg[2]_i_13_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_sequential_pres_state[2]_i_21_n_0\,
      S(2) => \FSM_sequential_pres_state[2]_i_22_n_0\,
      S(1) => \FSM_sequential_pres_state[2]_i_23_n_0\,
      S(0) => \FSM_sequential_pres_state[2]_i_24_n_0\
    );
i_clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => i_clk_IBUF,
      O => i_clk_IBUF_BUFG
    );
i_clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_clk,
      O => i_clk_IBUF
    );
\i_data_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(0),
      O => i_data_IBUF(0)
    );
\i_data_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(1),
      O => i_data_IBUF(1)
    );
\i_data_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(2),
      O => i_data_IBUF(2)
    );
\i_data_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(3),
      O => i_data_IBUF(3)
    );
\i_data_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(4),
      O => i_data_IBUF(4)
    );
\i_data_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(5),
      O => i_data_IBUF(5)
    );
\i_data_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(6),
      O => i_data_IBUF(6)
    );
\i_data_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(7),
      O => i_data_IBUF(7)
    );
i_rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_rst,
      O => i_rst_IBUF
    );
i_start_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_start,
      O => i_start_IBUF
    );
is_target_address_set_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0EECCCC"
    )
        port map (
      I0 => pres_state(1),
      I1 => is_target_address_set,
      I2 => i_start_IBUF,
      I3 => pres_state(2),
      I4 => pres_state(0),
      O => is_target_address_set_i_1_n_0
    );
is_target_address_set_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => is_target_address_set_i_1_n_0,
      Q => is_target_address_set
    );
\o_address_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(0),
      O => o_address(0)
    );
\o_address_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(10),
      O => o_address(10)
    );
\o_address_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(11),
      O => o_address(11)
    );
\o_address_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(12),
      O => o_address(12)
    );
\o_address_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(13),
      O => o_address(13)
    );
\o_address_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(14),
      O => o_address(14)
    );
\o_address_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(15),
      O => o_address(15)
    );
\o_address_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(1),
      O => o_address(1)
    );
\o_address_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(2),
      O => o_address(2)
    );
\o_address_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(3),
      O => o_address(3)
    );
\o_address_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(4),
      O => o_address(4)
    );
\o_address_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(5),
      O => o_address(5)
    );
\o_address_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(6),
      O => o_address(6)
    );
\o_address_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(7),
      O => o_address(7)
    );
\o_address_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(8),
      O => o_address(8)
    );
\o_address_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(9),
      O => o_address(9)
    );
\o_address_next_next[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFC00000FF5000"
    )
        port map (
      I0 => \o_address_next_next[0]_i_2_n_0\,
      I1 => o_address_OBUF(0),
      I2 => is_target_address_set,
      I3 => pres_state(0),
      I4 => pres_state(2),
      I5 => \o_address_next_next[0]_i_3_n_0\,
      O => o_address_next(0)
    );
\o_address_next_next[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABBBBBFBB"
    )
        port map (
      I0 => o_address_OBUF(0),
      I1 => \o_address_next_next[0]_i_4_n_0\,
      I2 => pres_state(2),
      I3 => is_target_address_set,
      I4 => \o_address_next_next[0]_i_5_n_0\,
      I5 => \o_address_next_next[0]_i_6_n_0\,
      O => \o_address_next_next[0]_i_2_n_0\
    );
\o_address_next_next[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2F"
    )
        port map (
      I0 => \FSM_sequential_pres_state_reg[2]_i_13_n_0\,
      I1 => \wz_offset[0]_i_2_n_0\,
      I2 => pres_state(1),
      O => \o_address_next_next[0]_i_3_n_0\
    );
\o_address_next_next[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pres_state(0),
      I1 => \FSM_sequential_pres_state[2]_i_2_n_0\,
      O => \o_address_next_next[0]_i_4_n_0\
    );
\o_address_next_next[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => o_address_OBUF(0),
      I1 => \o_address_next_next[0]_i_3_n_0\,
      I2 => \o_address_next_next[0]_i_2_n_0\,
      O => \o_address_next_next[0]_i_5_n_0\
    );
\o_address_next_next[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1113"
    )
        port map (
      I0 => \FSM_sequential_pres_state[0]_i_3_n_0\,
      I1 => \FSM_sequential_pres_state[2]_i_2_n_0\,
      I2 => pres_state(0),
      I3 => pres_state(2),
      O => \o_address_next_next[0]_i_6_n_0\
    );
\o_address_next_next[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => o_address_OBUF(10),
      I1 => \o_address_next_next[15]_i_3_n_0\,
      I2 => plusOp(10),
      I3 => \o_address_next_next[15]_i_5_n_0\,
      O => o_address_next(10)
    );
\o_address_next_next[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => o_address_OBUF(11),
      I1 => \o_address_next_next[15]_i_3_n_0\,
      I2 => plusOp(11),
      I3 => \o_address_next_next[15]_i_5_n_0\,
      O => o_address_next(11)
    );
\o_address_next_next[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => o_address_OBUF(12),
      I1 => \o_address_next_next[15]_i_3_n_0\,
      I2 => plusOp(12),
      I3 => \o_address_next_next[15]_i_5_n_0\,
      O => o_address_next(12)
    );
\o_address_next_next[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => o_address_OBUF(13),
      I1 => \o_address_next_next[15]_i_3_n_0\,
      I2 => plusOp(13),
      I3 => \o_address_next_next[15]_i_5_n_0\,
      O => o_address_next(13)
    );
\o_address_next_next[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => o_address_OBUF(14),
      I1 => \o_address_next_next[15]_i_3_n_0\,
      I2 => plusOp(14),
      I3 => \o_address_next_next[15]_i_5_n_0\,
      O => o_address_next(14)
    );
\o_address_next_next[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_rst_IBUF,
      O => \o_address_next_next[15]_i_1_n_0\
    );
\o_address_next_next[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => o_address_OBUF(15),
      I1 => \o_address_next_next[15]_i_3_n_0\,
      I2 => plusOp(15),
      I3 => \o_address_next_next[15]_i_5_n_0\,
      O => o_address_next(15)
    );
\o_address_next_next[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => is_target_address_set,
      I1 => pres_state(0),
      I2 => pres_state(2),
      I3 => \o_address_next_next[0]_i_3_n_0\,
      O => \o_address_next_next[15]_i_3_n_0\
    );
\o_address_next_next[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2022000000000000"
    )
        port map (
      I0 => pres_state(1),
      I1 => \FSM_sequential_pres_state[2]_i_2_n_0\,
      I2 => \o_address_next_next[0]_i_2_n_0\,
      I3 => \FSM_sequential_pres_state[0]_i_3_n_0\,
      I4 => \o_address_next_next[15]_i_6_n_0\,
      I5 => \FSM_sequential_pres_state[2]_i_3_n_0\,
      O => \o_address_next_next[15]_i_5_n_0\
    );
\o_address_next_next[15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => pres_state(2),
      I1 => pres_state(0),
      I2 => is_target_address_set,
      O => \o_address_next_next[15]_i_6_n_0\
    );
\o_address_next_next[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => o_address_OBUF(1),
      I1 => \o_address_next_next[15]_i_3_n_0\,
      I2 => plusOp(1),
      I3 => \o_address_next_next[15]_i_5_n_0\,
      O => o_address_next(1)
    );
\o_address_next_next[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => o_address_OBUF(2),
      I1 => \o_address_next_next[15]_i_3_n_0\,
      I2 => plusOp(2),
      I3 => \o_address_next_next[15]_i_5_n_0\,
      O => o_address_next(2)
    );
\o_address_next_next[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => plusOp(3),
      I1 => \o_address_next_next[15]_i_5_n_0\,
      I2 => \o_address_next_next[3]_i_2_n_0\,
      O => o_address_next(3)
    );
\o_address_next_next[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F888F888F88FF8"
    )
        port map (
      I0 => o_address_OBUF(3),
      I1 => \o_address_next_next[3]_i_3_n_0\,
      I2 => pres_state(2),
      I3 => pres_state(0),
      I4 => pres_state(1),
      I5 => is_target_address_set,
      O => \o_address_next_next[3]_i_2_n_0\
    );
\o_address_next_next[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040FF0000"
    )
        port map (
      I0 => \wz_offset[0]_i_2_n_0\,
      I1 => \FSM_sequential_pres_state_reg[2]_i_13_n_0\,
      I2 => is_target_address_set,
      I3 => pres_state(1),
      I4 => pres_state(0),
      I5 => pres_state(2),
      O => \o_address_next_next[3]_i_3_n_0\
    );
\o_address_next_next[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => o_address_OBUF(4),
      I1 => \o_address_next_next[15]_i_3_n_0\,
      I2 => plusOp(4),
      I3 => \o_address_next_next[15]_i_5_n_0\,
      O => o_address_next(4)
    );
\o_address_next_next[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => o_address_OBUF(5),
      I1 => \o_address_next_next[15]_i_3_n_0\,
      I2 => plusOp(5),
      I3 => \o_address_next_next[15]_i_5_n_0\,
      O => o_address_next(5)
    );
\o_address_next_next[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => o_address_OBUF(6),
      I1 => \o_address_next_next[15]_i_3_n_0\,
      I2 => plusOp(6),
      I3 => \o_address_next_next[15]_i_5_n_0\,
      O => o_address_next(6)
    );
\o_address_next_next[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => o_address_OBUF(7),
      I1 => \o_address_next_next[15]_i_3_n_0\,
      I2 => plusOp(7),
      I3 => \o_address_next_next[15]_i_5_n_0\,
      O => o_address_next(7)
    );
\o_address_next_next[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => o_address_OBUF(8),
      I1 => \o_address_next_next[15]_i_3_n_0\,
      I2 => plusOp(8),
      I3 => \o_address_next_next[15]_i_5_n_0\,
      O => o_address_next(8)
    );
\o_address_next_next[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => o_address_OBUF(9),
      I1 => \o_address_next_next[15]_i_3_n_0\,
      I2 => plusOp(9),
      I3 => \o_address_next_next[15]_i_5_n_0\,
      O => o_address_next(9)
    );
\o_address_next_next_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address_next_next[15]_i_1_n_0\,
      D => o_address_next(0),
      Q => o_address_OBUF(0),
      R => '0'
    );
\o_address_next_next_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address_next_next[15]_i_1_n_0\,
      D => o_address_next(10),
      Q => o_address_OBUF(10),
      R => '0'
    );
\o_address_next_next_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address_next_next[15]_i_1_n_0\,
      D => o_address_next(11),
      Q => o_address_OBUF(11),
      R => '0'
    );
\o_address_next_next_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address_next_next[15]_i_1_n_0\,
      D => o_address_next(12),
      Q => o_address_OBUF(12),
      R => '0'
    );
\o_address_next_next_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_address_next_next_reg[8]_i_2_n_0\,
      CO(3) => \o_address_next_next_reg[12]_i_2_n_0\,
      CO(2) => \o_address_next_next_reg[12]_i_2_n_1\,
      CO(1) => \o_address_next_next_reg[12]_i_2_n_2\,
      CO(0) => \o_address_next_next_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(12 downto 9),
      S(3 downto 0) => o_address_OBUF(12 downto 9)
    );
\o_address_next_next_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address_next_next[15]_i_1_n_0\,
      D => o_address_next(13),
      Q => o_address_OBUF(13),
      R => '0'
    );
\o_address_next_next_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address_next_next[15]_i_1_n_0\,
      D => o_address_next(14),
      Q => o_address_OBUF(14),
      R => '0'
    );
\o_address_next_next_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address_next_next[15]_i_1_n_0\,
      D => o_address_next(15),
      Q => o_address_OBUF(15),
      R => '0'
    );
\o_address_next_next_reg[15]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_address_next_next_reg[12]_i_2_n_0\,
      CO(3 downto 2) => \NLW_o_address_next_next_reg[15]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \o_address_next_next_reg[15]_i_4_n_2\,
      CO(0) => \o_address_next_next_reg[15]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_o_address_next_next_reg[15]_i_4_O_UNCONNECTED\(3),
      O(2 downto 0) => plusOp(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => o_address_OBUF(15 downto 13)
    );
\o_address_next_next_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address_next_next[15]_i_1_n_0\,
      D => o_address_next(1),
      Q => o_address_OBUF(1),
      R => '0'
    );
\o_address_next_next_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address_next_next[15]_i_1_n_0\,
      D => o_address_next(2),
      Q => o_address_OBUF(2),
      R => '0'
    );
\o_address_next_next_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address_next_next[15]_i_1_n_0\,
      D => o_address_next(3),
      Q => o_address_OBUF(3),
      R => '0'
    );
\o_address_next_next_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address_next_next[15]_i_1_n_0\,
      D => o_address_next(4),
      Q => o_address_OBUF(4),
      R => '0'
    );
\o_address_next_next_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_address_next_next_reg[4]_i_2_n_0\,
      CO(2) => \o_address_next_next_reg[4]_i_2_n_1\,
      CO(1) => \o_address_next_next_reg[4]_i_2_n_2\,
      CO(0) => \o_address_next_next_reg[4]_i_2_n_3\,
      CYINIT => o_address_OBUF(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(4 downto 1),
      S(3 downto 0) => o_address_OBUF(4 downto 1)
    );
\o_address_next_next_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address_next_next[15]_i_1_n_0\,
      D => o_address_next(5),
      Q => o_address_OBUF(5),
      R => '0'
    );
\o_address_next_next_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address_next_next[15]_i_1_n_0\,
      D => o_address_next(6),
      Q => o_address_OBUF(6),
      R => '0'
    );
\o_address_next_next_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address_next_next[15]_i_1_n_0\,
      D => o_address_next(7),
      Q => o_address_OBUF(7),
      R => '0'
    );
\o_address_next_next_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address_next_next[15]_i_1_n_0\,
      D => o_address_next(8),
      Q => o_address_OBUF(8),
      R => '0'
    );
\o_address_next_next_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_address_next_next_reg[4]_i_2_n_0\,
      CO(3) => \o_address_next_next_reg[8]_i_2_n_0\,
      CO(2) => \o_address_next_next_reg[8]_i_2_n_1\,
      CO(1) => \o_address_next_next_reg[8]_i_2_n_2\,
      CO(0) => \o_address_next_next_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(8 downto 5),
      S(3 downto 0) => o_address_OBUF(8 downto 5)
    );
\o_address_next_next_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address_next_next[15]_i_1_n_0\,
      D => o_address_next(9),
      Q => o_address_OBUF(9),
      R => '0'
    );
\o_data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => wz_offset(0),
      I1 => \target_address_reg_n_0_[0]\,
      I2 => pres_state(0),
      I3 => pres_state(2),
      I4 => wz_bit,
      O => o_data_next(0)
    );
\o_data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => wz_offset(1),
      I1 => \target_address_reg_n_0_[1]\,
      I2 => pres_state(0),
      I3 => pres_state(2),
      I4 => wz_bit,
      O => o_data_next(1)
    );
\o_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => wz_offset(2),
      I1 => \target_address_reg_n_0_[2]\,
      I2 => pres_state(0),
      I3 => pres_state(2),
      I4 => wz_bit,
      O => o_data_next(2)
    );
\o_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => wz_offset(3),
      I1 => \target_address_reg_n_0_[3]\,
      I2 => pres_state(0),
      I3 => pres_state(2),
      I4 => wz_bit,
      O => o_data_next(3)
    );
\o_data[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \target_address_reg_n_0_[4]\,
      I1 => wz_bit,
      I2 => pres_state(2),
      I3 => pres_state(0),
      O => o_data_next(4)
    );
\o_data[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => wz_bit,
      I1 => pres_state(2),
      I2 => pres_state(0),
      I3 => \target_address_reg_n_0_[5]\,
      O => o_data_next(5)
    );
\o_data[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => wz_bit,
      I1 => pres_state(2),
      I2 => pres_state(0),
      I3 => \target_address_reg_n_0_[6]\,
      O => o_data_next(6)
    );
\o_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => pres_state(0),
      I1 => pres_state(2),
      I2 => wz_bit,
      O => o_data_next(7)
    );
\o_data_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(0),
      O => o_data(0)
    );
\o_data_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(1),
      O => o_data(1)
    );
\o_data_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(2),
      O => o_data(2)
    );
\o_data_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(3),
      O => o_data(3)
    );
\o_data_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(4),
      O => o_data(4)
    );
\o_data_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(5),
      O => o_data(5)
    );
\o_data_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(6),
      O => o_data(6)
    );
\o_data_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(7),
      O => o_data(7)
    );
\o_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address_next_next[15]_i_1_n_0\,
      D => o_data_next(0),
      Q => o_data_OBUF(0),
      R => '0'
    );
\o_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address_next_next[15]_i_1_n_0\,
      D => o_data_next(1),
      Q => o_data_OBUF(1),
      R => '0'
    );
\o_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address_next_next[15]_i_1_n_0\,
      D => o_data_next(2),
      Q => o_data_OBUF(2),
      R => '0'
    );
\o_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address_next_next[15]_i_1_n_0\,
      D => o_data_next(3),
      Q => o_data_OBUF(3),
      R => '0'
    );
\o_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address_next_next[15]_i_1_n_0\,
      D => o_data_next(4),
      Q => o_data_OBUF(4),
      R => '0'
    );
\o_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address_next_next[15]_i_1_n_0\,
      D => o_data_next(5),
      Q => o_data_OBUF(5),
      R => '0'
    );
\o_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address_next_next[15]_i_1_n_0\,
      D => o_data_next(6),
      Q => o_data_OBUF(6),
      R => '0'
    );
\o_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address_next_next[15]_i_1_n_0\,
      D => o_data_next(7),
      Q => o_data_OBUF(7),
      R => '0'
    );
o_done_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_we_OBUF,
      O => o_done
    );
o_done_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pres_state(2),
      I1 => pres_state(0),
      O => o_we_next
    );
o_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => o_we_next,
      Q => o_we_OBUF
    );
o_en_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_en_OBUF,
      O => o_en
    );
o_en_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => pres_state(0),
      I1 => pres_state(2),
      I2 => pres_state(1),
      O => o_en_next
    );
o_en_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => o_en_next,
      Q => o_en_OBUF
    );
o_we_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_we_OBUF,
      O => o_we
    );
\target_address[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => i_rst_IBUF,
      I1 => is_target_address_set,
      I2 => pres_state(1),
      I3 => pres_state(0),
      O => target_address0
    );
\target_address_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => target_address0,
      D => i_data_IBUF(0),
      Q => \target_address_reg_n_0_[0]\,
      R => '0'
    );
\target_address_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => target_address0,
      D => i_data_IBUF(1),
      Q => \target_address_reg_n_0_[1]\,
      R => '0'
    );
\target_address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => target_address0,
      D => i_data_IBUF(2),
      Q => \target_address_reg_n_0_[2]\,
      R => '0'
    );
\target_address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => target_address0,
      D => i_data_IBUF(3),
      Q => \target_address_reg_n_0_[3]\,
      R => '0'
    );
\target_address_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => target_address0,
      D => i_data_IBUF(4),
      Q => \target_address_reg_n_0_[4]\,
      R => '0'
    );
\target_address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => target_address0,
      D => i_data_IBUF(5),
      Q => \target_address_reg_n_0_[5]\,
      R => '0'
    );
\target_address_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => target_address0,
      D => i_data_IBUF(6),
      Q => \target_address_reg_n_0_[6]\,
      R => '0'
    );
\target_address_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => target_address0,
      D => i_data_IBUF(7),
      Q => \target_address_reg_n_0_[7]\,
      R => '0'
    );
wz_bit_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => pres_state(2),
      I1 => i_start_IBUF,
      I2 => \wz_offset[3]_i_5_n_0\,
      O => wz_bit_next
    );
wz_bit_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \wz_offset[3]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => wz_bit_next,
      Q => wz_bit
    );
\wz_offset[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0100"
    )
        port map (
      I0 => \wz_offset[0]_i_2_n_0\,
      I1 => COUNT(1),
      I2 => COUNT(0),
      I3 => wz_offset(0),
      I4 => pres_state(2),
      O => wz_offset_next(0)
    );
\wz_offset[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => COUNT(6),
      I1 => COUNT(7),
      I2 => COUNT(4),
      I3 => COUNT(5),
      I4 => COUNT(3),
      I5 => COUNT(2),
      O => \wz_offset[0]_i_2_n_0\
    );
\wz_offset[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => i_data_IBUF(7),
      I1 => \target_address_reg_n_0_[7]\,
      O => \wz_offset[0]_i_4_n_0\
    );
\wz_offset[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \target_address_reg_n_0_[6]\,
      I1 => i_data_IBUF(6),
      O => \wz_offset[0]_i_5_n_0\
    );
\wz_offset[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \target_address_reg_n_0_[5]\,
      I1 => i_data_IBUF(5),
      O => \wz_offset[0]_i_6_n_0\
    );
\wz_offset[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \target_address_reg_n_0_[4]\,
      I1 => i_data_IBUF(4),
      O => \wz_offset[0]_i_7_n_0\
    );
\wz_offset[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008C80"
    )
        port map (
      I0 => wz_offset(0),
      I1 => \wz_offset[3]_i_5_n_0\,
      I2 => COUNT(0),
      I3 => wz_offset(1),
      I4 => COUNT(1),
      O => wz_offset_next(1)
    );
\wz_offset[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0A0C00000A0C0"
    )
        port map (
      I0 => wz_offset(0),
      I1 => wz_offset(2),
      I2 => \wz_offset[3]_i_5_n_0\,
      I3 => COUNT(1),
      I4 => COUNT(0),
      I5 => wz_offset(1),
      O => wz_offset_next(2)
    );
\wz_offset[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40FF404000000000"
    )
        port map (
      I0 => \FSM_sequential_pres_state[2]_i_3_n_0\,
      I1 => pres_state(1),
      I2 => is_target_address_set,
      I3 => i_start_IBUF,
      I4 => pres_state(2),
      I5 => pres_state(0),
      O => \wz_offset[3]_i_1_n_0\
    );
\wz_offset[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFC0000AA300000"
    )
        port map (
      I0 => \wz_offset[3]_i_3_n_0\,
      I1 => COUNT(1),
      I2 => wz_offset(3),
      I3 => COUNT(0),
      I4 => \wz_offset[3]_i_5_n_0\,
      I5 => wz_offset(1),
      O => wz_offset_next(3)
    );
\wz_offset[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wz_offset(0),
      I1 => COUNT(1),
      I2 => wz_offset(2),
      O => \wz_offset[3]_i_3_n_0\
    );
\wz_offset[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wz_offset[0]_i_2_n_0\,
      I1 => pres_state(2),
      O => \wz_offset[3]_i_5_n_0\
    );
\wz_offset[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \target_address_reg_n_0_[3]\,
      I1 => i_data_IBUF(3),
      O => \wz_offset[3]_i_6_n_0\
    );
\wz_offset[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \target_address_reg_n_0_[2]\,
      I1 => i_data_IBUF(2),
      O => \wz_offset[3]_i_7_n_0\
    );
\wz_offset[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \target_address_reg_n_0_[1]\,
      I1 => i_data_IBUF(1),
      O => \wz_offset[3]_i_8_n_0\
    );
\wz_offset[3]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \target_address_reg_n_0_[0]\,
      I1 => i_data_IBUF(0),
      O => \wz_offset[3]_i_9_n_0\
    );
\wz_offset_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \wz_offset[3]_i_1_n_0\,
      D => wz_offset_next(0),
      PRE => i_rst_IBUF,
      Q => wz_offset(0)
    );
\wz_offset_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \wz_offset_reg[3]_i_4_n_0\,
      CO(3) => \NLW_wz_offset_reg[0]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \wz_offset_reg[0]_i_3_n_1\,
      CO(1) => \wz_offset_reg[0]_i_3_n_2\,
      CO(0) => \wz_offset_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \target_address_reg_n_0_[6]\,
      DI(1) => \target_address_reg_n_0_[5]\,
      DI(0) => \target_address_reg_n_0_[4]\,
      O(3 downto 0) => COUNT(7 downto 4),
      S(3) => \wz_offset[0]_i_4_n_0\,
      S(2) => \wz_offset[0]_i_5_n_0\,
      S(1) => \wz_offset[0]_i_6_n_0\,
      S(0) => \wz_offset[0]_i_7_n_0\
    );
\wz_offset_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \wz_offset[3]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => wz_offset_next(1),
      Q => wz_offset(1)
    );
\wz_offset_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \wz_offset[3]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => wz_offset_next(2),
      Q => wz_offset(2)
    );
\wz_offset_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \wz_offset[3]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => wz_offset_next(3),
      Q => wz_offset(3)
    );
\wz_offset_reg[3]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wz_offset_reg[3]_i_4_n_0\,
      CO(2) => \wz_offset_reg[3]_i_4_n_1\,
      CO(1) => \wz_offset_reg[3]_i_4_n_2\,
      CO(0) => \wz_offset_reg[3]_i_4_n_3\,
      CYINIT => '1',
      DI(3) => \target_address_reg_n_0_[3]\,
      DI(2) => \target_address_reg_n_0_[2]\,
      DI(1) => \target_address_reg_n_0_[1]\,
      DI(0) => \target_address_reg_n_0_[0]\,
      O(3 downto 0) => COUNT(3 downto 0),
      S(3) => \wz_offset[3]_i_6_n_0\,
      S(2) => \wz_offset[3]_i_7_n_0\,
      S(1) => \wz_offset[3]_i_8_n_0\,
      S(0) => \wz_offset[3]_i_9_n_0\
    );
end STRUCTURE;
