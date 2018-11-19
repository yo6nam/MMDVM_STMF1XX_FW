# MMDVM_STMF1XX_FW
Files and scripts required to build MMDVM firmware for STM32F1XX devices

Please clone this in /opt

1. You need to execute in sequence : prepare.sh -> build.sh
2. Make sure you stop/disable any service trying to access the device /dev/ttyAMA0
3. Put the STM32F1XXX in boot mode (requires power off and placing a jumper)
3. Execute the flash.sh
4. Power cycle your system
