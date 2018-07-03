
#la06_p
#la06_n
set_property PACKAGE_PIN H30 [get_ports {FMC_HPC_LA_P[6]}]
set_property PACKAGE_PIN G30 [get_ports {FMC_HPC_LA_N[6]}]

#la02_p
#la02_n
set_property PACKAGE_PIN H24 [get_ports {FMC_HPC_LA_P[2]}]
set_property PACKAGE_PIN H25 [get_ports {FMC_HPC_LA_N[2]}]
#la00_cc_p
#la00_cc_n
set_property PACKAGE_PIN C25 [get_ports {FMC_HPC_LA_P[0]}]
set_property PACKAGE_PIN B25 [get_ports {FMC_HPC_LA_N[0]}]
#la03_p
#la03_n
set_property PACKAGE_PIN H26 [get_ports {FMC_HPC_LA_P[3]}]
set_property PACKAGE_PIN H27 [get_ports {FMC_HPC_LA_N[3]}]

#la04_p
#la04_n
set_property PACKAGE_PIN G28 [get_ports {FMC_HPC_LA_P[4]}]
set_property PACKAGE_PIN F28 [get_ports {FMC_HPC_LA_N[4]}]


#la01_cc_p
#la01_cc_n
set_property PACKAGE_PIN D26 [get_ports {FMC_HPC_LA_P[1]}]
set_property PACKAGE_PIN C26 [get_ports {FMC_HPC_LA_N[1]}]


#la32_p
#la32_n
set_property PACKAGE_PIN D21 [get_ports {FMC_HPC_LA_P[32]}]
set_property PACKAGE_PIN C21 [get_ports {FMC_HPC_LA_N[32]}]

#la33_p
#la33_n
set_property PACKAGE_PIN H21 [get_ports {FMC_HPC_LA_P[33]}]
set_property PACKAGE_PIN H22 [get_ports {FMC_HPC_LA_N[33]}]


set_property IOSTANDARD LVDS_25 [get_ports FMC_HPC_LA_P[6]]
#set_property SLEW FAST [get_ports fe_cmd*]

set_property IOSTANDARD LVDS_25 [get_ports FMC_HPC_LA_P[2]]
set_property DIFF_TERM TRUE [get_ports FMC_HPC_LA_P[2]]
set_property IBUF_LOW_PWR FALSE [get_ports FMC_HPC_LA_P[2]]
set_property IOSTANDARD LVDS_25 [get_ports FMC_HPC_LA_P[0]]
set_property DIFF_TERM TRUE [get_ports FMC_HPC_LA_P[0]]
set_property IBUF_LOW_PWR FALSE [get_ports FMC_HPC_LA_P[0]]
set_property IOSTANDARD LVDS_25 [get_ports FMC_HPC_LA_P[3]]
set_property DIFF_TERM TRUE [get_ports FMC_HPC_LA_P[3]]
set_property IBUF_LOW_PWR FALSE [get_ports FMC_HPC_LA_P[3]]
set_property IOSTANDARD LVDS_25 [get_ports FMC_HPC_LA_P[4]]
set_property DIFF_TERM TRUE [get_ports FMC_HPC_LA_P[4]]
set_property IBUF_LOW_PWR FALSE [get_ports FMC_HPC_LA_P[4]]

set_property IOSTANDARD LVDS_25 [get_ports FMC_HPC_LA_N[2]]
set_property DIFF_TERM TRUE [get_ports FMC_HPC_LA_N[2]]
set_property IBUF_LOW_PWR FALSE [get_ports FMC_HPC_LA_N[2]]
set_property IOSTANDARD LVDS_25 [get_ports FMC_HPC_LA_N[0]]
set_property DIFF_TERM TRUE [get_ports FMC_HPC_LA_N[0]]
set_property IBUF_LOW_PWR FALSE [get_ports FMC_HPC_LA_N[0]]
set_property IOSTANDARD LVDS_25 [get_ports FMC_HPC_LA_N[3]]
set_property DIFF_TERM TRUE [get_ports FMC_HPC_LA_N[3]]
set_property IBUF_LOW_PWR FALSE [get_ports FMC_HPC_LA_N[3]]
set_property IOSTANDARD LVDS_25 [get_ports FMC_HPC_LA_N[4]]
set_property DIFF_TERM TRUE [get_ports FMC_HPC_LA_N[4]]
set_property IBUF_LOW_PWR FALSE [get_ports FMC_HPC_LA_N[4]]

set_property IOSTANDARD LVDS_25 [get_ports FMC_HPC_LA_P[1]]
#set_property SLEW FAST [get_ports fe_clk*]

set_property IOSTANDARD LVCMOS25 [get_ports {FMC_HPC_LA_P[33]}]
set_property IOSTANDARD LVCMOS25 [get_ports {FMC_HPC_LA_N[33]}]
set_property IOSTANDARD LVCMOS25 [get_ports {FMC_HPC_LA_P[32]}]
set_property IOSTANDARD LVCMOS25 [get_ports {FMC_HPC_LA_N[32]}]











