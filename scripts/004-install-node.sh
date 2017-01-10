sudo apt-get -y remove nodejs

# RPi 3
#curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
#sudo apt-get install -y nodejs


#RPI 3
wget https://nodejs.org/dist/v6.9.4/node-v6.9.4-linux-armv7l.tar.xz
tar -xvf node-v6.9.4-linux-armv7l.tar.gz
cd node-v6.9.4-linux-armv7l
sudo cp -R * /usr/local/


# RPI 1+2
wget https://nodejs.org/dist/v6.9.4/node-v6.9.4-linux-armv6l.tar.gz
tar -xvf node-v6.9.4-linux-armv6l.tar.gz
cd node-v6.9.4-linux-armv6l
sudo cp -R * /usr/local/

sudo shutdown -r now
