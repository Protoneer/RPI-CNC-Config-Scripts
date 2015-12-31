# RPI-CNC-Config-Scripts
Scripts used to setup a Raspberry Pi for use with the Raspberry Pi CNC board


  Expand FS first
  #/boot/cmdline.txt remove AMA0

  dwc_otg.lpm_enable=0 console=ttyAMA0,115200 kgdboc=ttyAMA0,115200 console=tty1 root=/dev/mmcblk0p2 rootfstype=ext4 elevator=deadline   rootwait

  cd ~
  git clone https://github.com/Protoneer/RPI-CNC-Config-Scripts.git
  cd RPI-CNC-Config-Scripts/
  sudo ./setup.sh

