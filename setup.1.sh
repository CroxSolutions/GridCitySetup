#set timezone
sudo dpkg-reconfigure tzdata

#base app needs
sudo apt-get install sl cowsay cmatrix vim git zip

#GitHub Setup
git config --global user.name ""
git config --global user.email ""
ssh-keygen -t rsa -b 4096 -C ""

mkdir ~/dbBackup
mkdir ~/dbRestore
mkdir ~/github

#Env Setup
sudo apt-get update
sudo apt-get install apache2
sudo a2enmod rewrite
sudo apt-get install ant
sudo apt-get install mysql-server
sudo mysql_install_db
sudo mysql_secure_installation


sudo apt install php libapache2-mod-php
sudo apt install php-curl php-mysql

#DB User Setup
GRANT SELECT, INSERT, DELETE, UPDATE, EXECUTE ON *.* TO 'tron'@'localhost';


#Env Variables
#/etc/apache2/envvars
export MACHINE="dev"


#https://certbot.eff.org/



