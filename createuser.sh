#!/bin/bash

echo User Creation Script For Samaba Created By Zach Sylvester
echo enter the username which you want to create
read username

echo creating user with username $username
sleep 3s
sudo mkdir /samba
sudo chgrp sambashare /samba
sudo useradd -M -d /samba/$username -s /usr/sbin/nologin -G sambashare $username
sudo mkdir /samba/$username
sudo chown $username:sambashare /samba/$username
sudo chmod 2770 /samba/$username
echo now run sudo smbpasswd -a $username
echo then after that run sudo smbpasswd -e $username
echo the first command sets the password and the second command enables the account.
echo if there was a directory creation error because it already exists ignore it
