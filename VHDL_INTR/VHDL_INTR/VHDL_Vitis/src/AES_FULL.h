#ifndef AES_FULL_H
#define AES_FULL_H

//Includes
#include "platform.h"
#include "xbasic_types.h"
#include "xparameters.h"
#include "sleep.h"
#include "xtime_l.h"
#include <arm_neon.h>
#include <xscugic.h>
#include <stdbool.h>
#include "helper_functions.h"



//Helping Macros:
#define SET_BIT(REG, BIT_NUM) (*REG = (*REG | (1 << (BIT_NUM))))
#define CLEAR_BIT(REG, BIT_NUM) (*REG = (*REG & ~(1 << (BIT_NUM))))
#define CHECK_BIT(REG, BIT_NUM) ((*REG) & (1 << (BIT_NUM)))


// Definitions of Interrupts IDs
#define ENC_INTR_ID 61U
#define DEC_INTR_ID 62U

// Static Configurations:
//#define BYTES_TO_ENCRYPT 16
#define PRINT_ENC true
#define PRINT_DEC false


// extern for the global variables that are common with other files
extern uint8_t plaintext[BYTES_TO_ENCRYPT], key[BYTES_TO_ENCRYPT];
extern uint8_t enc_ciphertext[BYTES_TO_ENCRYPT], dec_plaintext[BYTES_TO_ENCRYPT];
extern volatile XTime enc_elapsed_time;
extern volatile XTime dec_elapsed_time;
extern int File_size;
extern volatile int encrypted_bytes;
extern 	int Plain_is_hex;
extern uint8_t* plain_pointer;
extern uint8_t* cipher_pointer;

// Prototypes of functions
void print_registers(bool ENC_DEC);
void encrypt(uint8_t *plaintext, uint8_t *key);
void decrypt(uint8_t *plaintext, uint8_t *key);
void interrupts_init(void);


#endif


