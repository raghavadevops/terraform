#!/bin/bash

# sleep until instance is ready
until [[ -f /var/lib/cloud/instance/boot-finished ]]; do
  sleep 1
done

sudo yum install wget unzip vim -y
# install java 
cd /tmp
wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm
sleep 5
rpm -ivh jdk-8u131-linux-x64.rpm
#install tomcat
wget http://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32-windows-x64.zip
sleep 5
unzip apache-tomcat-8.5.32-windows-x64.zip
mv apache-tomcat-8.5.32 /opt/tomcat
chmod -R 755 /opt/tomcat/bin
/opt/tomcat/bin
./startup.sh



