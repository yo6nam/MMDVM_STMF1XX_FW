# MMDVM_STMF1XX_FW
Files and scripts required to build & flash MMDVM firmware for STM32F1XX devices

Please clone this in /opt

1. You need to execute in sequence : prepare.sh -> build.sh
2. Make sure you stop/disable any service trying to access the device /dev/ttyAMA0
3. Put the STM32F1XXX in boot mode (requires power off and placing a jumper) or mod the board (see pog_stm_update_mod.jpg)
4. Execute the flash.sh
5. Power cycle your system (not needed for modded boards)

If you're in a hurry, copy the mmdvm.hex from the included /builds/ to /opt and run ./flash
