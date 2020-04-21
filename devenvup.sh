#!/bin/bash
# install vagrant
wget https://releases.hashicorp.com/vagrant/2.2.7/vagrant_2.2.7_x86_64.deb -P /tmp/
sudo apt update
sudo apt install /tmp/vagrant_2.2.7_x86_64.deb

# install virtualbox
#wget https://download.virtualbox.org/virtualbox/6.1.6/virtualbox-6.1_6.1.6-137129~Ubuntu~bionic_amd64.deb -P /tmp/
#sudo apt update
#sudo apt install /tmp/virtualbox-6.1_6.1.6-137129~Ubuntu~bionic_amd64.deb
sudo add-apt-repository 'deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian bionic contrib'
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
sudo apt update
sudo apt install virtualbox-6.1
