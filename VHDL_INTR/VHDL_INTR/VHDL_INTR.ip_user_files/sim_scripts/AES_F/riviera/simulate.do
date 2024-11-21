onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+AES_F -L xilinx_vip -L xpm -L xil_defaultlib -L xlconcat_v2_1_3 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.AES_F xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {AES_F.udo}

run -all

endsim

quit -force
