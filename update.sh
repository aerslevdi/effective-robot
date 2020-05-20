#!/bin/bash
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get clean
sudo apt-get -y autoremove
sudo apt-get purge -y $(dpkg -l | awk '/^rc/ { print $2 }')
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" -y
sudo apt-get update -y
sudo apt-cache policy docker-ce -y
sudo apt-get install docker-ce -y
sudo usermod -aG docker vagrant
sudo apt install python3-pip