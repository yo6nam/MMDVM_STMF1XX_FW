#!/bin/bash

echo "Upgrading firmware for STM32F1XX"

if [ ! -r "/opt/mmdvm.hex" ]; then
	echo "There is no firmware file available to use. Make sure to build it using the build.sh"
else
	/usr/bin/sudo systemctl disable mmdvmhost.service && systemctl stop mmdvmhost.service
	while true; do
                read -p "Is your board modded [GPIO pins to BOOT]? (Yes/No)" yn
                case $yn in
                [Yy]* ) /usr/bin/sudo stm32flash -v -w /opt/mmdvm.hex -g 0x0 -R -i 20,-21,21 /dev/ttyAMA0; break;;
                [Nn]* ) /usr/bin/sudo stm32flash -w /opt/mmdvm.hex -v /dev/ttyAMA0; echo  "Please power cycle your Raspberry Pi to activate the new firmware (don't forget about the jumper ;)"; break;;
                * ) echo "Please answer yes or no.";;
                esac
	done
fi
/usr/bin/sudo systemctl enable mmdvmhost.service && systemctl start mmdvmhost.service
read -p "Press any key to continue"
