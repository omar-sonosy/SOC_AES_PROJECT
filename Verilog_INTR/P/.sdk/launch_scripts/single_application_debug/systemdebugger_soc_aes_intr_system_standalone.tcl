connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351AB6FA7A" && level==0} -index 1
fpga -file H:/SOC_Project/SOC_AES_PROJECT/SOC_Verilog_Core_With_INTR/SOC_AES_ECB_INTR/SOC_AES_INTR/_ide/bitstream/AES_ECB_INTR_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw H:/SOC_Project/SOC_AES_PROJECT/SOC_Verilog_Core_With_INTR/SOC_AES_ECB_INTR/AES_ECB_INTR_wrapper/export/AES_ECB_INTR_wrapper/hw/AES_ECB_INTR_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source H:/SOC_Project/SOC_AES_PROJECT/SOC_Verilog_Core_With_INTR/SOC_AES_ECB_INTR/SOC_AES_INTR/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow H:/SOC_Project/SOC_AES_PROJECT/SOC_Verilog_Core_With_INTR/SOC_AES_ECB_INTR/SOC_AES_INTR/Debug/SOC_AES_INTR.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
