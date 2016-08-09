sudo apt-get -y remove nodejs

# RPi 3
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

# RPI all
wget https://nodejs.org/dist/v4.4.7/node-v4.4.7-linux-armv6l.tar.gz
tar -xvf node-v4.4.7-linux-armv6l.tar.gz
cd node-v4.4.7-linux-armv6l
sudo cp -R * /usr/local/
