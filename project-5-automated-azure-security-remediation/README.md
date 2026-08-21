\## Project 5: Automated Azure Security Remediation with Python



\*\*Timeframe:\*\* \[fill in — how long did this take you overall?]

\*\*Status:\*\* Completed



\- Created a storage account and intentionally misconfigured it with public blob access enabled, to simulate a real security finding

\- Wrote a Python script using the Azure SDK (azure-identity, azure-mgmt-storage) to scan storage accounts in the resource group

\- Script detects any storage account with public blob access enabled

\- Script automatically remediates the finding by disabling public access

\- Authenticated the script using Azure CLI credentials

\- Ran the script and confirmed it correctly detected and fixed the misconfiguration

\- Verified the fix directly in the Azure Portal (Allow Blob anonymous access shows Disabled)



\*\*Tools:\*\* Python, Azure SDK (azure-identity, azure-mgmt-storage), Azure CLI, Azure Storage

