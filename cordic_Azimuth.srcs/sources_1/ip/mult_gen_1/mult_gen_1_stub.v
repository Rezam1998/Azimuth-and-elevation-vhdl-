// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Aug 12 23:25:44 2019
// Host        : Reza running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {d:/Projects/probation
//               training/cordic_Azimuth/cordic_Azimuth.srcs/sources_1/ip/mult_gen_1/mult_gen_1_stub.v}
// Design      : mult_gen_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *)
module mult_gen_1(CLK, A, B, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[19:0],B[19:0],P[39:0]" */;
  input CLK;
  input [19:0]A;
  input [19:0]B;
  output [39:0]P;
endmodule
