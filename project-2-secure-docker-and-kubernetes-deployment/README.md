# 02 — Secure Docker & Kubernetes Deployment

## Overview

This project demonstrates the containerization and deployment of an application using **Docker and Kubernetes**, with a focus on workload configuration, application availability, resource management, and container security.

The environment was designed to demonstrate practical container engineering and orchestration skills using Docker, Kubernetes, and Minikube.

The goal was to deploy an application in a way that is **portable, reproducible, secure, and manageable through container orchestration**.

---

## Technologies Used

- Docker
- Kubernetes
- Minikube
- Python
- kubectl
- Docker CLI
- Kubernetes Deployments
- Kubernetes Services
- ConfigMaps
- Secrets
- Liveness Probes
- Readiness Probes

---

## Objectives

- Containerize an application using Docker
- Build and run a Docker image
- Deploy the application into Kubernetes
- Configure Kubernetes Deployments
- Expose the application using Kubernetes Services
- Configure application settings using ConfigMaps
- Manage sensitive configuration using Kubernetes Secrets
- Configure liveness probes
- Configure readiness probes
- Apply CPU and memory resource limits
- Run the container as a non-root user
- Validate application availability and workload health

---

## Containerization & Orchestration

Docker was used to package the application and its dependencies into a portable container image.

Kubernetes was then used to deploy and manage the containerized workload.

This approach demonstrates:

- Application containerization
- Portable application packaging
- Declarative workload configuration
- Container orchestration
- Automated workload management
- Application health monitoring
- Resource control
- Secure container configuration

---

## Deployment Workflow

The application deployment followed a Docker and Kubernetes workflow:

```bash
docker build -t secure-app .
docker run secure-app

kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl get pods
kubectl get services
```

### Workflow Purpose

- `docker build` — creates the Docker image from the application and Dockerfile
- `docker run` — validates that the containerized application runs successfully
- `kubectl apply` — deploys Kubernetes configuration files
- `kubectl get pods` — verifies that application pods are running
- `kubectl get services` — confirms that the Kubernetes Service is available

---

## Architecture

The environment combines Docker containerization with Kubernetes workload orchestration.

```text
                Application Source Code
                         |
                         v
                     Dockerfile
                         |
                         v
                   Docker Image
                         |
                         v
                    Kubernetes
                         |
                 +-------+-------+
                 | |
                 v v
             Deployment Service
                 |
                 v
               Pods
                 |
        +--------+--------+
        | |
        v v
    ConfigMap Secret
        |
        v
Application Configuration
        |
        v
Health Checks + Resource Controls
        |
        v
Running Containerized Application
```

### Architecture Components

- **Application Source Code** — contains the application logic
- **Dockerfile** — defines how the application container image is built
- **Docker Image** — packages the application and required dependencies
- **Kubernetes Deployment** — manages application pods and desired workload state
- **Kubernetes Service** — exposes the application to network traffic
- **Pods** — run the containerized application
- **ConfigMap** — stores non-sensitive application configuration
- **Secret** — stores sensitive configuration data
- **Liveness Probe** — checks whether the application is running correctly
- **Readiness Probe** — determines whether the application is ready to receive traffic
- **Resource Limits** — control CPU and memory consumption
- **Non-root Execution** — reduces container privilege and improves workload security
