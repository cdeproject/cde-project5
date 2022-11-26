#!/usr/bin/env bash

echo "===== Upload docker ====="

# Step 1:
# Create dockerimage
dockerimage="my-project5-app"

# Step 2:
# Build image and add a descriptive tag
docker build --tag $dockerimage .

# Step 3: 
# List docker images
docker image ls

# Step 4:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="sunvndev/$dockerimage"

# Step 5:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag $dockerimage $dockerpath
docker login -u $DOCKER_USER -p $DOCKER_PASS

# Step 6:
# Push image to a docker repository
docker push $dockerpath


