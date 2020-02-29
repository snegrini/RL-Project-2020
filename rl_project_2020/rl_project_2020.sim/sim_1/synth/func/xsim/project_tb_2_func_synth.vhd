-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Sat Feb 29 11:59:14 2020
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
  signal \FSM_sequential_pres_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state_reg[2]_i_3_n_1\ : STD_LOGIC;
  signal \FSM_sequential_pres_state_reg[2]_i_3_n_2\ : STD_LOGIC;
  signal \FSM_sequential_pres_state_reg[2]_i_3_n_3\ : STD_LOGIC;
  signal i_clk_IBUF : STD_LOGIC;
  signal i_clk_IBUF_BUFG : STD_LOGIC;
  signal i_data_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i_rst_IBUF : STD_LOGIC;
  signal i_start_IBUF : STD_LOGIC;
  signal is_target_address_set : STD_LOGIC;
  signal is_target_address_set_i_1_n_0 : STD_LOGIC;
  signal mem_address : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mem_address0 : STD_LOGIC;
  signal \mem_address[15]_i_3_n_0\ : STD_LOGIC;
  signal \mem_address[15]_i_4_n_0\ : STD_LOGIC;
  signal mem_address_next : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal next_state2 : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \o_address[15]_i_1_n_0\ : STD_LOGIC;
  signal o_address_OBUF : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal o_address_next : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal o_data_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_data_next : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_en_OBUF : STD_LOGIC;
  signal o_en_next : STD_LOGIC;
  signal o_we_OBUF : STD_LOGIC;
  signal o_we_next : STD_LOGIC;
  signal pres_state : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal shift_num : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \shift_num[0]_i_1_n_0\ : STD_LOGIC;
  signal \shift_num[1]_i_1_n_0\ : STD_LOGIC;
  signal \shift_num[1]_i_3_n_0\ : STD_LOGIC;
  signal shift_num_next : STD_LOGIC_VECTOR ( 1 to 1 );
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
  signal wz_bit_i_10_n_0 : STD_LOGIC;
  signal wz_bit_i_11_n_0 : STD_LOGIC;
  signal wz_bit_i_12_n_0 : STD_LOGIC;
  signal wz_bit_i_13_n_0 : STD_LOGIC;
  signal wz_bit_i_1_n_0 : STD_LOGIC;
  signal wz_bit_i_2_n_0 : STD_LOGIC;
  signal wz_bit_i_3_n_0 : STD_LOGIC;
  signal wz_bit_i_6_n_0 : STD_LOGIC;
  signal wz_bit_i_7_n_0 : STD_LOGIC;
  signal wz_bit_i_8_n_0 : STD_LOGIC;
  signal wz_bit_i_9_n_0 : STD_LOGIC;
  signal wz_bit_reg_i_4_n_1 : STD_LOGIC;
  signal wz_bit_reg_i_4_n_2 : STD_LOGIC;
  signal wz_bit_reg_i_4_n_3 : STD_LOGIC;
  signal wz_bit_reg_i_5_n_0 : STD_LOGIC;
  signal wz_bit_reg_i_5_n_1 : STD_LOGIC;
  signal wz_bit_reg_i_5_n_2 : STD_LOGIC;
  signal wz_bit_reg_i_5_n_3 : STD_LOGIC;
  signal wz_offset : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \wz_offset[3]_i_1_n_0\ : STD_LOGIC;
  signal \wz_offset[3]_i_3_n_0\ : STD_LOGIC;
  signal wz_offset_next : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_sequential_pres_state_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_wz_bit_reg_i_4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_wz_bit_reg_i_5_O_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_pres_state[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_pres_state[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_pres_state[2]_i_2\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_pres_state_reg[0]\ : label is "wait_ram:010,get_addr:011,done:110,enc_addr:100,write_back:101,fetch_addr:001,idle:000,iSTATE:111";
  attribute FSM_ENCODED_STATES of \FSM_sequential_pres_state_reg[1]\ : label is "wait_ram:010,get_addr:011,done:110,enc_addr:100,write_back:101,fetch_addr:001,idle:000,iSTATE:111";
  attribute FSM_ENCODED_STATES of \FSM_sequential_pres_state_reg[2]\ : label is "wait_ram:010,get_addr:011,done:110,enc_addr:100,write_back:101,fetch_addr:001,idle:000,iSTATE:111";
  attribute SOFT_HLUTNM of is_target_address_set_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \mem_address[15]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \mem_address[15]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \mem_address[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \mem_address[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_address[15]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_address[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_address[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_data[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_data[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \shift_num[1]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \wz_offset[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \wz_offset[3]_i_3\ : label is "soft_lutpair6";
begin
\FSM_sequential_pres_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0000FFDDFF00F0"
    )
        port map (
      I0 => is_target_address_set,
      I1 => \FSM_sequential_pres_state[0]_i_2_n_0\,
      I2 => i_start_IBUF,
      I3 => o_en_next,
      I4 => pres_state(1),
      I5 => pres_state(2),
      O => \FSM_sequential_pres_state[0]_i_1_n_0\
    );
\FSM_sequential_pres_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \FSM_sequential_pres_state_reg[2]_i_3_n_0\,
      I1 => wz_bit_i_2_n_0,
      O => \FSM_sequential_pres_state[0]_i_2_n_0\
    );
\FSM_sequential_pres_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C3C"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => o_en_next,
      I2 => pres_state(1),
      I3 => pres_state(2),
      O => \FSM_sequential_pres_state[1]_i_1_n_0\
    );
\FSM_sequential_pres_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8F0CCCC88000000"
    )
        port map (
      I0 => is_target_address_set,
      I1 => \FSM_sequential_pres_state[2]_i_2_n_0\,
      I2 => i_start_IBUF,
      I3 => o_en_next,
      I4 => pres_state(1),
      I5 => pres_state(2),
      O => \FSM_sequential_pres_state[2]_i_1_n_0\
    );
\FSM_sequential_pres_state[2]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \target_address_reg_n_0_[2]\,
      I1 => i_data_IBUF(2),
      I2 => i_data_IBUF(3),
      I3 => \target_address_reg_n_0_[3]\,
      O => \FSM_sequential_pres_state[2]_i_10_n_0\
    );
\FSM_sequential_pres_state[2]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \target_address_reg_n_0_[0]\,
      I1 => i_data_IBUF(0),
      I2 => i_data_IBUF(1),
      I3 => \target_address_reg_n_0_[1]\,
      O => \FSM_sequential_pres_state[2]_i_11_n_0\
    );
\FSM_sequential_pres_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_pres_state_reg[2]_i_3_n_0\,
      I1 => wz_bit_i_2_n_0,
      I2 => pres_state(1),
      I3 => o_en_next,
      I4 => \mem_address[15]_i_3_n_0\,
      O => \FSM_sequential_pres_state[2]_i_2_n_0\
    );
\FSM_sequential_pres_state[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \target_address_reg_n_0_[7]\,
      I1 => i_data_IBUF(7),
      I2 => \target_address_reg_n_0_[6]\,
      I3 => i_data_IBUF(6),
      O => \FSM_sequential_pres_state[2]_i_4_n_0\
    );
\FSM_sequential_pres_state[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \target_address_reg_n_0_[5]\,
      I1 => i_data_IBUF(5),
      I2 => \target_address_reg_n_0_[4]\,
      I3 => i_data_IBUF(4),
      O => \FSM_sequential_pres_state[2]_i_5_n_0\
    );
\FSM_sequential_pres_state[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \target_address_reg_n_0_[3]\,
      I1 => i_data_IBUF(3),
      I2 => \target_address_reg_n_0_[2]\,
      I3 => i_data_IBUF(2),
      O => \FSM_sequential_pres_state[2]_i_6_n_0\
    );
\FSM_sequential_pres_state[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \target_address_reg_n_0_[1]\,
      I1 => i_data_IBUF(1),
      I2 => \target_address_reg_n_0_[0]\,
      I3 => i_data_IBUF(0),
      O => \FSM_sequential_pres_state[2]_i_7_n_0\
    );
\FSM_sequential_pres_state[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \target_address_reg_n_0_[7]\,
      I1 => i_data_IBUF(7),
      I2 => i_data_IBUF(6),
      I3 => \target_address_reg_n_0_[6]\,
      O => \FSM_sequential_pres_state[2]_i_8_n_0\
    );
\FSM_sequential_pres_state[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \target_address_reg_n_0_[4]\,
      I1 => i_data_IBUF(4),
      I2 => i_data_IBUF(5),
      I3 => \target_address_reg_n_0_[5]\,
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
      Q => o_en_next
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
\FSM_sequential_pres_state_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \FSM_sequential_pres_state_reg[2]_i_3_n_0\,
      CO(2) => \FSM_sequential_pres_state_reg[2]_i_3_n_1\,
      CO(1) => \FSM_sequential_pres_state_reg[2]_i_3_n_2\,
      CO(0) => \FSM_sequential_pres_state_reg[2]_i_3_n_3\,
      CYINIT => '1',
      DI(3) => \FSM_sequential_pres_state[2]_i_4_n_0\,
      DI(2) => \FSM_sequential_pres_state[2]_i_5_n_0\,
      DI(1) => \FSM_sequential_pres_state[2]_i_6_n_0\,
      DI(0) => \FSM_sequential_pres_state[2]_i_7_n_0\,
      O(3 downto 0) => \NLW_FSM_sequential_pres_state_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_sequential_pres_state[2]_i_8_n_0\,
      S(2) => \FSM_sequential_pres_state[2]_i_9_n_0\,
      S(1) => \FSM_sequential_pres_state[2]_i_10_n_0\,
      S(0) => \FSM_sequential_pres_state[2]_i_11_n_0\
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
      INIT => X"EACAEAEA"
    )
        port map (
      I0 => is_target_address_set,
      I1 => o_en_next,
      I2 => pres_state(1),
      I3 => i_start_IBUF,
      I4 => pres_state(2),
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
\mem_address[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => mem_address(0),
      I1 => o_en_next,
      I2 => i_start_IBUF,
      O => mem_address_next(0)
    );
\mem_address[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"008000FF"
    )
        port map (
      I0 => \mem_address[15]_i_3_n_0\,
      I1 => \FSM_sequential_pres_state[0]_i_2_n_0\,
      I2 => \shift_num[1]_i_3_n_0\,
      I3 => i_rst_IBUF,
      I4 => \mem_address[15]_i_4_n_0\,
      O => mem_address0
    );
\mem_address[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pres_state(2),
      I1 => i_start_IBUF,
      O => mem_address_next(15)
    );
\mem_address[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"007F"
    )
        port map (
      I0 => mem_address(0),
      I1 => mem_address(1),
      I2 => mem_address(2),
      I3 => mem_address(15),
      O => \mem_address[15]_i_3_n_0\
    );
\mem_address[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => pres_state(2),
      I1 => i_start_IBUF,
      I2 => pres_state(1),
      O => \mem_address[15]_i_4_n_0\
    );
\mem_address[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3CAA"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => mem_address(0),
      I2 => mem_address(1),
      I3 => o_en_next,
      O => mem_address_next(1)
    );
\mem_address[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FC0AAAA"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => mem_address(0),
      I2 => mem_address(1),
      I3 => mem_address(2),
      I4 => o_en_next,
      O => mem_address_next(2)
    );
\mem_address_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => mem_address0,
      D => mem_address_next(0),
      Q => mem_address(0),
      R => '0'
    );
\mem_address_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => mem_address0,
      D => mem_address_next(15),
      Q => mem_address(15),
      R => '0'
    );
\mem_address_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => mem_address0,
      D => mem_address_next(1),
      Q => mem_address(1),
      R => '0'
    );
