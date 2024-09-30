/* 
 * The MIT License (MIT)
 *
 * Copyright (c) 2019 Ha Thach (tinyusb.org)
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "pico/stdlib.h"
#include "bsp/board.h"
#include "tusb.h"
#include "hardware/vreg.h"

#if DEVEL
#define NOW "Devel: compiled at " __TIME__ " on " __DATE__
#else
#define NOW "Release: compiled at " __TIME__ " on " __DATE__
#endif

#if defined KEYBOARD
#include "beta_keyboard.h"

#define FREQ            200000
#define SIGNON          "DragonBeta PicoKeyboard"
#define AppInit()       Beta_KeyInit()
#define AppCallBack()   Beta_KeyTask()
#elif defined MOUSE
#include "beta_mouse.h"

#define FREQ            125000
#define SIGNON          "DragonBeta PicoMouse"
#define AppInit()       Beta_MouseInit()
#define AppCallBack()   Beta_MouseTask()
#else
#define FREQ            125000
#define SIGNON          ""
#define AppInit()       
#define AppCallBack()   
#endif

#ifndef FREQ 
#define FREQ        125000
#endif

//--------------------------------------------------------------------+
// MACRO CONSTANT TYPEDEF PROTYPES
//--------------------------------------------------------------------+

extern void cdc_task(void);
extern void hid_app_task(void);

/*------------- MAIN -------------*/
int main(void)
{
    /* Initialize clocks */
    uint sys_freq = FREQ;
    
    if (sys_freq > 250000)
    {
        vreg_set_voltage(VREG_VOLTAGE_1_25);
    }
    set_sys_clock_khz(sys_freq, true);

    board_init();

    printf("%s %s\r\n",SIGNON,NOW); 
    printf("Clock Freq:%dMHz\n",sys_freq/1000);

    tusb_init();
    AppInit();

    while (1)
    {
        // tinyusb host task
        tuh_task();
        hid_app_task();
        AppCallBack();
    }

    return 0;
}



//--------------------------------------------------------------------+
// TinyUSB Callbacks
//--------------------------------------------------------------------+
