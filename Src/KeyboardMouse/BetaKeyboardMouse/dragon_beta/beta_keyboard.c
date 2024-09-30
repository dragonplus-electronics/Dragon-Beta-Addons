/*
    Dragon Beta Keyboard emulation implementation.

    2022-08-25, Phill Harvey-Smith.
*/

#include <stdio.h>
#include <string.h>
#include "pico.h"
#include "beta_common.h"
#include "beta_keyboard.h"
#include "dragon_beta/scancode.h"
#include "hardware/gpio.h"
#include "hardware/irq.h"
#include "pico/stdlib.h"
#include "binutil.h"
//#include "testpins.h"

#if DEVEL
#define KBDNOW "Devel: compiled at " __TIME__ " on " __DATE__
#else
#define KBDNOW "Release: compiled at " __TIME__ " on " __DATE__
#endif

#define DEBUG_MATRIX    0

// Keyboard matrix bitmap, each bit represents a key, 1= pressed, 0 = released 
volatile uint8_t KeyMatrix[MATRIX_ROWS];

// Output shift register
volatile shifter_t  OutShift;

// Row(s) being read
volatile uint16_t   RowRead;

// Simulate the keyboard matrix, including multiple row selects. 
static inline uint8_t GetRow(void);

// check the matrix, dump to terminal
void check_matrix(void);

// Initialize, setup input keys & interrupts.
void Beta_KeyInit(void)
{
    printf("beta_keyboard: %s\n",KBDNOW);

    // Clear simulated matrix
    for(uint8_t Row=0; Row<MATRIX_ROWS; Row++)
        KeyMatrix[Row]=0x00;

    // Initialise simulated output shifter
    OutShift.ParalellSerial=false;
    OutShift.Shifter=0;
    OutShift.Buffer=0;

    // initialise row select mask to all rows selected.
    RowRead = ROW_MASK;

    // onboard LED, output pin
    gpio_init(LED_PIN);
    gpio_set_dir(LED_PIN,true);
    LEDOn();

    // Output clock data in, set to trigger IRQ on risging clock
    gpio_init(OCDI);
    gpio_set_dir(OCDI,false);
    gpio_pull_up(OCDI);
    gpio_set_irq_enabled(OCDI, GPIO_IRQ_EDGE_RISE, true);

    // Input load, trigger on rising & falling clock
    gpio_init(INPUT_LOAD);
    gpio_set_dir(INPUT_LOAD,false);
    gpio_pull_up(INPUT_LOAD);
    gpio_set_irq_enabled(INPUT_LOAD, GPIO_IRQ_EDGE_RISE | GPIO_IRQ_EDGE_FALL, true);

    // We use the raw interrupts because the response time is faster!
    //gpio_add_raw_irq_handler_masked(INPUT_LOAD_MASK, &NewKeybaordInLdIRQ);
    //gpio_add_raw_irq_handler_masked(OCDI_MASK, &NewKeybaordOCDIIRQ);
    gpio_add_raw_irq_handler_masked(INPUT_LOAD_MASK | OCDI_MASK, &NewKeybaordIRQ);
    
    irq_set_enabled(IO_IRQ_BANK0, true);

    // Data out from keyboard to beta
    gpio_init(DATA_OUT);
    gpio_set_dir(DATA_OUT, true);

    // Any key pressed
    gpio_init(ANY_KEY);
    gpio_set_dir(ANY_KEY, true);

    KeyDoneCallback();
}

// Change a key in the matrix, called by USB keycode decoders to translate to the Beta keymatrix.
void ChangeKey(uint8_t  BetaKey,
               bool     UpDown)
{
    uint8_t Row     = BetaKey & 0x0F;
    uint8_t Col     = (BetaKey & 0x70) >> 4;
    uint8_t Mask    = 0x01 << Col;

#if (DEBUG_MATRIX == 1)
    printf("ChangeKey(%02X,%d), R=%02X, C=%02X, M=%02X\n",BetaKey,UpDown,Row,Col,Mask);
#endif

    if (UpDown) 
        KeyMatrix[Row] |= Mask;
    else
        KeyMatrix[Row] &= ~Mask;    
}