\mem_address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => mem_address0,
      D => mem_address_next(2),
      Q => mem_address(2),
      R => '0'
    );
\o_address[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F080000"
    )
        port map (
      I0 => mem_address(0),
      I1 => is_target_address_set,
      I2 => pres_state(1),
      I3 => pres_state(2),
      I4 => o_en_next,
      O => o_address_next(0)
    );
\o_address[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_rst_IBUF,
      O => \o_address[15]_i_1_n_0\
    );
\o_address[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => pres_state(2),
      I1 => mem_address(15),
      I2 => pres_state(1),
      I3 => o_en_next,
      I4 => is_target_address_set,
      O => o_address_next(15)
    );
\o_address[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => pres_state(2),
      I1 => mem_address(1),
      I2 => pres_state(1),
      I3 => o_en_next,
      I4 => is_target_address_set,
      O => o_address_next(1)
    );
\o_address[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => pres_state(2),
      I1 => mem_address(2),
      I2 => pres_state(1),
      I3 => o_en_next,
      I4 => is_target_address_set,
      O => o_address_next(2)
    );
\o_address[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EF00"
    )
        port map (
      I0 => pres_state(2),
      I1 => mem_address(15),
      I2 => is_target_address_set,
      I3 => o_en_next,
      I4 => pres_state(1),
      O => o_address_next(3)
    );
