\## Incident: Anomalous RDS Login

\*(GuardDuty sample finding — used to validate detection pipeline and demonstrate incident investigation workflow)\*



\*\*Finding:\*\* CredentialAccess:RDS/AnomalousBehavior.SuccessfulLogin | High | GuardDuty

\*\*Resource:\*\* RDS instance (dbshardgroupidentifier) | Account 409171460431



\*\*What it means:\*\* A valid login succeeded on an RDS database but broke from the account's normal access pattern — this usually points to compromised credentials rather than a brute-force attempt, since the login itself succeeded.



\*\*Investigation:\*\* Confirmed finding details in GuardDuty; verified it propagated to Security Hub (\~5 min sync), confirming the detection pipeline works end-to-end.



\*\*Response if live:\*\* Rotate DB credentials, restrict the RDS security group, check CloudTrail for how the credential was obtained, isolate any compromised IAM identity.



\*\*Outcome:\*\* Finding was successfully detected by GuardDuty and confirmed visible in Security Hub, proving the two services are correctly integrated. This validates a working detection pipeline for Project 3 and demonstrates the ability to investigate and respond to a security finding end-to-end.

