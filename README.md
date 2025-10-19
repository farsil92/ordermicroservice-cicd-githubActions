# Order Microservice CI/CD Project

This project is a **Spring Boot microservice** that demonstrates an automated **CI/CD pipeline** using **GitHub Actions** and **AWS EC2**.

---

##  Project Overview

- **Language:** Java (Spring Boot)
- **Build Tool:** Maven
- **Database:** H2 (in-memory)
- **Containerization:** Docker
- **CI/CD:** GitHub Actions
- **Deployment Target:** AWS EC2 (Ubuntu)
- **Port:** 8083

---

## Features

- RESTful API for managing orders.
- Automated build and test on every commit.
- Docker image build and push to Docker Hub.
- Automatic deployment to AWS EC2 via SSH.
- Lightweight and cloud-ready setup.

---

## Project Structure

ordermicroservice-cicd-githubActions/
│
├── src/ # Source code
│ ├── main/java/com/example/ordermicroservice/
│ └── main/resources/
│
├── Dockerfile # Container configuration
├── pom.xml # Maven dependencies
├── .github/workflows/ # GitHub Actions pipeline
│ └── ci-cd.yml
└── README.md # Project documentation


---

## How the CI/CD Works

1. **Developer pushes code** → GitHub triggers workflow.
2. Workflow runs the following:
   - `mvn clean package`
   - Build Docker image
   - Push image to Docker Hub
   - SSH into EC2 and deploy updated container

---

## Required GitHub Secrets

| Secret Name | Description |
|--------------|-------------|
| `DOCKER_USERNAME` | Docker Hub username |
| `DOCKER_PASSWORD` | Docker Hub access token |
| `EC2_HOST` | Public IP or DNS of your EC2 |
| `EC2_USERNAME` | Usually `ubuntu` |
| `EC2_KEY` | Private key (in single-line format) |

---

## API Endpoints

| Method | Endpoint | Description |
|--------|-----------|-------------|
| `GET` | `/orders` | Fetch all orders |
| `POST` | `/orders` | Create a new order |

---

## Commands

**Build JAR locally:**
```bash
mvn clean package

## Run Locally

java -jar target/order-microservice-0.0.1-SNAPSHOT.jar

## Build Dcoker image

docker build -t ordermicroservice-app .

##run container

docker run -d -p 8083:8083 ordermicroservice-app

Once deployed , visit : http://<your-ec2-public-ip>:8083/orders


