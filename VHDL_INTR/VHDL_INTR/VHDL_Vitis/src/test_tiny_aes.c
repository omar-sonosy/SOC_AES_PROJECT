//#include <stdio.h>
//#include <string.h>
//#include <stdint.h>
//#include "platform.h"
//#include "xbasic_types.h"
//#include "xparameters.h"
//#include "sleep.h"
//#include "xtime_l.h"
//#include <arm_neon.h>
//#include <xscugic.h>
//#include <stdbool.h>
//
//// Enable ECB, CTR and CBC mode. Note this can be done before including aes.h or at compile-time.
//// E.g. with GCC by using the -D flag: gcc -c aes.c -DCBC=0 -DCTR=1 -DECB=1
//#define CBC 0
//#define CTR 0
//#define ECB 1
//
//#define BYTES_TO_ENCRYPT 16
//
//#include "c_tiny_aes.h"
//
//static void phex(uint8_t *str);
//
//static int test_encrypt_ecb(void);
//static int test_decrypt_ecb(void);
//static void test_encrypt_ecb_verbose(void);
//
//void hex_to_bytes(const char *hex_string, uint8_t *bytes_arr)
//{
//    int j = 0;
//    for (int i = 0; i < BYTES_TO_ENCRYPT * 2; i += 2)
//    {
//        char temp_str[3] = {hex_string[i], hex_string[i + 1], '\0'};
//        bytes_arr[j++] = (uint8_t)strtol(temp_str, NULL, 16);
//    }
//}
//
//void print_res(uint8_t plaintext[], uint8_t key[], uint8_t ciphertext[])
//{
//    xil_printf("\r\nPlaintext: ");
//    for (int i = 0; i < BYTES_TO_ENCRYPT; i++)
//        xil_printf("%x ", plaintext[i]);
//
//    xil_printf("\n\rKey: ");
//    for (int i = 0; i < BYTES_TO_ENCRYPT; i++)
//        xil_printf("%x ", key[i]);
//
//    xil_printf("\n\rCiphertext: ");
//    for (int i = 0; i < BYTES_TO_ENCRYPT; i++)
//        xil_printf("%x ", ciphertext[i]);
//    xil_printf("\n\r");
//}
//
//int main(void)
//{
//    init_platform();
//    double total_time;
//    XTime enc_elapsed_time;
//    uint8_t key[16], plaintext[16];
//    uint8_t enc_in_out[16], ciphertext[16];
//
//    xil_printf("\nTesting AES128.\r\n\n");
//
//    char plaintext_hex[32] = "7468697369736D79706C61696E747878";
//   	char key_hex[32] = "6162636465666768696A6B6C6D6E6F70";
//
//   	hex_to_bytes(plaintext_hex, plaintext);
//   	hex_to_bytes(key_hex, key);
//
//    print("\n\rStart encryption.\r\n");
//
//    struct AES_ctx ctx;
//    AES_init_ctx(&ctx, key);
//
//    for(int i = 0; i < 16; i++)
//    	enc_in_out[i] = plaintext[i];
//
//	XTime_SetTime(enc_elapsed_time);
//	AES_ECB_encrypt(&ctx, enc_in_out);
//	XTime_GetTime(&enc_elapsed_time);
//
//	print_res(plaintext, key, enc_in_out);
//
//	total_time = 2000000.0 * enc_elapsed_time / XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ;
//	printf("Encryption in C takes %f ns.\r\n", total_time);
//
//	for(int i = 0; i < 16; i++)
//		ciphertext[i] = enc_in_out[i];
//
//	print("\n\rStart decryption.\r\n");
//
//	XTime_SetTime(enc_elapsed_time);
//	AES_ECB_decrypt(&ctx, enc_in_out);
//	XTime_GetTime(&enc_elapsed_time);
//
//	print_res(ciphertext, key, enc_in_out);
//
//	total_time = 2000000.0 * enc_elapsed_time / XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ;
//	printf("Decryption in C takes %f ns.\r\n", total_time);
//
//    cleanup_platform();
//	return 0;
//}
//
//// prints string as hex
//static void phex(uint8_t *str)
//{
//
//#if defined(AES256)
//    uint8_t len = 32;
//#elif defined(AES192)
//    uint8_t len = 24;
//#elif defined(AES128)
//    uint8_t len = 16;
//#endif
//
//    unsigned char i;
//    for (i = 0; i < len; ++i)
//        printf("%.2x", str[i]);
//    printf("\n");
//}
//
//static void test_encrypt_ecb_verbose(void)
//{
//    // Example of more verbose verification
//
//    uint8_t i;
//
//    // 128bit key
//    uint8_t key[16] = {(uint8_t)0x2b, (uint8_t)0x7e, (uint8_t)0x15, (uint8_t)0x16, (uint8_t)0x28, (uint8_t)0xae, (uint8_t)0xd2, (uint8_t)0xa6, (uint8_t)0xab, (uint8_t)0xf7, (uint8_t)0x15, (uint8_t)0x88, (uint8_t)0x09, (uint8_t)0xcf, (uint8_t)0x4f, (uint8_t)0x3c};
//    // 512bit text
//    uint8_t plain_text[64] = {(uint8_t)0x6b, (uint8_t)0xc1, (uint8_t)0xbe, (uint8_t)0xe2, (uint8_t)0x2e, (uint8_t)0x40, (uint8_t)0x9f, (uint8_t)0x96, (uint8_t)0xe9, (uint8_t)0x3d, (uint8_t)0x7e, (uint8_t)0x11, (uint8_t)0x73, (uint8_t)0x93, (uint8_t)0x17, (uint8_t)0x2a,
//                              (uint8_t)0xae, (uint8_t)0x2d, (uint8_t)0x8a, (uint8_t)0x57, (uint8_t)0x1e, (uint8_t)0x03, (uint8_t)0xac, (uint8_t)0x9c, (uint8_t)0x9e, (uint8_t)0xb7, (uint8_t)0x6f, (uint8_t)0xac, (uint8_t)0x45, (uint8_t)0xaf, (uint8_t)0x8e, (uint8_t)0x51,
//                              (uint8_t)0x30, (uint8_t)0xc8, (uint8_t)0x1c, (uint8_t)0x46, (uint8_t)0xa3, (uint8_t)0x5c, (uint8_t)0xe4, (uint8_t)0x11, (uint8_t)0xe5, (uint8_t)0xfb, (uint8_t)0xc1, (uint8_t)0x19, (uint8_t)0x1a, (uint8_t)0x0a, (uint8_t)0x52, (uint8_t)0xef,
//                              (uint8_t)0xf6, (uint8_t)0x9f, (uint8_t)0x24, (uint8_t)0x45, (uint8_t)0xdf, (uint8_t)0x4f, (uint8_t)0x9b, (uint8_t)0x17, (uint8_t)0xad, (uint8_t)0x2b, (uint8_t)0x41, (uint8_t)0x7b, (uint8_t)0xe6, (uint8_t)0x6c, (uint8_t)0x37, (uint8_t)0x10};
//
//    // print text to encrypt, key and IV
//    xil_printf("ECB encrypt verbose:\n\n");
//    xil_printf("plain text:\n");
//    for (i = (uint8_t)0; i < (uint8_t)4; ++i)
//    {
//        phex(plain_text + i * (uint8_t)16);
//    }
//    xil_printf("\r\n");
//
//    xil_printf("key:\r\n");
//    phex(key);
//    xil_printf("\r\n");
//
//    // print the resulting cipher as 4 x 16 byte strings
//    xil_printf("ciphertext:\r\n");
//
//    struct AES_ctx ctx;
//    AES_init_ctx(&ctx, key);
//
//    for (i = 0; i < 4; ++i)
//    {
//        AES_ECB_encrypt(&ctx, plain_text + (i * 16));
//        phex(plain_text + (i * 16));
//    }
//    xil_printf("\r\n");
//}
//
//static int test_encrypt_ecb(void)
//{
//#if defined(AES256)
//    uint8_t key[] = {0x60, 0x3d, 0xeb, 0x10, 0x15, 0xca, 0x71, 0xbe, 0x2b, 0x73, 0xae, 0xf0, 0x85, 0x7d, 0x77, 0x81,
//                     0x1f, 0x35, 0x2c, 0x07, 0x3b, 0x61, 0x08, 0xd7, 0x2d, 0x98, 0x10, 0xa3, 0x09, 0x14, 0xdf, 0xf4};
//    uint8_t out[] = {0xf3, 0xee, 0xd1, 0xbd, 0xb5, 0xd2, 0xa0, 0x3c, 0x06, 0x4b, 0x5a, 0x7e, 0x3d, 0xb1, 0x81, 0xf8};
//#elif defined(AES192)
//    uint8_t key[] = {0x8e, 0x73, 0xb0, 0xf7, 0xda, 0x0e, 0x64, 0x52, 0xc8, 0x10, 0xf3, 0x2b, 0x80, 0x90, 0x79, 0xe5,
//                     0x62, 0xf8, 0xea, 0xd2, 0x52, 0x2c, 0x6b, 0x7b};
//    uint8_t out[] = {0xbd, 0x33, 0x4f, 0x1d, 0x6e, 0x45, 0xf2, 0x5f, 0xf7, 0x12, 0xa2, 0x14, 0x57, 0x1f, 0xa5, 0xcc};
//#elif defined(AES128)
//    uint8_t key[] = {0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6, 0xab, 0xf7, 0x15, 0x88, 0x09, 0xcf, 0x4f, 0x3c};
//    uint8_t out[] = {0x3a, 0xd7, 0x7b, 0xb4, 0x0d, 0x7a, 0x36, 0x60, 0xa8, 0x9e, 0xca, 0xf3, 0x24, 0x66, 0xef, 0x97};
//#endif
//
//    uint8_t in[] = {0x6b, 0xc1, 0xbe, 0xe2, 0x2e, 0x40, 0x9f, 0x96, 0xe9, 0x3d, 0x7e, 0x11, 0x73, 0x93, 0x17, 0x2a};
//    struct AES_ctx ctx;
//
//    AES_init_ctx(&ctx, key);
//    AES_ECB_encrypt(&ctx, in);
//
//    xil_printf("ECB encrypt: ");
//
//    if (0 == memcmp((char *)out, (char *)in, 16))
//    {
//        printf("SUCCESS!\n");
//        return (0);
//    }
//    else
//    {
//        printf("FAILURE!\n");
//        return (1);
//    }
//}
//
//static int test_decrypt_ecb(void)
//{
//#if defined(AES256)
//    uint8_t key[] = {0x60, 0x3d, 0xeb, 0x10, 0x15, 0xca, 0x71, 0xbe, 0x2b, 0x73, 0xae, 0xf0, 0x85, 0x7d, 0x77, 0x81,
//                     0x1f, 0x35, 0x2c, 0x07, 0x3b, 0x61, 0x08, 0xd7, 0x2d, 0x98, 0x10, 0xa3, 0x09, 0x14, 0xdf, 0xf4};
//    uint8_t in[] = {0xf3, 0xee, 0xd1, 0xbd, 0xb5, 0xd2, 0xa0, 0x3c, 0x06, 0x4b, 0x5a, 0x7e, 0x3d, 0xb1, 0x81, 0xf8};
//#elif defined(AES192)
//    uint8_t key[] = {0x8e, 0x73, 0xb0, 0xf7, 0xda, 0x0e, 0x64, 0x52, 0xc8, 0x10, 0xf3, 0x2b, 0x80, 0x90, 0x79, 0xe5,
//                     0x62, 0xf8, 0xea, 0xd2, 0x52, 0x2c, 0x6b, 0x7b};
//    uint8_t in[] = {0xbd, 0x33, 0x4f, 0x1d, 0x6e, 0x45, 0xf2, 0x5f, 0xf7, 0x12, 0xa2, 0x14, 0x57, 0x1f, 0xa5, 0xcc};
//#elif defined(AES128)
//    uint8_t key[] = {0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6, 0xab, 0xf7, 0x15, 0x88, 0x09, 0xcf, 0x4f, 0x3c};
//    uint8_t in[] = {0x3a, 0xd7, 0x7b, 0xb4, 0x0d, 0x7a, 0x36, 0x60, 0xa8, 0x9e, 0xca, 0xf3, 0x24, 0x66, 0xef, 0x97};
//#endif
//
//    uint8_t out[] = {0x6b, 0xc1, 0xbe, 0xe2, 0x2e, 0x40, 0x9f, 0x96, 0xe9, 0x3d, 0x7e, 0x11, 0x73, 0x93, 0x17, 0x2a};
//    struct AES_ctx ctx;
//
//    AES_init_ctx(&ctx, key);
//    AES_ECB_decrypt(&ctx, in);
//
//    printf("ECB decrypt: ");
//
//    if (0 == memcmp((char *)out, (char *)in, 16))
//    {
//        printf("SUCCESS!\n");
//        return (0);
//    }
//    else
//    {
//        printf("FAILURE!\n");
//        return (1);
//    }
//}
