#!/bin/bash

cd "$(dirname "$0")"
cd tmk_keyboard/converter/adb_usb/
make clean
make -f Makefile.rev1 KEYMAP=iso
# rev2 is Makefile, which changed from atmega32u4 (what I need) to atmega32u2
# see commit 060c8c55f951c0dc6f07fc202046c8a4877dae58
cd ../../..
