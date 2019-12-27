// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Aug 12 22:32:38 2019
// Host        : Reza running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "10" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "10" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "4" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "19" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14_viv i_mult
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
LMVRTwyHq0fNx/WiUzSiNtwsxSbUkBL9eXBzvIlIvLUD9XPzno8FixUV7tniyA3J8ajfDKQhMQ67
Kl9BWxYeqDYRJ9dIKsWYVhV5CVXg1OZvIbC/9o0af4tQ8f0vs98A/Fb0rqF7reNe6Cu7boDaL+GY
qvY//MwaDLXjGbhmh0vpWKSS0P2rq8VZop18AAfTkwZZcxL7su6DqVdM1QHhTmk7PPoauxklgs0x
xedT8Wal8VnT00deek1KRUa9Fbj2Saoyl3uWqK6zflDwe+T9rYY66Qj19Gf7WRyMP6heWJyBkY73
QgQ+ZwjAshC/Nfr7nao1w3yDjdjdezMfh4E9Kw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
asfjYI+3jZC6WnP5MqvR6aooIAwbvhBNuyFEmTSGE+y7+DdTReUCZSLV2qK/oLH9adNrsJ/eOdSL
/l1v0TQ6b84JoW7ZOQnWTiMbi1+jYaI8FKQCrZxyu7MDj+Aq1LqW2bqUKV+tncjqFe4ThE/ce7I8
pFHQLMevJS2WA8PhUFFzgnhL4zV+uE1JxRLbCZ36rariTRp8IGen18S0buTW6VW2UB52zWTTk7aR
+nhsA5AlyY0BDMOPcLL21UJnGztBndTEwD8SLnq4xRtZ6PO6JKJUOUnHrfKY3PH6C192mQuZ69qG
wPtNvRgkyVXz00il5dvDzd8XjsGzFj4EBOCkLw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7184)
`pragma protect data_block
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
5I8=
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
