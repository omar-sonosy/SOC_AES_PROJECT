import serial

port = 'COM35'

ser = serial.Serial(port, 115200)

data = "7468697369736D79706C61696E74787805D0E3F0CCA0E3BB83CB6A1CDB8A5B7A"
data = data + "FF"

print(data)
