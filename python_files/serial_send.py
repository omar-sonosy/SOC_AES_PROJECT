import serial

ser = serial.Serial('COM37', 115200)  # Adjust COM port and baud rate
data="7468697369736D79706C61696E74787805D0E3F0CCA0E3BB83CB6A1CDB8A5B7A"   # Add EOF byte
bytes=bytes.fromhex(data)
ser.write(bytes+b'\xFF')
print("Data sent through serial")
bytes_recievd=ser.read()
print("Data recieved through serial")
print(bytes_recievd.hex())