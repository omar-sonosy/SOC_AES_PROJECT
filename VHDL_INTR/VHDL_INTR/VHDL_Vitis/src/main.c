
#include "AES_FULL.h"

int main()
{
	init_platform();
	interrupts_init();
	double total_time;
	XUartPs UART_INST;

	ReceiveFile(&UART_INST, &plain_buffer, &File_size);

//	for(int i = 0; i < File_size; i += BYTES_TO_ENCRYPT){
//		hexstring_to_bytes(plaintext_hex, &plain_buffer[i]);
//	}
//	hexstring_to_bytes(key_hex, key);

//	File_size = 32;

	for(int i = 0; i < BYTES_TO_ENCRYPT; i++){
		plaintext[i] = plain_buffer[i];
	}
	encrypted_bytes += BYTES_TO_ENCRYPT;

	XTime_SetTime(enc_elapsed_time);
	encrypt(plaintext,key);

//	for(int i = 0; i < File_size; i += BYTES_TO_ENCRYPT){
//		print_results(&plain_buffer[i], key, &cipher_buffer[i]);
//	}

	SendFile(&UART_INST, &cipher_buffer, File_size);

	total_time = 2000000.0 * enc_elapsed_time / XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ;
	printf("\r\nEncryption takes %f ns.\r\n", total_time);

//	print("\n\rStart decryption.\n\r");
//
//	XTime_SetTime(dec_elapsed_time);
//	decrypt(enc_ciphertext, key);
//
//	print_results(enc_ciphertext, key, dec_plaintext);
//
//	total_time = 2000000.0 * dec_elapsed_time / XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ;
//	printf("\r\nDecryption takes %f ns.\r\n", total_time);

	cleanup_platform();
	return 0;
}











// OLD MAIN CODE
//int main()
//{
//	init_platform();
//	interrupts_init();
//	double total_time;
//
//	print("\n\rInitialize program.\n\r");
//
//	char plaintext_hex[32] = "7468697369736D79706C61696E747878";
//	char key_hex[32] = "6162636465666768696A6B6C6D6E6F70";
//
//	hexstring_to_bytes(plaintext_hex, plaintext);
//	hexstring_to_bytes(key_hex, key);
//
//	print("\n\rStart encryption.\n\r");
//
//	XTime_SetTime(enc_elapsed_time);
//	encrypt(plaintext, key);
//
//	print_results(plaintext, key, enc_ciphertext);
//
//	total_time = 2000000.0 * enc_elapsed_time / XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ;
//	printf("\r\nEncryption takes %f ns.\r\n", total_time);
//
//	print("\n\rStart decryption.\n\r");
//
//	XTime_SetTime(dec_elapsed_time);
//	decrypt(enc_ciphertext, key);
//
//	print_results(enc_ciphertext, key, dec_plaintext);
//
//	total_time = 2000000.0 * dec_elapsed_time / XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ;
//	printf("\r\nDecryption takes %f ns.\r\n", total_time);
//
//	cleanup_platform();
//	return 0;
//}