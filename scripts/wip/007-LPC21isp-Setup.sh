https://github.com/Protoneer/lpc21isp
make to build
./lpc21isp to  run
http://smoothieware.org/flashing-the-bootloader




##### Installs LPC ISP and setup pin 17-18

sudo apt-get install lpc21isp

# Setup ISP pin
echo "18" > /sys/class/gpio/export
sudo echo "out" > /sys/class/gpio/gpio18/direction
sudo echo "0" > /sys/class/gpio/gpio18/value

# Setup RST pin
echo "17" > /sys/class/gpio/export
sudo echo "out" > /sys/class/gpio/gpio17/direction
sudo echo "1" > /sys/class/gpio/gpio17/value

# Usage:
# lpc21isp -wipe DFU-Bootloader.hex /dev/ttyACM0 230400 12000


