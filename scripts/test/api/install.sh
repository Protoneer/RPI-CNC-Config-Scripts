sudo npm install
sudo crontab -l -u root 2>/dev/null; echo "@reboot sudo node /home/pi/RPI-CNC-Config-Scripts/scripts/test/api/lib/start.js" | sudo crontab -u root -

# Find node process -> ps -e|grep node
# Kill process -> sudo kill -9 <PID>
