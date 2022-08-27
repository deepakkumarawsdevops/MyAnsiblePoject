#!/bin/bash
sudo yum -y install epel-release
sudo yum -y install ansible
sudo yum -y install git
sudo mkdir httpProject
sudo git clone https://github.com/deepakkumarawsdevops/MyAnsiblePoject.git /home/centos/httpProject

