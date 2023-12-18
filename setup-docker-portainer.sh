#!/bin/bash

# Update system packages
sudo apt update && sudo apt upgrade -y

# Install necessary packages
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the Docker repository to APT sources
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update package database with Docker packages from the newly added repo
sudo apt update

# Make sure you are about to install from the Docker repo instead of the default Ubuntu repo
apt-cache policy docker-ce

# Install Docker
sudo apt install docker-ce -y

# Enable and start Docker service
sudo systemctl enable docker && sudo systemctl start docker

# (Optional) Install Docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Pull and run Portainer
sudo docker pull portainer/portainer-ce:latest
sudo docker run -d -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce

# Script end
echo "Docker and Portainer installation and configuration completed."
