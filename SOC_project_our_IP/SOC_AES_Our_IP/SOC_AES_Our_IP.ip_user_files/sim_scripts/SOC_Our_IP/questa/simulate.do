onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib SOC_Our_IP_opt

do {wave.do}

view wave
view structure
view signals

do {SOC_Our_IP.udo}

run -all

quit -force
