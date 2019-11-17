#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t sssdexp/udacity:latest .
#docker tag udacity:latest sssdexp/udacity:latest
# Step 2: 
# List docker images
docker images 
# Step 3: 
# Run flask app
docker container stop udacitydocker
docker container rm udacitydocker
docker run -d --name udacitydocker -p 8080:80 udacity:latest
