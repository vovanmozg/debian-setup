#!/bin/bash

#if ! [[ -f '/opt/google/chrome/google-chrome' ]]; then
	sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian stretch contrib" > /etc/apt/sources.list.d/virtualbox.list'
	wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
	sudo apt update
	sudo apt install -y virtualbox-5.2

#fi




