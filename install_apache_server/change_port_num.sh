#!/bin/bash

##################################################
## this script changes from default port 80 to port 8080
##################################################

echo "changing to port number 8080 from default port 80 in /etc/apache2/ports.conf file........"
#sudo sed -i "s/\(^Listen\).*/\1{8080}/" /etc/apache2/ports.conf
sudo sed -i "s/\(^Listen \).*/\18080/" /etc/apache2/ports.conf


echo "done..."

echo "changing port number in virtual host configuration file /etc/apache2/sites-enabled.000-default.conf......."
sudo sed -i "s/\(^VirtualHost:\).*/\1{8080}/" /etc/apache2/sites-enabled/000-de\
fault.conf
echo "done..."

echo "restart apache server....."
sudo systemctl restart apache2
sudo service apache2 restart

sudo systemctl status apache2.service

