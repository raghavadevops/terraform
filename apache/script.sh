#!/bin/bash

# sleep until instance is ready
until [[ -f /var/lib/cloud/instance/boot-finished ]]; do
  sleep 1
done

sudo yum install wget unzip vim -y
# install httpd
sudo yum install httpd* -y
cd /tmp/
wget https://github.com/BlackrockDigital/startbootstrap-grayscale/archive/gh-pages.zip
unzip gh-pages.zip
cp -r gh-pages/* /var/www/html/
systemctl start httpd



