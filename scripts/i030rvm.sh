#!/bin/bash
# rvm

if ! [[ -f "$HOME/.rvm/bin/rvm" ]]; then
	gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
	\curl -sSL https://get.rvm.io | bash

	# тут не тестировал, возможно не сработает. Дело в том, что сразу после установки rvm не доступен, нужно перезапускать терминал
	source ~/.rvm/scripts/rvm
	rvm install 2.5.1

	echo "source $HOME/.rvm/scripts/rvm" >> ~/.bash_rc

	sudo apt install irb -y
fi

