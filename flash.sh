#!/bin/bash
#change the "/home/gammaray/pico/pico-sdk" to your pico-sdk path 
sudo stty -F /dev/$1 1200		#$1 is the 1st option and is the device name, usually "ttyACM0,ttyACM1 or ttyUSB0"
if [ ! -f "Makefile" ]; then
	export PICO_SDK_PATH=/home/gammaray/pico/pico-sdk
	cmake CMakeLists.txt
fi
make

#change "/media/gammaray/RPI-RP2" to "/media/YOUR_USER_NAME/RPI-RP2"
echo waiting
while [ ! -d /media/gammaray/RPI-RP2 ]; do sleep 0.1; done
sleep 0.5
# if [ "$*" = "" ]; then echo rebooting; exit; fi
echo copying
cp $2.uf2 /media/gammaray/RPI-RP2	# $2 is the 2nd option and is the name of .uf2 file to be uploaded(project name)
echo done
