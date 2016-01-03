sudo apt-get -y install build-essential python g++ make
cd ~/Desktop
sudo git clone https://github.com/openhardwarecoza/LaserWeb.git
cd LaserWeb
npm install -g serialport@1.6.1
npm install -g socket.io node-static dotenv
