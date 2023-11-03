#change the "pico_cookie_base" to your file name

cmake_minimum_required(VERSION 3.16)

include(pico_sdk_import.cmake)

project(pico_cookie_base C CXX ASM)

pico_sdk_init()

add_executable(pico_cookie_base
		pico_cookie_base.cpp)

pico_add_extra_outputs(pico_cookie_base)

#the values should be usb 1 and uart 0 to reboot the rp2040 via usb
pico_enable_stdio_usb(pico_cookie_base 1)
pico_enable_stdio_uart(pico_cookie_base 0)

target_link_libraries(pico_cookie_base pico_stdlib
							)