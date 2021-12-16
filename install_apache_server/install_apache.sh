#!/bin/bash

###################################
## this script installs and runs apache server
## returns status of server
##################################

echo "Updating and upgrading software....."
sudo apt-get update && sudo apt-get upgrade -y

echo "Installing apache........"
sudo apt install apache2 -y

echo "is server enabled.........????"
sudo systemctl is-enabled apache2.service

ehco "returning status of server......."
sudo systemctl status apache2.service

########### useful links ###########
#https://www.cyberciti.biz/faq/how-to-install-apache-on-ubuntu-20-04-lts/