\o_address_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(0),
      O => o_address(0)
    );
\o_address_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(4),
      O => o_address(10)
    );
\o_address_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(4),
      O => o_address(11)
    );
\o_address_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(4),
      O => o_address(12)
    );
\o_address_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(4),
      O => o_address(13)
    );
\o_address_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(4),
      O => o_address(14)
    );
\o_address_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(4),
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
      I => o_address_OBUF(4),
      O => o_address(5)
    );
\o_address_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(4),
      O => o_address(6)
    );
\o_address_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(4),
      O => o_address(7)
    );
\o_address_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(4),
      O => o_address(8)
    );
\o_address_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(4),
      O => o_address(9)
    );
\o_address_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address[15]_i_1_n_0\,
      D => o_address_next(0),
      Q => o_address_OBUF(0),
      R => '0'
    );
\o_address_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address[15]_i_1_n_0\,
      D => o_address_next(15),
      Q => o_address_OBUF(4),
      R => '0'
    );
\o_address_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address[15]_i_1_n_0\,
      D => o_address_next(1),
      Q => o_address_OBUF(1),
      R => '0'
    );
\o_address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address[15]_i_1_n_0\,
      D => o_address_next(2),
      Q => o_address_OBUF(2),
      R => '0'
    );
\o_address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address[15]_i_1_n_0\,
      D => o_address_next(3),
      Q => o_address_OBUF(3),
      R => '0'
    );
