/*
  PC Scan Code to Dragon Beta Column/Row translation table.

  Encoded as follows, 
  Each record consists of 2 bytes :-
 
  1) The HID scan code to check for, from hid.h
  2) The target machine key it represents, from constant table (scancode.h).

  This table should ONLY contain mappings for which there is a valid
  output key.

  Working out this table took far too long !!!!
*/

#include "tusb.h"
#include "scancode.h"

const uint8_t ScancodeTableDragonBeta[] = 
{
// HID Scancode				Keycode
HID_KEY_A,			BETA_KEY_A,
HID_KEY_B,			BETA_KEY_B,
HID_KEY_C,			BETA_KEY_C,
HID_KEY_D,			BETA_KEY_D,
HID_KEY_E,			BETA_KEY_E,
HID_KEY_F,			BETA_KEY_F,
HID_KEY_G,			BETA_KEY_G,
HID_KEY_H,			BETA_KEY_H,
HID_KEY_I,			BETA_KEY_I,
HID_KEY_J,			BETA_KEY_J,
HID_KEY_K,			BETA_KEY_K,
HID_KEY_L,			BETA_KEY_L,
HID_KEY_M,			BETA_KEY_M,
HID_KEY_N,			BETA_KEY_N,
HID_KEY_O,			BETA_KEY_O,
HID_KEY_P,			BETA_KEY_P,
HID_KEY_Q,			BETA_KEY_Q,
HID_KEY_R,			BETA_KEY_R,
HID_KEY_S,			BETA_KEY_S,
HID_KEY_T,			BETA_KEY_T,
HID_KEY_U,			BETA_KEY_U,
HID_KEY_V,			BETA_KEY_V,
HID_KEY_W,			BETA_KEY_W,
HID_KEY_X,			BETA_KEY_X,
HID_KEY_Y,			BETA_KEY_Y,
HID_KEY_Z,			BETA_KEY_Z,
HID_KEY_0,			BETA_KEY_0,
HID_KEY_1,			BETA_KEY_1,
HID_KEY_2,			BETA_KEY_2,
HID_KEY_3,			BETA_KEY_3,
HID_KEY_4,			BETA_KEY_4,
HID_KEY_5,			BETA_KEY_5,
HID_KEY_6,			BETA_KEY_6,
HID_KEY_7,			BETA_KEY_7,
HID_KEY_8,			BETA_KEY_8,
HID_KEY_9,			BETA_KEY_9,

// Keypad
HID_KEY_KEYPAD_0,			BETA_KEY_KP0,
HID_KEY_KEYPAD_1,			BETA_KEY_KP1,
HID_KEY_KEYPAD_2,			BETA_KEY_KP2,
HID_KEY_KEYPAD_3,			BETA_KEY_KP3,
HID_KEY_KEYPAD_4,			BETA_KEY_KP4,
HID_KEY_KEYPAD_5,			BETA_KEY_KP5,
HID_KEY_KEYPAD_6,			BETA_KEY_KP6,
HID_KEY_KEYPAD_7,			BETA_KEY_KP7,
HID_KEY_KEYPAD_8,			BETA_KEY_KP8,
HID_KEY_KEYPAD_9,			BETA_KEY_KP9,
HID_KEY_KEYPAD_MULTIPLY,	BETA_KEY_KPSTAR,
HID_KEY_KEYPAD_SUBTRACT,	BETA_KEY_KPHASH,
HID_KEY_KEYPAD_DECIMAL,		BETA_KEY_KPPOINT,

HID_KEY_SPACE,		        BETA_KEY_SPACE,
HID_KEY_PERIOD,		        BETA_KEY_POINT,
HID_KEY_COMMA,		        BETA_KEY_COMMA,
HID_KEY_SLASH,		        BETA_KEY_SLASH,
HID_KEY_SEMICOLON,	        BETA_KEY_SEMICOLON,
HID_KEY_BRACKET_RIGHT,		BETA_KEY_RSQBRACK,
HID_KEY_BRACKET_LEFT,		BETA_KEY_LSQBRACK,
HID_KEY_APOSTROPHE,		    BETA_KEY_AT,
HID_KEY_EUROPE_2,		    BETA_KEY_BSLASH,
HID_KEY_MINUS,		        BETA_KEY_MINUS,
HID_KEY_EQUAL,		        BETA_KEY_COLON,
HID_KEY_EUROPE_1,           BETA_KEY_CLARET,
//HID_KEY_TILDE,		    BETA_KEY_CLARET,

HID_KEY_BACKSPACE,	BETA_KEY_DELETE,

// USB handles these differently!
#if 0
HID_KEY_LSHIFT,		BETA_KEY_SHIFT,
HID_KEY_LALT,			BETA_KEY_FUNC,
HID_KEY_RSHIFT,		BETA_KEY_SHIFT,
HID_KEY_ESCAPE,		HID_KEY_LGUI,			BETA_KEY_SHIFT,

HID_KEY_LCTRL,		BETA_KEY_CTRL,
HID_KEY_ESCAPE,		HID_KEY_RCTRL,		BETA_KEY_CTRL,
#endif 

HID_KEY_ENTER,		        BETA_KEY_ENTER,
HID_KEY_KEYPAD_ENTER,		BETA_KEY_ENTER,

HID_KEY_ESCAPE,		        BETA_KEY_BREAK,
HID_KEY_PAUSE,		        BETA_KEY_BREAK,

HID_KEY_CAPS_LOCK,		    BETA_KEY_CAPS,
HID_KEY_TAB,			    BETA_KEY_TAB,
HID_KEY_INSERT,		        BETA_KEY_CLEAR,

KEY_TERMINATE, 	            KEY_TERMINATE
};


/*
  The shift key table, this has the same format as the above standard 
  key table, however when one of these keys is pressed, the output shift 
  key will also be pressed before the key, and released after the key.
	
  This allows as single PC key to translate to a SHIFT-KEY combination 
  on the output matrix. 
  
  A similar method could be used for other modifier keys.
*/

const uint8_t ScancodeShiftTableDragonBeta[] = 
{
// Prefix code			Scancode				Keycode

KEY_TERMINATE, 	            KEY_TERMINATE
};

const uint8_t ModifierTableDragonBeta[] = 
{
// HID modifier bitmask		        Keycode

KEYBOARD_MODIFIER_LEFTSHIFT |
KEYBOARD_MODIFIER_RIGHTSHIFT |
KEYBOARD_MODIFIER_LEFTGUI,			BETA_KEY_SHIFT,

KEYBOARD_MODIFIER_LEFTALT,			BETA_KEY_FUNC,

KEYBOARD_MODIFIER_LEFTCTRL |
KEYBOARD_MODIFIER_RIGHTCTRL,		BETA_KEY_CTRL,

KEY_TERMINATE, 	                    KEY_TERMINATE
};

#if 0
void ScancodeInit(matrix_t *ToInit)
{
	log0("ScancodeInit()\n");

	ToInit->ScancodeTable=(ptable_t)&ScancodeTableDragonBeta;
	ToInit->ScancodeShiftTable=(ptable_t)&ScancodeShiftTableDragonBeta;
	ToInit->matrix_shift=BETA_KEY_SHIFT;
	
	ToInit->matrix_reset=RESET_KEY;
}
#endif