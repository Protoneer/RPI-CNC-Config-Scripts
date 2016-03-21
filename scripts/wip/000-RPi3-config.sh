sudo su
sudo echo "dtoverlay=pi3-miniuart-bt" >> /boot/config.txt
exit
sudo systemctl disable hciuart