\o_data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => wz_offset(0),
      I1 => \target_address_reg_n_0_[0]\,
      I2 => o_en_next,
      I3 => pres_state(2),
      I4 => wz_bit,
      O => o_data_next(0)
    );
\o_data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => wz_offset(1),
      I1 => \target_address_reg_n_0_[1]\,
      I2 => o_en_next,
      I3 => pres_state(2),
      I4 => wz_bit,
      O => o_data_next(1)
    );
\o_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => wz_offset(2),
      I1 => \target_address_reg_n_0_[2]\,
      I2 => o_en_next,
      I3 => pres_state(2),
      I4 => wz_bit,
      O => o_data_next(2)
    );
\o_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => wz_offset(3),
      I1 => \target_address_reg_n_0_[3]\,
      I2 => o_en_next,
      I3 => pres_state(2),
      I4 => wz_bit,
      O => o_data_next(3)
    );
\o_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => mem_address(0),
      I1 => \target_address_reg_n_0_[4]\,
      I2 => o_en_next,
      I3 => pres_state(2),
      I4 => wz_bit,
      O => o_data_next(4)
    );
\o_data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => mem_address(1),
      I1 => \target_address_reg_n_0_[5]\,
      I2 => o_en_next,
      I3 => pres_state(2),
      I4 => wz_bit,
      O => o_data_next(5)
    );
