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
#include "xscugic.h"
#include <arm_neon.h>

#define REGISTER_NUMBER 4
#define BYTES_TO_ENCRYPT 16

#define SET_BIT(REG, BIT_NUM) (*REG = (*REG | (1 << (BIT_NUM))))
#define CLEAR_BIT(REG, BIT_NUM) (*REG = (*REG & ~(1 << (BIT_NUM))))
#define CHECK_BIT(REG, BIT_NUM) ((*REG) & (1 << (BIT_NUM)))

Xuint32 *enc_plain_base_addr = (Xuint32 *)0x43C00000;
Xuint32 *enc_key_base_addr = (Xuint32 *)0x43C00010;
Xuint32 *enc_cipher_base_addr = (Xuint32 *)0x43C00020;
Xuint32 *enc_control_bits = (Xuint32 *)0x43C00030;
Xuint32 *enc_done_flag = (Xuint32 *)0x43C00034;

Xuint32 *const dec_cipher_base_addr = (Xuint32 *)XPAR_AES_ECB_INTR_DEC_0_S00_AXI_BASEADDR;
Xuint32 *const dec_key_base_addr = dec_cipher_base_addr + 4;
Xuint32 *const dec_plain_base_addr = dec_key_base_addr + 4;
Xuint32 *const dec_control_bits = dec_plain_base_addr + 4;

XScuGic IntInstance;

uint8_t plaintext[BYTES_TO_ENCRYPT], key[BYTES_TO_ENCRYPT];
uint8_t enc_ciphertext[BYTES_TO_ENCRYPT], dec_plaintext[BYTES_TO_ENCRYPT];

void encrypt(uint8_t *plaintext, uint8_t *key)
{
	*enc_control_bits = 0x00000000;
	SET_BIT(enc_control_bits, 1);
	for (int i = 0; i < REGISTER_NUMBER; i++)
	{
		*(enc_plain_base_addr + i) = *((Xuint32 *)(plaintext) + i);
		*(enc_key_base_addr + i) = *((Xuint32 *)(key) + i);
	}
	SET_BIT(enc_control_bits, 0);
	CLEAR_BIT(enc_control_bits, 0);
}

void decrypt(uint8_t *enc_ciphertext, uint8_t *key)
{

	*dec_control_bits = 0x00000000;
	SET_BIT(dec_control_bits, 1);
	for (int i = 0; i < REGISTER_NUMBER; i++)
	{
		*(dec_key_base_addr + i) = *((Xuint32 *)(key) + i);
	}
	SET_BIT(dec_control_bits, 2);
	CLEAR_BIT(dec_control_bits, 2);
	for (int i = 0; i < REGISTER_NUMBER; i++)
	{
		*(dec_cipher_base_addr + i) = *((Xuint32 *)(plaintext) + i);
	}
	SET_BIT(dec_control_bits, 0);
	CLEAR_BIT(dec_control_bits, 0);
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
		xil_printf("%x ", *((char *)enc_plain_base_addr + i));
	}
	xil_printf("\n\r");
	for (int i = BYTES_TO_ENCRYPT - 1; i >= 0; i--)
	{
		xil_printf("%x ", *((char *)enc_key_base_addr + i));
	}
	xil_printf("\n\r");
	for (int i = BYTES_TO_ENCRYPT - 1; i >= 0; i--)
	{
		xil_printf("%x ", *((char *)enc_cipher_base_addr + i));
	}
	xil_printf("\n\r%x \n\r", *((char *)enc_control_bits));
	xil_printf("%x \n\r", *((char *)enc_done_flag));
}

void print_results(uint8_t plaintext[], uint8_t key[], uint8_t enc_ciphertext[])
{
	xil_printf("\r\nPlaintext: ");
	for (int i = BYTES_TO_ENCRYPT - 1; i >= 0; i--)
		xil_printf("%x ", plaintext[i]);

	xil_printf("\n\rKey: ");
	for (int i = BYTES_TO_ENCRYPT - 1; i >= 0; i--)
		xil_printf("%x ", key[i]);

	xil_printf("\n\rCiphertext: ");
	for (int i = BYTES_TO_ENCRYPT - 1; i >= 0; i--)
		xil_printf("%x ", enc_ciphertext[i]);
	xil_printf("\n\r");
}

static void enc_ISR(void)
{
	XScuGic_Disable(&IntInstance, XPAR_FABRIC_AES_ECB_INTR_0_INTR_INTR);
	print("\n\rInside ENC ISR.\n\r");
	for (int i = 0; i < REGISTER_NUMBER; i++)
	{
		*((Xuint32 *)(enc_ciphertext) + i) = *(enc_cipher_base_addr + i);
	}
	XScuGic_Enable(&IntInstance, XPAR_FABRIC_AES_ECB_INTR_0_INTR_INTR);
}

static void dec_ISR(void)
{
	XScuGic_Disable(&IntInstance, 62U);
	print("\n\rInside DEC ISR.\n\r");
	for (int i = 0; i < REGISTER_NUMBER; i++)
	{
		*((Xuint32 *)(dec_plaintext) + i) = *(dec_plain_base_addr + i);
	}
	XScuGic_Enable(&IntInstance, 62U);
}

static void interrupts_init()
{
	XScuGic_Config *IntConfig;
	u32 status;

	IntConfig = XScuGic_LookupConfig(XPAR_AES_ECB_INTR_0_DEVICE_ID);
	status = XScuGic_CfgInitialize(&IntInstance, IntConfig, IntConfig->CpuBaseAddress);
	if (status != XST_SUCCESS)
	{
		print("Interrupt controller Initialization failed.\n\r");
		return -1;
	}

	// Set up encryption interrupt.
	XScuGic_SetPriorityTriggerType(&IntInstance, XPAR_FABRIC_AES_ECB_INTR_0_INTR_INTR, 100, 3);
	status = XScuGic_Connect(&IntInstance, XPAR_FABRIC_AES_ECB_INTR_0_INTR_INTR, (Xil_InterruptHandler)enc_ISR, 0);
	if (status != XST_SUCCESS)
	{
		print("Interrupt controller Connection failed.\n\r");
		return -1;
	}
	XScuGic_Enable(&IntInstance, XPAR_FABRIC_AES_ECB_INTR_0_INTR_INTR);

	// Set up decryption interrupt.
	XScuGic_SetPriorityTriggerType(&IntInstance, 62U, 100, 3);
	status = XScuGic_Connect(&IntInstance, 62U, (Xil_InterruptHandler)dec_ISR, 0);
	if (status != XST_SUCCESS)
	{
		print("Interrupt controller Connection failed.\n\r");
		return -1;
	}
	XScuGic_Enable(&IntInstance, 62U);

	// Set up exception handling.
	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, (void *)&IntInstance);
	Xil_ExceptionEnable();

	print("\n\rInitialized Interrupts.\n\r");
}

int main()
{
	init_platform();
	print("\n\rInitialize program.\n\r");

	interrupts_init();

	char plaintext_hex[32] = "7468697369736D79706C61696E747878";
	char key_hex[32] = "6162636465666768696A6B6C6D6E6F70";

	hexstring_to_bytes(plaintext_hex, plaintext);
	hexstring_to_bytes(key_hex, key);

	print("\n\rStart encryption.\n\r");
	encrypt(plaintext, key);
	print_results(plaintext, key, enc_ciphertext);

	print("\n\rStart decryption.\n\r");
	decrypt(enc_ciphertext, key);
	print_results(dec_plaintext, key, enc_ciphertext);

	cleanup_platform();
	return 0;
}
