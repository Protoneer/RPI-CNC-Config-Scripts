sudo apt-get remove --purge libreoffice-*
sudo apt-get remove --purge wolfram-engine


# Clean out cache
sudo apt-get clean

# Update
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