\o_data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => mem_address(2),
      I1 => \target_address_reg_n_0_[6]\,
      I2 => o_en_next,
      I3 => pres_state(2),
      I4 => wz_bit,
      O => o_data_next(6)
    );
\o_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => o_en_next,
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
      CE => \o_address[15]_i_1_n_0\,
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
      CE => \o_address[15]_i_1_n_0\,
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
      CE => \o_address[15]_i_1_n_0\,
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
      CE => \o_address[15]_i_1_n_0\,
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
      CE => \o_address[15]_i_1_n_0\,
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
      CE => \o_address[15]_i_1_n_0\,
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
      CE => \o_address[15]_i_1_n_0\,
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
      CE => \o_address[15]_i_1_n_0\,
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
      INIT => X"8"
    )
        port map (
      I0 => pres_state(2),
      I1 => o_en_next,
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
\shift_num[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF6FFFF00060000"
    )
        port map (
      I0 => i_data_IBUF(0),
      I1 => \target_address_reg_n_0_[0]\,
      I2 => i_rst_IBUF,
      I3 => \FSM_sequential_pres_state[0]_i_2_n_0\,
      I4 => \shift_num[1]_i_3_n_0\,
      I5 => shift_num(0),
      O => \shift_num[0]_i_1_n_0\
    );
\shift_num[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
        port map (
      I0 => shift_num_next(1),
      I1 => i_rst_IBUF,
      I2 => \FSM_sequential_pres_state[0]_i_2_n_0\,
      I3 => \shift_num[1]_i_3_n_0\,
      I4 => shift_num(1),
      O => \shift_num[1]_i_1_n_0\
    );
\shift_num[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => i_data_IBUF(0),
      I1 => \target_address_reg_n_0_[0]\,
      I2 => i_data_IBUF(1),
      I3 => \target_address_reg_n_0_[1]\,
      O => shift_num_next(1)
    );
\shift_num[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => is_target_address_set,
      I1 => o_en_next,
      I2 => pres_state(1),
      O => \shift_num[1]_i_3_n_0\
    );
\shift_num_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \shift_num[0]_i_1_n_0\,
      Q => shift_num(0),
      R => '0'
    );
\shift_num_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \shift_num[1]_i_1_n_0\,
      Q => shift_num(1),
      R => '0'
    );
\target_address[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => is_target_address_set,
      I1 => i_rst_IBUF,
      I2 => o_en_next,
      I3 => pres_state(1),
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
wz_bit_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => wz_bit_i_2_n_0,
      I1 => o_en_next,
      I2 => i_start_IBUF,
      I3 => wz_bit_i_3_n_0,
      I4 => wz_bit,
      O => wz_bit_i_1_n_0
    );
wz_bit_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \target_address_reg_n_0_[3]\,
      I1 => i_data_IBUF(3),
      O => wz_bit_i_10_n_0
    );
wz_bit_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \target_address_reg_n_0_[2]\,
      I1 => i_data_IBUF(2),
      O => wz_bit_i_11_n_0
    );
wz_bit_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \target_address_reg_n_0_[1]\,
      I1 => i_data_IBUF(1),
      O => wz_bit_i_12_n_0
    );
wz_bit_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \target_address_reg_n_0_[0]\,
      I1 => i_data_IBUF(0),
      O => wz_bit_i_13_n_0
    );
wz_bit_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => next_state2(4),
      I1 => next_state2(5),
      I2 => next_state2(2),
      I3 => next_state2(3),
      I4 => next_state2(7),
      I5 => next_state2(6),
      O => wz_bit_i_2_n_0
    );
wz_bit_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80000000FFFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_pres_state_reg[2]_i_3_n_0\,
      I1 => wz_bit_i_2_n_0,
      I2 => is_target_address_set,
      I3 => o_en_next,
      I4 => pres_state(1),
      I5 => \mem_address[15]_i_4_n_0\,
      O => wz_bit_i_3_n_0
    );
