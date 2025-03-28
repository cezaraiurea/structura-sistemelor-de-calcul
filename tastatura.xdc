## GPIO Rows (Output - R3, R2, R1, R0)
set_property -dict { PACKAGE_PIN V8    IOSTANDARD LVCMOS33 } [get_ports { gpio_io_o[0] }]; # JB1
set_property -dict { PACKAGE_PIN W8    IOSTANDARD LVCMOS33 } [get_ports { gpio_io_o[1] }]; # JB2
set_property -dict { PACKAGE_PIN U7    IOSTANDARD LVCMOS33 } [get_ports { gpio_io_o[2] }]; # JB3
set_property -dict { PACKAGE_PIN V7    IOSTANDARD LVCMOS33 } [get_ports { gpio_io_o[3] }]; # JB4

## GPIO Columns (Input - C3, C2, C1, C0)
set_property -dict { PACKAGE_PIN Y7    IOSTANDARD LVCMOS33 } [get_ports { gpio2_io_i[0] }]; # JB7
set_property -dict { PACKAGE_PIN Y6    IOSTANDARD LVCMOS33 } [get_ports { gpio2_io_i[1] }]; # JB8
set_property -dict { PACKAGE_PIN V6    IOSTANDARD LVCMOS33 } [get_ports { gpio2_io_i[2] }]; # JB9
set_property -dict { PACKAGE_PIN W6    IOSTANDARD LVCMOS33 } [get_ports { gpio2_io_i[3] }]; # JB10
