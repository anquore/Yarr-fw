#Clocks
#SYSCLK
set_property IOSTANDARD LVDS [get_ports clk200_n]
set_property IOSTANDARD LVDS [get_ports clk200_p]
set_property PACKAGE_PIN AD12 [get_ports clk200_p]
set_property PACKAGE_PIN AD11 [get_ports clk200_n]
#PCIE_CLK_QO
set_property PACKAGE_PIN U8 [get_ports pcie_clk_p]
set_property PACKAGE_PIN U7 [get_ports pcie_clk_n]


#On-board switch reset
#GPIO_SW_C
set_property PACKAGE_PIN G12 [get_ports rst_n_i] 
set_property IOSTANDARD LVCMOS25 [get_ports rst_n_i]

#PCIe reset
#PCIE_PERST_LS
set_property IOSTANDARD LVCMOS25 [get_ports sys_rst_n_i]
set_property PACKAGE_PIN G25 [get_ports sys_rst_n_i]

#PCIe signals
set_property LOC GTXE2_CHANNEL_X0Y7 [get_cells {bram/pcie_0/U0/inst/gt_top_i/pipe_wrapper_i/pipe_lane[0].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
#PCIE_RX0
set_property PACKAGE_PIN M5 [get_ports {pci_exp_rxn[0]}]
set_property PACKAGE_PIN M6 [get_ports {pci_exp_rxp[0]}]
set_property LOC GTXE2_CHANNEL_X0Y6 [get_cells {bram/pcie_0/U0/inst/gt_top_i/pipe_wrapper_i/pipe_lane[1].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
#PCIE_RX1
set_property PACKAGE_PIN P5 [get_ports {pci_exp_rxn[1]}]
set_property PACKAGE_PIN P6 [get_ports {pci_exp_rxp[1]}]
set_property LOC GTXE2_CHANNEL_X0Y5 [get_cells {bram/pcie_0/U0/inst/gt_top_i/pipe_wrapper_i/pipe_lane[2].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
#PCIE_RX2
set_property PACKAGE_PIN R3 [get_ports {pci_exp_rxn[2]}]
set_property PACKAGE_PIN R4 [get_ports {pci_exp_rxp[2]}]
set_property LOC GTXE2_CHANNEL_X0Y4 [get_cells {bram/pcie_0/U0/inst/gt_top_i/pipe_wrapper_i/pipe_lane[3].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
#PCIE_RX3
set_property PACKAGE_PIN T5 [get_ports {pci_exp_rxn[3]}]
set_property PACKAGE_PIN T6 [get_ports {pci_exp_rxp[3]}]

# On-board LEDs
#GPIO_LED_#_LS
set_property PACKAGE_PIN AB8 [get_ports {usr_led_o[0]}]
set_property PACKAGE_PIN AA8 [get_ports {usr_led_o[1]}]
set_property PACKAGE_PIN AC9 [get_ports {usr_led_o[2]}]
#set_property PACKAGE_PIN AB9 [get_ports {usr_led_o[3]}]
set_property IOSTANDARD LVCMOS15 [get_ports {usr_led_o[0]}]
set_property IOSTANDARD LVCMOS15 [get_ports {usr_led_o[1]}]
set_property IOSTANDARD LVCMOS15 [get_ports {usr_led_o[2]}]
#set_property IOSTANDARD LVCMOS15 [get_ports {usr_led_o[3]}]

# On-board Switches
#GPIO_SW
set_property PACKAGE_PIN AG5 [get_ports {usr_sw_i[0]}]
set_property PACKAGE_PIN AA12 [get_ports {usr_sw_i[1]}]
set_property PACKAGE_PIN AB12 [get_ports {usr_sw_i[2]}]
set_property IOSTANDARD LVCMOS15 [get_ports {usr_sw_i[0]}]
set_property IOSTANDARD LVCMOS15 [get_ports {usr_sw_i[1]}]
set_property IOSTANDARD LVCMOS15 [get_ports {usr_sw_i[2]}]


#set_property IOSTANDARD LVCMOS15 [get_ports {front_led_o[3]}]
#set_property IOSTANDARD LVCMOS15 [get_ports {front_led_o[2]}]
#set_property IOSTANDARD LVCMOS15 [get_ports {front_led_o[1]}]
#set_property IOSTANDARD LVCMOS15 [get_ports {front_led_o[0]}]
#set_property PACKAGE_PIN T7 [get_ports {front_led_o[3]}]
#set_property PACKAGE_PIN V7 [get_ports {front_led_o[2]}]
#set_property PACKAGE_PIN U4 [get_ports {front_led_o[1]}]
#set_property PACKAGE_PIN V2 [get_ports {front_led_o[0]}]
























