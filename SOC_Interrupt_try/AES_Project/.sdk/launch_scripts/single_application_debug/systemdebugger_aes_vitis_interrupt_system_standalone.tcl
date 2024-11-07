connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351AB6DD5A" && level==0} -index 1
fpga -file D:/esisar/SOC/soc_git/SOC_AES_PROJECT/SOC_Interrupt_try/AES_Project/AES_Vitis_Interrupt/_ide/bitstream/system_design_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw D:/esisar/SOC/soc_git/SOC_AES_PROJECT/SOC_Interrupt_try/AES_Project/system_design_wrapper/export/system_design_wrapper/hw/system_design_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source D:/esisar/SOC/soc_git/SOC_AES_PROJECT/SOC_Interrupt_try/AES_Project/AES_Vitis_Interrupt/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow D:/esisar/SOC/soc_git/SOC_AES_PROJECT/SOC_Interrupt_try/AES_Project/AES_Vitis_Interrupt/Debug/AES_Vitis_Interrupt.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
