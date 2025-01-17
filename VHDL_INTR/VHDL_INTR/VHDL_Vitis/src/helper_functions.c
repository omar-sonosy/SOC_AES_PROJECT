#include "helper_functions.h"

char *print_error(const char *msg)
{
    print(msg);
    return NULL;
}

void hexstring_to_bytes(const char *hex_string, uint8_t *bytes_arr)
{
    int j = 0;
    for (int i = 0; i < BYTES_TO_ENCRYPT * 2; i += 2)
    {
        char temp_str[3] = {hex_string[i], hex_string[i + 1], '\0'};
        bytes_arr[j++] = (uint8_t)strtol(temp_str, NULL, 16);
    }
}

void ascii_to_hex(const char *text_string, char *hex_string)
{
    while (*text_string)
    {
        sprintf(hex_string, "%02x", (unsigned char)*text_string);
        hex_string += 2;
        text_string++;
    }
}

char *hex_to_ascii(const char *hex_string)
{
    int len = strlen(hex_string), j = 0;
    char *ascii_str = (char *)malloc(len / 2 + 1);

    for (int i = 0; i < len; i += 2)
    {
        if (isspace(hex_string[i]))
        {
            i--; // Skip spaces
            continue;
        }
        char byte[3] = {hex_string[i], hex_string[i + 1], '\0'};
        ascii_str[j++] = (char)strtol(byte, NULL, 16);
    }
    ascii_str[j] = '\0';
    return ascii_str;
}

/**
 * @return int
 *         - 0: Indicates the content is readable text (ASCII).
 *         - 1: Indicates the content is a valid hexadecimal string.
 */
int is_hex_string(const char *str)
{
    if (str == NULL || str[0] == '\0')
        return 0;

    if (isxdigit(str[0]))
    {
        for (int i = 1; str[i] != '\0'; i++)
            if (!isxdigit(str[i]) && !isspace(str[i]))
                return 0;
        return 1;
    }

    return 0;
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

void print_buffers(const uint8_t*  plain_buffer, const uint8_t* key, const uint8_t* cipher_buffer, int file_size, int padding){
	xil_printf("\r\nPlaintext: ");
	for (int i = 0; i < file_size-padding; i++)
		xil_printf("%c", plain_buffer[i]);

	xil_printf("\n\rKey: ");
	for (int i = BYTES_TO_ENCRYPT - 1; i >= 0; i--)
		xil_printf("%02x", key[i]);

	xil_printf("\n\rCiphertext: ");
	for (int i = 0; i < file_size; i++){
		xil_printf("%02x", cipher_buffer[i]);
	}xil_printf("\n\r");
}
