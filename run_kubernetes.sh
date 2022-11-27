#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerimage="my-project5-app"
dockerpath="sunvndev/$dockerimage"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy my-running-app --image=$dockerpath

# Step 3:
# List kubernetes pods
# kubectl get pods
podname=$(kubectl get pods -o name)

# Step 4:
# Forward the container port to a host
kubectl port-forward $podname --address 0.0.0.0 8000:80
