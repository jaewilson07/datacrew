---
title: Encrypting Data with Domo's Bring Your Own Key (BYOK)
url: https://domo-support.domo.com/s/article/360043427593
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamlGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamlGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZandGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZandGAC)', '[https://domo-support.domo.com/s/article/360043427593](https://domo-support.domo.com/s/article/360043427593)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZandGAC/domo-security-options](https://domo-support.domo.com/s/topic/0TO5w000000ZandGAC/domo-security-options)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003026
views: 2,306
created_date: 2022-10-24 21:00:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


Domo's BYOK is a security tool that gives complete control of the encryption keys for your Domo instance, allowing you to verify that your data is kept private at all times. In addition, BYOK includes rolling generation of data encryption keys and a built-in kill switch. You can revoke the encryption key at any time, nullifying all of your data in Domo, and ensuring that no one will have access to sensitive data. 


How Does it Work?
-----------------


Domo's BYOK is composed of the following three parts:




|  |  |
| --- | --- |
| Key%2BManagement.png | **Encryption Key Management**
BYOK supports the rotation of the encryption keys every hour. This equates to 8,760 rotating keys annually. Domo's access to the encrypted key can be revoked at any time so that the data can no longer be accessed. |
| BYOK%2B-%2Bkill%2Bswitch.png | **Kill Switch**
Utilizing the kill switch immediately caches and indexes data, rendering it unusable within seconds. This includes data accessed through laptops and mobile devices. To use this feature, you need to first revoke Domo's access to Amazon. Then, two different Domo Admins will need to activate the kill switch in their Domo Admin settings.  |
| BYOK%2B-%2BActivity%2BLogs.png | **Activity Logs**
If a user chooses to revoke their encryption keys and execute the kill switch, these events are logged in the Domo Activity Logs. This allows for immediate confirmation that data is no longer accessible. |


### 


### BYOK%2BInfographic.png


How Do I Get This?
------------------


To begin using Domo's BYOK, speak with your Domo Account Executive or Customer Success Manager. 




 

**Note:** Be prepared to include your IT team in the process of setting up BYOK. 



Prerequisites
-------------


* Must have a Domo Enterprise account
* An Amazon Key Management System (KMS) account


	+ Speak with your Domo Account Executive to determine the type of KMS account needed
* Cannot be on Microsoft Azure
* Cannot be a federated data customer
