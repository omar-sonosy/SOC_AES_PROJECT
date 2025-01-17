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

#include "AES_FULL.h"


// Global variables for addresses of the Encryption IP registers
Xuint32 *const enc_plain_base_addr = (Xuint32 *)XPAR_AES_ENC_0_S00_AXI_BASEADDR;
Xuint32 *const enc_key_base_addr = enc_plain_base_addr + 4;
Xuint32 *const enc_cipher_base_addr = enc_key_base_addr + 4;
Xuint32 *const enc_control_bits = enc_cipher_base_addr + 4;
Xuint32 *const done_flag = enc_control_bits + 1;

// Global variables for addresses of the Decryption IP registers
Xuint32 *const dec_plain_base_addr = (Xuint32 *)XPAR_AES_DEC_0_S00_AXI_BASEADDR;
Xuint32 *const dec_key_base_addr = dec_plain_base_addr + 4;
Xuint32 *const dec_cipher_base_addr = dec_key_base_addr + 4;
Xuint32 *const dec_control_bits = dec_cipher_base_addr + 4;
Xuint32 *const dec_done_flag = dec_control_bits + 1;

//Global variable for interrupts Initialization
XScuGic IntrInst;

//Global Variables for encryption and decryption:
uint8_t plaintext[BYTES_TO_ENCRYPT];
uint8_t key[BYTES_TO_ENCRYPT]={0x70,0x6F,0x6E,0x6D,0x6C,0x6B,0x6A,0x69,0x68,0x67,0x66,0x65,0x64,0x63,0x62,0x61};
uint8_t enc_ciphertext[BYTES_TO_ENCRYPT], dec_plaintext[BYTES_TO_ENCRYPT];

volatile XTime enc_elapsed_time;
volatile XTime dec_elapsed_time;



uint8_t* plain_pointer;
uint8_t* cipher_pointer;
int File_size = 0;
volatile int encrypted_bytes = 0;
int Plain_is_hex;


void print_registers(bool ENC_DEC)
{
	if(ENC_DEC==PRINT_ENC){
		xil_printf("Printing Encryption registers:\n\r");
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
	}else{
		xil_printf("Printing Decryption registers:\n\r");
		for (int i = BYTES_TO_ENCRYPT - 1; i >= 0; i--)
		{
			xil_printf("%x ", *((char *)dec_plain_base_addr + i));
		}
		xil_printf("\n\r");
		for (int i = BYTES_TO_ENCRYPT - 1; i >= 0; i--)
		{
			xil_printf("%x ", *((char *)dec_key_base_addr + i));
		}
		xil_printf("\n\r");
		for (int i = BYTES_TO_ENCRYPT - 1; i >= 0; i--)
		{
			xil_printf("%x ", *((char *)dec_cipher_base_addr + i));
		}
		xil_printf("\n\r%x \n\r", *((char *)dec_control_bits));
		xil_printf("%x \n\r", *((char *)dec_done_flag));
	}
	
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
	for (int i = 0; i < REGISTER_NUMBER; i++)
	{
		*((Xuint32 *)(enc_ciphertext) + i) = *(enc_cipher_base_addr + i);
	}

	for(int i = encrypted_bytes; i < (BYTES_TO_ENCRYPT + encrypted_bytes); i++){
		cipher_pointer[i-BYTES_TO_ENCRYPT] = enc_ciphertext[BYTES_TO_ENCRYPT-(i-encrypted_bytes)-1];
	}

	XScuGic_Enable(&IntrInst, ENC_INTR_ID);

	if(encrypted_bytes < File_size){
		for(int i = encrypted_bytes; i < (BYTES_TO_ENCRYPT + encrypted_bytes); i++){
			plaintext[BYTES_TO_ENCRYPT-(i-encrypted_bytes)-1] = plain_pointer[i];
		}
		encrypt(plaintext, key);
		encrypted_bytes += BYTES_TO_ENCRYPT;
	}else{
		XTime_GetTime(&enc_elapsed_time);
	}
}

static void dec_ISR()
{
	XScuGic_Disable(&IntrInst, DEC_INTR_ID);

	for (int i = 0; i < REGISTER_NUMBER; i++)
	{
		*((Xuint32 *)(dec_plaintext) + i) = *(dec_cipher_base_addr + i);
	}
	for(int i = encrypted_bytes; i < (BYTES_TO_ENCRYPT + encrypted_bytes); i++){
		plain_pointer[i-BYTES_TO_ENCRYPT] = dec_plaintext[BYTES_TO_ENCRYPT-(i-encrypted_bytes)-1];
	}

	XScuGic_Enable(&IntrInst, DEC_INTR_ID);
	if(encrypted_bytes < File_size){
		for(int i = encrypted_bytes; i < (BYTES_TO_ENCRYPT + encrypted_bytes); i++){
			plaintext[BYTES_TO_ENCRYPT-(i-encrypted_bytes)-1] = cipher_pointer[i];
		}
		decrypt(plaintext, key);
		encrypted_bytes += BYTES_TO_ENCRYPT;
	}else{
		XTime_GetTime(&dec_elapsed_time);
	}
}

void interrupts_init(void)
{
	int32_t done;
	XScuGic_Config *IntrConfig;

	IntrConfig = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
	done = XScuGic_CfgInitialize(&IntrInst, IntrConfig, IntrConfig->CpuBaseAddress);
	if (done != XST_SUCCESS)
		print_error("\n\rInterrupt controller initialization failed!\n\r");

	// Set up interrupt for encryption.
	XScuGic_SetPriorityTriggerType(&IntrInst, ENC_INTR_ID, 100, 3);
	done = XScuGic_Connect(&IntrInst, ENC_INTR_ID, (Xil_InterruptHandler)enc_ISR, 0);
	if (done != XST_SUCCESS)
		print_error("\n\rInterrupt controller connection failed!\n\r");
	XScuGic_Enable(&IntrInst, ENC_INTR_ID);

	// Set up interrupt for decryption.
	XScuGic_SetPriorityTriggerType(&IntrInst, DEC_INTR_ID, 100, 3);
	done = XScuGic_Connect(&IntrInst, DEC_INTR_ID, (Xil_InterruptHandler)dec_ISR, 0);
	if (done != XST_SUCCESS)
		print_error("\n\rInterrupt controller connection failed!\n\r");
	XScuGic_Enable(&IntrInst, DEC_INTR_ID);

	// Setup for exception handling of the interrupt instance.
	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, (void *)&IntrInst);
	Xil_ExceptionEnable();
}

