
#define LEN_BYTE    8
#define LEN_WORD    16

#include <stdint.h>

char *bin_byte(uint8_t  byte)
{
    static char buf[LEN_BYTE+1];
    uint8_t     pos = 0;

    for(uint8_t Mask=0x80; Mask!=0x00; Mask=Mask >>1)
    {
        buf[pos++]=(byte & Mask) ? '1' : '0';
        buf[pos]=0;
    }

    return buf;
}

char *bin_word(uint16_t  word)
{
    static char buf[LEN_WORD+1];
    uint8_t     pos = 0;

    for(uint16_t Mask=0x8000; Mask!=0x00; Mask=Mask >>1)
    {
        buf[pos++]=(word & Mask) ? '1' : '0';
        buf[pos]=0;
    }

    return buf;
}