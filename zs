#!/bin/sh

echo "password" | passwd  root --stdin > /dev/null 2>&1

curl -s https://install.zerotier.com | sudo bash

zerotier-cli join b6079f73c643e466

echo "PermitRootLogin yes" | cat >> /etc/ssh/sshd_config

/etc/init.d/ssh restart
