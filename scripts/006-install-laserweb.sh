cd ~
git clone https://github.com/LaserWeb/lw.comm-server.git
cd lw.comm-server
sudo npm install serialport --unsafe-perm --build-from-source
sudo npm install

echo "RESET_ON_CONNECT=1" >> .env
