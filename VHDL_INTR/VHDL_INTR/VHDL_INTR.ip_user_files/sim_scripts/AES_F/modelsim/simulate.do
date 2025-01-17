onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xilinx_vip -L xpm -L xil_defaultlib -L xlconcat_v2_1_3 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.AES_F xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {AES_F.udo}

run -all

quit -force