wz_bit_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \target_address_reg_n_0_[7]\,
      I1 => i_data_IBUF(7),
      O => wz_bit_i_6_n_0
    );
wz_bit_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \target_address_reg_n_0_[6]\,
      I1 => i_data_IBUF(6),
      O => wz_bit_i_7_n_0
    );
wz_bit_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \target_address_reg_n_0_[5]\,
      I1 => i_data_IBUF(5),
      O => wz_bit_i_8_n_0
    );
wz_bit_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \target_address_reg_n_0_[4]\,
      I1 => i_data_IBUF(4),
      O => wz_bit_i_9_n_0
    );
wz_bit_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => wz_bit_i_1_n_0,
      Q => wz_bit
    );
wz_bit_reg_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => wz_bit_reg_i_5_n_0,
      CO(3) => NLW_wz_bit_reg_i_4_CO_UNCONNECTED(3),
      CO(2) => wz_bit_reg_i_4_n_1,
      CO(1) => wz_bit_reg_i_4_n_2,
      CO(0) => wz_bit_reg_i_4_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \target_address_reg_n_0_[6]\,
      DI(1) => \target_address_reg_n_0_[5]\,
      DI(0) => \target_address_reg_n_0_[4]\,
      O(3 downto 0) => next_state2(7 downto 4),
      S(3) => wz_bit_i_6_n_0,
      S(2) => wz_bit_i_7_n_0,
      S(1) => wz_bit_i_8_n_0,
      S(0) => wz_bit_i_9_n_0
    );
wz_bit_reg_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => wz_bit_reg_i_5_n_0,
      CO(2) => wz_bit_reg_i_5_n_1,
      CO(1) => wz_bit_reg_i_5_n_2,
      CO(0) => wz_bit_reg_i_5_n_3,
      CYINIT => '1',
      DI(3) => \target_address_reg_n_0_[3]\,
      DI(2) => \target_address_reg_n_0_[2]\,
      DI(1) => \target_address_reg_n_0_[1]\,
      DI(0) => \target_address_reg_n_0_[0]\,
      O(3 downto 2) => next_state2(3 downto 2),
      O(1 downto 0) => NLW_wz_bit_reg_i_5_O_UNCONNECTED(1 downto 0),
      S(3) => wz_bit_i_10_n_0,
      S(2) => wz_bit_i_11_n_0,
      S(1) => wz_bit_i_12_n_0,
      S(0) => wz_bit_i_13_n_0
    );
\wz_offset[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF02"
    )
        port map (
      I0 => wz_offset(0),
      I1 => shift_num(0),
      I2 => shift_num(1),
      I3 => pres_state(1),
      O => wz_offset_next(0)
    );
\wz_offset[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => wz_offset(0),
      I1 => shift_num(0),
      I2 => pres_state(1),
      I3 => wz_offset(1),
      I4 => shift_num(1),
      O => wz_offset_next(1)
    );
\wz_offset[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000A0ACFC0"
    )
        port map (
      I0 => wz_offset(1),
      I1 => wz_offset(0),
      I2 => shift_num(1),
      I3 => wz_offset(2),
      I4 => shift_num(0),
      I5 => pres_state(1),
      O => wz_offset_next(2)
    );
\wz_offset[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"004C"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => pres_state(2),
      I2 => pres_state(1),
      I3 => o_en_next,
      O => \wz_offset[3]_i_1_n_0\
    );
\wz_offset[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CF00CA00C000CA"
    )
        port map (
      I0 => wz_offset(3),
      I1 => \wz_offset[3]_i_3_n_0\,
      I2 => shift_num(0),
      I3 => pres_state(1),
      I4 => shift_num(1),
      I5 => wz_offset(1),
      O => wz_offset_next(3)
    );
\wz_offset[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wz_offset(0),
      I1 => shift_num(1),
      I2 => wz_offset(2),
      O => \wz_offset[3]_i_3_n_0\
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
end STRUCTURE;
