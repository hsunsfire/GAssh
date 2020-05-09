#!/bin/sh

echo "root:password" | chpasswd

curl -s https://install.zerotier.com | sudo bash

zerotier-cli join b6079f73c643e466

echo "PermitRootLogin yes" | cat >> /etc/ssh/sshd_config

/etc/init.d/ssh restart
