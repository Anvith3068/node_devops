**End‑to‑End CI/CD Pipeline for Node.js Application on AWS using Jenkins & Docker**

This project demonstrates a complete DevOps CI/CD workflow where a Node.js application is automatically built, containerized, pushed to Docker Hub, and deployed to an AWS EC2 instance using Jenkins pipelines triggered by GitHub webhooks.

##
**Project Highlights**

•	Automated CI/CD pipeline using Jenkins

•	Containerization with Docker

•	Deployment on AWS EC2 (Ubuntu)

•	Source control with GitHub

•	Webhook based auto deployment

•	Shell scripting for production deployment

•	Built and managed from WSL (Windows Subsystem for Linux)

##
**Architecture**

Developer (WSL)

│

│ git push
▼

GitHub Repository

│

│ Webhook
▼

Jenkins (on EC2)

│

│ Build Docker Image

│ Push to Docker Hub

▼
Docker Hub

│

│ Pull latest image
▼

EC2 Docker Container (Node.js App)

##
## Tech Stack

Language	         -       Node.js

CI/CD	             -      Jenkins

Containerization	 -       Docker

Cloud	             -      AWS EC2 (Ubuntu)

SCM	               -       GitHub

Automation	       -       Shell Scripting

Local Environment	 -      WSL (Ubuntu)

##
## SSH Access to EC2 Server
ssh -i ~/.ssh/devopskey.pem ubuntu@34.206.228.220

## Explanation

•	ssh – Secure Shell client

•	-i ~/.ssh/devopskey.pem – Path to your private key file

•	ubuntu – Default username for Ubuntu EC2 instances

•	34.206.228.220 – Public IP address of the EC2 server

## Notes

**Ensure the key file has correct permissions:**

chmod 400 ~/.ssh/devopskey.pem

## Docker Deployment Script (deploy.sh)

#!/bin/bash
set -e

DOCKER_USER=anvith3068
IMAGE_NAME=node-devops-app

docker stop nodeapp || true
docker rm nodeapp || true

docker pull $DOCKER_USER/$IMAGE_NAME:latest

docker run -d --restart unless-stopped -p 80:3000 --name nodeapp $DOCKER_USER/$IMAGE_NAME:latest


## Screenshots

### Jenkins Pipeline
![Jenkins Pipeline](screenshots/Jenkins_pipeline)

### Application Running
![Browser](screenshots/Application_running)
