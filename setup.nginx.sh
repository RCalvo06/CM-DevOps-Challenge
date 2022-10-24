  #!/bin/bash


#nginx

    #Updates the OS
    sudo apt-get update

    #Installs nginx
    sudo apt-get install nginx -y

    #Keeps nginx enabled
    sudo systemctl enable nginx


