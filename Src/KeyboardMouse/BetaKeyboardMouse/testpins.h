/*
    Testpins, setup some pins for test outputs.

    2022-09-13 Phill Harvey-Smith.

*/ 

#include <stdbool.h>
#include "pico.h"
#include "hardware/gpio.h"

#ifndef __TEST_PINS__
#define __TEST_PINS__

#define TEST_PIN_BASE       14
#define TEST_PIN_COUNT      8
#define TESTOn(tp)          gpio_put(TEST_PIN_BASE+tp,true)
#define TESTOff(tp)         gpio_put(TEST_PIN_BASE+tp,false)
#define TESTToggle(tp)      gpio_put(TEST_PIN_BASE+tp,!gpio_get(TEST_PIN_BASE+tp))
#define TESTSet(tp,state)   gpio_put(TEST_PIN_BASE+tp,state)

// Initialize test pins and set them as low outputs
#define TESTInit()            do  {   for(uint8_t tp=TEST_PIN_BASE; tp<(TEST_PIN_BASE+TEST_PIN_COUNT); tp++) \
                                    { \
                                        gpio_init(tp);  \
                                        gpio_set_dir(tp,true); \
                                        gpio_put(tp,false); \
                                    } \
                                } \
                              while (false)

#endif