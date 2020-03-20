-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Sun Mar 15 19:06:54 2020
-- Host        : dumevm running 64-bit Ubuntu 16.04.6 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/snegrini/Documents/RL-Project-2020-new/rl_project_2020/rl_project_2020.sim/sim_2/synth/func/xsim/all_multi_tb_func_synth.vhd
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
  signal \FSM_sequential_pres_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_pres_state[2]_i_2_n_0\ : STD_LOGIC;
  signal i_clk_IBUF : STD_LOGIC;
  signal i_clk_IBUF_BUFG : STD_LOGIC;
  signal i_data_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i_rst_IBUF : STD_LOGIC;
  signal i_start_IBUF : STD_LOGIC;
  signal is_target_address_set : STD_LOGIC;
  signal is_target_address_set_i_1_n_0 : STD_LOGIC;
  signal next_state21_in : STD_LOGIC;
  signal o_address_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal o_address_next : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \o_address_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \o_address_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal o_data_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_data_next : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_done_OBUF : STD_LOGIC;
  signal o_done_next : STD_LOGIC;
  signal o_en_OBUF : STD_LOGIC;
  signal o_en_next : STD_LOGIC;
  signal o_we_OBUF : STD_LOGIC;
  signal o_we_next : STD_LOGIC;
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
  signal wz_bit_i_10_n_0 : STD_LOGIC;
  signal wz_bit_i_3_n_0 : STD_LOGIC;
  signal wz_bit_i_4_n_0 : STD_LOGIC;
  signal wz_bit_i_5_n_0 : STD_LOGIC;
  signal wz_bit_i_6_n_0 : STD_LOGIC;
  signal wz_bit_i_7_n_0 : STD_LOGIC;
  signal wz_bit_i_8_n_0 : STD_LOGIC;
  signal wz_bit_i_9_n_0 : STD_LOGIC;
  signal wz_bit_next : STD_LOGIC;
  signal wz_bit_reg_i_2_n_1 : STD_LOGIC;
  signal wz_bit_reg_i_2_n_2 : STD_LOGIC;
  signal wz_bit_reg_i_2_n_3 : STD_LOGIC;
  signal wz_offset : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \wz_offset[1]_i_2_n_0\ : STD_LOGIC;
  signal \wz_offset[1]_i_4_n_0\ : STD_LOGIC;
  signal \wz_offset[1]_i_5_n_0\ : STD_LOGIC;
  signal \wz_offset[1]_i_6_n_0\ : STD_LOGIC;
  signal \wz_offset[1]_i_7_n_0\ : STD_LOGIC;
  signal \wz_offset[3]_i_10_n_0\ : STD_LOGIC;
  signal \wz_offset[3]_i_1_n_0\ : STD_LOGIC;
  signal \wz_offset[3]_i_3_n_0\ : STD_LOGIC;
  signal \wz_offset[3]_i_4_n_0\ : STD_LOGIC;
  signal \wz_offset[3]_i_6_n_0\ : STD_LOGIC;
  signal \wz_offset[3]_i_7_n_0\ : STD_LOGIC;
  signal \wz_offset[3]_i_8_n_0\ : STD_LOGIC;
  signal \wz_offset[3]_i_9_n_0\ : STD_LOGIC;
  signal wz_offset_next : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \wz_offset_reg[1]_i_3_n_1\ : STD_LOGIC;
  signal \wz_offset_reg[1]_i_3_n_2\ : STD_LOGIC;
  signal \wz_offset_reg[1]_i_3_n_3\ : STD_LOGIC;
  signal \wz_offset_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \wz_offset_reg[3]_i_5_n_1\ : STD_LOGIC;
  signal \wz_offset_reg[3]_i_5_n_2\ : STD_LOGIC;
  signal \wz_offset_reg[3]_i_5_n_3\ : STD_LOGIC;
  signal NLW_wz_bit_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wz_offset_reg[1]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_pres_state[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_pres_state[1]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_pres_state_reg[0]\ : label is "fetch_addr:001,get_addr:011,done:101,write_back:100,wait_ram:010,idle:000,iSTATE:110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_pres_state_reg[1]\ : label is "fetch_addr:001,get_addr:011,done:101,write_back:100,wait_ram:010,idle:000,iSTATE:110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_pres_state_reg[2]\ : label is "fetch_addr:001,get_addr:011,done:101,write_back:100,wait_ram:010,idle:000,iSTATE:110";
  attribute SOFT_HLUTNM of is_target_address_set_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_data[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_data[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of o_done_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of o_en_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of o_we_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of wz_bit_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wz_offset[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \wz_offset[3]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wz_offset[3]_i_4\ : label is "soft_lutpair2";
begin
\FSM_sequential_pres_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3154"
    )
        port map (
      I0 => pres_state(0),
      I1 => pres_state(1),
      I2 => i_start_IBUF,
      I3 => pres_state(2),
      O => \FSM_sequential_pres_state[0]_i_1_n_0\
    );
\FSM_sequential_pres_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DFF0"
    )
        port map (
      I0 => is_target_address_set,
      I1 => \FSM_sequential_pres_state[2]_i_2_n_0\,
      I2 => pres_state(0),
      I3 => pres_state(1),
      I4 => pres_state(2),
      O => \FSM_sequential_pres_state[1]_i_1_n_0\
    );
\FSM_sequential_pres_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF000F20002000"
    )
        port map (
      I0 => is_target_address_set,
      I1 => \FSM_sequential_pres_state[2]_i_2_n_0\,
      I2 => pres_state(0),
      I3 => pres_state(1),
      I4 => i_start_IBUF,
      I5 => pres_state(2),
      O => \FSM_sequential_pres_state[2]_i_1_n_0\
    );
\FSM_sequential_pres_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000B0B0B0B0B0B0B"
    )
        port map (
      I0 => \wz_offset[1]_i_2_n_0\,
      I1 => next_state21_in,
      I2 => o_address_OBUF(3),
      I3 => o_address_OBUF(2),
      I4 => o_address_OBUF(0),
      I5 => o_address_OBUF(1),
      O => \FSM_sequential_pres_state[2]_i_2_n_0\
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
      I => '0',
      O => o_address(10)
    );
