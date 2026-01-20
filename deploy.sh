#!/bin/bash
set -e

DOCKER_USER=anvith3068
IMAGE_NAME=node-devops-app

echo "Stopping old container..."
docker stop nodeapp || true
docker rm nodeapp || true

echo "Pulling image..."
docker pull $DOCKER_USER/$IMAGE_NAME:latest

echo "Starting container..."
docker run -d \
  --restart unless-stopped \
  -p 80:3000 \
  --name nodeapp \
  $DOCKER_USER/$IMAGE_NAME:latest

echo "Deployment done"


