# pi-pico-cookiebase
Blank project which will switch to BOOTSEL mode in Raspberry Pi Pico while uploading program. 

#MOTIVATION

Around 2.6 years back(May 2020) I was using RP Pi pico and it was annoying and slow to everytime unplug, press and hold the bootsel button while you plugin the pico to upload a program. I attached a reset button to RUN pin on pico to speedup the process and insted of plug in/out power we just have to press the reset button BUT then I found a blog about booting the pico in file transfer mode via USB (sorry I can't remember and find the original blog).

#DISCLAIMER

This is not my original work and I forgot the original creator of this bash script file. I am not a bash expert nor I know how thing are actually working here. I am sharing this to speed up your work.

#MY CONTIBUTION 

The original script only boots the pico into file transfer mode and rest of the work like running cmake commands, copying the generated .uf2 file to pico was done manually. I just added cmake commands and copy command into this script. Now, you only have to connect your pico into usb and execute this "flash.sh".

#REQUIREMENT

This works with ubuntu

#HOW TO USE

I have made a sample project named "pico_cookie_base", it contains four file namely "pico_cookie_base.cpp", "CMakeLists.txt", "pico_sdk_import.cmake" and "flash.sh".

Replace the "pico_cookie_base" everywhere with your project name.
Add your code into the "pico_cookie_base.cpp" file.
Edit the paths in "flash.sh" accordingly.
And don't touch the "pico_sdk_import.cmake" file.

#EXECUTING THE SCRIPT

Open the terminal and go to the "pico_cookie_base" project.

run the following command in terminal
	"./flash.sh ttyACM0 pico_cookie_base"
The inputs in the options "ttyACM0" and "pico_cookie_base" in above command is the device name and project name. (change accodingly)

#BUGS

If the pico exits from the main() function then it dont boots into file transfer mode via USB command, you have to boot it manually that time or dont exit the main().
