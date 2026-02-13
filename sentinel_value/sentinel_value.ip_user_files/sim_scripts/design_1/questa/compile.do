vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/interrupt_control_v3_1_5
vlib questa_lib/msim/axi_gpio_v2_0_37
vlib questa_lib/msim/xlconcat_v2_1_7
vlib questa_lib/msim/axi_intc_v4_1_21
vlib questa_lib/msim/proc_sys_reset_v5_0_17

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_5 questa_lib/msim/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_37 questa_lib/msim/axi_gpio_v2_0_37
vmap xlconcat_v2_1_7 questa_lib/msim/xlconcat_v2_1_7
vmap axi_intc_v4_1_21 questa_lib/msim/axi_intc_v4_1_21
vmap proc_sys_reset_v5_0_17 questa_lib/msim/proc_sys_reset_v5_0_17

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L processing_system7_vip_v1_0_23 -L smartconnect_v1_0 -L xilinx_vip "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L processing_system7_vip_v1_0_23 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"/tools/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/tools/Xilinx/2025.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_processing_system7_0_2/design_1_processing_system7_0_2_sim_netlist.vhdl" \
"../../../bd/design_1/ipshared/25f6/hdl/sentinel_search_ip_slave_lite_v2_0_S00_AXI.vhd" \
"../../../bd/design_1/ipshared/25f6/hdl/sentinel_search_ip_slave_lite_inter_v2_0_S_AXI_INTR.vhd" \
"../../../bd/design_1/ipshared/25f6/hdl/sentinel_search_ip.vhd" \
"../../../bd/design_1/ip/design_1_sentinel_search_ip_0_3/sim/design_1_sentinel_search_ip_0_3.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93  \
"../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_5 -64 -93  \
"../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_37 -64 -93  \
"../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/0271/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \

vlog -work xlconcat_v2_1_7 -64 -incr -mfcu  "+incdir+../../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../sentinel_value.srcs/sources_1/bd/design_1/ipshared/9c1a/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconcat_0_1/sim/design_1_xlconcat_0_1.v" \

vcom -work axi_intc_v4_1_21 -64 -93  \
"../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/9eb6/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_axi_intc_0_1/sim/design_1_axi_intc_0_1.vhd" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/design_1_smartconnect_0_1_sim_netlist.vhdl" \

vcom -work proc_sys_reset_v5_0_17 -64 -93  \
"../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_rst_ps7_0_50M_2/sim/design_1_rst_ps7_0_50M_2.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

