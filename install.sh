#!/usr/bin/env bash

sudo sed 's/hostname=.*/hostname=openhab/' -i /etc/openhabian.conf
sudo openhabian-config unattended

sudo gpasswd -a $USER dialout
wget -O - http://phoscon.de/apt/deconz.pub.key | sudo apt-key add -
sudo sh -c "echo 'deb http://phoscon.de/apt/deconz $(lsb_release -cs) main' > /etc/apt/sources.list.d/deconz.list"
sudo apt update -y
sudo apt install deconz -y
sudo systemctl enable deconz

mkdir -p ~/.vim/{ftdetect,syntax}
curl -L -o ~/.vim/syntax/openhab.vim https://github.com/cyberkov/openhab-vim/raw/master/syntax/openhab.vim
curl -L -o ~/.vim/ftdetect/openhab.vim https://github.com/cyberkov/openhab-vim/raw/master/ftdetect/openhab.vim
