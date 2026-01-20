#!/bin/bash

IMAGE_NAME=anvith3068/node-devops-app

docker stop nodeapp || true
docker rm nodeapp || true

docker pull $IMAGE_NAME:latest

docker run -d -p 80:3000 --name nodeapp $IMAGE_NAME:latest

