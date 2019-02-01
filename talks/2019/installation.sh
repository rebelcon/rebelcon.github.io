#!/bin/bash
#create a new user
adduser --gecos "" poppulo

#assign sudo permissions
usermod -aG sudo poppulo

#install apache2
apt-get update
apt-get install -y apache2

#move the hello_world.html to the www directory
cp hello.html /var/www/html/

#opens port 80 on the firewall
ufw enable
ufw allow 80

exit 1