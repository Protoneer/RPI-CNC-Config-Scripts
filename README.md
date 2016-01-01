# RPI-CNC-Config-Scripts
Scripts used to setup a Raspberry Pi for use with the Raspberry Pi CNC board

* Get latest rpi image and copy to SD card
* SSH to  RPI, Expand FS first with raspi-config
* edit /boot/cmdline.txt remove AMA0 ref. (Stops the logging of system messages to the serial port)

```
cd ~
git clone https://github.com/Protoneer/RPI-CNC-Config-Scripts.git
cd RPI-CNC-Config-Scripts/
sudo ./setup.sh
```
