#!/bin/bash
# Run these commands to setup the environment
## NOTE: Run this file from a terminal by typing sh ./env_setup.sh and pressing ENTER
# STEP 1
###############################
# Update Packages
sudo apt-get update -y

# STEP 2
###############################
# Install packages to allow APT to install packages over HTTPS
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y

# STEP 3
###############################
# Add Docker's Official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# STEP 4
###############################
# Setup Stable Docker Repository
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# STEP 5
##############################
# Install Docker Packages
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

# STEP 6
#############################
# Verify Docker is running...
sudo docker run hello-world



######################################
######### BONUS OPTIONAL #############
######################################
# We notice that we ran docker as a privileged user with `sudo`
# Let's setup Docker to be run by non-privileged users

# STEP 1
#############################
# Create Docker group
sudo groupadd docker

# STEP 2
#############################
# Add current user to Docker group
sudo usermod -aG docker $USER

# STEP 3
#############################
# Log out/Log in/ or run this command to bring changes to current session
newgrp docker

# STEP 4
#############################
# Run to verify
docker run hello-world
