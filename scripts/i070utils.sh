#!/bin/bash

cd /tmp


packagelist=(
	cmake # Inline Comments
	valac
	libgtk-3-dev 
	libkeybinder-3.0-dev 
	libxml2-utils
	libcurl3
	libcurl3-gnutls
	libcurl4-openssl-dev 
	gettext 
	txt2man 
	redis-server
	mongodb
	ocular
	plantuml
	net-tools
	shutter
)
sudo apt-get install ${packagelist[@]}


# peek
sudo add-apt-repository ppa:peek-developers/stable
sudo apt update
sudo apt install peek -y


# firacode
mkdir -p ~/.local/share/fonts
for type in Bold Light Medium Regular Retina; do wget -O ~/.local/share/fonts/FiraCode-$type.ttf "https://github.com/tonsky/FiraCode/blob/master/distr/ttf/FiraCode-$type.ttf?raw=true"; done
fc-cache -f

# image viewer
sudo add-apt-repository ppa:nomacs/stable
sudo apt-get update
sudo apt-get install nomacs

# cerebro (AppImage file)

