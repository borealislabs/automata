#!/usr/bin/env sh
echo "#######################################"
echo "Just hit [ENTER] or Y all the way through"
echo "Hit enter to start."
echo "#######################################"
read rokskwjk

sudo add-apt-repository ppa:ondrej/php
sudo add-apt-repository ppa:flexiondotorg/audio
sudo apt-get update
sudo apt-get install php5.6 php5.6-bcmath -y
sudo a2dismod php7.2 ; sudo a2enmod php5.6 ; sudo service apache2 restart
sudo update-alternatives --set php /usr/bin/php5.6
sudo apt-get install mp3gain -y

git clone https://github.com/borealislabs/Airtime-2.5.x-modded.git
cd Airtime-2.5.x-modded
sudo ./install -fiap
cd ..
sudo rm -fr Airtime-2.5.x-modded

sudo chmod +x /etc/init.d/airtime-*

echo "################################"
echo "Gonna reboot! Hit enter!"
echo "################################"
read rokskwjk
reboot
