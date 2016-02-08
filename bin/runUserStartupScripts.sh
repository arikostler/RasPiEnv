#!/bin/bash

### BEGIN INIT INFO

# Provides:				runUserStartupScripts
# Required-Start:		$local_fs $network $remote_fs
# Required-Stop:		$local_fs $network $remote_fs
# Default-Start:		2 3 4 5
# Default-Stop:			0 1 6
# Short-Description:	Run all scripts in startup folder
# Description:			Run all scripts in startup folder

### END INIT INFO


echo "Running startup scripts in folder: '/home/pi/.startup'"
STARTUPDIR=/home/pi/.startup
for i in $( ls $STARTUPDIR ); do
	echo "Running script: $STARTUPDIR/$i"
        /bin/bash $STARTUPDIR/$i
done

