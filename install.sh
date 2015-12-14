#!/bin/bash

# update, upgrade, install programs
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y vim
sudo apt-get install -y screen

# Install Aliases file
if [ -f bash_aliases ]; then
	echo "Copying bash_aliases to home directory"
	cp bash_aliases ~/.bash_aliases
else
	echo "bash_aliases file not found. No copy performed"
fi

# Install .vimrc
if [ -f vimrc ]; then
	echo "Copying vimrc to home directory"
	cp vimrc ~/.vimrc
else
	echo "vimrc not found. No copy performed"
fi
