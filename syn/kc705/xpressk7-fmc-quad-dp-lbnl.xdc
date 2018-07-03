#la06_p
#la06_n
set_property PACKAGE_PIN H30 [get_ports {fe_clk_p[0]}]
set_property PACKAGE_PIN G30 [get_ports {fe_clk_n[0]}]

#la02_p
#la02_n
set_property PACKAGE_PIN H24 [get_ports {fe_data_p[0]}]
set_property PACKAGE_PIN H25 [get_ports {fe_data_n[0]}]
#la00_cc_p
#la00_cc_n
set_property PACKAGE_PIN C25 [get_ports {fe_data_p[1]}]
set_property PACKAGE_PIN B25 [get_ports {fe_data_n[1]}]
#la03_p
#la03_n
set_property PACKAGE_PIN H26 [get_ports {fe_data_p[2]}]
set_property PACKAGE_PIN H27 [get_ports {fe_data_n[2]}]

#la04_p
#la04_n
set_property PACKAGE_PIN G28 [get_ports {fe_data_p[3]}]
set_property PACKAGE_PIN F28 [get_ports {fe_data_n[3]}]


#la01_cc_p
#la01_cc_n
set_property PACKAGE_PIN D26 [get_ports {fe_cmd_p[0]}]
set_property PACKAGE_PIN C26 [get_ports {fe_cmd_n[0]}]


#la32_p
#la32_n
set_property PACKAGE_PIN D21 [get_ports {scl_o}]
set_property PACKAGE_PIN C21 [get_ports {latch_o}]

#la33_p
#la33_n
set_property PACKAGE_PIN H21 [get_ports {sdi_i}]
set_property PACKAGE_PIN H22 [get_ports {sda_o}]


set_property IOSTANDARD LVDS_25 [get_ports fe_cmd_*]
#set_property SLEW FAST [get_ports fe_cmd*]

set_property IOSTANDARD LVDS_25 [get_ports fe_data_*]
set_property DIFF_TERM TRUE [get_ports fe_data_*]
set_property IBUF_LOW_PWR FALSE [get_ports fe_data_*]

set_property IOSTANDARD LVDS_25 [get_ports fe_clk_*]
#set_property SLEW FAST [get_ports fe_clk*]

set_property IOSTANDARD LVCMOS25 [get_ports {scl_o}]
set_property IOSTANDARD LVCMOS25 [get_ports {sda_o}]
set_property IOSTANDARD LVCMOS25 [get_ports {latch_o}]
set_property IOSTANDARD LVCMOS25 [get_ports {sdi_i}]

