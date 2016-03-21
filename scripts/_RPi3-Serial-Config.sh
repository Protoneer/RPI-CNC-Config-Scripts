echo "dtoverlay=pi3-miniuart-bt" >> /boot/config.txt
systemctl disable hciuart
sudo shutdown -r now
