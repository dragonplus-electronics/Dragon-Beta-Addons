/*
 Scancode table for the Dragon Beta keyboard interface. 

 The Dragon Beta keyboard data is then output to a Zarlink MT8816 8x16 
 crosspoint switch.

 The output of the crosspoint switch is connected to the matrix 
 inputs of the target computer. 
 
 As the Dragon Beta's matrix is 7x10, we use 10 of the rows and 7 columns.

From the source of the screen driver.
 
	Col: 0    1     2     3     4     5    6	
0	FCB	$00  ,$00  ,$0C  ,'8'  ,$00  ,$FF  ,$1B		Specials
1	FCB	'b'  ,'j'  ,'i'  ,'9'  ,'u'  ,'h'  ,'7'
2	FCB	'n'  ,'k'  ,'o'  ,'0'  ,'y'  ,'g'  ,'6'
3	FCB	'm'  ,'l'  ,'p'  ,'-'  ,'t'  ,'f'  ,'5'
4	FCB	','  ,';'  ,'@'  ,'^'  ,'v'  ,'d'  ,'4'
5	FCB	'.'  ,':'  ,'\'  ,'['  ,'r'  ,'s'  ,'3'
6	FCB	'/'  ,$0D  ,$08  ,']'  ,'c'  ,'x'  ,$20
7	FCB	'*'+N,'7'+N,'4'+N,'1'+N,'e'  ,'z'  ,'2'
8	FCB	'0'+N,'8'+N,'5'+N,'2'+N,'w'  ,'a'  ,'1'
9	FCB	'#'+N,'9'+N,'6'+N,'3'+N,'q'  ,$09  ,'.'+N

For the following key definition constants, the high nibble and 0x70 represent the 
ROW of the pressed key, and the low nibble represents the COLUMN. Bit 7 is ignored, 
as this is used by the matrix handling code to flag a key pressed or released.
*/

#ifndef __SCANCODES__
#define __SCANCODES__

extern const uint8_t ScancodeTableDragonBeta[];
extern const uint8_t ModifierTableDragonBeta[];


#include <inttypes.h>
//#include "ps2scancode.h"
//#include "matrix_kbd.h"

#define KEY_TERMINATE       0x00

#define BETA_KEY_AT			0x24
#define BETA_KEY_A			0x58
#define BETA_KEY_B			0x01
#define BETA_KEY_C			0x46
#define BETA_KEY_D			0x54
#define BETA_KEY_E			0x47
#define BETA_KEY_F			0x53
#define BETA_KEY_G			0x52

#define BETA_KEY_H			0x51
#define BETA_KEY_I			0x21
#define BETA_KEY_J			0x11
#define BETA_KEY_K			0x12
#define BETA_KEY_L			0x13
#define BETA_KEY_M			0x03
#define BETA_KEY_N			0x02
#define BETA_KEY_O			0x22

#define BETA_KEY_P			0x23
#define BETA_KEY_Q			0x49
#define BETA_KEY_R			0x45
#define BETA_KEY_S			0x55
#define BETA_KEY_T			0x43
#define BETA_KEY_U			0x41
#define BETA_KEY_V			0x44
#define BETA_KEY_W			0x48

#define BETA_KEY_X			0x56
#define BETA_KEY_Y			0x42
#define BETA_KEY_Z			0x57

//#define BETA_KEY_UP			0x53
//#define BETA_KEY_DOWN		0x54
//#define BETA_KEY_LEFT		0x55
//#define BETA_KEY_RIGHT		0x56

#define BETA_KEY_SPACE		0x66

#define BETA_KEY_ENTER		0x16
#define BETA_KEY_CLEAR		0x20
#define BETA_KEY_BREAK		0x60

#define BETA_KEY_FUNC		0x20
#define BETA_KEY_CTRL		0x40
#define BETA_KEY_SHIFT		0x00

#define BETA_KEY_CAPS		0x50

#define BETA_KEY_0			0x32
#define BETA_KEY_1			0x68
#define BETA_KEY_2			0x67
#define BETA_KEY_3			0x65
#define BETA_KEY_4			0x64
#define BETA_KEY_5			0x63
#define BETA_KEY_6			0x62
#define BETA_KEY_7			0x61
#define BETA_KEY_8			0x30
#define BETA_KEY_9			0x31

#define BETA_KEY_KP0		0x08
#define BETA_KEY_KP1		0x37
#define BETA_KEY_KP2		0x38
#define BETA_KEY_KP3		0x39
#define BETA_KEY_KP4		0x27
#define BETA_KEY_KP5		0x28
#define BETA_KEY_KP6		0x29
#define BETA_KEY_KP7		0x17
#define BETA_KEY_KP8		0x18
#define BETA_KEY_KP9		0x19

#define BETA_KEY_KPHASH		0x09
#define BETA_KEY_KPSTAR		0x07
#define BETA_KEY_KPPOINT	0x69

#define BETA_KEY_COMMA		0x04
#define BETA_KEY_POINT		0x05
#define BETA_KEY_SLASH		0x06

#define BETA_KEY_SEMICOLON	0x14
#define BETA_KEY_COLON		0x15

#define BETA_KEY_MINUS		0x33
#define BETA_KEY_CLARET		0x34
#define BETA_KEY_LSQBRACK	0x35
#define BETA_KEY_RSQBRACK	0x36

#define BETA_KEY_DELETE		0x26

#define BETA_KEY_BSLASH		0x25
#define BETA_KEY_TAB		0x59

#define RESET_KEY			0xFF

//void ScancodeInit(matrix_t *ToInit);
#endif