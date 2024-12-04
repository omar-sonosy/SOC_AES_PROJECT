connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351A77BDFA" && level==0} -index 1
fpga -file H:/SOC_Project/SOC_AES_PROJET/SOC_AES_PROJECT/VHDL_INTR/VHDL_INTR/VHDL_Vitis/_ide/bitstream/AES_F_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw H:/SOC_Project/SOC_AES_PROJET/SOC_AES_PROJECT/VHDL_INTR/VHDL_INTR/AES_F_wrapper/export/AES_F_wrapper/hw/AES_F_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source H:/SOC_Project/SOC_AES_PROJET/SOC_AES_PROJECT/VHDL_INTR/VHDL_INTR/VHDL_Vitis/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow H:/SOC_Project/SOC_AES_PROJET/SOC_AES_PROJECT/VHDL_INTR/VHDL_INTR/VHDL_Vitis/Debug/VHDL_Vitis.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
