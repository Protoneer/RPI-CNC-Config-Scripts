# install java
sudo apt-get install openjdk-7-jre -y
sudo apt-get install librxtx-java -y

mkdir ugs
cd ugs 

# download UGS 1.09
wget http://bit.ly/1M6z2ys -O ugs.zip

unzip ugs.zip
jar -xf UniversalGcodeSender.jar

chmod +x start.sh
