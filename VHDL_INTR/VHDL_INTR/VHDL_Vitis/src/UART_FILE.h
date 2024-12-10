#ifndef UART_FILE_H
#define UART_FILE_H

#include "xuartps.h"
#include "xparameters.h"
#include "xil_printf.h"

#define UART_DEVICE_ID  XPAR_XUARTPS_0_DEVICE_ID
#define BUFFER_SIZE     2048  // Adjust size based on the file
#define UART_TIMEOUT       1000000


extern uint8_t UART_BUFFER[BUFFER_SIZE];


int UartRead( uint8_t *inputBuffer);
int UartInit();


#endif
