transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/interrupt_control_v3_1_5
vlib riviera/axi_gpio_v2_0_37
vlib riviera/xlconcat_v2_1_7
vlib riviera/axi_intc_v4_1_21
vlib riviera/proc_sys_reset_v5_0_17

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_5 riviera/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_37 riviera/axi_gpio_v2_0_37
vmap xlconcat_v2_1_7 riviera/xlconcat_v2_1_7
vmap axi_intc_v4_1_21 riviera/axi_intc_v4_1_21
vmap proc_sys_reset_v5_0_17 riviera/proc_sys_reset_v5_0_17

vlog -work xilinx_vip  -incr -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l smartconnect_v1_0 "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconcat_v2_1_7 -l axi_intc_v4_1_21 -l proc_sys_reset_v5_0_17 \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l smartconnect_v1_0 "+incdir+../../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconcat_v2_1_7 -l axi_intc_v4_1_21 -l proc_sys_reset_v5_0_17 \
"/tools/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/tools/Xilinx/2025.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_processing_system7_0_2/design_1_processing_system7_0_2_sim_netlist.vhdl" \
"../../../bd/design_1/ipshared/25f6/hdl/sentinel_search_ip_slave_lite_v2_0_S00_AXI.vhd" \
"../../../bd/design_1/ipshared/25f6/hdl/sentinel_search_ip_slave_lite_inter_v2_0_S_AXI_INTR.vhd" \
"../../../bd/design_1/ipshared/25f6/hdl/sentinel_search_ip.vhd" \
"../../../bd/design_1/ip/design_1_sentinel_search_ip_0_3/sim/design_1_sentinel_search_ip_0_3.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_5 -93  -incr \
"../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_37 -93  -incr \
"../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/0271/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \

vlog -work xlconcat_v2_1_7  -incr -v2k5 "+incdir+../../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconcat_v2_1_7 -l axi_intc_v4_1_21 -l proc_sys_reset_v5_0_17 \
"../../../../sentinel_value.srcs/sources_1/bd/design_1/ipshared/9c1a/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconcat_v2_1_7 -l axi_intc_v4_1_21 -l proc_sys_reset_v5_0_17 \
"../../../bd/design_1/ip/design_1_xlconcat_0_1/sim/design_1_xlconcat_0_1.v" \

vcom -work axi_intc_v4_1_21 -93  -incr \
"../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/9eb6/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_intc_0_1/sim/design_1_axi_intc_0_1.vhd" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/design_1_smartconnect_0_1_sim_netlist.vhdl" \

vcom -work proc_sys_reset_v5_0_17 -93  -incr \
"../../../../sentinel_value.gen/sources_1/bd/design_1/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_rst_ps7_0_50M_2/sim/design_1_rst_ps7_0_50M_2.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

