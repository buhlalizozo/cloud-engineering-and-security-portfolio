\# 03 — AWS SOC Security Monitoring \& Incident Investigation



\## Overview



This project demonstrates a structured \*\*SOC-style cloud security investigation\*\* within an Amazon Web Services (AWS) environment.



The investigation focused on an \*\*anomalous successful login to an Amazon RDS database\*\* using an Amazon GuardDuty sample finding.



The finding was used to validate the detection pipeline between \*\*Amazon GuardDuty and AWS Security Hub\*\* and to demonstrate the workflow of reviewing, investigating, assessing, and documenting a cloud security incident.



The goal was to demonstrate practical skills in \*\*security monitoring, threat detection, incident triage, investigation, impact assessment, and incident response documentation\*\*.



\## Technologies Used



\- Amazon Web Services (AWS)

\- Amazon GuardDuty

\- AWS Security Hub

\- Amazon RDS

\- AWS CloudTrail

\- AWS Identity and Access Management (IAM)

\- AWS Security Groups

\- Git

\- GitHub

\- Markdown



\## Objectives



\- Review an Amazon GuardDuty security finding

\- Investigate an anomalous successful RDS login

\- Identify the affected AWS resource

\- Review finding severity and technical details

\- Confirm GuardDuty findings propagate into AWS Security Hub

\- Validate that cloud security monitoring is functioning

\- Assess the potential impact of the finding

\- Identify appropriate containment and remediation actions

\- Document the investigation process

\- Demonstrate a structured SOC incident investigation workflow



\## Security Monitoring \& Incident Investigation



Amazon GuardDuty was used to generate a \*\*sample security finding\*\* representing an anomalous successful login to an Amazon RDS database.



The finding type was: `CredentialAccess:RDS/AnomalousBehavior.SuccessfulLogin`



The login itself was successful, but the access pattern differed from the account's normal baseline.



This type of finding is significant because a successful anomalous login may indicate that valid credentials were used from an unexpected source or in an unusual manner.



Because the finding was confirmed as sample data, no real production impact occurred.



The investigation was used to validate the AWS security monitoring workflow and demonstrate the process of interpreting and responding to this class of security event.



\## Incident Response Workflow



The investigation followed a structured SOC-style workflow:



&#x20;   Amazon GuardDuty

&#x20;          |

&#x20;          v

&#x20;   Security Finding Generated

&#x20;          |

&#x20;          v

&#x20;   Finding Review

&#x20;          |

&#x20;          v

&#x20;   Affected RDS Resource Identified

&#x20;          |

&#x20;          v

&#x20;   Security Hub Validation

&#x20;          |

&#x20;          v

&#x20;   Incident Investigation

&#x20;          |

&#x20;          v

&#x20;   Impact Assessment

&#x20;          |

&#x20;          v

&#x20;   Response Recommendations

&#x20;          |

&#x20;          v

&#x20;   Incident Documentation



\### Workflow Purpose



\- \*\*GuardDuty Detection\*\* — identifies suspicious or anomalous activity

\- \*\*Finding Review\*\* — reviews finding type, severity, resource, and event details

\- \*\*Resource Identification\*\* — identifies the affected Amazon RDS resource

\- \*\*Security Hub Validation\*\* — confirms the finding appears in AWS Security Hub

\- \*\*Incident Investigation\*\* — analyzes the finding and supporting evidence

\- \*\*Impact Assessment\*\* — evaluates potential security consequences

\- \*\*Response Recommendations\*\* — identifies containment and remediation actions

\- \*\*Incident Documentation\*\* — records the investigation and outcome



\## Architecture



The environment uses AWS-native security services to detect, centralize, investigate, and document suspicious activity affecting an Amazon RDS resource.



&#x20;                       AWS Environment

&#x20;                             |

&#x20;                             v

&#x20;                        Amazon RDS

&#x20;                             |

&#x20;                             v

&#x20;                  Anomalous Login Activity

&#x20;                             |

&#x20;                             v

&#x20;                     Amazon GuardDuty

&#x20;                             |

&#x20;                             v

&#x20;                      Security Finding

&#x20;                             |

&#x20;                             v

&#x20;                     AWS Security Hub

&#x20;                             |

&#x20;                             v

&#x20;                   Finding Review \& Triage

&#x20;                             |

&#x20;                             v

&#x20;                    Incident Investigation

&#x20;                             |

&#x20;                +------------+------------+

