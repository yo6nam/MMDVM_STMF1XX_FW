#! /bin/bash

unzip -d /opt stm32cube_fw_f1_v140.zip
cd /opt/
git clone https://github.com/g4klx/MMDVM.git
apt-get install -y gcc-arm-none-eabi
apt-get install -y binutils-arm-none-eabi
apt-get install -y libusb-1.0
apt-get install -y libnewlib-arm-none-eabi
apt-get install -y make
apt-get install -y curl
apt-get install -y python-pip
apt-get install -y gcc-arm-none-eabi
apt-get install -y libstdc++-arm-none-eabi-newlib
apt-get install -y stm32flash
