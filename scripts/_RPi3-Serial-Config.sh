echo "dtoverlay=pi3-miniuart-bt" >> /boot/config.txt
echo "enable_uart=1" >> /boot/config.txt
systemctl disable hciuart
sudo shutdown -r now



# New os uses Serial0
# good read - http://spellfoundry.com/2016/05/29/configuring-gpio-serial-port-raspbian-jessie-including-pi-3/

# RPI 3 only
sudo systemctl stop serial-getty@ttyS0.service
sudo systemctl disable serial-getty@ttyS0.service
