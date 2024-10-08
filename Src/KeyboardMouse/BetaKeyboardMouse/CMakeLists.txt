cmake_minimum_required(VERSION 3.13)

include($ENV{PICO_SDK_PATH}/external/pico_sdk_import.cmake)
include($ENV{PICO_SDK_PATH}/tools/CMakeLists.txt)

project(BetaKeyboardMouse C CXX ASM)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

pico_sdk_init()

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -Wextra -Wno-unused-parameter" )

include_directories(. dragon_beta)
#
# Keyboard build.
#

add_executable(BetaKeyboard
                ${CMAKE_CURRENT_LIST_DIR}/hid_app.c
                ${CMAKE_CURRENT_LIST_DIR}/main.c
                ${CMAKE_CURRENT_LIST_DIR}/hid_keyboard.c
                ${CMAKE_CURRENT_LIST_DIR}/dragon_beta/beta_keyboard.c
                ${CMAKE_CURRENT_LIST_DIR}/dragon_beta/scancode.c
                ${CMAKE_CURRENT_LIST_DIR}/binutil.c
                )

# Make sure TinyUSB can find tusb_config.h
target_include_directories(BetaKeyboard PUBLIC
        ${CMAKE_CURRENT_LIST_DIR})

# In addition to pico_stdlib required for common PicoSDK functionality, add dependency on tinyusb_host
# for TinyUSB device support and tinyusb_board for the additional board support library used by the example
target_link_libraries(BetaKeyboard PUBLIC pico_stdlib tinyusb_host tinyusb_board hardware_pio)

target_compile_definitions(BetaKeyboard PUBLIC -DKEYBOARD)

pico_enable_stdio_usb(BetaKeyboard 0)
pico_enable_stdio_uart(BetaKeyboard 1)

pico_add_extra_outputs(BetaKeyboard)


#
# Mouse build.
#

add_executable(BetaMouse
                ${CMAKE_CURRENT_LIST_DIR}/hid_app.c
                ${CMAKE_CURRENT_LIST_DIR}/main.c
                ${CMAKE_CURRENT_LIST_DIR}/dragon_beta/beta_mouse.c
                ${CMAKE_CURRENT_LIST_DIR}/binutil.c
                )

# Make sure TinyUSB can find tusb_config.h
target_include_directories(BetaMouse PUBLIC
        ${CMAKE_CURRENT_LIST_DIR})

# In addition to pico_stdlib required for common PicoSDK functionality, add dependency on tinyusb_host
# for TinyUSB device support and tinyusb_board for the additional board support library used by the example
target_link_libraries(BetaMouse PUBLIC pico_stdlib tinyusb_host tinyusb_board hardware_pio)

target_compile_definitions(BetaMouse PUBLIC -DMOUSE)

pico_enable_stdio_usb(BetaMouse 0)
pico_enable_stdio_uart(BetaMouse 1)

pico_add_extra_outputs(BetaMouse)


