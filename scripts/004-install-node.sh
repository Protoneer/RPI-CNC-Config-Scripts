sudo apt-get -y remove nodejs

#RPI 3-4
wget https://nodejs.org/dist/v8.11.1/node-v8.11.1-linux-armv7l.tar.xz
tar -xvf node-v8.11.1-linux-armv7l.tar.xz
cd node-v8.11.1-linux-armv7l
sudo cp -R * /usr/local/


# RPI 1+2
wget https://nodejs.org/dist/v8.11.1/node-v8.11.1-linux-armv6l.tar.xz
tar -xvf node-v8.11.1-linux-armv6l.tar.xz
cd node-v8.11.1-linux-armv6l
sudo cp -R * /usr/local/
