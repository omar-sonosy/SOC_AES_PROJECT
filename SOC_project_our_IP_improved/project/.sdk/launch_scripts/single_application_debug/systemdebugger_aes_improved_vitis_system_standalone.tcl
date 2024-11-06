connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351A77B49A" && level==0} -index 1
fpga -file D:/esisar/SOC/soc_git/SOC_AES_PROJECT/SOC_project_our_IP_improved/project/AES_improved_vitis/_ide/bitstream/AES_Improved_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw D:/esisar/SOC/soc_git/SOC_AES_PROJECT/SOC_project_our_IP_improved/project/AES_Improved_wrapper/export/AES_Improved_wrapper/hw/AES_Improved_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source D:/esisar/SOC/soc_git/SOC_AES_PROJECT/SOC_project_our_IP_improved/project/AES_improved_vitis/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow D:/esisar/SOC/soc_git/SOC_AES_PROJECT/SOC_project_our_IP_improved/project/AES_improved_vitis/Debug/AES_improved_vitis.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
