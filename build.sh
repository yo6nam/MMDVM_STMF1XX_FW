#!/bin/bash
mv /opt/MMDVM/Config.h /opt/MMDVM/Config.bak
cp -rf Config.h /opt/MMDVM
cd /opt/MMDVM
make -f Makefile.CMSIS
rm -f /opt/MMDVM/Config.h
read -p "Build should be done. Press any key to copy the firmware to /opt"
mv /opt/MMDVM/Config.bak /opt/MMDVM/Config.h
cp /opt/MMDVM/bin/mmdvm.hex /opt/mmdvm.hex
