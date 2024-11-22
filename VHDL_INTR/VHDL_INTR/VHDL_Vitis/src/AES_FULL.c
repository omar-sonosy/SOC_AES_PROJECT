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

#include "helper_functions.h"
#include "platform.h"
#include "xbasic_types.h"
#include "xparameters.h"
#include "sleep.h"
#include "xtime_l.h"
#include <arm_neon.h>
#include <xscugic.h>

#define SET_BIT(REG, BIT_NUM) (*REG = (*REG | (1 << (BIT_NUM))))
#define CLEAR_BIT(REG, BIT_NUM) (*REG = (*REG & ~(1 << (BIT_NUM))))
#define CHECK_BIT(REG, BIT_NUM) ((*REG) & (1 << (BIT_NUM)))

#define ENC_INTR_ID 61U
#define DEC_INTR_ID 62U

Xuint32 *const enc_plain_base_addr = (Xuint32 *)XPAR_AES_ENC_0_S00_AXI_BASEADDR;
Xuint32 *const enc_key_base_addr = enc_plain_base_addr + 4;
Xuint32 *const enc_cipher_base_addr = enc_key_base_addr + 4;
Xuint32 *const enc_control_bits = enc_cipher_base_addr + 4;
Xuint32 *const done_flag = enc_control_bits + 1;

Xuint32 *const dec_plain_base_addr = (Xuint32 *)XPAR_AES_DEC_0_S00_AXI_BASEADDR;
Xuint32 *const dec_key_base_addr = dec_plain_base_addr + 4;
Xuint32 *const dec_cipher_base_addr = dec_key_base_addr + 4;
Xuint32 *const dec_control_bits = dec_cipher_base_addr + 4;
Xuint32 *const dec_done_flag = dec_control_bits + 1;

uint8_t plaintext[BYTES_TO_ENCRYPT], key[BYTES_TO_ENCRYPT];
uint8_t enc_ciphertext[BYTES_TO_ENCRYPT], dec_plaintext[BYTES_TO_ENCRYPT];

XScuGic IntrInst;

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
	xil_printf("%x \n\r", *((char *)done_flag));
}

void encrypt(uint8_t *plaintext, uint8_t *key)
{
	*enc_control_bits = 0x00000000;
	SET_BIT(enc_control_bits, 0);
	CLEAR_BIT(enc_control_bits, 0);

	for (int i = 0; i < REGISTER_NUMBER; i++)
	{
		*(enc_plain_base_addr + i) = *((Xuint32 *)(plaintext) + i);
		*(enc_key_base_addr + i) = *((Xuint32 *)(key) + i);
	}

	SET_BIT(enc_control_bits, 1);
	CLEAR_BIT(enc_control_bits, 1);
}

void decrypt(uint8_t *plaintext, uint8_t *key)
{
	*dec_control_bits = 0x00000000;
	SET_BIT(dec_control_bits, 0);
	CLEAR_BIT(dec_control_bits, 0);

	for (int i = 0; i < REGISTER_NUMBER; i++)
	{
		*(dec_plain_base_addr + i) = *((Xuint32 *)(plaintext) + i);
		*(dec_key_base_addr + i) = *((Xuint32 *)(key) + i);
	}

	SET_BIT(dec_control_bits, 1);
	CLEAR_BIT(dec_control_bits, 1);
}

static void enc_ISR()
{
	XScuGic_Disable(&IntrInst, ENC_INTR_ID);

	xil_printf("Inside ENC ISR.\n\r");
	for (int i = 0; i < REGISTER_NUMBER; i++)
	{
		*((Xuint32 *)(enc_ciphertext) + i) = *(enc_cipher_base_addr + i);
	}
	XScuGic_Enable(&IntrInst, ENC_INTR_ID);
}

static void dec_ISR()
{
	XScuGic_Disable(&IntrInst, DEC_INTR_ID);

	xil_printf("Inside DEC ISR.\n\r");
	for (int i = 0; i < REGISTER_NUMBER; i++)
	{
		*((Xuint32 *)(dec_plaintext) + i) = *(dec_cipher_base_addr + i);
	}

	XScuGic_Enable(&IntrInst, DEC_INTR_ID);
}

void interrupts_init(void)
{
	int32_t done;
	XScuGic_Config *IntrConfig;

	IntrConfig = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
	done = XScuGic_CfgInitialize(&IntrInst, IntrConfig, IntrConfig->CpuBaseAddress);
	if (done != XST_SUCCESS)
		return print_error("\n\rInterrupt controller initialization failed!\n\r");

	// Set up interrupt for encryption.
	XScuGic_SetPriorityTriggerType(&IntrInst, ENC_INTR_ID, 100, 3);
	done = XScuGic_Connect(&IntrInst, ENC_INTR_ID, (Xil_InterruptHandler)enc_ISR, 0);
	if (done != XST_SUCCESS)
		return print_error("\n\rInterrupt controller connection failed!\n\r");
	XScuGic_Enable(&IntrInst, ENC_INTR_ID);

	// Set up interrupt for decryption.
	XScuGic_SetPriorityTriggerType(&IntrInst, DEC_INTR_ID, 100, 3);
	done = XScuGic_Connect(&IntrInst, DEC_INTR_ID, (Xil_InterruptHandler)dec_ISR, 0);
	if (done != XST_SUCCESS)
		return print_error("\n\rInterrupt controller connection failed!\n\r");
	XScuGic_Enable(&IntrInst, DEC_INTR_ID);

	// Setup for exception handling of the interrupt instance.
	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, (void *)&IntrInst);
	Xil_ExceptionEnable();
}

int main()
{
	init_platform();
	interrupts_init();

	print("\n\rInitialize program.\n\r");

	char plaintext_hex[32] = "7468697369736D79706C61696E747878";
	char key_hex[32] = "6162636465666768696A6B6C6D6E6F70";

	hexstring_to_bytes(plaintext_hex, plaintext);
	hexstring_to_bytes(key_hex, key);

	print("\n\rStart encryption.\n\r");

	encrypt(plaintext, key);

	print_results(plaintext, key, enc_ciphertext);

	print("\n\rStart decryption.\n\r");

	decrypt(enc_ciphertext, key);

	print_results(enc_ciphertext, key, dec_plaintext);

	cleanup_platform();
	return 0;
}
