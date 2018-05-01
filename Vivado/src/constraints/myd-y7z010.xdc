# Constraints for the MYIR MYD-Y7Z010 Development board
# Jeff Johnson http://www.fpgadeveloper.com
# 
# Notes:
# * The 125MHz clocks supplied by the PHYs to the Zynq are disabled by default
#   but the constraints and clock defs are here and commented in case needed.

# Define I/O standards
#set_property IOSTANDARD LVCMOS33 [get_ports fpga_config_rst]
set_property IOSTANDARD LVCMOS18 [get_ports rs232_txd]
set_property IOSTANDARD LVCMOS18 [get_ports rs232_rxd]

set_property IOSTANDARD LVCMOS18 [get_ports mdio_io_port_1_mdio_io]
set_property IOSTANDARD LVCMOS18 [get_ports mdio_io_port_1_mdc]
set_property IOSTANDARD LVCMOS18 [get_ports mdio_io_port_2_mdio_io]
set_property IOSTANDARD LVCMOS18 [get_ports mdio_io_port_2_mdc]

set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_1_rd[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_1_rd[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_1_rd[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_1_rd[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_1_td[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_1_td[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_1_td[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_1_td[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_port_1_rx_ctl]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_port_1_rxc]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_port_1_tx_ctl]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_port_1_txc]

set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_2_rd[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_2_rd[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_2_rd[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_2_rd[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_2_td[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_2_td[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_2_td[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_2_td[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_port_2_rx_ctl]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_port_2_rxc]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_port_2_tx_ctl]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_port_2_txc]

#set_property IOSTANDARD LVCMOS18 [get_ports rgmii_port_1_clk125]
#set_property IOSTANDARD LVCMOS18 [get_ports rgmii_port_2_clk125]

# Define pin locations
#set_property PACKAGE_PIN L6  [get_ports fpga_config_rst]

set_property PACKAGE_PIN V20 [get_ports rs232_txd]
set_property PACKAGE_PIN W20 [get_ports rs232_rxd]

set_property PACKAGE_PIN U20 [get_ports mdio_io_port_1_mdio_io]
set_property PACKAGE_PIN T20 [get_ports mdio_io_port_1_mdc]
set_property PACKAGE_PIN T10 [get_ports mdio_io_port_2_mdio_io]
set_property PACKAGE_PIN T11 [get_ports mdio_io_port_2_mdc]

set_property PACKAGE_PIN N17 [get_ports {rgmii_port_1_rd[0]}]
set_property PACKAGE_PIN R18 [get_ports {rgmii_port_1_rd[1]}]
set_property PACKAGE_PIN T17 [get_ports {rgmii_port_1_rd[2]}]
set_property PACKAGE_PIN W19 [get_ports {rgmii_port_1_rd[3]}]
set_property PACKAGE_PIN N20 [get_ports rgmii_port_1_rxc]
set_property PACKAGE_PIN P18 [get_ports rgmii_port_1_rx_ctl]

set_property PACKAGE_PIN Y16 [get_ports {rgmii_port_1_td[0]}]
set_property PACKAGE_PIN Y17 [get_ports {rgmii_port_1_td[1]}]
set_property PACKAGE_PIN Y18 [get_ports {rgmii_port_1_td[2]}]
set_property PACKAGE_PIN Y19 [get_ports {rgmii_port_1_td[3]}]
set_property PACKAGE_PIN P15 [get_ports rgmii_port_1_txc]
set_property PACKAGE_PIN P16 [get_ports rgmii_port_1_tx_ctl]

set_property PACKAGE_PIN T14 [get_ports {rgmii_port_2_rd[0]}]
set_property PACKAGE_PIN R14 [get_ports {rgmii_port_2_rd[1]}]
set_property PACKAGE_PIN P14 [get_ports {rgmii_port_2_rd[2]}]
set_property PACKAGE_PIN W15 [get_ports {rgmii_port_2_rd[3]}]
set_property PACKAGE_PIN U14 [get_ports rgmii_port_2_rxc]
set_property PACKAGE_PIN T15 [get_ports rgmii_port_2_rx_ctl]

set_property PACKAGE_PIN V13 [get_ports {rgmii_port_2_td[0]}]
set_property PACKAGE_PIN U13 [get_ports {rgmii_port_2_td[1]}]
set_property PACKAGE_PIN W13 [get_ports {rgmii_port_2_td[2]}]
set_property PACKAGE_PIN V12 [get_ports {rgmii_port_2_td[3]}]
set_property PACKAGE_PIN U12 [get_ports rgmii_port_2_txc]
set_property PACKAGE_PIN T12 [get_ports rgmii_port_2_tx_ctl]

#set_property PACKAGE_PIN N18 [get_ports rgmii_port_1_clk125]
#set_property PACKAGE_PIN U18 [get_ports rgmii_port_2_clk125]

# Define input clocks
#create_clock -period 8.000 -name rgmii_port_1_clk125 -waveform {0.000 4.000} [get_ports rgmii_port_1_clk125]
#create_clock -period 8.000 -name rgmii_port_2_clk125 -waveform {0.000 4.000} [get_ports rgmii_port_2_clk125]

