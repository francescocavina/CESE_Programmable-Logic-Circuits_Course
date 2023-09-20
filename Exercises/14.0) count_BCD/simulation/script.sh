# Author: Francesco Cavina <francescocavina98@gmail.com>

#! /bin/bash

# Compile the VHDL files
ghdl -a ../sources/ffd.vhd ../sources/reg_Nbit.vhd ../sources/count_BCD.vhd ../sources/count_BCD_tb.vhd
ghdl -s ../sources/ffd.vhd ../sources/reg_Nbit.vhd ../sources/count_BCD.vhd ../sources/count_BCD_tb.vhd

# Elaborate and run the testbench
ghdl -e count_BCD_tb
ghdl -r count_BCD_tb --vcd=count_BCD_tb.vcd --stop-time=1000ns

# Open the waveform using GTKWave
gtkwave count_BCD_tb.vcd