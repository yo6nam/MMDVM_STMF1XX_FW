#! /bin/bash

unzip -o STM32Cube_FW_F1_V1.4.0.zip -d /opt
if [ ! -d "/opt/MMDVM/" ]; then
    cd /opt/
    git clone https://github.com/g4klx/MMDVM.git
    cd -
fi
cp -Rf /opt/STM32Cube_FW_F1_V1.4.0/Drivers/CMSIS /opt/MMDVM/STM32F10X_Lib
if [ ! $(command -v make) ]; then
    /usr/bin/apt -y install make
fi
if [ ! $(command -v curl) ]; then
    /usr/bin/apt -y install curl
fi
if [ ! $(command -v pip) ]; then
    /usr/bin/apt -y install python-pip
fi
if [ ! $(command -v stm32flash) ]; then
    /usr/bin/apt -y install stm32flash
fi
pkgs='binutils-arm-none-eabi libusb-1.0-0 libnewlib-arm-none-eabi gcc-arm-none-eabi libstdc++-arm-none-eabi-newlib'
if ! dpkg -s $pkgs >/dev/null 2>&1; then
  sudo apt-get install -y $pkgs
fi