&#x20;                | |

&#x20;                v v

&#x20;          AWS CloudTrail AWS IAM

&#x20;          Activity Review Identity Review

&#x20;                | |

&#x20;                +------------+------------+

&#x20;                             |

&#x20;                             v

&#x20;                      Impact Assessment

&#x20;                             |

&#x20;                             v

&#x20;                   Response Recommendations

&#x20;                             |

&#x20;                             v

&#x20;                     Incident Report



\### Architecture Components



\- \*\*Amazon RDS\*\* — represents the database resource associated with the anomalous login

\- \*\*Amazon GuardDuty\*\* — generates the security finding

\- \*\*AWS Security Hub\*\* — centralizes and displays the finding

\- \*\*AWS CloudTrail\*\* — can be reviewed to investigate AWS API activity around the event

\- \*\*AWS IAM\*\* — supports identity and credential investigation

\- \*\*AWS Security Groups\*\* — can be reviewed or restricted during containment

\- \*\*Incident Investigation\*\* — analyzes the finding and related evidence

\- \*\*Impact Assessment\*\* — evaluates the potential effect of the event

\- \*\*Incident Report\*\* — documents the investigation and recommended response



\## Incident Summary



| Field | Value |

|---|---|

| \*\*Finding Type\*\* | CredentialAccess:RDS/AnomalousBehavior.SuccessfulLogin |

| \*\*Finding ID\*\* | 01a0a3e3774c4f07b5b6f6ab7a561e51 |

| \*\*Severity\*\* | High |

| \*\*Detection Source\*\* | Amazon GuardDuty |

| \*\*Region\*\* | us-east-1 |

| \*\*Resource Affected\*\* | RDS shard group — RDSLimitlessDB |

| \*\*Action Type\*\* | RDS\_LOGIN\_ATTEMPT |

| \*\*First Seen\*\* | 2026-08-19 07:19:55 UTC |

| \*\*Last Seen\*\* | 2026-08-19 07:19:55 UTC |

| \*\*Login Result\*\* | 1 successful, 0 failed, 0 incomplete connections |

| \*\*Finding Nature\*\* | Sample finding |



\## What the Finding Means



A valid login succeeded against an Amazon RDS database, but the login behavior differed from the established access baseline.



GuardDuty therefore classified the event as anomalous rather than treating it as a normal authentication event.



The fact that the login was successful is important. A failed login may indicate an unsuccessful attempt, while a successful anomalous login may indicate:



\- Compromised credentials

\- Unauthorized use of valid credentials

\- Unexpected access from a new location or source

\- Abnormal authentication behavior

\- Potential credential misuse



Because this was a GuardDuty sample finding, the event was used for testing and investigation rather than representing a real compromise.



\## Investigation



The investigation included the following steps:



1\. Opened the security finding directly in Amazon GuardDuty

2\. Reviewed the full finding details

3\. Confirmed the finding type and severity

4\. Identified the affected Amazon RDS resource

5\. Reviewed actor information such as source IP, ASN, and location fields

6\. Reviewed the action type and login result

7\. Confirmed GuardDuty and Security Hub integration was active; this specific sample finding was not individually      forwarded into Security Hub, which is expected behavior for GuardDuty sample findings

8\. Confirmed this behaviour is consistent with GuardDuty's documented handling of sample findings

9\. Confirmed that GuardDuty monitoring was active and generating findings

10\. Verified that the finding contained the `Sample: true` flag



The sample flag confirmed that the event represented built-in GuardDuty test data rather than a real detected compromise.



\## Detection Pipeline Validation



The investigation confirmed that the AWS detection pipeline was operating correctly.



&#x20;   Amazon RDS Activity

&#x20;           |

&#x20;           v

&#x20;   Amazon GuardDuty

&#x20;           |

&#x20;           v

&#x20;   Security Finding

&#x20;           |

&#x20;           v

&#x20;   AWS Security Hub

&#x20;           |

&#x20;           v

&#x20;   SOC Investigation



The finding was successfully generated in GuardDuty and later confirmed visible in AWS Security Hub. This demonstrated that the two AWS security services were correctly integrated.



\## Impact Assessment



Because the finding was confirmed as sample data, there was \*\*no real production impact\*\*.



If the finding had represented a real event, the potential impact could include:



\- Unauthorized access to the Amazon RDS database

\- Exposure of data stored in the database

\- Use of compromised credentials

