
#include "AES_FULL.h"



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
