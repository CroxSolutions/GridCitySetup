#base app needs
sudo apt-get install sl cowsay cmatrix vim git zip

##TODO add users

#GitHub Setup
git config --global user.name "CroxWolfe_"
git config --global user.email "chris@croxsolutions.com"
ssh-keygen -t rsa -b 4096 -C "chris@croxsolutions.com"

mkdir ~/dbBackup
mkdir ~/dbRestore
mkdir ~/GitHub

mkdir -p /var/www/addons-enabled/
mkdir -p /var/www/addons/

#github default setup

#Env Setup
sudo apt-get update
sudo apt-get install apache2
sudo a2enmod rewrite
sudo apt-get install mysql-server php5-mysql
sudo apt-get install ant
sudo mysql_install_db
sudo mysql_secure_installation

sudo apt install php libapache2-mod-php php-mysql
    sudo apt-get install php5 libapache2-mod-php7.0 php7.0-mcrypt php7.0-curl
    sudo apt-get install software-properties-common
    sudo add-apt-repository ppa:ondrej/php
    sudo apt-get update
    sudo apt-get upgrade
    sudo apt-get install php5.6

create database yhi;
create database blindAliveBuyPortal;

#set timezone
sudo dpkg-reconfigure tzdata

#DB User Setup
GRANT SELECT, INSERT, DELETE, UPDATE, EXECUTE ON *.* TO 'tron'@'localhost';


#Env Variables
#/etc/apache2/envvars
export MACHINE="dev"

export gridCityFlynnPassword=""
export gridCityCLUPassword=""
export gridCityProgramPassword=""

export ba_dev_db_user=""
export ba_dev_db_pass=""
export ba_api_user=""
export ba_api_pass=""

export yhi_dev_db_user=""
export yhi_dev_db_pass=""
export yhi_dev_db_apiUser=""
export yhi_dev_db_apiPass=""


#https://certbot.eff.org/
