#!/bin/bash

##################################################
## this script changes from default port 80 to port 8080
##################################################

echo "changing to port number 8080 from default port 80 in /etc/apache2/ports.conf file........"
sudo sed -i "s/\(^LISTEN\).*/\1{8080}/" /etc/apache2/ports.conf

echo "done..."

echo "changing port number in virtual host configuration file /etc/apache2/sites-enabled.000-default.conf......."
sudo sed -i "s/\(^VirtualHost:\).*/\1{8080}/" /etc/apache2/sites-enabled/000-de\
fault.conf
echo "done..."
