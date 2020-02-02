sudo apt-get -y remove nodejs

#RPI 3-4
cd ~
wget https://nodejs.org/dist/v8.11.1/node-v8.11.1-linux-armv7l.tar.xz
tar -xvf node-v8.11.1-linux-armv7l.tar.xz
cd node-v8.11.1-linux-armv7l
sudo cp -R * /usr/local/


# RPI 1+2
cd ~
wget https://nodejs.org/dist/v8.11.1/node-v8.11.1-linux-armv6l.tar.xz
tar -xvf node-v8.11.1-linux-armv6l.tar.xz
cd node-v8.11.1-linux-armv6l
sudo cp -R * /usr/local/

cd ~
rm node-v8.11.1-linux-armv6l.tar.xz
rm node-v8.11.1-linux-armv6l/ -r
rm node-v8.11.1-linux-armv7l.tar.xz
rm node-v8.11.1-linux-armv7l/ -r
