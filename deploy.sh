#!/bin/bash

IMAGE_NAME=anvith3068/node-devops-app

docker stop nodeapp || true
docker rm nodeapp || true

echo "Pulling latest image..."
docker pull $DOCKER_USER/$IMAGE_NAME:latest

docker run -d -p 80:3000 --name nodeapp $IMAGE_NAME:latest

