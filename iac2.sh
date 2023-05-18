#!/bin/bash

echo "Atualizando servidor"
sudo apt-get update && sudo apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y
apt-get install wget -y

echo "Baixando e copiando os arquivos da aplicação"

cd /tmp

wget https://github.com/denislonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd linux-site-dio-main

cp -R * /var/www/html




