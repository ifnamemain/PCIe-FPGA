transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/mallman/Desktop/Stuff/Research Related/Sae Woo Group/VHDL/PCIe-FPGA/src/fpga/testing/Flancter.vhd}

