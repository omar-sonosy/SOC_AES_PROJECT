/*
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
#include <stdlib.h>
#include <stdint.h>
#include "platform.h"
#include "xil_printf.h"
#include "xbasic_types.h"
#include "xparameters.h"
#include "sleep.h"
#include "xtime_l.h"
#include <arm_neon.h>
#include <xscugic.h>

#define REGISTER_NUMBER 4
#define BYTES_TO_ENCRYPT 16

#define SET_BIT(REG, BIT_NUM) (*REG = (*REG | (1 << (BIT_NUM))))
#define CLEAR_BIT(REG, BIT_NUM) (*REG = (*REG & ~(1 << (BIT_NUM))))
#define CHECK_BIT(REG, BIT_NUM) ((*REG) & (1 << (BIT_NUM)))

Xuint32 *plain_base_addr = (Xuint32 *)0x43C00000;
Xuint32 *key_base_addr = (Xuint32 *)0x43C00010;
Xuint32 *cipher_base_addr = (Xuint32 *)0x43C00020;
Xuint32 *control_bits = (Xuint32 *)0x43C00030;
Xuint32 *done_flag = (Xuint32 *)0x43C00034;

uint8_t plaintext[BYTES_TO_ENCRYPT], key[BYTES_TO_ENCRYPT], ciphertext[BYTES_TO_ENCRYPT];

XScuGic IntrInst;

void print_registers(void);
void print_results(uint8_t plaintext[], uint8_t key[], uint8_t ciphertext[]);

void encrypt(uint8_t *plaintext, uint8_t *key)
{
	*control_bits = 0x00000000;
	SET_BIT(control_bits, 0);
	CLEAR_BIT(control_bits, 0);

	for (int i = 0; i < REGISTER_NUMBER; i++)
	{
		*(plain_base_addr + i) = *((Xuint32 *)(plaintext) + i);
		*(key_base_addr + i) = *((Xuint32 *)(key) + i);
	}

	SET_BIT(control_bits, 1);
	CLEAR_BIT(control_bits, 1);
}

void text_to_hexstring(const char *text_string, char *hex_string)
{
	while (*text_string)
	{
		sprintf(hex_string, "%02x", (unsigned char)*text_string);
		hex_string += 2;
		text_string++;
	}
}

void hexstring_to_bytes(const char *hex_string, uint8_t *bytes_arr)
{
	int j = BYTES_TO_ENCRYPT - 1;
	for (int i = 0; i < BYTES_TO_ENCRYPT * 2; i += 2)
	{
		char temp_str[3] = {hex_string[i], hex_string[i + 1], '\0'};
		bytes_arr[j--] = (uint8_t)strtol(temp_str, NULL, 16);
	}
}

void print_registers(void)
{
	xil_printf("Printing registers:\n\r");
	for (int i = BYTES_TO_ENCRYPT - 1; i >= 0; i--)
	{
		xil_printf("%x ", *((char *)plain_base_addr + i));
	}
	xil_printf("\n\r");
	for (int i = BYTES_TO_ENCRYPT - 1; i >= 0; i--)
	{
		xil_printf("%x ", *((char *)key_base_addr + i));
	}
	xil_printf("\n\r");
	for (int i = BYTES_TO_ENCRYPT - 1; i >= 0; i--)
	{
		xil_printf("%x ", *((char *)cipher_base_addr + i));
	}
	xil_printf("\n\r%x \n\r", *((char *)control_bits));
	xil_printf("%x \n\r", *((char *)done_flag));
}

void print_results(uint8_t plaintext[], uint8_t key[], uint8_t ciphertext[])
{
	xil_printf("\r\nPlaintext: ");
	for (int i = BYTES_TO_ENCRYPT - 1; i >= 0; i--)
		xil_printf("%x ", plaintext[i]);

	xil_printf("\n\rKey: ");
	for (int i = BYTES_TO_ENCRYPT - 1; i >= 0; i--)
		xil_printf("%x ", key[i]);

	xil_printf("\n\rCiphertext: ");
	for (int i = BYTES_TO_ENCRYPT - 1; i >= 0; i--)
		xil_printf("%x ", ciphertext[i]);
	xil_printf("\n\r");
}

static void enc_ISR()
{
	XScuGic_Disable(&IntrInst, XPAR_FABRIC_AES_CUSTOM_VHDL_0_INTERRUPT_INTR);
	for (int i = 0; i < REGISTER_NUMBER; i++)
	{
		*((Xuint32 *)(ciphertext) + i) = *(cipher_base_addr + i);
	}
	XScuGic_Enable(&IntrInst, XPAR_FABRIC_AES_CUSTOM_VHDL_0_INTERRUPT_INTR);
}

int main()
{
	init_platform();
	int32_t done;
	XScuGic_Config *IntrConfig;

	IntrConfig = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
	done = XScuGic_CfgInitialize(&IntrInst, IntrConfig, IntrConfig->CpuBaseAddress);
	if (done != XST_SUCCESS)
	{
		print("\n\rInterrupt controller initialization failed!\n\r");
		return -1;
	}

	XScuGic_SetPriorityTriggerType(&IntrInst, XPAR_FABRIC_AES_CUSTOM_VHDL_0_INTERRUPT_INTR, 0x00, 3);
	done = XScuGic_Connect(&IntrInst, XPAR_FABRIC_AES_CUSTOM_VHDL_0_INTERRUPT_INTR, (Xil_InterruptHandler)enc_ISR, 0);
	if (done != XST_SUCCESS)
	{
		print("\n\rInterrupt controller connection failed!\n\r");
		return -1;
	}

	XScuGic_Enable(&IntrInst, XPAR_FABRIC_AES_CUSTOM_VHDL_0_INTERRUPT_INTR);

	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, (void *)&IntrInst);
	Xil_ExceptionEnable();

	print("\n\rInitialize program.\n\r");

	char plaintext_hex[32] = "7468697369736D79706C61696E747878";
	char key_hex[32] = "6162636465666768696A6B6C6D6E6F70";

	hexstring_to_bytes(plaintext_hex, plaintext);
	hexstring_to_bytes(key_hex, key);

	print("\n\rStart encryption.\n\r");

	encrypt(plaintext, key);

	print_results(plaintext, key, ciphertext);

	cleanup_platform();
	return 0;
}
