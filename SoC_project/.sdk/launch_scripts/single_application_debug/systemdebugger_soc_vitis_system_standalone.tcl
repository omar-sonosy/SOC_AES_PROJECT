connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351A78026A" && level==0} -index 1
fpga -file H:/project/SoC_project/SoC_Vitis/_ide/bitstream/design_aes_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw H:/project/SoC_project/design_aes_wrapper/export/design_aes_wrapper/hw/design_aes_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source H:/project/SoC_project/SoC_Vitis/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow H:/project/SoC_project/SoC_Vitis/Debug/SoC_Vitis.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
