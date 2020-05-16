#!/bin/bash
# skype

if ! [[ -f '/opt/skypeforlinux/skypeforlinux' ]]; then
	cd /tmp	
	wget https://repo.skype.com/latest/skypeforlinux-64.deb
	sudo gdebi skypeforlinux-64.deb -y
fi