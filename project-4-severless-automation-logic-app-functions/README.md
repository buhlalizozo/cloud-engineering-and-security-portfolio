@"

\# Project 4: Serverless Automation with Azure Logic Apps + Functions



\## Overview

An automated workflow that receives a security alert via HTTP webhook, processes it through a serverless Azure Function, and returns a confirmation response - demonstrating event-driven serverless automation for security operations.



\## Architecture

HTTP Request (simulated security alert)

&#x20;       -> Logic App (trigger: When a HTTP request is received)

&#x20;       -> Azure Function (validates + processes the alert)

&#x20;       -> Response (confirmation returned to caller)



\## Components



\*\*Azure Function\*\* (func-security-alert-processor-buhlali)

\- Runtime: Node.js 22 LTS

\- Hosting: Consumption plan (Windows)

\- Trigger: HTTP (Function-level auth key required)

\- Validates incoming JSON has severity and finding fields

\- Logs the alert details

\- Returns a 200 response with a processed confirmation message



\*\*Logic App\*\* (logic-security-alert-workflow-buhlali)

\- Hosting: Consumption plan

\- Trigger: HTTP request (with defined JSON schema for severity/finding)

\- Action: Calls the Azure Function, passing the request body through

\- Action: Returns a Response confirming the alert was processed



\## Example Request

POST <logic-app-trigger-url>

Content-Type: application/json



{

&#x20; "severity": "High",

&#x20; "finding": "Anomalous RDS Login"

}



\## Example Response

Security alert processed successfully by automated workflow.



\## Why This Matters

This pattern mirrors how real security tools (SIEMs, GuardDuty, Sentinel) integrate with downstream automation - an alert fires, gets forwarded to serverless compute for enrichment or triage, and a response confirms the pipeline worked. It's a small-scale demonstration of the same architecture used in SOAR (Security Orchestration, Automation, and Response) platforms.



\## Tools Used

\- Azure Functions

\- Azure Logic Apps

\- Azure Portal (Consumption/serverless plans)

\- PowerShell (testing via Invoke-RestMethod)

"@ | Out-File -FilePath README.md -Encoding utf8

