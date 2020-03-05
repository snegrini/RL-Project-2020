// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sat Feb 29 18:29:49 2020
// Host        : dumevm running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/snegrini/Documents/RL-Project-2020-new/rl_project_2020/rl_project_2020.sim/autogen/synth/timing/xsim/project_tb_time_synth.v
// Design      : project_reti_logiche
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module project_reti_logiche
   (i_clk,
    i_start,
    i_rst,
    i_data,
    o_address,
    o_done,
    o_en,
    o_we,
    o_data);
  input i_clk;
  input i_start;
  input i_rst;
  input [7:0]i_data;
  output [15:0]o_address;
  output o_done;
  output o_en;
  output o_we;
  output [7:0]o_data;

  wire [7:0]COUNT;
  wire \FSM_sequential_pres_state[0]_i_1_n_0 ;
  wire \FSM_sequential_pres_state[1]_i_1_n_0 ;
  wire \FSM_sequential_pres_state[1]_i_2_n_0 ;
  wire \FSM_sequential_pres_state[1]_i_3_n_0 ;
  wire \FSM_sequential_pres_state[2]_i_10_n_0 ;
  wire \FSM_sequential_pres_state[2]_i_11_n_0 ;
  wire \FSM_sequential_pres_state[2]_i_1_n_0 ;
  wire \FSM_sequential_pres_state[2]_i_2_n_0 ;
  wire \FSM_sequential_pres_state[2]_i_4_n_0 ;
  wire \FSM_sequential_pres_state[2]_i_5_n_0 ;
  wire \FSM_sequential_pres_state[2]_i_6_n_0 ;
  wire \FSM_sequential_pres_state[2]_i_7_n_0 ;
  wire \FSM_sequential_pres_state[2]_i_8_n_0 ;
  wire \FSM_sequential_pres_state[2]_i_9_n_0 ;
  wire \FSM_sequential_pres_state_reg[2]_i_3_n_0 ;
  wire \FSM_sequential_pres_state_reg[2]_i_3_n_1 ;
  wire \FSM_sequential_pres_state_reg[2]_i_3_n_2 ;
  wire \FSM_sequential_pres_state_reg[2]_i_3_n_3 ;
  wire i_clk;
  wire i_clk_IBUF;
  wire i_clk_IBUF_BUFG;
  wire [7:0]i_data;
  wire [7:0]i_data_IBUF;
  wire i_rst;
  wire i_rst_IBUF;
  wire i_start;
  wire i_start_IBUF;
  wire is_target_address_set;
  wire is_target_address_set_i_1_n_0;
  wire [15:0]o_address;
  wire [3:0]o_address_OBUF;
  wire [3:0]o_address_next;
  wire \o_address_reg[1]_i_2_n_0 ;
  wire \o_address_reg[1]_i_3_n_0 ;
  wire \o_address_reg[1]_i_4_n_0 ;
  wire \o_address_reg[2]_i_2_n_0 ;
  wire \o_address_reg[3]_i_1_n_0 ;
  wire [7:0]o_data;
  wire \o_data[0]_i_1_n_0 ;
  wire \o_data[1]_i_1_n_0 ;
  wire \o_data[2]_i_1_n_0 ;
  wire \o_data[3]_i_1_n_0 ;
  wire \o_data[4]_i_1_n_0 ;
  wire \o_data[5]_i_1_n_0 ;
  wire \o_data[6]_i_1_n_0 ;
  wire \o_data[6]_i_2_n_0 ;
  wire [7:0]o_data_OBUF;
  wire [7:7]o_data_next;
  wire o_done;
  wire o_en;
  wire o_en_OBUF;
  wire o_en_next;
  wire o_we;
  wire o_we_OBUF;
  wire o_we_next;
  wire [2:0]pres_state;
  wire target_address0;
  wire \target_address_reg_n_0_[0] ;
  wire \target_address_reg_n_0_[1] ;
  wire \target_address_reg_n_0_[2] ;
  wire \target_address_reg_n_0_[3] ;
  wire \target_address_reg_n_0_[4] ;
  wire \target_address_reg_n_0_[5] ;
  wire \target_address_reg_n_0_[6] ;
  wire \target_address_reg_n_0_[7] ;
  wire wz_bit;
  wire wz_bit_next;
  wire [3:0]wz_offset;
  wire \wz_offset[1]_i_2_n_0 ;
  wire \wz_offset[1]_i_4_n_0 ;
  wire \wz_offset[1]_i_5_n_0 ;
  wire \wz_offset[1]_i_6_n_0 ;
  wire \wz_offset[1]_i_7_n_0 ;
  wire \wz_offset[3]_i_10_n_0 ;
  wire \wz_offset[3]_i_1_n_0 ;
  wire \wz_offset[3]_i_3_n_0 ;
  wire \wz_offset[3]_i_4_n_0 ;
  wire \wz_offset[3]_i_5_n_0 ;
  wire \wz_offset[3]_i_7_n_0 ;
  wire \wz_offset[3]_i_8_n_0 ;
  wire \wz_offset[3]_i_9_n_0 ;
  wire [3:0]wz_offset_next;
  wire \wz_offset_reg[1]_i_3_n_1 ;
  wire \wz_offset_reg[1]_i_3_n_2 ;
  wire \wz_offset_reg[1]_i_3_n_3 ;
  wire \wz_offset_reg[3]_i_6_n_0 ;
  wire \wz_offset_reg[3]_i_6_n_1 ;
  wire \wz_offset_reg[3]_i_6_n_2 ;
  wire \wz_offset_reg[3]_i_6_n_3 ;
  wire [3:0]\NLW_FSM_sequential_pres_state_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_wz_offset_reg[1]_i_3_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("project_tb_time_synth.sdf",,,,"tool_control");
