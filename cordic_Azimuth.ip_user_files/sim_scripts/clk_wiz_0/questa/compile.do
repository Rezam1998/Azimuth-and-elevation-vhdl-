vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93 \
"../../../../cordic_Azimuth.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_sim_netlist.vhdl" \


