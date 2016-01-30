# RasPiEnv
My preferred Raspberry PI start environment.

This script does a number of setup items that I find myself doing every time I start working on a new Raspberry PI.

This script does the following:
	1. updates and upgrades software
	2. Installs new software
	3. places my bashrc and vimrc files to set my preferences
	4. sets up a startup script. See description.

STARTUP SCRIPT:
The startup script is put in the init.d folder and set to run at boot.
This script then runs every script in the folder: /home/pi/.startup
If you want to add something to the boot sequence, 
you can add it to that folder without having to remember the
extra commands.
