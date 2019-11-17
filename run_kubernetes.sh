#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=sssdexp/udacity:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl delete deploy udacity
kubectl run udacity --image=sssdexp/udacity:latest --port=80 
sleep 30
# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward deploy/udacity 8080:80 &
