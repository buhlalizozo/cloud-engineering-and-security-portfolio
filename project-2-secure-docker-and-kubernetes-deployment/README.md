\# Project 2: Secure Docker and Kubernetes Deployment



A minimal Flask API containerized with Docker and deployed to Kubernetes, built with security hardening as the primary focus rather than the application logic itself.



\## Overview



This project demonstrates secure containerization and orchestration practices:

\- A lightweight Flask app with a health check endpoint

\- A hardened Dockerfile (non-root user, minimal base image)

\- Kubernetes manifests enforcing pod-level security controls

\- Local deployment and verification via Minikube



\## Architecture



\- \*\*app.py\*\* — Flask API with `/` and `/health` endpoints

\- \*\*Dockerfile\*\* — builds a container image using `python:3.12-slim`, running as a non-root user with a numeric UID

\- \*\*k8s/deployment.yaml\*\* — Kubernetes Deployment with 2 replicas, strict security context, resource limits, and liveness/readiness probes

\- \*\*k8s/service.yaml\*\* — NodePort Service exposing the app



\## Security Measures



\- \*\*Non-root execution\*\*: container runs as UID 1001, not root

\- \*\*No privilege escalation\*\*: allowPrivilegeEscalation set to false

\- \*\*Read-only root filesystem\*\*: readOnlyRootFilesystem set to true

\- \*\*Dropped Linux capabilities\*\*: all capabilities removed

\- \*\*Resource limits\*\*: CPU and memory requests/limits set to prevent resource exhaustion

\- \*\*Health checks\*\*: liveness and readiness probes on /health



\## How to Run Locally



1\. Build the image:



docker build -t secure-flask-app:latest .



2\. Point your terminal at Minikube's Docker environment and rebuild inside it:



minikube -p minikube docker-env | Invoke-Expression

docker build -t secure-flask-app:latest .



3\. Deploy to Kubernetes:



kubectl apply -f k8s/deployment.yaml

kubectl apply -f k8s/service.yaml



4\. Access the app:



minikube service secure-flask-service --url



\## What This Demonstrates



Cloud security and SOC-relevant skills: container hardening, least-privilege configuration, Kubernetes security contexts, and secure-by-default infrastructure design.

