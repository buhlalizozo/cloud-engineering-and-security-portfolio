# Cloud Engineering & Security Portfolio

Hands-on cloud engineering and security portfolio focused on designing, securing, automating, monitoring, and troubleshooting cloud environments across **Amazon Web Services (AWS)** and **Microsoft Azure**.

This portfolio demonstrates practical experience with **cloud infrastructure, cloud security, containerization, serverless computing, automation, incident response, monitoring, and Infrastructure as Code**.

---

## Core Technologies

### Cloud Platforms

- Amazon Web Services (AWS)
- Microsoft Azure

### Infrastructure, DevOps & Automation

- Terraform
- Docker
- Kubernetes
- Minikube
- Git
- GitHub
- Python

### Security & Monitoring

- AWS GuardDuty
- AWS Security Hub
- AWS CloudTrail
- AWS Identity and Access Management (IAM)
- Azure Monitor
- Cloud security configuration
- Security monitoring
- Incident investigation
- Automated remediation

### Serverless & Cloud Automation

- Azure Functions
- Azure Logic Apps
- Azure SDK for Python

---

# Engineering Portfolio

## 01 — Secure AWS Cloud Infrastructure

AWS cloud infrastructure implementation focused on deploying and securing foundational AWS resources.

### Technical Focus

- Amazon VPC
- Public and private subnet configuration
- Amazon EC2
- IAM roles and permissions
- Security Groups
- Amazon S3
- Encryption
- AWS CloudTrail
- Cloud logging and auditing

### Engineering Concepts

- Network segmentation
- Identity and access management
- Least-privilege access
- Secure storage
- Infrastructure monitoring
- Cloud auditing
- Secure cloud architecture

### Technologies

`AWS` `Amazon VPC` `EC2` `IAM` `S3` `CloudTrail`

---

## 02 — Secure Docker & Kubernetes Deployment

Containerized application deployment demonstrating Docker containerization, Kubernetes orchestration, workload configuration, health monitoring, and container security.

### Technical Focus

- Docker
- Kubernetes
- Minikube
- Kubernetes Deployments
- Kubernetes Services
- ConfigMaps
- Secrets
- Liveness probes
- Readiness probes
- Resource limits

### Security Controls

- Non-root container execution
- Resource restrictions
- Kubernetes Secrets
- Application health monitoring
- Secure workload configuration

### Engineering Concepts

- Containerization
- Container orchestration
- Application deployment
- Workload configuration
- Container security
- Health monitoring

### Technologies

`Docker` `Kubernetes` `Minikube` `Python`

---

## 03 — AWS SOC Detection & Incident Response

Cloud security operations implementation focused on threat detection, security monitoring, investigation, and incident response within AWS.

### Technical Focus

- Amazon GuardDuty
- AWS Security Hub
- Security findings
- Threat detection
- Security posture monitoring
- Incident investigation
- Cloud security analysis

### Incident Response Workflow

**Detect → Investigate → Validate → Respond → Document**

The environment was used to generate and investigate simulated security findings, review security events, assess potential impact, and document the incident response process.

### Engineering Concepts

- Security Operations
- Threat detection
- Security monitoring
- Incident investigation
- Incident response
- Security event analysis

### Technologies

`AWS GuardDuty` `AWS Security Hub` `AWS Cloud Security`

---

## 04 — Serverless Automation with Azure Logic Apps & Functions

Serverless cloud automation implementation demonstrating event-driven architecture using Microsoft Azure.

### Architecture

**Trigger → Azure Logic App → Azure Function → Processing → Response**

### Technical Focus

- Azure Logic Apps
- Azure Functions
- Serverless architecture
- Workflow orchestration
- Event-driven automation
- Python processing logic
- Cloud service integration

### Engineering Concepts

- Event-driven computing
- Serverless application design
- Automated workflows
- Cloud integration
- Application processing
- Workflow automation

### Technologies

`Microsoft Azure` `Azure Logic Apps` `Azure Functions` `Python`

---

## 05 — Automated Azure Security Remediation with Python

Cloud security automation implementation designed to detect insecure Azure Storage configurations and automatically remediate them.

### Security Scenario

A storage account with public blob access enabled can introduce unnecessary exposure and increase cloud security risk.

The solution uses Python and Azure services to detect the insecure configuration and automatically apply remediation.

### Architecture

**Azure Storage Account**  
↓  
**Azure Function Timer Trigger**  
↓  
**Python Security Scanner**  
↓  
**Azure SDK**  
↓  
**Misconfiguration Detection**  
↓  
**Automatic Remediation**  
↓  
**Azure Monitor / Notification**

### Technical Focus

