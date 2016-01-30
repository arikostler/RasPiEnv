#!/bin/bash

echo "Running startup scripts in folder: '/home/pi/.startup'"
STARTUPDIR=/home/pi/.startup
for i in $( ls $STARTUPDIR ); do
	echo "Running script: $STARTUPDIR/$i"
        /bin/bash $STARTUPDIR/$i
done

