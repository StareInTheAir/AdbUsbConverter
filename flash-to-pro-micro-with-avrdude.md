# Arduino IDE avrdude command for Micro / Leonardo Boards
    avrdude -C/Applications/Arduino.app/Contents/Java/hardware/tools/avr/etc/avrdude.conf -v -patmega32u4 -cavr109 -P/dev/cu.usbmodem1411 -b57600 -D -Uflash:w:/var/folders/22/8l_mj17j5qv09hyr220lry900000gn/T/build6059814724545700416.tmp/MicroTest.cpp.hex:i

# My command for avrdude
    avrdude -v -patmega32u4 -cavr109 -P/dev/cu.usbmodem1411 -b57600 -D -Uflash:w:adb_usb_lufa.hex:i