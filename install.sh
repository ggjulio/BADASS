#!/bin/bash

#install Docker and GNS3
sudo apt update

sudo add-apt-repository -y ppa:gns3/ppa

sudo apt update

sudo apt install gns3-gui gns3-server

sudo apt install docker-ce

# Add user to following groups
sudo usermod -aG kvm,libvirt,docker,ubridge,wireshark $USER
