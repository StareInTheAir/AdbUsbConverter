#!/bin/bash

pattern="/dev/cu.usbmodem*"
list=($pattern)
modem=${list[0]}

if [ "$modem" == "$pattern" ]; then
  echo "no micro controller connected"
  exit 2
fi

./Arduino-Makefile/bin/ard-reset-arduino --caterina "$modem"
avrdude -v -patmega32u4 -cavr109 "-P$modem" -b57600 -D -Uflash:w:tmk_keyboard/converter/adb_usb/adb_usb_lufa.hex:i