#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install apache2 -y

sudo apt-get install php5 libapache2-mod-php5 -y

sudo apt-get install mysql-server php5-mysql -y