#if (DEBUG_MATRIX == 1)
void DumpMatrix(void)
{
    for(uint8_t RowNo=0; RowNo<MATRIX_ROWS; RowNo++)
    {
        for(uint8_t RowMask=0x80; RowMask!=0; RowMask = RowMask >> 1)
        {
            if((KeyMatrix[RowNo] & RowMask)!=0)
                printf("1");
            else
                printf("0");
        }
        printf("\n");
    }
    printf("\n");
}
#endif

// Act on a keypress from the real keyboard, Key pressed if UpDown is true, released if false.
void Beta_KeyUD(uint8_t Key,
                bool    UpDown)
{
    bool            Handled = false;
    uint8_t         *Table  = (uint8_t *)ScancodeTableDragonBeta;
    uint8_t         HID     = Table[0];
    uint8_t         BetaKey = Table[1];
    uint16_t        Offset  = 2;

    // Handle normal keys
    while((HID != KEY_TERMINATE) & !Handled)
    {
        if (HID == Key) 
        {
            Handled=true;
            ChangeKey(BetaKey,UpDown);
        }    

        // move to next key
        HID     =   Table[Offset++];
        BetaKey =   Table[Offset++];
    };
  
#if (DEBUG_MATRIX == 1)
    DumpMatrix();

    if (UpDown)
        printf("Keydn:%02X\n",Key);
    else
        printf("Keyup:%02X\n",Key);
#endif
    LEDToggle();
}

void Beta_KeyModifiers(uint8_t  Shifts)
{
    uint8_t         *Table  = (uint8_t *)ModifierTableDragonBeta;
    uint8_t         HID     = Table[0];
    uint8_t         BetaKey = Table[1];
    uint16_t        Offset  = 2;
    static uint8_t  OldShifts = 0;

#if (DEBUG_MATRIX == 1)
    printf("Shifts=%02X, OldShifts=%02X\n",Shifts,OldShifts);
#endif

    if (Shifts != OldShifts)
    {
        while(HID != KEY_TERMINATE)
        {
            if ((Shifts & HID) != 0) 
                ChangeKey(BetaKey,true);
            else
                ChangeKey(BetaKey,false);

            // move to next key
            HID     =   Table[Offset++];
            BetaKey =   Table[Offset++];
        }

        OldShifts=Shifts;
    }
}

void KeyDoneCallback(void)
{
#if (DEBUG_MATRIX != 1)
    // call GetRow to make sure that ANY_KEY is set 
    GetRow();
#else
    uint8_t RowData;

    // call GetRow to make sure that ANY_KEY is set 
    RowData=GetRow();

    printf("Row=%02X RowRead=%04X RowRead(bin)=%s\n",RowData,RowRead,bin_word(RowRead));
#endif
}

void Beta_KeyTask(void)
{
    char    Key;
    
    Key=getchar_timeout_us(0);

    if((Key=='d') || (Key=='D'))
    {
        KeyDoneCallback();
    } 
    else if ((Key == 'm') || (Key == 'M'))
    {
        check_matrix();
    }

}

static inline uint8_t GetRow(void)
{
    uint16_t    RowMask = RowRead;
    uint8_t     RowData = 0;

    // This is longer but quicker, than doing it with a loop.
    RowData = ((RowMask & 0x0001) ? KeyMatrix[0] : 0) |
              ((RowMask & 0x0002) ? KeyMatrix[1] : 0) |
              ((RowMask & 0x0004) ? KeyMatrix[2] : 0) |
              ((RowMask & 0x0008) ? KeyMatrix[3] : 0) |
              ((RowMask & 0x0010) ? KeyMatrix[4] : 0) |
              ((RowMask & 0x0020) ? KeyMatrix[5] : 0) |
              ((RowMask & 0x0040) ? KeyMatrix[6] : 0) |
              ((RowMask & 0x0080) ? KeyMatrix[7] : 0) |
              ((RowMask & 0x0100) ? KeyMatrix[8] : 0) |
              ((RowMask & 0x0200) ? KeyMatrix[9] : 0) ;

    // Set anykey for this row.
    gpio_put(ANY_KEY,RowData);

    return RowData;
}

