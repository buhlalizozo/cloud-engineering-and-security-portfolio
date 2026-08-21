# Cloud Engineering and Security portfolio
Cloud security portfolio featuring AWS, Microsoft Sentinel, Terraform, Docker, Kubernetes, SOC monitoring, incident response and automated remediation

---

## Project 1: Secure AWS Infrastructure with Terraform

**Timeframe:** 2 hours  
**Status:** Planned

- Build secure AWS infrastructure using Terraform
- Create a VPC, subnet, EC2 instance, IAM role, and security groups
- Configure encrypted S3 storage
- Enable CloudTrail logging
- Add an architecture diagram and technical documentation

**Tools:** AWS, Terraform

---

## Project 2: Secure Docker and Kubernetes Deployment

**Timeframe:** 2 hours  
**Status:** Planned

- Containerize a Python application with Docker
- Deploy it to a local Kubernetes cluster using Minikube
- Create a Deployment, Service, ConfigMap, and Secret
- Configure liveness and readiness probes
- Apply resource limits and non-root container settings
- Add basic Kubernetes security controls

**Tools:** Docker, Kubernetes, Minikube, Python

---

## Project 3: AWS SOC Detection and Incident Response

**Timeframe:** 1 hours
**Status:** Completed

- Enabled Amazon GuardDuty on the AWS account, with all protection features turned on
- Enabled AWS Security Hub with essential security standards (vulnerability management, posture management, network reachability scanning)
- Generated 410 sample GuardDuty findings to simulate real security events
- Confirmed findings correctly propagated from GuardDuty into Security Hub (438 total findings visible)
- Investigated a High severity finding: CredentialAccess:RDS/AnomalousBehavior.SuccessfulLogin
- Documented the full investigation timeline — detection, investigation, response, and outcome
- Produced a formal SOC incident report (INCIDENT-REPORT.md)

**Tools:** AWS GuardDuty, AWS Security Hub, AWS CLI

---

## Project 4: Serverless Automation with Azure Logic Apps and Functions

**Timeframe:** Under 1 hour
**Status:** Completed

- Created an Azure Logic App to act as the automation trigger/orchestrator
- Built an Azure Function to handle the processing logic
- Connected the Logic App to the Function so the workflow runs automatically
- Tested the workflow end-to-end to confirm it triggers and executes correctly
- Documented the architecture and setup in the project README

**Tools:** Microsoft Azure, Azure Logic Apps, Azure Functions

---

## Project 5: Automated Azure Security Remediation with Python

**Timeframe:** TBD
**Status:** Planned

- Identify a common insecure Azure configuration to target: a Storage Account with public blob access enabled
- Write a Python script using the Azure SDK (azure-mgmt-storage) to scan Storage Accounts and detect any with public access enabled
- Build an Azure Function that runs the detection script on a schedule (Timer Trigger)
- Add remediation logic: when a misconfigured Storage Account is found, automatically disable public blob access via the SDK
- Set up an Azure Monitor alert or Logic App to send a notification (email) whenever a remediation action runs
- Test the workflow by intentionally creating a Storage Account with public access enabled, confirming the Function detects and fixes it automatically
- Document the full workflow, architecture, and before/after evidence in the project README

**Tools:** Python, Azure Functions, Azure SDK for Python (azure-mgmt-storage), Azure Monitor

## Skills Demonstrated

- Cloud engineering
- Cloud security
- SOC monitoring and investigation
- Infrastructure as code
- Containerization and orchestration
- Security automation
- Incident response
- Technical documentation

---

## Estimated Portfolio Time

Approximately  14 hours across 10 to 11 working days.