\o_address_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(11)
    );
\o_address_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(12)
    );
\o_address_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(13)
    );
\o_address_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(14)
    );
\o_address_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
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
      I => '0',
      O => o_address(4)
    );
\o_address_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(5)
    );
\o_address_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(6)
    );
\o_address_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(7)
    );
\o_address_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(8)
    );
\o_address_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(9)
    );
\o_address_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6000FFFF6000A0A0"
    )
        port map (
      I0 => o_address_OBUF(0),
      I1 => \FSM_sequential_pres_state[2]_i_2_n_0\,
      I2 => pres_state(1),
      I3 => is_target_address_set,
      I4 => pres_state(0),
      I5 => pres_state(2),
      O => o_address_next(0)
    );
\o_address_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6000C000C0C0C0C0"
    )
        port map (
      I0 => o_address_OBUF(0),
      I1 => o_address_OBUF(1),
      I2 => pres_state(1),
      I3 => is_target_address_set,
      I4 => \FSM_sequential_pres_state[2]_i_2_n_0\,
      I5 => pres_state(0),
      O => o_address_next(1)
    );
\o_address_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9C000000CC00CC00"
    )
        port map (
      I0 => \o_address_reg[2]_i_2_n_0\,
      I1 => o_address_OBUF(2),
      I2 => \FSM_sequential_pres_state[2]_i_2_n_0\,
      I3 => pres_state(1),
      I4 => is_target_address_set,
      I5 => pres_state(0),
      O => o_address_next(2)
    );
\o_address_reg[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => o_address_OBUF(1),
      I1 => o_address_OBUF(0),
      O => \o_address_reg[2]_i_2_n_0\
    );
\o_address_reg[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_rst_IBUF,
      O => \o_address_reg[3]_i_1_n_0\
    );
\o_address_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111ECEC3111ECEC"
    )
        port map (
      I0 => pres_state(1),
      I1 => pres_state(2),
      I2 => o_address_OBUF(3),
      I3 => is_target_address_set,
      I4 => pres_state(0),
      I5 => \FSM_sequential_pres_state[2]_i_2_n_0\,
      O => o_address_next(3)
    );
