  sudo add-apt-repository ppa:ondrej/php
  
  
  sudo apt install python-virtualenv -y 
  sudo apt install apache2 -y 
  sudo apt install ecasound -y 
  sudo apt install flac -y 
  #s
  sudo apt install libapache2-mod-php5 -y 
  #e
  sudo apt install libcamomile-ocaml-data -y 
  sudo apt install libportaudio2 -y 
  sudo apt install monit -y 
  sudo apt install multitail -y 
  sudo apt install odbc-postgresql -y 
  #s
  sudo apt install php5-cli -y 
  sudo apt install php5-curl -y 
  sudo apt install php5-gd -y 
  #e
  sudo apt install php-pear -y 
  #s
  sudo apt install php5-pgsql -y 
  #e
  sudo apt install pwgen -y 
  sudo apt install rabbitmq-server -y 
  #s
  sudo apt install sysv-rc -y 
  #e
  sudo apt install vorbis-tools -y 
  sudo apt install zendframework -y 
  sudo apt install libzend-framework-php -y 

  wget http://apt.sourcefabric.org/misc/airtime-easy-setup.deb
  sudo dpkg -i airtime-easy-setup.deb; sudo apt-get -f install
