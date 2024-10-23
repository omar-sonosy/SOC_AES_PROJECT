#
# This file was created by Xilinx Vitis tool.
#


#
# tools
#

RM = rm -f
RMDIR = rm -rf

#
# variables
#

SDCARD_GEN = sdcard_gen
GENERATE_BIF = ::scw::generate_bif

XPFM_PATH = H:/project/SoC_project/design_aes_wrapper/export/design_aes_wrapper/design_aes_wrapper.xpfm
SYS_CONFIG = design_aes_wrapper
DOMAINS = standalone_domain
BIF_PATH = H:/project/SoC_project/SoC_Vitis_system/Debug/system.bif

BITSTREAM_PATH = H:/project/SoC_project/SoC_Vitis/_ide/bitstream/design_aes_wrapper.bit
SD_FILES = --elf H:/project/SoC_project/SoC_Vitis/Debug/SoC_Vitis.elf,ps7_cortexa9_0

#
# primary build targets
#

all: sd_card

sd_card:
	-@echo Generating bif file for the system project
	generate_system_bif.bat 61282 ${XPFM_PATH} ${DOMAINS} ${BIF_PATH}
	${SDCARD_GEN} --xpfm ${XPFM_PATH} --sys_config ${SYS_CONFIG} --bif ${BIF_PATH} --bitstream ${BITSTREAM_PATH} ${SD_FILES}

clean:
	$(RMDIR) ./_sds
	${RMDIR} sd_card
	${RM} system.bif

.PHONY: all sd_card clean


