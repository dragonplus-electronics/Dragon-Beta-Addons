/*
    Dragon Beta Keyboard emulation implementation.

    2022-08-25, Phill Harvey-Smith.
*/
#include "hardware/gpio.h"

#ifndef __BETA_KBD__
#define __BETA_KBD__

#define MATRIX_ROWS 10
#define ROW_MASK    0x03FF

//I/O Pins

#define OCDI        10
#define INPUT_LOAD  11
#define DATA_OUT    12
#define ANY_KEY     13

#define INPUT_LOAD_MASK     (1 << INPUT_LOAD)
#define OCDI_MASK           (1 << OCDI)

typedef struct  {
    bool    ParalellSerial;         // If true then parallel load, else serial shift on clock.
    uint8_t Buffer;
    uint8_t Shifter;                // shift data
} shifter_t;



// Initialize, setup input keys & interrupts.
void Beta_KeyInit(void);

// Act on a keypress from the real keyboard, Key pressed if UpDown is true, released if false.
void Beta_KeyUD(uint8_t Key,
                bool    UpDown);

// Deal with modifier keys, shifts, ctrl, alt etc
void Beta_KeyModifiers(uint8_t  Shifts);

// Callback called at the end of processing of a keyboard report
void KeyDoneCallback(void);

// Called from main loop, must not block!
void Beta_KeyTask(void);

void NewKeybaordIRQ(void);

void NewKeybaordInLdIRQ(void);
void NewKeybaordOCDIIRQ(void);

void KeyboardIRQ(uint       PinNo, 
                 uint32_t   Events);

#endif
