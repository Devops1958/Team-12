#!/bin/bash
sudo yum update
sudo install httpd -y
sudo systemctl start
sudo systemctl enable
sudo install git -y
useradd stephen
groupadd Devops23
sudo yum install unzip  -y  #( apt install wget unzip -y )
wget https://github.com/utrains/static-resume/archive/refs/heads/main.zip
unzip main.zip
cp -r static-resume-main/* /var/www/html/  

