

Intro
-------

Domo's BYOK is a security tool that gives complete control of the encryption keys for your Domo instance, allowing you to verify that your data is kept private at all times. In addition, BYOK includes rolling generation of data encryption keys and a built-in kill switch. You can revoke the encryption key at any time, nullifying all of your data in Domo, and ensuring that no one will have access to sensitive data.


 How Does it Work?
-------------------

Domo's BYOK is composed of the following three parts:

  |  |
| --- | --- |
|  |
**Encryption Key Management**


 BYOK supports the rotation of the encryption keys every hour. This equates to 8,760 rotating keys annually. Domo's access to the encrypted key can be revoked at any time so that the data can no longer be accessed.
  |
|  |
**Kill Switch**


 Utilizing the kill switch immediately caches and indexes data, rendering it unusable within seconds. This includes data accessed through laptops and mobile devices. To use this feature, you need to first revoke Domo's access to Amazon. Then, two different Domo Admins will need to activate the kill switch in their Domo Admin settings.
  |
|  |
**Activity Logs**


 If a user chooses to revoke their encryption keys and execute the kill switch, these events are logged in the Domo Activity Logs. This allows for immediate confirmation that data is no longer accessible.
  |


###


###

How Do I Get This?
--------------------

To begin using Domo's BYOK, speak with your Domo Account Executive or Customer Success Manager.


**Note:**
 Be prepared to include your IT team in the process of setting up BYOK.


 Prerequisites
---------------


* Must have a Domo Enterprise account
* An Amazon Key Management System (KMS) account

+ Speak with your Domo Account Executive to determine the type of KMS account needed
* Cannot be on Microsoft Azure
* Cannot be a federated data customer


