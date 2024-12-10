#ifndef HELPER_FUNCTIONS_H
#define HELPER_FUNCTIONS_H

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>
#include <ctype.h>
#include "xil_printf.h"

#define REGISTER_NUMBER 4
#define BYTES_TO_ENCRYPT 16

char *print_error(const char *);

int is_hex_string(const char *);
void ascii_to_hex(const char *, char *);
char *hex_to_ascii(const char *);
void hexstring_to_bytes(const char *, uint8_t *);
void print_buffers(const uint8_t* , const uint8_t*, const uint8_t* ,int ,int);
void print_results(uint8_t[], uint8_t[], uint8_t[]);

#endif
