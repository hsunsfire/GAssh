#!/bin/sh

apt-get update
apt-get install screen -y

echo "root:password" | chpasswd

curl -s https://install.zerotier.com | sudo bash

zerotier-cli join 8056c2e21c3d276b

echo "PermitRootLogin yes" | cat >> /etc/ssh/sshd_config

/etc/init.d/ssh restart
