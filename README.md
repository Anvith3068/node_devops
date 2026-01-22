**End‑to‑End CI/CD Pipeline for Node.js Application on AWS using Jenkins & Docker**
This project demonstrates a complete DevOps CI/CD workflow where a Node.js application is automatically built, containerized, pushed to Docker Hub, and deployed to an AWS EC2 instance using Jenkins pipelines triggered by GitHub webhooks.

**Project Highlights**
•	Automated CI/CD pipeline using Jenkins
•	Containerization with Docker
•	Deployment on AWS EC2 (Ubuntu)
•	Source control with GitHub
•	Webhook based auto deployment
•	Shell scripting for production deployment
•	Built and managed from WSL (Windows Subsystem for Linux)

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

**Tech Stack**
## Category	          Tools
Language	          Node.js
CI/CD	              Jenkins
Containerization	  Docker
Cloud	              AWS EC2 (Ubuntu)
SCM	                GitHub
Automation	        Shell Scripting
Local Environment	  WSL (Ubuntu)


## Screenshots

### Jenkins Pipeline
![Jenkins Pipeline](screenshots/Jenkins_pipeline)

### Application Running
![Browser](screenshots/Application_running)
