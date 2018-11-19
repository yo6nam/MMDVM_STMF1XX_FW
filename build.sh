#!/bin/bash
if [ ! -d "/opt/MMDVM" ]; then
	cd /opt/
	git clone https://github.com/g4klx/MMDVM.git
	cd -
else
	while true; do
		echo -e "\n\n ** MMDVM folder is present ** \n"
    		read -p "Should I update MMDVM first? (Yes/No)" yn
    		case $yn in
        	[Yy]* ) git pull; break;;
        	[Nn]* ) break;;
        	* ) echo "Please answer yes or no.";;
		esac
	done
fi
mv /opt/MMDVM/Config.h /opt/MMDVM/Config.bak
while true; do
                read -p "Build the version with DC Blocker off? (Yes/No)" yn
                case $yn in
                [Yy]* ) cp -rf Configdc.h /opt/MMDVM/Config.h; break;;
                [Nn]* ) cp -rf Config.h /opt/MMDVM; break;;
                * ) echo "Please answer yes or no.";;
                esac
done
cd /opt/MMDVM
make -f Makefile.CMSIS
rm -f /opt/MMDVM/Config.h
echo -e "\n"
read -p "Build should be done. Press any key to copy the firmware to /opt"
mv /opt/MMDVM/Config.bak /opt/MMDVM/Config.h
cp /opt/MMDVM/bin/mmdvm.hex /opt/mmdvm.hex
