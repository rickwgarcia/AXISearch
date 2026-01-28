transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/microblaze_v11_0_15
vlib riviera/xil_defaultlib
vlib riviera/lmb_v10_v3_0_15
vlib riviera/lmb_bram_if_cntlr_v4_0_26
vlib riviera/blk_mem_gen_v8_4_11
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/mdm_v3_2_28
vlib riviera/proc_sys_reset_v5_0_17
vlib riviera/xlconstant_v1_1_10
vlib riviera/smartconnect_v1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_35
vlib riviera/axi_vip_v1_1_21

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap microblaze_v11_0_15 riviera/microblaze_v11_0_15
vmap xil_defaultlib riviera/xil_defaultlib
vmap lmb_v10_v3_0_15 riviera/lmb_v10_v3_0_15
vmap lmb_bram_if_cntlr_v4_0_26 riviera/lmb_bram_if_cntlr_v4_0_26
vmap blk_mem_gen_v8_4_11 riviera/blk_mem_gen_v8_4_11
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_28 riviera/mdm_v3_2_28
vmap proc_sys_reset_v5_0_17 riviera/proc_sys_reset_v5_0_17
vmap xlconstant_v1_1_10 riviera/xlconstant_v1_1_10
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_35 riviera/axi_register_slice_v2_1_35
vmap axi_vip_v1_1_21 riviera/axi_vip_v1_1_21

vlog -work xilinx_vip  -incr "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_15 -l xil_defaultlib -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_28 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_35 -l axi_vip_v1_1_21 \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_15 -l xil_defaultlib -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_28 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_35 -l axi_vip_v1_1_21 \
"/tools/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/tools/Xilinx/2025.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_15 -93  -incr \
"../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/75f6/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_microblaze_0_1/sim/design_1_microblaze_0_1.vhd" \

vcom -work lmb_v10_v3_0_15 -93  -incr \
"../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/b1c4/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_dlmb_v10_0/sim/design_1_dlmb_v10_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_v10_0/sim/design_1_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_26 -93  -incr \
"../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/0e64/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/sim/design_1_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/sim/design_1_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_11  -incr -v2k5 "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_15 -l xil_defaultlib -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_28 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_35 -l axi_vip_v1_1_21 \
"../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a32c/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_15 -l xil_defaultlib -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_28 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_35 -l axi_vip_v1_1_21 \
"../../../bd/design_1/ip/design_1_lmb_bram_0/sim/design_1_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_28 -93  -incr \
"../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/00dd/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_mdm_1_0/sim/design_1_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_15 -l xil_defaultlib -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_28 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_35 -l axi_vip_v1_1_21 \
"../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.v" \

vcom -work proc_sys_reset_v5_0_17 -93  -incr \
"../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/sim/design_1_rst_clk_wiz_1_100M_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_15 -l xil_defaultlib -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_28 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_35 -l axi_vip_v1_1_21 \
"../../../bd/design_1/ipshared/47ed/hdl/my_pwm_ip_slave_lite_v1_0_S00_AXI.v" \
"../../../bd/design_1/ipshared/47ed/hdl/my_pwm_ip.v" \
"../../../bd/design_1/ip/design_1_my_pwm_ip_0_1/sim/design_1_my_pwm_ip_0_1.v" \

vlog -work xlconstant_v1_1_10  -incr -v2k5 "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_15 -l xil_defaultlib -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_28 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_35 -l axi_vip_v1_1_21 \
"../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a165/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_15 -l xil_defaultlib -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_28 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_35 -l axi_vip_v1_1_21 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_15 -l xil_defaultlib -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_28 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_35 -l axi_vip_v1_1_21 \
"../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/d800/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_15 -l xil_defaultlib -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_28 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_35 -l axi_vip_v1_1_21 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_15 -l xil_defaultlib -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_28 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_35 -l axi_vip_v1_1_21 \
"../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_15 -l xil_defaultlib -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_28 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_35 -l axi_vip_v1_1_21 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_15 -l xil_defaultlib -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_28 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_35 -l axi_vip_v1_1_21 \
"../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/dce3/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_15 -l xil_defaultlib -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_28 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_35 -l axi_vip_v1_1_21 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_15 -l xil_defaultlib -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_28 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_35 -l axi_vip_v1_1_21 \
"../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_15 -l xil_defaultlib -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_28 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_35 -l axi_vip_v1_1_21 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_15 -l xil_defaultlib -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_28 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_35 -l axi_vip_v1_1_21 \
"../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_15 -l xil_defaultlib -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_28 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_35 -l axi_vip_v1_1_21 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_15 -l xil_defaultlib -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_28 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_35 -l axi_vip_v1_1_21 \
"../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_15 -l xil_defaultlib -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_28 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_35 -l axi_vip_v1_1_21 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_15 -l xil_defaultlib -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_28 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_35 -l axi_vip_v1_1_21 \
"../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/0133/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_15 -l xil_defaultlib -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_28 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_35 -l axi_vip_v1_1_21 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_m00e_0.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_15 -l xil_defaultlib -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_28 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_35 -l axi_vip_v1_1_21 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_15 -l xil_defaultlib -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_28 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_35 -l axi_vip_v1_1_21 \
"../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_15 -l xil_defaultlib -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_28 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_35 -l axi_vip_v1_1_21 \
"../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_35  -incr -v2k5 "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_15 -l xil_defaultlib -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_28 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_35 -l axi_vip_v1_1_21 \
"../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/c5b7/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_21  -incr "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_15 -l xil_defaultlib -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_28 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_35 -l axi_vip_v1_1_21 \
"../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/f16f/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_15 -l xil_defaultlib -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_28 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_35 -l axi_vip_v1_1_21 \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../pwm_ip_demo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../tools/Xilinx/2025.1/data/rsb/busdef" "+incdir+/tools/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_15 -l xil_defaultlib -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_28 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_35 -l axi_vip_v1_1_21 \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

