#!/bin/bash

echo 'Installin docker ...'
sudo yum update
sudo yum install -y docker
sudo usermod -a -G docker ec2-user

echo 'Installing docker-compose ...'
sudo curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo service docker start
sudo chkconfig docker on

echo 'Both docker and docker-compose are successfully installed!'