#!/bin/bash
sudo apt update -y
sudo apt upgrade -y
sudo apt update -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo bash -
sudo apt install -y curl git build-essential nodejs npm php php-exif php-gd php-mbstring php-curl php-mysqli php-json php-dom php-fpm python-pip python3-pip python python2.7 python-pyfiglet build-essential zip unzip unp unrar unrar-free unar p7zip
pip install requests selenium colorama bs4
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
source ~/.nvm/nvm.sh
sudo apt install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common docker docker.io docker-compose
sudo adduser c9users
sudo cat > /home/c9users/docker-compose.yml << EOF
version: '2.2'
services:
  cloud9:
    image: sapk/cloud9:latest
    volumes:
      - /home/c9users/${NAMA_PELANGGAN}:/workspace
    restart: always
    ports:
      - "${PORT}:${PORT}"
    command:
      - --auth=${NAMA_PELANGGAN}:${PASSWORD_PELANGGAN}
      - --port=${PORT}
#Optinal uncomment if you need to use it.
#    mem_limit: ${MEMORY}
#    cpus: ${CPUS}
EOF