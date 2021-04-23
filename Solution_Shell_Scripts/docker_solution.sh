#!/bin/bash
###### START HERE #########
# Run to follow Docker container exercise

# STEP 0
############################
# Make Project directory and change directory
mkdir -v ~/Desktop/LiveDemo
cd ~/Desktop/LiveDemo

# STEP 1
############################
# Download Exercise files
# Download Dockerfile
curl -o ~/Desktop/LiveDemo/Dockerfile https://raw.githubusercontent.com/mrcloudchase/Containers/main/Dockerfile
# Download index.html
curl -o ~/Desktop/LiveDemo/index.html https://raw.githubusercontent.com/mrcloudchase/Containers/main/index.html

# STEP 2
############################
# Build Container Image
docker build --tag containerdemo .

# STEP 3
###########################
# List built images
docker image ls

# STEP 4
##########################
# Run Container
docker run -p 1234:80 containerdemo
