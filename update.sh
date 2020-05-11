#!/bin/bash
sudo apt update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get clean
sudo apt-get -y autoremove
sudo apt purge -y $(dpkg -l | awk '/^rc/ { print $2 }')