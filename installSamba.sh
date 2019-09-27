#!/bin/bash
echo Created By Zach Sylvester
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install samba -y
sudo ufw allow 'Samba'
sudo cp /etc/samba/smb.conf{,.backup}
sudo systemctl status nmbd


