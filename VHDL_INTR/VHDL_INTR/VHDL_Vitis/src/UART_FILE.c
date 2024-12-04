#include "UART_FILE.h"

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


