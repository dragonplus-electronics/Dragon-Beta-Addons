/*
    Dragon Beta Mouse emulation implementation.

    2022-09-18, Phill Harvey-Smith.
*/

#include "bsp/board.h"
#include "tusb.h"

#ifndef __BETA_MOUSE__
#define __BETA_MOUSE__

//I/O Pins
// Note, Dragon Beta does not have a middle button, but including the code for it
// Makes it more usable for future projects.

#define PCB         1

#if (PCB == 1)
// Reasigned to make routing easier.....
#define MIDDLE_BTN  6       // N/C on Beta
#define RIGHT_BTN   7       // Black
#define XB_DIR      8       // White
#define YA_DIR      9       // Grey
#define LEFT_BTN    10      // Blue
#define YB_DIR      11      // Green
#define XA_DIR      12      // Yellow
#else
#define MIDDLE_BTN  6
#define RIGHT_BTN   7
#define LEFT_BTN    8
#define YB_DIR      9
#define YA_DIR      10
#define XB_DIR      11
#define XA_DIR      12
#endif

#define FIRST_IO    MIDDLE_BTN
#define LAST_IO     XA_DIR 

#define MOUSE_BUTTON_MASK   (1 << MIDDLE_BTN ) | (1 << RIGHT_BTN) | (1 << LEFT_BTN)
#define MOUSE_X_MASK        (1 << XA_DIR) | (1 << XB_DIR)
#define MOUSE_Y_MASK        (1 << YA_DIR) | (1 << YB_DIR)
#define MOUSE_MASK          MOUSE_BUTTON_MASK | MOUSE_X_MASK | MOUSE_Y_MASK

// This may seem trivial, but by defining these here, we can change the sense
// of up/down, by changing these and not have to change throughout the code!
#define UP      false
#define DOWN    true

#define LUp()   gpio_put(LEFT_BTN,UP)
#define LDown() gpio_put(LEFT_BTN,DOWN)

#define RUp()   gpio_put(RIGHT_BTN,UP)
#define RDown() gpio_put(RIGHT_BTN,DOWN)

#define MUp()   gpio_put(MIDDLE_BTN,UP)
#define MDown() gpio_put(MIDDLE_BTN,DOWN)


// Initialize, setup output pins.
void Beta_MouseInit(void);

// Act on a mosue packet from USB.
void Beta_MouseChange(hid_mouse_report_t const *report);

// called from main program loop.
void Beta_MouseTask(void);


#endif
