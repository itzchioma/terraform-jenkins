#!/bin/bash
sudo apt update -y &&
sudo apt install -y nginx
systemctl enable nginx
systemctl start nginx
echo "Hello Nginx Demo" > /var/www/html/index.html