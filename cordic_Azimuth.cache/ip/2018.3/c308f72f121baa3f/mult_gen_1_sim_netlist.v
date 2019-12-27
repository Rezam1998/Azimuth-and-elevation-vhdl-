// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Aug 12 23:16:15 2019
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
  (* C_LATENCY = "4" *) 
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
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "4" *) (* C_MODEL_TYPE = "0" *) 
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
  (* C_LATENCY = "4" *) 
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
SsjHk1mTnnaVgDsVp+JTiapUEA+DkVI3HTjzikUUG3HKnFiJDF+R9EqjDVcan/vwWpyuRWg/w6Pt
b06eRPhqd/Biu8KJn9ZYcDQuqr3bQXtrJCpc18M1Pd8GMCDpREPQL58z7GdcmfZ7a4vp+7PoZbCL
Yz7pJ/kqKVW/WV5sF2r5HWQyZIOugonzzlWTLUiunMT91804spZUx3gzzg8ZWK2OiVEJdcTX0+ru
QRQSxA6DgfBoy/oNLU3DXLXj6vifCRlh9vCFz+Fv8knmddezEOpO2aVZMgHbTublCytoCE3vMwN8
9iPjNmBbPxTNwq7WVqYrVXUSwhPZpNKnbq/tNw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
5VsbeE+LPW8gT7J4Y/KgFAwHduRCwQ+12vuz+u28kvI7YAVE7QlgmfWeHx+LIXLrYXdCf8uZIYCa
TCeDsMKcqQgx9rhd8lLMXRbjJw7wtQQpsHhjwCDDajnvv3zkJXhdInqrLSDuCit6DLheDznfWSs4
GV+whV0j+v/yrcYLn8Q8eRQj/8p0c3f81N/byhfLB3/OpwA227htCGLJJ+1ANqZAvkN1DrFPWu6/
j4LkxZEtbT0mRNcXQYUi5SvTkpp6B23QrPftAtErqVBrAkv7uDchcFmmVLofaK4AvPPMnySlX/sK
qNHO8CalBnXneaDZUT7Q1AlJ+YgwheyMZbi63Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14272)
`pragma protect data_block
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
XdOTKkR357cbU3fh+dCryaUgBHIp4g==
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
