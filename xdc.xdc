## ===============================
## Clock (100 MHz)
## ===============================
set_property PACKAGE_PIN W5 [get_ports clk_100mhz]
set_property IOSTANDARD LVCMOS33 [get_ports clk_100mhz]
create_clock -period 10.000 -name sys_clk -waveform {0 5} [get_ports clk_100mhz]

## ===============================
## Reset (BTN0)
## ===============================
set_property PACKAGE_PIN U18 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports rst]
set_property PULLDOWN true [get_ports rst]

## ===============================
## ALU Enable (SW0)
## ===============================
set_property PACKAGE_PIN V17 [get_ports alu_en]
set_property IOSTANDARD LVCMOS33 [get_ports alu_en]

## ===============================
## ALU Operation Select (SW1-SW3)
## ===============================
set_property PACKAGE_PIN V16 [get_ports {alu_op[0]}]
set_property PACKAGE_PIN W16 [get_ports {alu_op[1]}]
set_property PACKAGE_PIN W17 [get_ports {alu_op[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports alu_op[*]]

## ===============================
## LED Output
## DFS + Blink LEDs
set_property PACKAGE_PIN U16 [get_ports led0]   ;# LD0
set_property PACKAGE_PIN E19 [get_ports led1]   ;# LD1
set_property PACKAGE_PIN U19 [get_ports led2]   ;# LD2
set_property PACKAGE_PIN V19 [get_ports led3]   ;# LD3

## Activity Bar Graph LEDs
set_property PACKAGE_PIN W18 [get_ports led4]   ;# LD4
set_property PACKAGE_PIN U15 [get_ports led5]   ;# LD5
set_property PACKAGE_PIN V15 [get_ports led6]   ;# LD6
set_property PACKAGE_PIN V14 [get_ports led7]   ;# LD7

set_property IOSTANDARD LVCMOS33 [get_ports {led0 led1 led2 led3 led4 led5 led6 led7}]