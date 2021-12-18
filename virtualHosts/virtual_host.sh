echo "creating document root destination to house our website...."
sudo mkdir -p /var/www/html/vhost

echo "granting proper ownership to the directory housing website..."
sudo chown -R $USER:$USER /var/www/html/vhost

echo "granting proper permissions...."
sudo chmod -R 755 /var/www/html/vhost

echo "write contents for the website...."
sudo cp /var/www/html/index.html /var/www/html/vhost

echo "creating a virtual host configuration...."
# change /etc/apache2/sites-available/vhost.conf

echo "create a link from /etc/apache2/sites-available to /etc/apache2/sites-enabled dir..."
sudo a2ensite vhost.conf
sudo systemctl reload apache2

echo "server status...."
sudo systemctl status apache2.service


#### resource ##########
## https://www.techrepublic.com/article/how-to-use-the-apache-web-server-to-install-and-configure-a-website/
