#include "hid_keyboard.h"
#include "beta_keyboard.h"

//--------------------------------------------------------------------+
// Keyboard
//--------------------------------------------------------------------+

#define DEBUG   0

LockingKeys lockingKeys ={0};

void handleKeyboardLed(uint8_t dev_addr, uint8_t instance,hid_keyboard_report_t const* report)
{
    static unsigned char status = 0; 
    unsigned char tmpStatus = status;

    unsigned char key = 0;
    unsigned char mod = 0; 
    for(uint8_t i=0; i<6; i++)
    {
        key = report->keycode[i];
        mod = 0;
        switch(key)
        {
            case HID_KEY_CAPS_LOCK:
                printf("got here\n");
                mod = KEYBOARD_LED_CAPSLOCK;
                lockingKeys.capsLock = !lockingKeys.capsLock;
                break;
    
            case HID_KEY_NUM_LOCK:
                mod = KEYBOARD_LED_NUMLOCK;
                lockingKeys.numLock = !lockingKeys.numLock;
                break;
    
            case HID_KEY_SCROLL_LOCK:
                mod = KEYBOARD_LED_SCROLLLOCK;
                lockingKeys.scrollLock = !lockingKeys.scrollLock;
                break;
    
            default:
                break;
        }

        tmpStatus ^= mod; //invert the bit the selected keypress 
    }

    if(status != tmpStatus)
    {
        printf("got this working!\n");
        status = tmpStatus;
        tuh_hid_set_report(dev_addr,instance,0,HID_REPORT_TYPE_OUTPUT,&status,1);
    }
}



// look up new key in previous keys
inline bool find_key_in_report(hid_keyboard_report_t const *report, uint8_t keycode)
{
    for(uint8_t i=0; i<6; i++)
    {
        if (report->keycode[i] == keycode)  return true;
    }

    return false;
}

#if (DEBUG > 0)
void dump_report(hid_keyboard_report_t const *report)
{
    printf("mod:%02X res:%02X ",report->modifier, report->reserved);
    for(uint8_t KeyNo=0; KeyNo<6; KeyNo++)
        printf("%02X ",report->keycode[KeyNo]);
    printf("\n");
}
#else
#define dump_report(report)
#endif

void process_kbd_report(hid_keyboard_report_t const *report)
{
    static hid_keyboard_report_t prev_report = { 0, 0, {0} }; // previous report to check key released

    dump_report(report);
    
    // Handle modifiers, once, 
    Beta_KeyModifiers(report->modifier);

    //------------- example code ignore control (non-printable) key affects -------------//
    for(uint8_t KeyNo=0; KeyNo<6; KeyNo++)
    {
        if ( report->keycode[KeyNo] )
        {
            if ( find_key_in_report(&prev_report, report->keycode[KeyNo]) )
            {
                // exist in previous report means the current key is holding
            }
            else
            {
                Beta_KeyUD(report->keycode[KeyNo],true);
            }
        }
    }

    for(uint8_t KeyNo=0; KeyNo<6; KeyNo++)
    {
        if (prev_report.keycode[KeyNo])
        {
            if (!find_key_in_report(report, prev_report.keycode[KeyNo]))
            {
                Beta_KeyUD(prev_report.keycode[KeyNo],false);
            }
        }
    }

    KeyDoneCallback();

    prev_report = *report;
}