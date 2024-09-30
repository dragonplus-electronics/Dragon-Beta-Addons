/*
    Dragon Beta Keyboard emulation implementation.

    2022-08-25, Phill Harvey-Smith.
*/

#include <stdio.h>
#include "pico.h"
#include "beta_common.h"
#include "beta_mouse.h"
#include "dragon_beta/scancode.h"
#include "hardware/gpio.h"
#include "hardware/irq.h"
#include "pico/stdlib.h"

#if DEVEL
#define MSNOW "Devel: compiled at " __TIME__ " on " __DATE__
#else
#define MSNOW "Release: compiled at " __TIME__ " on " __DATE__
#endif

#define VERBOSE         0
#define ENABLE_DEBUG    1

#define QUAD_DELAY	80

static const uint8_t MOUSE_XYA[4] = { 0, 0, 1, 1 };
static const uint8_t MOUSE_XYB[4] = { 0, 1, 1, 0 };

volatile uint8_t	xpos;
volatile uint8_t	ypos;

// Initialize, setup output pins.
void Beta_MouseInit(void)
{
    printf("Beta_MouseInit: %s\n",MSNOW);

    // onboard LED, output pin
    gpio_init(LED_PIN);
    gpio_set_dir(LED_PIN,true);
    LEDOn();

    // set all I/O to be outputs.
    gpio_init_mask(MOUSE_MASK);
    gpio_set_dir_masked(MOUSE_MASK,MOUSE_MASK);

#if (VERBOSE == 1)
    printf("MOUSE_BUTTON_MASK=%08X\n",MOUSE_BUTTON_MASK);
    printf("MOUSE_X_MASK=%08X\n",MOUSE_X_MASK);
    printf("MOUSE_Y_MASK=%08X\n",MOUSE_Y_MASK);
    printf("MOUSE_MASK=%08X\n",MOUSE_MASK);
#endif
    xpos = 0;
    ypos = 0;
}

// Output a pair of quadrature signals, which must be connected to the
// same port.
uint8_t quad_output(int8_t	steps,		// Number of cycles, can be -ve
				    uint8_t	qa,			// GPIO no of quad line a
				    uint8_t	qb,			// GPIO no of quad line b
				    uint8_t	pos)		// current position 		
{
	uint8_t	dir 	    = (steps > 0);	// set dir depending on sign of steps
	uint32_t portval    = 0;
    uint32_t qa_mask    = (1 << qa);
    uint32_t qb_mask    = (1 << qb);
	
#if (VERBOSE == 1)
	printf("QO: %d, %d, %d, %d\n",steps,qa,qb,pos);
#endif
	while(steps != 0)
	{
		// We operate on a temp variable so that both bits change together.
        // This helps to prevent glitches of the mouse inputs
	        
		// Set each line
		if (MOUSE_XYA[pos])
			portval |= qa_mask;
		else
			portval &= ~qa_mask;

		if (MOUSE_XYB[pos])
			portval |= qb_mask;
		else
			portval &= ~qb_mask;
			
		// Output bits
		gpio_put_masked((qa_mask | qb_mask),portval);
						
		// move to next position dependent on direction
		pos = dir ? (pos+1) : (pos-1);
		pos	%= 4;
			
		// Delay a little whle
        busy_wait_us(QUAD_DELAY);
        LEDToggle();

		// Decrement or increment steps dependent on direction
		steps = dir ? (steps-1) : (steps+1);
	}

	return pos;
}


// Act on a mosue packet from USB.
void Beta_MouseChange(hid_mouse_report_t const *report)
{
#if (VERBOSE == 1)
    printf("Buttons      : %02X\n",report->buttons);
    printf("X offset     : %d\n",report->x);
    printf("Y offset     : %d\n",report->y);
    printf("Wheel offset : %d\n",report->wheel);
    printf("Pan offset   : %d\n",report->pan);
#endif

    // translate mouse buttons directly
    (report->buttons & MOUSE_BUTTON_LEFT) ? LDown() : LUp();
    (report->buttons & MOUSE_BUTTON_RIGHT) ? RDown() : RUp();
    (report->buttons & MOUSE_BUTTON_MIDDLE) ? MDown() : MUp();

    xpos=quad_output(report->x,XA_DIR,XB_DIR,xpos);
    ypos=quad_output(report->y,YA_DIR,YB_DIR,ypos);
}

void Beta_MouseTask(void)
{
#if (ENABLE_DEBUG == 1)
    char    Key;
    
    Key=getchar_timeout_us(0);

    switch (Key)
    {
        case '1'    :   xpos=quad_output(10,XA_DIR,XB_DIR,xpos);
                        break;

        case '2'    :   xpos=quad_output(-10,XA_DIR,XB_DIR,xpos);
                        break;

        case '3'    :   ypos=quad_output(10,YA_DIR,YB_DIR,xpos);
                        break;

        case '4'    :   ypos=quad_output(-10,YA_DIR,YB_DIR,xpos);
                        break;
    }
#endif
}