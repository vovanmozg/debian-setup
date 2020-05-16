#!/bin/bash


# google chrome
if ! [[ -f '/opt/google/chrome/google-chrome' ]]; then
	cd /tmp
	rm google-chrome-stable_current_amd64.deb
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo dpkg -i --force-depends google-chrome-stable_current_amd64.deb
fi
