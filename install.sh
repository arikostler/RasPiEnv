#!/bin/bash

# update, upgrade, install programs
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y vim
sudo apt-get install -y screen
sudo apt-get install -y htop

# Install Aliases file
if [ -f bin/bash_aliases ]; then
	echo "Copying bash_aliases to home directory"
	cp bin/bash_aliases ~/.bash_aliases
else
	echo "bash_aliases file not found. No copy performed"
fi

# Install .vimrc
if [ -f bin/vimrc ]; then
	echo "Copying vimrc to home directory"
	cp bin/vimrc ~/.vimrc
else
	echo "vimrc not found. No copy performed"
fi

# set up startup script and folder
if [ -f bin/runUserStartupScripts.sh ]; then
	echo "Setting up startup folder..."
	mkdir ~/.startup
	sudo cp bin/runUserStartupScripts.sh /etc/init.d/runUserStartupScripts.sh
	sudo chmod 755 /etc/init.d/runUserStartupScripts.sh
	sudo update-rc.d runUserStartupScripts.sh defaults
	echo "Startup folder set up. See README.md for details..."
else
	echo "startup script not found. No setup performed"
fi
