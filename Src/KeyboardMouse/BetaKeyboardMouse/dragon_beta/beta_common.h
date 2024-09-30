/*
    beta_common, defines common to keyboard & mouse
*/


#define LED_PIN         25
#define LEDOn()         gpio_put(LED_PIN,true)
#define LEDOff()        gpio_put(LED_PIN,false)
#define LEDToggle()     gpio_put(LED_PIN,!gpio_get(LED_PIN))
