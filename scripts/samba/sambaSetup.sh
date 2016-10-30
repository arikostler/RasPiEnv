#!/bin/bash

sudo apt-get update

sudo apt-get install samba -y

sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.backup

sudo bash -c 'cat sambaShareConfigs/pishare >> /etc/samba/smb.conf'

sudo smbpasswd -a pi

sudo service smbd restart
sudo service nmbd restart