- Python
- Azure Functions
- Azure SDK for Python
- Azure Storage
- Azure Monitor
- Security automation
- Configuration scanning
- Automated remediation

### Security Controls

- Detection of publicly accessible storage
- Automated configuration assessment
- Programmatic security remediation
- Scheduled security checks
- Monitoring and alerting

### Engineering Concepts

- Cloud security automation
- Continuous configuration assessment
- Automated remediation
- Python cloud automation
- Security monitoring
- Secure cloud configuration

### Technologies

`Python` `Azure Functions` `Azure SDK` `Azure Storage` `Azure Monitor`

---

## 06 — Secure Azure Storage Provisioning with Terraform

**Status: In Development**

Infrastructure as Code implementation focused on securely provisioning Azure resources using Terraform.

The environment recreates Azure Storage infrastructure through code instead of relying on manual portal configuration, with security controls applied from deployment.

### Technical Focus

- Terraform
- Azure Resource Group
- Azure Storage Account
- Terraform variables
- Terraform outputs
- Provider configuration
- Secure-by-default infrastructure
- Public blob access disabled by default
- Infrastructure validation
- Automated provisioning

### Terraform Workflow

**terraform init → terraform validate → terraform plan → terraform apply**

### Security Controls

- Public blob access disabled by default
- Reproducible infrastructure configuration
- Controlled deployment configuration
- Secure resource provisioning

### Engineering Concepts

- Infrastructure as Code
- Declarative infrastructure
- Reproducible deployments
- Secure cloud provisioning
- Configuration automation
- Infrastructure validation

### Technologies

`Terraform` `Microsoft Azure` `Azure Storage` `Infrastructure as Code`

---

## 07 — Secure Production-Style Cloud Platform

**Status: Flagship Build — In Development**

End-to-end cloud engineering environment designed to integrate infrastructure provisioning, cloud security, containerization, CI/CD, automation, monitoring, and operational practices into a single production-style platform.

### Planned Architecture

**GitHub**  
↓  
**CI/CD Pipeline**  
↓  
**Terraform Infrastructure Provisioning**  
↓  
**Cloud Environment**  
↓  
**Containerized Application**  
↓  
**Kubernetes / Managed Runtime**  
↓  
**Monitoring + Logging + Security Controls**

### Technical Focus

- Terraform
- Infrastructure as Code
- Cloud networking
- IAM / RBAC
- Docker
- Kubernetes
- GitHub Actions
- CI/CD
- Python automation
- Secrets management
- Logging
- Monitoring
- Security controls
- Vulnerability checks
- Deployment validation
- Architecture documentation

### Security Focus

- Least-privilege access
- Secure networking
- Secrets management
- Secure container configuration
- Infrastructure security
- Logging and monitoring
- Security validation
- Automated security controls

### Engineering Concepts

- End-to-end cloud architecture
- Infrastructure automation
- Secure cloud deployment
- Container orchestration
- CI/CD automation
- Monitoring and observability
- DevSecOps
- Production-style infrastructure design

### Technologies

`Terraform` `Docker` `Kubernetes` `GitHub Actions` `Python` `AWS` `Azure`

---

# Security Engineering Approach

Security is incorporated throughout the portfolio rather than treated as a separate component.

The work demonstrates principles including:

- Least-privilege access
- Identity and access management
- Network segmentation
- Secure cloud storage
- Restricted public access
- Encryption
- Logging and auditing
- Security monitoring
- Threat detection
- Incident investigation
- Automated remediation
- Secure container configuration
- Infrastructure security

---

# Engineering Skills Demonstrated

### Cloud Engineering

- AWS infrastructure
- Azure infrastructure
- Cloud networking
- Compute
- Storage
- Monitoring
- Serverless architecture

### Cloud Security

- Identity and access management
- Security monitoring
- Threat detection
- Incident investigation
- Cloud configuration security
- Automated remediation

### Infrastructure & DevOps

- Terraform
- Infrastructure as Code
- Docker
- Kubernetes
- Git
- GitHub
- CI/CD

### Automation

- Python
- Azure Functions
- Azure Logic Apps
- Azure SDK for Python
- Security automation
- Cloud workflow automation

### Engineering Practices

- Architecture documentation
- Technical documentation
- Testing
- Validation
- Troubleshooting
- Secure-by-default configuration
- Reproducible infrastructure

---

# Current Focus

Building deeper practical experience across:

**Cloud Engineering • Cloud Security • Infrastructure as Code • Automation • DevOps • Containers**

with a focus on designing cloud environments that are:

**Secure • Automated • Reproducible • Observable • Scalable • Maintainable**


