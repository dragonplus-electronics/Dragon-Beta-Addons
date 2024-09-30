#pragma once

#include "bsp/board.h"
#include "tusb.h"

typedef struct LockingKeys{
  unsigned char numLock;
  unsigned char capsLock;
  unsigned char scrollLock;
} LockingKeys;

void process_kbd_report(hid_keyboard_report_t const *report);

void handleKeyboardLed(uint8_t dev_addr, uint8_t instance,hid_keyboard_report_t const* report);