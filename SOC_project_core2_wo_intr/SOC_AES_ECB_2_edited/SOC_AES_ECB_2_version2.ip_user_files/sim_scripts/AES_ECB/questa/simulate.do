onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib AES_ECB_opt

do {wave.do}

view wave
view structure
view signals

do {AES_ECB.udo}

run -all

quit -force
