// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Aug 12 22:48:41 2019
// Host        : Reza running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_gen_1_sim_netlist.v
// Design      : mult_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_1,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [19:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [19:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [39:0]P;

  wire [19:0]A;
  wire [19:0]B;
  wire CLK;
  wire [39:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "20" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "20" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "2" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "39" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "20" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "20" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "2" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "39" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [19:0]A;
  input [19:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [39:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [19:0]A;
  wire [19:0]B;
  wire CLK;
  wire [39:0]P;
  wire [47:0]PCASC;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "20" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "20" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "2" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "39" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(PCASC),
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
L0JXy6WOt9gYTtHpUCUvzWaTXZE5I/vYPDpdmcF5ORTrTxSDFnNYEXhfSZk2Snqwk8JjQPNF/7Xd
KlevAZxOznw0JiQYs4fRnEdzSGIl0mcBu2sFX2EVpwOD9SuEXKkTQXj1n0JVNIuCXpTlwdjyDLGC
RsIdBohpXPrGVmFvvmAvfonC7TfFgw626K3bwk9cAJiS3QgJf2l1Ax2BKv6JRkbSNMgUmEv8h9f5
6HKtufe9w83ofmQj1cfv7hiXpN1C3hJ4qDz0zha19IBVL2PSmHKkG/hwy+jgHBfk8baBlRb0u/YG
5C6H4+0iyeuVZrqkPf/B2udh0u6qP9ZJaKDLeA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
2vwRnmYPTIknzYLl4F5hiEqcKiF6/0dOO0x+fUySTmWudAzM/RVGY0kF4BNb1YdjuHhAZ4YnYNLE
4OrlUJZESyMkmZrvysto0+Z+Zeiy3XlBMkaHUZ2D+OHsBweK3Zwg/JD9Sdl18RsOzyslGtelPXLW
iurAljOMJ1AURFYnP5r5/pzLF0BEQ5KX43eRu4/l1m0MK/fjihhIYahlHd/xTGTCgEUG05kIa9hI
g5c+NrO8NJ6LO7blfNqS/LEOtn+kqAMH3XPmK/slr7LaAezoBEHyw5SHgpxQd/V+ioGasSLa9GfG
tvCcOnWqMYnexrnTmb9rj6l9pRTQ+4sp5k3Krw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14336)
`pragma protect data_block
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
wHeGn496hzppAtb5fol7YqzRdxIqOWW+NFQ8Zqs=
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
