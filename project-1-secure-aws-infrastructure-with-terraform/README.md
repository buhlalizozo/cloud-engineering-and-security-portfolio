# 01 — Secure AWS Cloud Infrastructure with Terraform

## Overview

This project demonstrates the deployment and security of foundational AWS cloud infrastructure using **Terraform as Infrastructure as Code (IaC)**.

The environment focuses on cloud networking, compute, identity and access management, secure storage, logging, and infrastructure automation.

The goal was to build AWS infrastructure in a way that is **repeatable, secure, documented, and manageable through code**.

---

## Technologies Used

- Amazon Web Services (AWS)
- Terraform
- Amazon VPC
- Amazon EC2
- AWS Identity and Access Management (IAM)
- Amazon S3
- AWS CloudTrail
- Security Groups
- Git
- GitHub

---

## Objectives

- Provision AWS resources using Terraform
- Create and configure an Amazon VPC
- Configure network subnets
- Deploy Amazon EC2 resources
- Configure Security Groups
- Configure IAM roles and permissions
- Configure secure Amazon S3 storage
- Enable AWS CloudTrail logging
- Apply cloud security controls
- Validate the Terraform configuration
- Verify the deployed AWS infrastructure

---

## Infrastructure as Code

Terraform was used as the primary **Infrastructure as Code** tool for defining and provisioning the AWS environment.

Instead of relying only on manual configuration through the AWS Management Console, cloud resources were defined through Terraform configuration files.

This approach demonstrates:

- Declarative infrastructure
- Automated cloud provisioning
- Reproducible deployments
- Consistent resource configuration
- Infrastructure validation
- Version-controlled infrastructure
- Reduced manual configuration

---

## Terraform Workflow

The infrastructure was deployed using the standard Terraform workflow:

```bash
terraform init
terraform validate
terraform plan
terraform apply
```

### Workflow Purpose

- `terraform init` — initializes the Terraform working directory and required providers
- `terraform validate` — checks the Terraform configuration for syntax and configuration errors
- `terraform plan` — previews the infrastructure changes Terraform will make
- `terraform apply` — provisions the defined AWS infrastructure

---

## Architecture

The environment combines Terraform-based provisioning with AWS networking, compute, storage, identity, and logging services.

```text
                    Terraform
                        |
                        v
               AWS Infrastructure
                        |
                        v
                  Amazon VPC
                        |
              +---------+---------+
              | |
              v v
           Subnets Security Groups
              | |
              +---------+---------+
                        |
                        v
                   Amazon EC2
                        |
              +---------+---------+
              | |
              v v
          Amazon S3 AWS CloudTrail
              | |
              v v
        Secure Storage Logging & Auditing
```

### Architecture Components

- **Terraform** — defines and provisions the AWS infrastructure
- **Amazon VPC** — provides an isolated cloud network
- **Subnets** — organize resources within the VPC
- **Security Groups** — control inbound and outbound network traffic
- **Amazon EC2** — provides compute resources
- **Amazon S3** — provides secure cloud storage
- **AWS IAM** — manages identity, roles, and access permissions
- **AWS CloudTrail** — records AWS API activity for logging, auditing, and security investigations