\o_address_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address_reg[3]_i_1_n_0\,
      D => o_address_next(0),
      Q => o_address_OBUF(0),
      R => '0'
    );
\o_address_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address_reg[3]_i_1_n_0\,
      D => o_address_next(1),
      Q => o_address_OBUF(1),
      R => '0'
    );
\o_address_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address_reg[3]_i_1_n_0\,
      D => o_address_next(2),
      Q => o_address_OBUF(2),
      R => '0'
    );
\o_address_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address_reg[3]_i_1_n_0\,
      D => o_address_next(3),
      Q => o_address_OBUF(3),
      R => '0'
    );
\o_data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E000200"
    )
        port map (
      I0 => \target_address_reg_n_0_[0]\,
      I1 => wz_bit,
      I2 => pres_state(0),
      I3 => pres_state(2),
      I4 => wz_offset(0),
      O => o_data_next(0)
    );
\o_data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E000200"
    )
        port map (
      I0 => \target_address_reg_n_0_[1]\,
      I1 => wz_bit,
      I2 => pres_state(0),
      I3 => pres_state(2),
      I4 => wz_offset(1),
      O => o_data_next(1)
    );
\o_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E000200"
    )
        port map (
      I0 => \target_address_reg_n_0_[2]\,
      I1 => wz_bit,
      I2 => pres_state(0),
      I3 => pres_state(2),
      I4 => wz_offset(2),
      O => o_data_next(2)
    );
\o_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E000200"
    )
        port map (
      I0 => \target_address_reg_n_0_[3]\,
      I1 => wz_bit,
      I2 => pres_state(0),
      I3 => pres_state(2),
      I4 => wz_offset(3),
      O => o_data_next(3)
    );
\o_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E000200"
    )
        port map (
      I0 => \target_address_reg_n_0_[4]\,
      I1 => wz_bit,
      I2 => pres_state(0),
      I3 => pres_state(2),
      I4 => o_address_OBUF(0),
      O => o_data_next(4)
    );
\o_data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E000200"
    )
        port map (
      I0 => \target_address_reg_n_0_[5]\,
      I1 => wz_bit,
      I2 => pres_state(0),
      I3 => pres_state(2),
      I4 => o_address_OBUF(1),
      O => o_data_next(5)
    );
\o_data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CA0000"
    )
        port map (
      I0 => \target_address_reg_n_0_[6]\,
      I1 => o_address_OBUF(2),
      I2 => wz_bit,
      I3 => pres_state(0),
      I4 => pres_state(2),
      O => o_data_next(6)
    );
\o_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => wz_bit,
      I1 => pres_state(0),
      I2 => pres_state(2),
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
      CE => \o_address_reg[3]_i_1_n_0\,
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
      CE => \o_address_reg[3]_i_1_n_0\,
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
      CE => \o_address_reg[3]_i_1_n_0\,
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
      CE => \o_address_reg[3]_i_1_n_0\,
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
      CE => \o_address_reg[3]_i_1_n_0\,
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
      CE => \o_address_reg[3]_i_1_n_0\,
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
      CE => \o_address_reg[3]_i_1_n_0\,
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
      CE => \o_address_reg[3]_i_1_n_0\,
      D => o_data_next(7),
      Q => o_data_OBUF(7),
      R => '0'
    );
o_done_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_done_OBUF,
      O => o_done
    );
o_done_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pres_state(0),
      I1 => i_start_IBUF,
      I2 => pres_state(2),
      O => o_done_next
    );
o_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => o_done_next,
      Q => o_done_OBUF
    );
o_en_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_en_OBUF,
      O => o_en
    );
o_en_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => pres_state(1),
      I1 => pres_state(2),
      I2 => pres_state(0),
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
o_we_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pres_state(2),
      I1 => pres_state(0),
      O => o_we_next
    );
o_we_reg: unisim.vcomponents.FDCE
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
\target_address[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => pres_state(0),
      I1 => pres_state(1),
      I2 => is_target_address_set,
      I3 => i_rst_IBUF,
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
wz_bit_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => pres_state(2),
      I2 => next_state21_in,
      I3 => \wz_offset[1]_i_2_n_0\,
      O => wz_bit_next
    );
