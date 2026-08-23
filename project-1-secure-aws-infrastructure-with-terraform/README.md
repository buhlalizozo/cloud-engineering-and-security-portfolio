# 01 — Secure AWS Cloud Infrastructure

## Overview

This implementation demonstrates the deployment and security of foundational AWS cloud resources, with a focus on networking, identity and access management, secure storage, logging, and infrastructure security.

The environment was designed to demonstrate practical cloud engineering and security concepts using core AWS services.

---

## Objectives

- Build a foundational AWS cloud environment
- Configure secure network segmentation
- Deploy and manage EC2 resources
- Apply IAM roles and permissions
- Configure secure storage using Amazon S3
- Implement logging and auditing with AWS CloudTrail
- Apply security controls using Security Groups
- Validate the deployed infrastructure

---

## Architecture

The environment includes:

- Amazon VPC
- Public and private subnets
- Amazon EC2
- Security Groups
- IAM roles and policies
- Amazon S3
- AWS CloudTrail
- Logging and monitoring controls

### Architecture Flow

Internet  
↓  
VPC  
↓  
Public / Private Subnets  
↓  
EC2 Resources  
↓  
Security Controls  
↓  
Logging & Monitoring

---

## Technologies Used

- Amazon Web Services (AWS)
- Amazon VPC
- Amazon EC2
- AWS IAM
- Amazon S3
- AWS CloudTrail
- Security Groups

---

## Implementation

### Networking

Configured a Virtual Private Cloud to provide an isolated AWS network environment.

The network was segmented using subnets to separate resources and reduce unnecessary exposure.

### Compute

Deployed Amazon EC2 resources within the configured network environment.

Security Groups were used to control inbound and outbound traffic.

### Identity and Access Management

Configured IAM roles and permissions to provide controlled access to AWS resources.

Permissions were designed around least-privilege principles.

### Storage

Configured Amazon S3 storage with security controls to reduce unintended public exposure.

### Logging and Auditing

Enabled AWS CloudTrail to capture API activity and provide visibility into actions performed within the AWS environment.

---

## Security Controls

The implementation includes:

- Least-privilege IAM access
- Restricted Security Group rules
- Network segmentation
- Secure S3 configuration
- Encryption
- CloudTrail auditing
- Controlled resource access

---

## Validation

The environment was validated by confirming:

- VPC and subnet configuration
- EC2 deployment
- Security Group rules
- IAM permissions
- S3 security configuration
- CloudTrail logging activity

---

## Troubleshooting

During implementation, cloud configuration and connectivity issues were reviewed by checking:

- Security Group rules
- Subnet configuration
- Routing
- IAM permissions
- Resource configuration
- AWS service logs

Troubleshooting was used to validate that resources were configured correctly and securely.

---

## Screenshots

Screenshots documenting the environment should be stored inside:

```text
screenshots/
