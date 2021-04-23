#!/bin/bash
# Download Exercise files
# Download Dockerfile
curl -o Dockerfile https://raw.githubusercontent.com/mrcloudchase/Containers/main/Dockerfile

# Download index.html
curl -o index.html https://raw.githubusercontent.com/mrcloudchase/Containers/main/index.html



###### START HERE #########
# Run to follow Docker container exercise


# STEP 1
############################
# Make Project directory and change directory
mdkir -v ~/Desktop/LiveDemo
cd ~/Desktop/LiveDemo

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

# STEP 5
##########################
# Push container image to Docker Hub
# Login to Docker Hub from CLI
docker login --username=username --email=email@company.com
# check image ID
docker images
# tag image
docker tag <image_id> dockerhubusername/containerdemo:latest
# push image
docker push dockerhubusername/containerdemo:latest

# STEP 6
##########################
# Verify Docker Hub via browser
# Visit http://127.0.0.1:1234

######## END #############