wz_bit_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => i_data_IBUF(0),
      I1 => \target_address_reg_n_0_[0]\,
      I2 => i_data_IBUF(1),
      I3 => \target_address_reg_n_0_[1]\,
      O => wz_bit_i_10_n_0
    );
wz_bit_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => i_data_IBUF(6),
      I1 => \target_address_reg_n_0_[6]\,
      I2 => \target_address_reg_n_0_[7]\,
      I3 => i_data_IBUF(7),
      O => wz_bit_i_3_n_0
    );
wz_bit_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \target_address_reg_n_0_[4]\,
      I1 => i_data_IBUF(4),
      I2 => i_data_IBUF(5),
      I3 => \target_address_reg_n_0_[5]\,
      O => wz_bit_i_4_n_0
    );
wz_bit_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \target_address_reg_n_0_[2]\,
      I1 => i_data_IBUF(2),
      I2 => i_data_IBUF(3),
      I3 => \target_address_reg_n_0_[3]\,
      O => wz_bit_i_5_n_0
    );
wz_bit_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \target_address_reg_n_0_[0]\,
      I1 => i_data_IBUF(0),
      I2 => i_data_IBUF(1),
      I3 => \target_address_reg_n_0_[1]\,
      O => wz_bit_i_6_n_0
    );
wz_bit_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \target_address_reg_n_0_[7]\,
      I1 => i_data_IBUF(7),
      I2 => \target_address_reg_n_0_[6]\,
      I3 => i_data_IBUF(6),
      O => wz_bit_i_7_n_0
    );
wz_bit_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => i_data_IBUF(4),
      I1 => \target_address_reg_n_0_[4]\,
      I2 => i_data_IBUF(5),
      I3 => \target_address_reg_n_0_[5]\,
      O => wz_bit_i_8_n_0
    );
wz_bit_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => i_data_IBUF(2),
      I1 => \target_address_reg_n_0_[2]\,
      I2 => i_data_IBUF(3),
      I3 => \target_address_reg_n_0_[3]\,
      O => wz_bit_i_9_n_0
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
wz_bit_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => next_state21_in,
      CO(2) => wz_bit_reg_i_2_n_1,
      CO(1) => wz_bit_reg_i_2_n_2,
      CO(0) => wz_bit_reg_i_2_n_3,
      CYINIT => '1',
      DI(3) => wz_bit_i_3_n_0,
      DI(2) => wz_bit_i_4_n_0,
      DI(1) => wz_bit_i_5_n_0,
      DI(0) => wz_bit_i_6_n_0,
      O(3 downto 0) => NLW_wz_bit_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => wz_bit_i_7_n_0,
      S(2) => wz_bit_i_8_n_0,
      S(1) => wz_bit_i_9_n_0,
      S(0) => wz_bit_i_10_n_0
    );
\wz_offset[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAABA"
    )
        port map (
      I0 => pres_state(2),
      I1 => COUNT(0),
      I2 => wz_offset(0),
      I3 => COUNT(1),
      I4 => \wz_offset[1]_i_2_n_0\,
      O => wz_offset_next(0)
    );
\wz_offset[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000110100001000"
    )
        port map (
      I0 => \wz_offset[1]_i_2_n_0\,
      I1 => pres_state(2),
      I2 => COUNT(0),
      I3 => wz_offset(0),
      I4 => COUNT(1),
      I5 => wz_offset(1),
      O => wz_offset_next(1)
    );
\wz_offset[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => COUNT(6),
      I1 => COUNT(7),
      I2 => COUNT(5),
      I3 => COUNT(4),
      I4 => COUNT(3),
      I5 => COUNT(2),
      O => \wz_offset[1]_i_2_n_0\
    );
\wz_offset[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => i_data_IBUF(7),
      I1 => \target_address_reg_n_0_[7]\,
      O => \wz_offset[1]_i_4_n_0\
    );
\wz_offset[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \target_address_reg_n_0_[6]\,
      I1 => i_data_IBUF(6),
      O => \wz_offset[1]_i_5_n_0\
    );
\wz_offset[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \target_address_reg_n_0_[5]\,
      I1 => i_data_IBUF(5),
      O => \wz_offset[1]_i_6_n_0\
    );