\- Unauthorized database activity

\- Potential lateral movement if the same credentials were reused

\- Further compromise of connected resources



The investigation therefore treated the finding as a realistic security scenario while clearly distinguishing test data from real production activity.



\## Recommended Response



If this had been a real security finding, appropriate response actions would include:



\- Rotate the affected RDS database credentials immediately

\- Restrict the RDS Security Group to known and expected source IP ranges

\- Review AWS CloudTrail activity around the time of the login

\- Investigate the source of the credential usage

\- Review AWS IAM to identify the associated identity or role

\- Assess whether the identity has excessive permissions

\- Temporarily disable or restrict the identity if compromise is suspected

\- Review additional RDS activity

\- Continue monitoring for related GuardDuty findings

\- Investigate whether the same credentials were used elsewhere



\## Security Controls Demonstrated



The project demonstrates practical understanding of:



\- Cloud threat detection

\- Security finding triage

\- AWS security monitoring

\- Centralized security findings

\- Identity investigation

\- Credential security

\- Network access restriction

\- AWS activity auditing

\- Incident containment

\- Security impact assessment

\- Incident response planning

\- Security documentation



\## Validation



The project successfully validated the AWS security monitoring workflow.



Validation included:



\- Confirming the GuardDuty sample finding was generated

\- Reviewing finding details

\- Identifying the affected Amazon RDS resource

\- Confirming the finding was marked as sample data

\- Confirming the finding appeared in AWS Security Hub

\- Reviewing the potential impact

\- Identifying appropriate response actions

\- Documenting the investigation in a structured incident report



The successful propagation of the finding demonstrated an operational detection pipeline between \*\*Amazon GuardDuty and AWS Security Hub\*\*.



\## Incident Report



The detailed investigation is documented separately in `INCIDENT-REPORT.md`.



The incident report contains:



\- Incident summary

\- Finding details

\- Investigation steps

\- Technical interpretation

\- Impact assessment

\- Recommended response

\- Investigation outcome



\[View the Full Incident Report](INCIDENT-REPORT.md)



\## Screenshots



Store supporting screenshots for this project inside the `screenshots/` folder.



Recommended screenshot filenames:



\- 01-guardduty-finding.png

\- 02-rds-finding-details.png

\- 03-security-hub-finding.png

\- 04-investigation-details.png

\- 05-incident-report.png



Add them to the README using:







!\[GuardDuty Finding](screenshots/01-guardduty-finding.png)









!\[RDS Finding Details](screenshots/02-rds-finding-details.png)









!\[Security Hub Finding](screenshots/03-security-hub-finding.png)









!\[Investigation Details](screenshots/04-investigation-details.png)









!\[Incident Report](screenshots/05-incident-report.png)







\## Skills Demonstrated



\- AWS Cloud Security

\- Amazon GuardDuty

\- AWS Security Hub

\- Amazon RDS Security

\- AWS CloudTrail

\- AWS IAM

\- SOC Monitoring

\- Threat Detection

\- Security Finding Analysis

\- Incident Triage

\- Incident Investigation

\- Incident Response

\- Impact Assessment

\- Credential Security

\- Security Event Analysis

\- Technical Documentation

\- Incident Reporting



\## Key Security Concepts



\- Cloud security monitoring

\- Threat detection

\- Security event triage

\- Incident investigation

\- Anomalous authentication analysis

\- Credential compromise assessment

\- Security finding correlation

\- Detection pipeline validation

\- Identity investigation

\- Network containment

\- Cloud activity auditing

\- Incident documentation



\## Future Improvements



Potential future improvements include:



\- Add additional GuardDuty investigation scenarios

\- Expand AWS CloudTrail event analysis

\- Add automated security notifications

\- Integrate Amazon EventBridge

\- Add automated incident response workflows

\- Add Python-based investigation scripts

\- Add automated remediation

\- Introduce incident severity classification

\- Map findings to MITRE ATT\&CK techniques

\- Expand the environment into a larger AWS SOC monitoring lab





\### GuardDuty Finding Overview





!\[GuardDuty Finding](screenshots/01-guardduty-finding.png)







\### RDS Finding Details





!\[RDS Finding Details](screenshots/02-rds-finding-details.png)







\### Security Hub Threat Summary





!\[Security Hub Summary](screenshots/03-security-hub-summary.png)







\### Sample Finding Confirmation





!\[Sample Finding](screenshots/04-investigation-details.png)









