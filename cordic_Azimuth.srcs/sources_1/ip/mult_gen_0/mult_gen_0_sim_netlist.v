// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Aug 12 22:32:39 2019
// Host        : Reza running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {d:/Projects/probation
//               training/cordic_Azimuth/cordic_Azimuth.srcs/sources_1/ip/mult_gen_0/mult_gen_0_sim_netlist.v}
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mult_gen_0
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [9:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [9:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [19:0]P;

  wire [9:0]A;
  wire [9:0]B;
  wire CLK;
  wire [19:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "10" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "10" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "4" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "19" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_0_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "10" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "10" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "4" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "19" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_gen_0_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [9:0]A;
  input [9:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [19:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [9:0]A;
  wire [9:0]B;
  wire CLK;
  wire [19:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "10" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "10" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "4" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "19" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_0_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
g7azmhtm6FcP7uNFjuXJjN8Z6yccOPk3SSjzvKB27peFKmnPmQmov5+YTGwYqqN9LpdyiUExk8K6
vPnJqontvQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MFrqn2K0Cr7TmQ5al162oDGiY83d+AkTWOgFyXPYrTNznygR/tx44RAp24ytphNK9p6shs2EFMg/
Qqz0l8DCWiVEoJ/T8vMpnAn7Y+poGVGS1qAR3qE2njrl81VcGBZJeFaWIudhfr/DLTuuf2T/dWDU
YpelM3KbfYNPPiPy8PU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FZca5XZouG+/BYoQ8qrJTmnJanku4IprIWRkO6VciHehE5WehR0wsZJhfKlqLEeY1oTPA4bXaxmY
NjYkrop4EOwW8t47/hj2kFLI1OKUAE/TAhCGg/aNSOViUbB3dUomG/y+TBuDt9L6g0Arj1vb/5Pt
IChc5ZdEfRr1lJMTpFfP+5qmEH6lePPdzgPZATPB4Zrj0P6EyiEsU1FKBuAKd9iYNGiLCxVomaz0
3/RwK2Nl+/l4mc7PJt5Hso+4s1qHb4s2wD+OgbIwdH26ZkEnKVFpaLiuWQKu9uhDLGnsBMPf7XDE
p29f+mrvP9Zi/3nonA2aBKrTwR7XuH+ZYoakxA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jP68OjlYJglq3zpmKrXOhq7Sex8XNW8fQKp4hUNmuw06OOoKhQASNTnjtyVjAIk/VXb64ViBu1ds
cNMJybDSWBhnChfJq4h9PNybShGJXxSm3NDOo5wUHKf10Eti3fSotB9rVks+tNdTEZo4O97kgfdD
G1FNOqlsYcQiShEGLLiEQ2yYtgJBxJ+jc8mFjIEfPhAYy1ElrvtFEpnhkNS2LfE7xdWOQdO/XoKK
ibeY08pgncTI3pvO6TMbXushf0AX2S7hgfk8ysZrT+0gktqFrJnyR6oljS6VVPLtRNW2vo/cC8XQ
Bzvwwt4cpSo5KLS4XxB6qClZipItck2AUEdIbQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o7jAZIoXlFbFtDYmtXhfRBlb07dhBb6Wp03mlT4T0FXtvccSHWhWZgc+VUNwt6TohLihOwvSipPP
XVXpGL4pUVYNdQBCVpFzhMkt6jhyUgsF5t10yI5Of6YEfQrDHigceoBukM3+/zJHPprrPQE6FUvC
wXSGhBCXnHJs1R+n4l0714w8/WftPQhlD9QGQp1qT2VARQXUKBRxcRjxe9TcLfs0P4xnN7uHu0R6
JTmV+MHmhGpetSZGx+B2Wa1MQofUPURqwE70IwBoUhdXH8+39DT5I6x2+wMY6RcVATnhNd2BCgPd
RzAhwfrcqRiU9aB+eNNdFR8ve9M2nGMmV2JxZg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Cl1Dz+fZIDYEIQuUd0pSg+5jknmtX/JERd+yOZ2SRaVra/4pU/eCTjEXMzhz4VFGYB6dgUxMsGBk
nL2WNdn/uaSPpi6mNF0UHQvZik4pUkYPrnRbFveVqW8i1t95SG0RW96uD19206lWrp5U1lqc4fH7
sfKHi8ZpU3MAg0DOO0E=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Qqp76m2aV9ue8Qai7QUavb+lhRYdu/txrnwYLzwTe0vS0S2OD1vxr8VeIT3bF/ZuXlTGm4S/UCSF
bgOPp7VqEOeGNfsSPK+VpQ+foQMENCQYccwKquBDSg/sLjpPK9uuoGLBLxjw2OwsRzplVFXiPcRN
LYK1/FmCP7RJBNgmhh/ti99a+WSl6i2YIIRGocNplQlG8FXq8ZTTHd/x2Gtdf/zGvJOy/fNsos6S
Oq9yJ0rMmbGeWbri5c04gZM08pUmXBsivgOHm2IVEZZFM4SBqrsi0xa52hs2kelc3iKJcWiTvU3X
0fJP9qNFuIjXBPPZvEYwhVtIh6DwiIC2viSscQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RF0m7UJ6+goAYbtL9wkYzU/LN1SB6xwwdtJRQUt5Fsnb4WcwVsLADb8V0prPDtC2OmIxcLWoiLAs
hLoP+y2xC+0A6bBggDWiyVlKQiUOwz4IiQLy9yOH7kJrZ/G8pSvUBTabj+WnunzlnluiKDly+2bo
MDIviLozoMyfYGDzuouthvXsBFbfVkjFHhW4Q6hsUF/lKQ0JyeQuGiDV+GKhGh18xdfNerEH01i0
/3CWzFP08kDziRYJnkgwRJ2MDspfFYCXd0nRW0P6XCNb6tdTiIOwVP/7elmbgyFg+tUleFkHhDrq
2bccr+Yt9cfYbr+MJo24JGHDYTGrcsUMy890dA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Em6ieScEvdJnHoYXPh+tanoks+sUU+XrPNIVWNOC8CCFeBx252RD510BS0yZFzs8mFukFFQl9OxL
QlQAYLAh47cj6oVY2UPkpdp2FGBogZwSIEg6hSh/EJuKg7uhrFcQyCFGD1iZjygLZE/WIC+gSrRL
NWwlfCl1VPmqeLoqhWrQKOaSkeeNpF1UJKxacUJXo4035V/tKzUNxFWexbVIz+WlOdKEcw5hRT08
LKmVvFszw2JYbRTFJSqrNkI/wEht1JDzlHojR+B+DlGt4rpyxbIsqtjRFf8Iz4Oq48OORPnjVLQK
9hbLeR/eEdxYmY1rbHDeEiDQgFEYRYxuIUgR/Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7136)
`pragma protect data_block
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
f9AxDUte9XKdEnc=
`pragma protect end_protected
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
