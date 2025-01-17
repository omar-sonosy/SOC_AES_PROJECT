#include "UART_FILE.h"

XUartPs Uart_Ps;
uint8_t UART_BUFFER[BUFFER_SIZE];

void ReceiveFile(XUartPs *UartInstancePtr, uint8_t *Buffer, int *FileSize) {
    int ReceivedBytes = 0;
    int Byte;

    //xil_printf("Waiting for file...\n");
    while (1) {
        Byte = XUartPs_Recv(UartInstancePtr, &Buffer[ReceivedBytes], 1);
        if (Byte > 0) {
            ReceivedBytes += Byte;
        }

        // Check for end of file (e.g., specific termination byte or size limit)
        if (Buffer[ReceivedBytes - 1] == 0xFF) {  // Example: 0xFF as EOF
            break;
        }

        if (ReceivedBytes >= BUFFER_SIZE) {
            xil_printf("Buffer overflow\n");
            break;
        }
    }

    *FileSize = ReceivedBytes;
    //xil_printf("File received. Size: %d bytes\n", *FileSize);
}

void SendFile(XUartPs *UartInstancePtr, uint8_t *Buffer, int FileSize) {
    //xil_printf("Sending encrypted file...\n");
    XUartPs_Send(UartInstancePtr, Buffer, FileSize);
    //xil_printf("File sent.\n");
}


int UartRead(uint8_t *inputBuffer) {
    int index = 0;
    u8 receivedByte;

    while (index < BUFFER_SIZE - 1) {
        // Wait until data is available in the RX FIFO
        if (XUartPs_IsReceiveData(Uart_Ps.Config.BaseAddress)) {
            receivedByte = XUartPs_ReadReg(Uart_Ps.Config.BaseAddress, XUARTPS_FIFO_OFFSET);

            // If the received byte is a newline, break out of the loop
            if (receivedByte == '\r') {
				break;
            }
            // Store the received byte in the buffer
            inputBuffer[index++] = receivedByte;

        }
    }

    inputBuffer[index] = '\0';  // Null-terminate the string
    return index;  // Return the number of bytes received
}


int UartInit() {
    XUartPs_Config *Config;
    int Status;

    // Initialize the UART driver
    Config = XUartPs_LookupConfig(UART_DEVICE_ID);
    if (Config == NULL) {
        xil_printf("UART device not found.\r\n");
        return XST_FAILURE;
    }

    Status = XUartPs_CfgInitialize(&Uart_Ps, Config, Config->BaseAddress);
    if (Status != XST_SUCCESS) {
        xil_printf("UART initialization failed.\r\n");
        return XST_FAILURE;
    }

    // Set the baud rate (optional)
    XUartPs_SetBaudRate(&Uart_Ps, 115200);

    return XST_SUCCESS;
}