end
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h40FE)) 
    \FSM_sequential_pres_state[0]_i_1 
       (.I0(pres_state[1]),
        .I1(pres_state[2]),
        .I2(i_start_IBUF),
        .I3(pres_state[0]),
        .O(\FSM_sequential_pres_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8800888800008080)) 
    \FSM_sequential_pres_state[1]_i_1 
       (.I0(\FSM_sequential_pres_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_pres_state[1]_i_3_n_0 ),
        .I2(pres_state[0]),
        .I3(i_start_IBUF),
        .I4(pres_state[2]),
        .I5(pres_state[1]),
        .O(\FSM_sequential_pres_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \FSM_sequential_pres_state[1]_i_2 
       (.I0(\wz_offset[1]_i_2_n_0 ),
        .I1(\FSM_sequential_pres_state_reg[2]_i_3_n_0 ),
        .I2(is_target_address_set),
        .I3(pres_state[1]),
        .I4(pres_state[0]),
        .O(\FSM_sequential_pres_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \FSM_sequential_pres_state[1]_i_3 
       (.I0(is_target_address_set),
        .I1(pres_state[1]),
        .I2(pres_state[0]),
        .I3(\o_address_reg[1]_i_3_n_0 ),
        .O(\FSM_sequential_pres_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC8080FC0C0000)) 
    \FSM_sequential_pres_state[2]_i_1 
       (.I0(is_target_address_set),
        .I1(\FSM_sequential_pres_state[2]_i_2_n_0 ),
        .I2(pres_state[0]),
        .I3(i_start_IBUF),
        .I4(pres_state[2]),
        .I5(pres_state[1]),
        .O(\FSM_sequential_pres_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_pres_state[2]_i_10 
       (.I0(i_data_IBUF[3]),
        .I1(\target_address_reg_n_0_[3] ),
        .I2(i_data_IBUF[2]),
        .I3(\target_address_reg_n_0_[2] ),
        .O(\FSM_sequential_pres_state[2]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_pres_state[2]_i_11 
       (.I0(i_data_IBUF[1]),
        .I1(\target_address_reg_n_0_[1] ),
        .I2(i_data_IBUF[0]),
        .I3(\target_address_reg_n_0_[0] ),
        .O(\FSM_sequential_pres_state[2]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h8FFFFFFF)) 
    \FSM_sequential_pres_state[2]_i_2 
       (.I0(\FSM_sequential_pres_state_reg[2]_i_3_n_0 ),
        .I1(\wz_offset[1]_i_2_n_0 ),
        .I2(pres_state[1]),
        .I3(pres_state[0]),
        .I4(\o_address_reg[1]_i_3_n_0 ),
        .O(\FSM_sequential_pres_state[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_pres_state[2]_i_4 
       (.I0(\target_address_reg_n_0_[6] ),
        .I1(i_data_IBUF[6]),
        .I2(i_data_IBUF[7]),
        .I3(\target_address_reg_n_0_[7] ),
        .O(\FSM_sequential_pres_state[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_pres_state[2]_i_5 
       (.I0(\target_address_reg_n_0_[4] ),
        .I1(i_data_IBUF[4]),
        .I2(i_data_IBUF[5]),
        .I3(\target_address_reg_n_0_[5] ),
        .O(\FSM_sequential_pres_state[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_pres_state[2]_i_6 
       (.I0(\target_address_reg_n_0_[2] ),
        .I1(i_data_IBUF[2]),
        .I2(i_data_IBUF[3]),
        .I3(\target_address_reg_n_0_[3] ),
        .O(\FSM_sequential_pres_state[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_pres_state[2]_i_7 
       (.I0(\target_address_reg_n_0_[0] ),
        .I1(i_data_IBUF[0]),
        .I2(i_data_IBUF[1]),
        .I3(\target_address_reg_n_0_[1] ),
        .O(\FSM_sequential_pres_state[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_pres_state[2]_i_8 
       (.I0(\target_address_reg_n_0_[7] ),
        .I1(i_data_IBUF[7]),
        .I2(i_data_IBUF[6]),
        .I3(\target_address_reg_n_0_[6] ),
        .O(\FSM_sequential_pres_state[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_pres_state[2]_i_9 
       (.I0(i_data_IBUF[5]),
        .I1(\target_address_reg_n_0_[5] ),
        .I2(i_data_IBUF[4]),
        .I3(\target_address_reg_n_0_[4] ),
        .O(\FSM_sequential_pres_state[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "fetch_addr:001,get_addr:011,done:101,write_back:100,wait_ram:010,idle:000,iSTATE:110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_pres_state_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\FSM_sequential_pres_state[0]_i_1_n_0 ),
        .Q(pres_state[0]));
  (* FSM_ENCODED_STATES = "fetch_addr:001,get_addr:011,done:101,write_back:100,wait_ram:010,idle:000,iSTATE:110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_pres_state_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\FSM_sequential_pres_state[1]_i_1_n_0 ),
        .Q(pres_state[1]));
  (* FSM_ENCODED_STATES = "fetch_addr:001,get_addr:011,done:101,write_back:100,wait_ram:010,idle:000,iSTATE:110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_pres_state_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\FSM_sequential_pres_state[2]_i_1_n_0 ),
        .Q(pres_state[2]));
  CARRY4 \FSM_sequential_pres_state_reg[2]_i_3 
       (.CI(1'b0),
        .CO({\FSM_sequential_pres_state_reg[2]_i_3_n_0 ,\FSM_sequential_pres_state_reg[2]_i_3_n_1 ,\FSM_sequential_pres_state_reg[2]_i_3_n_2 ,\FSM_sequential_pres_state_reg[2]_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI({\FSM_sequential_pres_state[2]_i_4_n_0 ,\FSM_sequential_pres_state[2]_i_5_n_0 ,\FSM_sequential_pres_state[2]_i_6_n_0 ,\FSM_sequential_pres_state[2]_i_7_n_0 }),
        .O(\NLW_FSM_sequential_pres_state_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({\FSM_sequential_pres_state[2]_i_8_n_0 ,\FSM_sequential_pres_state[2]_i_9_n_0 ,\FSM_sequential_pres_state[2]_i_10_n_0 ,\FSM_sequential_pres_state[2]_i_11_n_0 }));
  BUFG i_clk_IBUF_BUFG_inst
       (.I(i_clk_IBUF),
        .O(i_clk_IBUF_BUFG));
  IBUF i_clk_IBUF_inst
       (.I(i_clk),
        .O(i_clk_IBUF));
  IBUF \i_data_IBUF[0]_inst 
       (.I(i_data[0]),
        .O(i_data_IBUF[0]));
  IBUF \i_data_IBUF[1]_inst 
       (.I(i_data[1]),
        .O(i_data_IBUF[1]));
  IBUF \i_data_IBUF[2]_inst 
       (.I(i_data[2]),
        .O(i_data_IBUF[2]));
  IBUF \i_data_IBUF[3]_inst 
       (.I(i_data[3]),
        .O(i_data_IBUF[3]));
  IBUF \i_data_IBUF[4]_inst 
       (.I(i_data[4]),
        .O(i_data_IBUF[4]));
  IBUF \i_data_IBUF[5]_inst 
       (.I(i_data[5]),
        .O(i_data_IBUF[5]));
  IBUF \i_data_IBUF[6]_inst 
       (.I(i_data[6]),
        .O(i_data_IBUF[6]));
  IBUF \i_data_IBUF[7]_inst 
       (.I(i_data[7]),
        .O(i_data_IBUF[7]));
  IBUF i_rst_IBUF_inst
       (.I(i_rst),
        .O(i_rst_IBUF));
  IBUF i_start_IBUF_inst
       (.I(i_start),
        .O(i_start_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hBBB0F0F0)) 
    is_target_address_set_i_1
       (.I0(i_start_IBUF),
        .I1(pres_state[2]),
        .I2(is_target_address_set),
        .I3(pres_state[1]),
        .I4(pres_state[0]),
        .O(is_target_address_set_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    is_target_address_set_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(is_target_address_set_i_1_n_0),
        .Q(is_target_address_set));
  OBUF \o_address_OBUF[0]_inst 
       (.I(o_address_OBUF[0]),
        .O(o_address[0]));
  OBUF \o_address_OBUF[10]_inst 
       (.I(1'b0),
        .O(o_address[10]));
  OBUF \o_address_OBUF[11]_inst 
       (.I(1'b0),
        .O(o_address[11]));
  OBUF \o_address_OBUF[12]_inst 
       (.I(1'b0),
        .O(o_address[12]));
  OBUF \o_address_OBUF[13]_inst 
       (.I(1'b0),
        .O(o_address[13]));
  OBUF \o_address_OBUF[14]_inst 
       (.I(1'b0),
        .O(o_address[14]));
  OBUF \o_address_OBUF[15]_inst 
       (.I(1'b0),
        .O(o_address[15]));
  OBUF \o_address_OBUF[1]_inst 
       (.I(o_address_OBUF[1]),
        .O(o_address[1]));
  OBUF \o_address_OBUF[2]_inst 
       (.I(o_address_OBUF[2]),
        .O(o_address[2]));
  OBUF \o_address_OBUF[3]_inst 
       (.I(o_address_OBUF[3]),
        .O(o_address[3]));
  OBUF \o_address_OBUF[4]_inst 
       (.I(1'b0),
        .O(o_address[4]));
  OBUF \o_address_OBUF[5]_inst 
       (.I(1'b0),
        .O(o_address[5]));
  OBUF \o_address_OBUF[6]_inst 
       (.I(1'b0),
        .O(o_address[6]));
  OBUF \o_address_OBUF[7]_inst 
       (.I(1'b0),
        .O(o_address[7]));
  OBUF \o_address_OBUF[8]_inst 
       (.I(1'b0),
        .O(o_address[8]));
  OBUF \o_address_OBUF[9]_inst 
       (.I(1'b0),
        .O(o_address[9]));
  LUT6 #(
    .INIT(64'hEEEEEFEFAFAAAAAA)) 
    \o_address_reg[0]_i_1 
       (.I0(o_we_next),
        .I1(\o_address_reg[1]_i_4_n_0 ),
        .I2(\o_address_reg[1]_i_2_n_0 ),
        .I3(\o_address_reg[1]_i_3_n_0 ),
        .I4(\wz_offset[3]_i_3_n_0 ),
        .I5(o_address_OBUF[0]),
        .O(o_address_next[0]));
  LUT6 #(
    .INIT(64'hFFFF400004554000)) 
    \o_address_reg[1]_i_1 
       (.I0(\o_address_reg[1]_i_2_n_0 ),
        .I1(\o_address_reg[1]_i_3_n_0 ),
        .I2(o_address_OBUF[0]),
        .I3(\wz_offset[3]_i_3_n_0 ),
        .I4(o_address_OBUF[1]),
        .I5(\o_address_reg[1]_i_4_n_0 ),
        .O(o_address_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \o_address_reg[1]_i_2 
       (.I0(pres_state[0]),
        .I1(pres_state[1]),
        .I2(is_target_address_set),
        .O(\o_address_reg[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1555)) 
    \o_address_reg[1]_i_3 
       (.I0(o_address_OBUF[3]),
        .I1(o_address_OBUF[0]),
        .I2(o_address_OBUF[1]),
        .I3(o_address_OBUF[2]),
        .O(\o_address_reg[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_address_reg[1]_i_4 
       (.I0(pres_state[1]),
        .I1(pres_state[0]),
        .O(\o_address_reg[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8A800000FF000000)) 
    \o_address_reg[2]_i_1 
       (.I0(is_target_address_set),
        .I1(\o_address_reg[2]_i_2_n_0 ),
        .I2(\wz_offset[3]_i_3_n_0 ),
        .I3(o_address_OBUF[2]),
        .I4(pres_state[1]),
        .I5(pres_state[0]),
        .O(o_address_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \o_address_reg[2]_i_2 
       (.I0(o_address_OBUF[3]),
        .I1(o_address_OBUF[0]),
        .I2(o_address_OBUF[1]),
        .I3(o_address_OBUF[2]),
        .O(\o_address_reg[2]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_address_reg[3]_i_1 
       (.I0(i_rst_IBUF),
        .O(\o_address_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF40FFCC00)) 
    \o_address_reg[3]_i_2 
       (.I0(\wz_offset[3]_i_3_n_0 ),
        .I1(o_address_OBUF[3]),
        .I2(is_target_address_set),
        .I3(pres_state[1]),
        .I4(pres_state[0]),
        .I5(pres_state[2]),
        .O(o_address_next[3]));
  FDRE #(
    .INIT(1'b0)) 
    \o_address_reg_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_address_reg[3]_i_1_n_0 ),
        .D(o_address_next[0]),
        .Q(o_address_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_address_reg_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_address_reg[3]_i_1_n_0 ),
        .D(o_address_next[1]),
        .Q(o_address_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_address_reg_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_address_reg[3]_i_1_n_0 ),
        .D(o_address_next[2]),
        .Q(o_address_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_address_reg_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_address_reg[3]_i_1_n_0 ),
        .D(o_address_next[3]),
        .Q(o_address_OBUF[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hA088)) 
    \o_data[0]_i_1 
       (.I0(pres_state[2]),
        .I1(\target_address_reg_n_0_[0] ),
        .I2(wz_offset[0]),
        .I3(wz_bit),
        .O(\o_data[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA088)) 
    \o_data[1]_i_1 
       (.I0(pres_state[2]),
        .I1(\target_address_reg_n_0_[1] ),
        .I2(wz_offset[1]),
        .I3(wz_bit),
        .O(\o_data[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA088)) 
    \o_data[2]_i_1 
       (.I0(pres_state[2]),
        .I1(\target_address_reg_n_0_[2] ),
        .I2(wz_offset[2]),
        .I3(wz_bit),
        .O(\o_data[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA088)) 
    \o_data[3]_i_1 
       (.I0(pres_state[2]),
        .I1(\target_address_reg_n_0_[3] ),
        .I2(wz_offset[3]),
        .I3(wz_bit),
        .O(\o_data[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA088)) 
    \o_data[4]_i_1 
       (.I0(pres_state[2]),
        .I1(\target_address_reg_n_0_[4] ),
        .I2(o_address_OBUF[0]),
        .I3(wz_bit),
        .O(\o_data[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA088)) 
    \o_data[5]_i_1 
       (.I0(pres_state[2]),
        .I1(\target_address_reg_n_0_[5] ),
        .I2(o_address_OBUF[1]),
        .I3(wz_bit),
        .O(\o_data[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o_data[6]_i_1 
       (.I0(pres_state[0]),
        .I1(i_rst_IBUF),
        .O(\o_data[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA088)) 
    \o_data[6]_i_2 
       (.I0(pres_state[2]),
        .I1(\target_address_reg_n_0_[6] ),
        .I2(o_address_OBUF[2]),
        .I3(wz_bit),
        .O(\o_data[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \o_data[7]_i_1 
       (.I0(pres_state[0]),
        .I1(pres_state[2]),
        .I2(wz_bit),
        .O(o_data_next));
  OBUF \o_data_OBUF[0]_inst 
       (.I(o_data_OBUF[0]),
        .O(o_data[0]));
  OBUF \o_data_OBUF[1]_inst 
       (.I(o_data_OBUF[1]),
        .O(o_data[1]));
  OBUF \o_data_OBUF[2]_inst 
       (.I(o_data_OBUF[2]),
        .O(o_data[2]));
  OBUF \o_data_OBUF[3]_inst 
       (.I(o_data_OBUF[3]),
        .O(o_data[3]));
  OBUF \o_data_OBUF[4]_inst 
       (.I(o_data_OBUF[4]),
        .O(o_data[4]));
  OBUF \o_data_OBUF[5]_inst 
       (.I(o_data_OBUF[5]),
        .O(o_data[5]));
  OBUF \o_data_OBUF[6]_inst 
       (.I(o_data_OBUF[6]),
        .O(o_data[6]));
  OBUF \o_data_OBUF[7]_inst 
       (.I(o_data_OBUF[7]),
        .O(o_data[7]));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_address_reg[3]_i_1_n_0 ),
        .D(\o_data[0]_i_1_n_0 ),
        .Q(o_data_OBUF[0]),
        .R(\o_data[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_address_reg[3]_i_1_n_0 ),
        .D(\o_data[1]_i_1_n_0 ),
        .Q(o_data_OBUF[1]),
        .R(\o_data[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_address_reg[3]_i_1_n_0 ),
        .D(\o_data[2]_i_1_n_0 ),
        .Q(o_data_OBUF[2]),
        .R(\o_data[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_address_reg[3]_i_1_n_0 ),
        .D(\o_data[3]_i_1_n_0 ),
        .Q(o_data_OBUF[3]),
        .R(\o_data[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_address_reg[3]_i_1_n_0 ),
        .D(\o_data[4]_i_1_n_0 ),
        .Q(o_data_OBUF[4]),
        .R(\o_data[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_address_reg[3]_i_1_n_0 ),
        .D(\o_data[5]_i_1_n_0 ),
        .Q(o_data_OBUF[5]),
        .R(\o_data[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_address_reg[3]_i_1_n_0 ),
        .D(\o_data[6]_i_2_n_0 ),
        .Q(o_data_OBUF[6]),
        .R(\o_data[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_data_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\o_address_reg[3]_i_1_n_0 ),
        .D(o_data_next),
        .Q(o_data_OBUF[7]),
        .R(1'b0));
  OBUF o_done_OBUF_inst
       (.I(o_we_OBUF),
        .O(o_done));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    o_done_i_1
       (.I0(pres_state[2]),
        .I1(pres_state[0]),
        .O(o_we_next));
  FDCE #(
    .INIT(1'b0)) 
    o_done_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(o_we_next),
        .Q(o_we_OBUF));
  OBUF o_en_OBUF_inst
       (.I(o_en_OBUF),
        .O(o_en));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hBE)) 
    o_en_i_1
       (.I0(pres_state[1]),
        .I1(pres_state[2]),
        .I2(pres_state[0]),
        .O(o_en_next));
  FDCE #(
    .INIT(1'b0)) 
    o_en_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(o_en_next),
        .Q(o_en_OBUF));
  OBUF o_we_OBUF_inst
       (.I(o_we_OBUF),
        .O(o_we));
  LUT4 #(
    .INIT(16'h1000)) 
    \target_address[7]_i_1 
       (.I0(i_rst_IBUF),
        .I1(is_target_address_set),
        .I2(pres_state[0]),
        .I3(pres_state[1]),
        .O(target_address0));
  FDRE #(
    .INIT(1'b0)) 
    \target_address_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(target_address0),
        .D(i_data_IBUF[0]),
        .Q(\target_address_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \target_address_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(target_address0),
        .D(i_data_IBUF[1]),
        .Q(\target_address_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \target_address_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(target_address0),
        .D(i_data_IBUF[2]),
        .Q(\target_address_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \target_address_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(target_address0),
        .D(i_data_IBUF[3]),
        .Q(\target_address_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \target_address_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(target_address0),
        .D(i_data_IBUF[4]),
        .Q(\target_address_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \target_address_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(target_address0),
        .D(i_data_IBUF[5]),
        .Q(\target_address_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \target_address_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(target_address0),
        .D(i_data_IBUF[6]),
        .Q(\target_address_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \target_address_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(target_address0),
        .D(i_data_IBUF[7]),
        .Q(\target_address_reg_n_0_[7] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    wz_bit_i_1
       (.I0(i_start_IBUF),
        .I1(pres_state[2]),
        .I2(\wz_offset[1]_i_2_n_0 ),
        .O(wz_bit_next));
  FDCE #(
    .INIT(1'b0)) 
    wz_bit_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(\wz_offset[3]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(wz_bit_next),
        .Q(wz_bit));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFF0200)) 
    \wz_offset[0]_i_1 
       (.I0(\wz_offset[1]_i_2_n_0 ),
        .I1(COUNT[1]),
        .I2(COUNT[0]),
        .I3(wz_offset[0]),
        .I4(pres_state[2]),
        .O(wz_offset_next[0]));
  LUT6 #(
    .INIT(64'h0000454000000000)) 
    \wz_offset[1]_i_1 
       (.I0(COUNT[1]),
        .I1(wz_offset[0]),
        .I2(COUNT[0]),
        .I3(wz_offset[1]),
        .I4(pres_state[2]),
        .I5(\wz_offset[1]_i_2_n_0 ),
        .O(wz_offset_next[1]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \wz_offset[1]_i_2 
       (.I0(COUNT[4]),
        .I1(COUNT[5]),
        .I2(COUNT[2]),
        .I3(COUNT[3]),
        .I4(COUNT[7]),
        .I5(COUNT[6]),
        .O(\wz_offset[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \wz_offset[1]_i_4 
       (.I0(\target_address_reg_n_0_[7] ),
        .I1(i_data_IBUF[7]),
        .O(\wz_offset[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \wz_offset[1]_i_5 
       (.I0(\target_address_reg_n_0_[6] ),
        .I1(i_data_IBUF[6]),
        .O(\wz_offset[1]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \wz_offset[1]_i_6 
       (.I0(\target_address_reg_n_0_[5] ),
        .I1(i_data_IBUF[5]),
        .O(\wz_offset[1]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \wz_offset[1]_i_7 
       (.I0(\target_address_reg_n_0_[4] ),
        .I1(i_data_IBUF[4]),
        .O(\wz_offset[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00880088CCC000C0)) 
    \wz_offset[2]_i_1 
       (.I0(wz_offset[1]),
        .I1(\wz_offset[3]_i_4_n_0 ),
        .I2(wz_offset[2]),
        .I3(COUNT[1]),
        .I4(wz_offset[0]),
        .I5(COUNT[0]),
        .O(wz_offset_next[2]));
  LUT6 #(
    .INIT(64'h40FF404000000000)) 
    \wz_offset[3]_i_1 
       (.I0(\wz_offset[3]_i_3_n_0 ),
        .I1(is_target_address_set),
        .I2(pres_state[1]),
        .I3(i_start_IBUF),
        .I4(pres_state[2]),
        .I5(pres_state[0]),
        .O(\wz_offset[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \wz_offset[3]_i_10 
       (.I0(\target_address_reg_n_0_[0] ),
        .I1(i_data_IBUF[0]),
        .O(\wz_offset[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \wz_offset[3]_i_2 
       (.I0(\wz_offset[3]_i_4_n_0 ),
        .I1(\wz_offset[3]_i_5_n_0 ),
        .I2(COUNT[0]),
        .I3(wz_offset[1]),
        .I4(wz_offset[3]),
        .I5(COUNT[1]),
        .O(wz_offset_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \wz_offset[3]_i_3 
       (.I0(\FSM_sequential_pres_state_reg[2]_i_3_n_0 ),
        .I1(\wz_offset[1]_i_2_n_0 ),
        .O(\wz_offset[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wz_offset[3]_i_4 
       (.I0(\wz_offset[1]_i_2_n_0 ),
        .I1(pres_state[2]),
        .O(\wz_offset[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \wz_offset[3]_i_5 
       (.I0(wz_offset[0]),
        .I1(COUNT[1]),
        .I2(wz_offset[2]),
        .O(\wz_offset[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \wz_offset[3]_i_7 
       (.I0(\target_address_reg_n_0_[3] ),
        .I1(i_data_IBUF[3]),
        .O(\wz_offset[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \wz_offset[3]_i_8 
       (.I0(\target_address_reg_n_0_[2] ),
        .I1(i_data_IBUF[2]),
        .O(\wz_offset[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \wz_offset[3]_i_9 
       (.I0(\target_address_reg_n_0_[1] ),
        .I1(i_data_IBUF[1]),
        .O(\wz_offset[3]_i_9_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \wz_offset_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\wz_offset[3]_i_1_n_0 ),
        .D(wz_offset_next[0]),
        .PRE(i_rst_IBUF),
        .Q(wz_offset[0]));
  FDCE #(
    .INIT(1'b0)) 
    \wz_offset_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\wz_offset[3]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(wz_offset_next[1]),
        .Q(wz_offset[1]));
  CARRY4 \wz_offset_reg[1]_i_3 
       (.CI(\wz_offset_reg[3]_i_6_n_0 ),
        .CO({\NLW_wz_offset_reg[1]_i_3_CO_UNCONNECTED [3],\wz_offset_reg[1]_i_3_n_1 ,\wz_offset_reg[1]_i_3_n_2 ,\wz_offset_reg[1]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\target_address_reg_n_0_[6] ,\target_address_reg_n_0_[5] ,\target_address_reg_n_0_[4] }),
        .O(COUNT[7:4]),
        .S({\wz_offset[1]_i_4_n_0 ,\wz_offset[1]_i_5_n_0 ,\wz_offset[1]_i_6_n_0 ,\wz_offset[1]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \wz_offset_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\wz_offset[3]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(wz_offset_next[2]),
        .Q(wz_offset[2]));
  FDCE #(
    .INIT(1'b0)) 
    \wz_offset_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\wz_offset[3]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(wz_offset_next[3]),
        .Q(wz_offset[3]));
  CARRY4 \wz_offset_reg[3]_i_6 
       (.CI(1'b0),
        .CO({\wz_offset_reg[3]_i_6_n_0 ,\wz_offset_reg[3]_i_6_n_1 ,\wz_offset_reg[3]_i_6_n_2 ,\wz_offset_reg[3]_i_6_n_3 }),
        .CYINIT(1'b1),
        .DI({\target_address_reg_n_0_[3] ,\target_address_reg_n_0_[2] ,\target_address_reg_n_0_[1] ,\target_address_reg_n_0_[0] }),
        .O(COUNT[3:0]),
        .S({\wz_offset[3]_i_7_n_0 ,\wz_offset[3]_i_8_n_0 ,\wz_offset[3]_i_9_n_0 ,\wz_offset[3]_i_10_n_0 }));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