\wz_offset[1]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \target_address_reg_n_0_[4]\,
      I1 => i_data_IBUF(4),
      O => \wz_offset[1]_i_7_n_0\
    );
\wz_offset[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0AA8080000A808"
    )
        port map (
      I0 => \wz_offset[3]_i_4_n_0\,
      I1 => wz_offset(2),
      I2 => COUNT(1),
      I3 => wz_offset(0),
      I4 => COUNT(0),
      I5 => wz_offset(1),
      O => wz_offset_next(2)
    );
\wz_offset[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444000044440000"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => pres_state(2),
      I2 => pres_state(1),
      I3 => is_target_address_set,
      I4 => pres_state(0),
      I5 => \wz_offset[3]_i_3_n_0\,
      O => \wz_offset[3]_i_1_n_0\
    );
\wz_offset[3]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \target_address_reg_n_0_[0]\,
      I1 => i_data_IBUF(0),
      O => \wz_offset[3]_i_10_n_0\
    );
\wz_offset[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A280A280A2A28080"
    )
        port map (
      I0 => \wz_offset[3]_i_4_n_0\,
      I1 => COUNT(0),
      I2 => \wz_offset[3]_i_6_n_0\,
      I3 => wz_offset(1),
      I4 => wz_offset(3),
      I5 => COUNT(1),
      O => wz_offset_next(3)
    );
\wz_offset[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => next_state21_in,
      I1 => \wz_offset[1]_i_2_n_0\,
      O => \wz_offset[3]_i_3_n_0\
    );
\wz_offset[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pres_state(2),
      I1 => \wz_offset[1]_i_2_n_0\,
      O => \wz_offset[3]_i_4_n_0\
    );
\wz_offset[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wz_offset(0),
      I1 => COUNT(1),
      I2 => wz_offset(2),
      O => \wz_offset[3]_i_6_n_0\
    );
\wz_offset[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \target_address_reg_n_0_[3]\,
      I1 => i_data_IBUF(3),
      O => \wz_offset[3]_i_7_n_0\
    );
\wz_offset[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \target_address_reg_n_0_[2]\,
      I1 => i_data_IBUF(2),
      O => \wz_offset[3]_i_8_n_0\
    );
\wz_offset[3]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \target_address_reg_n_0_[1]\,
      I1 => i_data_IBUF(1),
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
\wz_offset_reg[1]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \wz_offset_reg[3]_i_5_n_0\,
      CO(3) => \NLW_wz_offset_reg[1]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \wz_offset_reg[1]_i_3_n_1\,
      CO(1) => \wz_offset_reg[1]_i_3_n_2\,
      CO(0) => \wz_offset_reg[1]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \target_address_reg_n_0_[6]\,
      DI(1) => \target_address_reg_n_0_[5]\,
      DI(0) => \target_address_reg_n_0_[4]\,
      O(3 downto 0) => COUNT(7 downto 4),
      S(3) => \wz_offset[1]_i_4_n_0\,
      S(2) => \wz_offset[1]_i_5_n_0\,
      S(1) => \wz_offset[1]_i_6_n_0\,
      S(0) => \wz_offset[1]_i_7_n_0\
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
\wz_offset_reg[3]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wz_offset_reg[3]_i_5_n_0\,
      CO(2) => \wz_offset_reg[3]_i_5_n_1\,
      CO(1) => \wz_offset_reg[3]_i_5_n_2\,
      CO(0) => \wz_offset_reg[3]_i_5_n_3\,
      CYINIT => '1',
      DI(3) => \target_address_reg_n_0_[3]\,
      DI(2) => \target_address_reg_n_0_[2]\,
      DI(1) => \target_address_reg_n_0_[1]\,
      DI(0) => \target_address_reg_n_0_[0]\,
      O(3 downto 0) => COUNT(3 downto 0),
      S(3) => \wz_offset[3]_i_7_n_0\,
      S(2) => \wz_offset[3]_i_8_n_0\,
      S(1) => \wz_offset[3]_i_9_n_0\,
      S(0) => \wz_offset[3]_i_10_n_0\
    );
end STRUCTURE;
