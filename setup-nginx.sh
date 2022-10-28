#!/bin/bash


#nginx

    #Updates the OS
sudo apt-get update

    #Installs nginx
sudo apt-get install nginx -y

    #Keeps nginx enabled
sudo systemctl enable nginx

echo "<h1>Ricardo</h1><h2>Alonso</h2><h3>Calvo</h3><h1>Proyecto DevOps IaC - UCreativa</h1>" | sudo tee /var/www/html/index.nginx-debian.html
