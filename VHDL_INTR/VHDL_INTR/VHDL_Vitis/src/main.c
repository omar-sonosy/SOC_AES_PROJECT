
#include "AES_FULL.h"
#include "UART_FILE.h"

int main()
{
	init_platform();
	int status = UartInit();
	interrupts_init();
	double total_time;
	int padding_num;


	while(1){
		xil_printf("\n\rPlease type 'E' for Encryption and 'D' for Decryption.\n\r");
		while(UartRead(UART_BUFFER)!=1){}
		if(UART_BUFFER[0]=='E'){


			xil_printf("\n\rPlease Enter your plain text.\n\r");
			encrypted_bytes=0;
			File_size=UartRead(UART_BUFFER);
			xil_printf("\n\rPlaintext received.\n\r");

			if(File_size>0){
				padding_num=16-File_size%16;
				plain_pointer=(uint8_t*) malloc(sizeof(uint8_t)*(File_size+padding_num));
				cipher_pointer=(uint8_t*) malloc(sizeof(uint8_t)*(File_size+padding_num));
				for(int i=0;i<File_size;i++){
					plain_pointer[i]=UART_BUFFER[i];
				}
				for(int i=0;i<padding_num;i++){
					plain_pointer[i+File_size]=padding_num;
				}
				File_size+=padding_num;
				for(int i = 0; i < BYTES_TO_ENCRYPT; i++){
					plaintext[BYTES_TO_ENCRYPT-i-1] = plain_pointer[i];
				}
				encrypted_bytes += BYTES_TO_ENCRYPT;
				XTime_SetTime(enc_elapsed_time);
				encrypt(plaintext,key);
				while(encrypted_bytes < File_size){}
				print_buffers(plain_pointer, key, cipher_pointer ,File_size,padding_num);
				free(plain_pointer);
				free(cipher_pointer);
			}
		}else if(UART_BUFFER[0]=='D'){
			xil_printf("\n\rPlease enter your cipher text in hexadecimal without spaces\n\r");
			encrypted_bytes=0;
			File_size=UartRead(UART_BUFFER);
			xil_printf("\n\rCiphertext received.\n\r");
			plain_pointer=(uint8_t*) malloc(sizeof(uint8_t)*(File_size));
			cipher_pointer=(uint8_t*) malloc(sizeof(uint8_t)*(File_size));
			if(File_size>0){
				if(is_hex_string(UART_BUFFER)){
					Plain_is_hex=1;
				}else{
					xil_printf("\n\rInvalid input, please enter cipher text in hexadecimal without spaces\n\r");
					continue;
				}
				if(File_size%BYTES_TO_ENCRYPT){
					xil_printf("\n\rInvalid input, please enter Input cipher with length multiple of 16\n\r");
					continue;
				}
				for(int i=0;i<File_size;i+=(BYTES_TO_ENCRYPT*2)){
					hexstring_to_bytes(&UART_BUFFER[i],&cipher_pointer[i/2]);
				}
				File_size=File_size/2;
				for(int i=0;i<BYTES_TO_ENCRYPT;i++){
					plaintext[BYTES_TO_ENCRYPT-i-1]=cipher_pointer[i];
				}
				encrypted_bytes += BYTES_TO_ENCRYPT;
				XTime_SetTime(dec_elapsed_time);
				decrypt(plaintext,key);
				while(encrypted_bytes < File_size){}
				padding_num=plain_pointer[File_size-1];
				print_buffers(plain_pointer, key, cipher_pointer ,File_size,padding_num);
				free(plain_pointer);
				free(cipher_pointer);
			}

		}else{
			xil_printf("\n\rInvalid input, exiting......\n\r");
			break;
		}
	}


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
