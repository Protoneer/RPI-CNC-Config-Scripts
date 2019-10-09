sudo apt-get -y remove nodejs

# RPi 3
#curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
#sudo apt-get install -y nodejs


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

#curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
#sudo apt-get install -y nodejs
#sudo apt-get install gcc g++ make
#curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
#echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
#sudo apt-get update && sudo apt-get install yarn


#sudo shutdown -r now