// Interrupt handler for INPUT_LOAD and OCDI
void __not_in_flash_func(NewKeybaordIRQ) (void)
{
    uint32_t Events = gpio_get_irq_event_mask(INPUT_LOAD);
    uint16_t ocdi   = gpio_get(OCDI) ? 0x00 : 0x01;      // Invert, as makes code easier.....

    if(Events & GPIO_IRQ_EDGE_FALL)
    {
        gpio_acknowledge_irq(INPUT_LOAD, GPIO_IRQ_EDGE_FALL);
        //OutShift.ParalellSerial = true;
        OutShift.Shifter=OutShift.Buffer;
    }
    else if(Events & GPIO_IRQ_EDGE_RISE)
    {
        gpio_acknowledge_irq(INPUT_LOAD, GPIO_IRQ_EDGE_RISE);
        //OutShift.ParalellSerial = false;

        RowRead = ((RowRead << 1) | ocdi) & ROW_MASK;
        //OutShift.Shifter=OutShift.Buffer;   
        //OutShift.Buffer = (ocdi << 7) | GetRow();       
        OutShift.Buffer = GetRow();
    } 

    Events=gpio_get_irq_event_mask(OCDI);

    if(Events & GPIO_IRQ_EDGE_RISE)
    {
        gpio_acknowledge_irq(OCDI, GPIO_IRQ_EDGE_RISE);

        // Only act if in shift mode
        //if (!OutShift.ParalellSerial)
        {
            OutShift.Shifter = (OutShift.Shifter << 1) | 0x01;

            // We don't invert because though the real circuit has an inverter after shifter.
            // It also uses a 0 for a keypressed and 1 for released, since our matrix is
            // reversed the two cancel out! 
            gpio_put(DATA_OUT, (OutShift.Shifter & 0x80));
        }
    }
}

#if 0
void __not_in_flash_func(NewKeybaordInLdIRQ) (void)
{
    uint32_t Events=gpio_get_irq_event_mask(INPUT_LOAD);
    uint8_t ocdi = gpio_get(OCDI) ? 0x01 : 0;

    if(Events & GPIO_IRQ_EDGE_FALL)
    {
        gpio_acknowledge_irq(INPUT_LOAD, GPIO_IRQ_EDGE_FALL);
        OutShift.ParalellSerial = true;
        TESTSet(4,false);
    }
    else if(Events & GPIO_IRQ_EDGE_RISE)
    {
        gpio_acknowledge_irq(INPUT_LOAD, GPIO_IRQ_EDGE_RISE);
        OutShift.Shifter = GetRow();
        OutShift.ParalellSerial = false;
        RowRead = ((RowRead << 1) | ocdi) & ROW_MASK;

        TESTSet(4,true);
    } 
}

void __not_in_flash_func(NewKeybaordOCDIIRQ) (void)
{
    uint32_t Events=gpio_get_irq_event_mask(OCDI);
    
    if(Events & GPIO_IRQ_EDGE_RISE)
    {
        gpio_acknowledge_irq(OCDI, GPIO_IRQ_EDGE_RISE);
        TESTToggle(3);

        // Only act if in shift mode
        if (!OutShift.ParalellSerial)
        {
            TESTToggle(2);
            OutShift.Shifter = (OutShift.Shifter << 1) & 0x01;

            // We invert because of inverter after shifter.
            if(OutShift.Shifter & 0x80)
                gpio_put(DATA_OUT,false);
            else
                gpio_put(DATA_OUT,true);
        }
    }
}



#endif

