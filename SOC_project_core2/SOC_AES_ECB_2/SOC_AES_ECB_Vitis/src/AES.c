/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include <string.h>
#include "platform.h"
#include "xil_printf.h"
#include "xbasic_types.h"
#include "xparameters.h"
#include "sleep.h"
#include "xtime_l.h"
#include <arm_neon.h>

#define REGISTER_NUMBER 4
#define BYTES_TO_BE_ENCRYPTED 16

Xuint32 *plain_text_base_addr = (Xuint32 *) 0x43C00000;
Xuint32 *key_base_addr = (Xuint32 *)0x43C00010;
 Xuint32 *cypher_text_base_addr = ( Xuint32 *)0x43C00020;
Xuint32 *load_rst = (Xuint32 *)0x43C00030;
 Xuint32 *done_flag = ( Xuint32 *)0x43C00034;

uint8x16_t cypher, plain;

void Encrypt_AES(char* plaintext, const char* key, char* ciphertext){
	for(int i = 0; i < REGISTER_NUMBER; i++){
		*(plain_text_base_addr+i) = *((Xuint32*)(plaintext)+i);
		*(key_base_addr+i) = *((Xuint32*)(key)+i);
	}
	*load_rst=0x00000001;
//	while(*done_flag ==0){
	xil_printf("Waiting for encryption...\n\r");
//	}

	for(int i = 0; i < REGISTER_NUMBER ; i++){
		*((Xuint32*)(ciphertext)+i) = *(cypher_text_base_addr+i);
	}

//	for(int i = 0; i < 16; i++)
//		ciphertext[i] = ciphertext[i] ^ plaintext[i];
}

void print_results(char plaintext[], const char key[], char ciphertext[]){
	xil_printf("\r\nPlaintext: ");
	for (int i = 0; i < BYTES_TO_BE_ENCRYPTED; i++)
		xil_printf("%x ", plaintext[i]);
	xil_printf("\n\r");

	xil_printf("Key: ");
	for (int i = 0; i < BYTES_TO_BE_ENCRYPTED; i++)
		xil_printf("%x ", key[i]);
	xil_printf("\n\r");

	xil_printf("Ciphertext: ");
	for (int i = 0; i < BYTES_TO_BE_ENCRYPTED; i++)
		xil_printf("%x ", ciphertext[i]);
	xil_printf("\n\r");
}

int main()
{
    init_platform();

    print("\n\rInitialize program.\n\r");


    char plaintext[16] = {
    	    0x00, 0x00, 0x00, 0x00,
    	    0x00, 0x00, 0x00, 0x00,
    	    0x00, 0x00, 0x00, 0x00,
    	    0x00, 0x00, 0x00, 0x00
    	};
    const char key[16] = {
    	    0x00, 0x00, 0x00, 0x00,
    	    0x00, 0x00, 0x00, 0x00,
    	    0x00, 0x00, 0x00, 0x00,
    	    0x00, 0x00, 0x00, 0x00
    	};
	char ciphertext[16];

	Encrypt_AES(plaintext, key, ciphertext);
	xil_printf("Printing arrays:\n\r");
	print_results(plaintext, key, ciphertext);

//Printing registers
//	xil_printf("printing registers\n\r");
//	for(int i=0;i<16;i++){
//		xil_printf("%x ",*((char *)plain_text_base_addr+i));
//	}
//	xil_printf("\n\r");
//	for(int i=0;i<16;i++){
//		xil_printf("%x ",*((char *)key_base_addr+i));
//	}
	xil_printf("\n\r");
	for(int i=0;i<16;i++){
		xil_printf("%x ",*((char *)cypher_text_base_addr+i));
	}
	xil_printf("\n\r");
	xil_printf("%x ",*((char *)load_rst));
	xil_printf("\n\r");
	xil_printf("%x ",*((char *)done_flag));
	xil_printf("\n\r");

	//Encrypt_AES(ciphertext, key, plaintext);
	//print_results(ciphertext, key, plaintext);

    cleanup_platform();
    return 0;
}
