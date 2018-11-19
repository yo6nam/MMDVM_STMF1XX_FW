#!/bin/bash

echo "Upgrading firmware for STM32F1XX"

if [ ! -r "/opt/mmdvm.hex" ]; then
	echo "There is no firmware file available to use. Make sure to build it using the build.sh"
else
	echo "Flashing"
	/usr/bin/sudo stm32flash -w /opt/mmdvm.hex -v /dev/ttyAMA0
	echo  "Please power cycle your Raspberry Pi to activate the new firmware (don't forget about the jumper ;)";
fi

read -p "Press any key to continue"

