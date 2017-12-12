# Get the latest Raspbian Lite

# Update
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade

# Install gui
sudo apt-get install --no-install-recommends xserver-xorg
sudo apt-get install --no-install-recommends raspberrypi-ui-mods lxterminal gvfs
sudo apt-get install chromium-browser

# Clean out cache
sudo apt-get clean

