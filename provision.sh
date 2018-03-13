#!/usr/bin/env bash
sudo yum install httpd apache2 -y
sudo yum update -y
set -e
sudo touch /var/www/html/index.html
echo "Hello ?(0_0)? world" | sudo tee /var/www/html/index.html
sudo service httpd start
sudo chkconfig httpd on