// Display a representation of the matrix codes that are present in the
// scancode to matrix tables. This can be used to spot gaps in the matrix
// where no PS/2 code encodes to that matrix position.

#define TITLE_LEN	128
#define HEX_LEN     9
#define MAX_ROW		0x07
#define MAX_COL		0x0F
#define TABLE_ROW_MASK	0x70
#define TABLE_COL_MASK	0x0F

#define TABLE_ROW_SHIFT	4

#define GetRow(RC)	((RC & TABLE_ROW_MASK) >> TABLE_ROW_SHIFT)
#define GetCol(RC)	(RC & TABLE_COL_MASK)

void check_matrix(void)
{
	uint16_t	Check[MAX_ROW+1];
	uint8_t		Codes[16][8];
	uint8_t		SHCodes[16][8];
	char		Title[TITLE_LEN];
    char        HexStr[HEX_LEN];
	int8_t		Row;
	int8_t		Col;
	uint16_t	Offset 	= 0;
	uint8_t		*Table;
	uint8_t		HIDCode;	
	uint8_t		MatrixCode;	
	uint8_t		Pass;
	uint8_t		OutCh;

	// Clear array to hold matrix code presence flags
	memset(Check,0x00,sizeof(Check));
	memset(Codes,0x00,sizeof(Codes));
	memset(SHCodes,0x00,sizeof(SHCodes));
	

	// Make a pass over both the ScanCode table and the ShiftScan code table
	for(Pass=0 ; Pass < 1; Pass++)
	{
		// Select table.
		if (0 == Pass)
			Table  = (uint8_t *)ScancodeTableDragonBeta;
		else
			Table  = (uint8_t *)ModifierTableDragonBeta;
		
		// Start at the beginning :)
        HIDCode		= Table[Offset++];
	    MatrixCode	= Table[Offset++];
	
		// Check each ScanCodeTable entry's matrix code, and set the bit in the check
		// array corresponding to the matrix code
		while(HIDCode != KEY_TERMINATE) 
		{
			if(HIDCode != KEY_TERMINATE)
				Check[GetRow(MatrixCode)] |= (1 << GetCol(MatrixCode));
				
			if(0 == Pass)
				Codes[GetCol(MatrixCode)][GetRow(MatrixCode)]=HIDCode;
			else
				SHCodes[GetCol(MatrixCode)][GetRow(MatrixCode)]=HIDCode;	

			HIDCode		= Table[Offset++];
			MatrixCode	= Table[Offset++];
		}
	}

	// Display column titles
	snprintf(Title,TITLE_LEN,"ColNo    ");

	for(Col = MAX_COL; Col>-1; Col--)
    {   
        snprintf(HexStr,HEX_LEN," %02X",Col);
        strcat(Title,HexStr);
		//snprintf(Title,TITLE_LEN,"%s %02X",Title,Col);
    }

	printf("%s\n",Title);
	
	// Extract each bit from the chek array and display it.
	for(Row = 0; Row < MAX_ROW; Row++)
	{
		printf("Row[%d]: ",Row);
		for(Col = MAX_COL; Col>-1; Col--)
		{
			OutCh=(Check[Row] & (1<<Col)) ? '1' : '0';
			printf("  %c",OutCh);
		}
		printf("\n");
	}
	
	// Display scancodes of unshifted table.
	printf("\nUnshifted table\n\n%s\n",Title);
	for(Row = 0; Row < MAX_ROW; Row++)
	{
		printf("Row[%d]:  ",Row);
		for(Col = MAX_COL; Col>-1; Col--)
		{
			printf(" %02X",Codes[Col][Row]);
		}
		printf("\n");
	}
	
	// Display scancodes of unshifted table.
	printf("\nShifted table\n\n%s\n",Title);
	for(Row = 0; Row < MAX_ROW; Row++)
	{
		printf("Row[%d]:  ",Row);
		for(Col = MAX_COL; Col>-1; Col--)
		{
			printf(" %02X",SHCodes[Col][Row]);
		}
		printf("\n");
	}
}