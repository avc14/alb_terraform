#!/bin/bash
#we are using sudo because default logged in user is ubuntu
sudo apt-get update -y
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
echo "Hello World from $(hostname -f)" > /var/www/html/index.html