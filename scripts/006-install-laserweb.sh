sudo apt-get -y install build-essential python g++ make
cd ~
sudo git clone https://github.com/openhardwarecoza/LaserWeb.git
cd LaserWeb
sudo npm install -g serialport@1.6.1
sudo npm install -g socket.io node-static
