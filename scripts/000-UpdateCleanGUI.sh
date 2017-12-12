# Get the latest Raspbian Lite

# Update
sudo apt-get -y update
sudo apt-get -y upgrade 
sudo apt-get -y dist-upgrade

# Install gui
sudo apt-get install --no-install-recommends xserver-xorg -y
sudo apt-get install --no-install-recommends xinit -y
sudo apt-get install raspberrypi-ui-mods -y
sudo apt-get install --no-install-recommends rpi-chromium-mods -y
sudo apt-get install xrdp -y

# Clean out cache
sudo apt-get clean

sudo shutdown -r now
