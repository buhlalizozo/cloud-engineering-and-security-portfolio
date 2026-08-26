from azure.identity import AzureCliCredential
from azure.mgmt.storage import StorageManagementClient
from azure.mgmt.storage.models import StorageAccountUpdateParameters

# --- Configuration ---
import os
SUBSCRIPTION_ID = os.environ.get("AZURE_SUBSCRIPTION_ID")
RESOURCE_GROUP = os.environ.get("AZURE_RESOURCE_GROUP", "rg-project5-remediation")


# --- Authenticate using Azure CLI credentials ---
credential = AzureCliCredential()

storage_client = StorageManagementClient(
    credential,
    SUBSCRIPTION_ID
)

# --- Scan storage accounts in the resource group ---
accounts = storage_client.storage_accounts.list_by_resource_group(
    RESOURCE_GROUP
)

for account in accounts:
    print(f"Storage Account: {account.name}")
    print(f"Allow Blob Public Access: {account.allow_blob_public_access}")

    if account.allow_blob_public_access:
        print("MISCONFIGURATION DETECTED: Public blob access is enabled.")
        print("Remediating: disabling public access...")

        storage_client.storage_accounts.update(
            RESOURCE_GROUP,
            account.name,
            StorageAccountUpdateParameters(
                allow_blob_public_access=False
            )
        )

        print("OK: Public access has been disabled.\n")
    else:
        print("OK: No misconfiguration found.\n")
