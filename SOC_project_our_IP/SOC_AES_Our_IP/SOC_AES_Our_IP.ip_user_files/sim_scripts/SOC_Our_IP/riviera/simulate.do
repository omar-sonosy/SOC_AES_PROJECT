onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+SOC_Our_IP -L xilinx_vip -L xpm -L xil_defaultlib -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.SOC_Our_IP xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {SOC_Our_IP.udo}

run -all

endsim

quit -force
