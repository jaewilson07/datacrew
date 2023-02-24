---
title: Mobile Enterprise Security
url: https://domo-support.domo.com/s/article/1500007028582
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamsGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamsGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZancGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZancGAC)', '[https://domo-support.domo.com/s/article/360042922874](https://domo-support.domo.com/s/article/360042922874)', '[https://domo-support.domo.com/s/article/1500007028582](https://domo-support.domo.com/s/article/1500007028582)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZancGAC/domo-mobile](https://domo-support.domo.com/s/topic/0TO5w000000ZancGAC/domo-mobile)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004323
views: 2,187
created_date: 2022-10-24 21:36:00
last updated: 2022-10-24 22:41:00
---



Intro
-----


Domo is an industry leader when it comes to mobile security. We have worked alongside global leaders in the finance and health care and other customer sensitive data industries to define, build and deploy enterprise-ready security controls so that you can have the confidence that your sensitive data is secure while also being able to gain the full benefit of the Domo platform. In addition to having all of the benefits and security Domo offers out of the box, this also reduces dependencies on 3rd party solutions to provide these security controls. These features enable you to have the tools you need to make sure your data is secure and safe without degrading users’ mobile experience of Domo.


Granular session control: dynamic timeout control & revocation
--------------------------------------------------------------


Domo puts you in control when it comes to securing access for your users to your instance and data with two controls for you to have custom control of your instance:


* Absolute session timeout: Set an absolute timeout duration which when reached requires all users to re-login.


	+ Ex: Absolute timeout set to 21 days. Every 21 days each user will have to login again.
* Relative session timeout: Set a relative timeout based on user activity. The timeout will be in effect if the user has not used the application within the specified timeout duration.


	+ Ex: Relative timeout of 7 days. If a user has not used the app for a continuous duration of 7 days, then they will have to login again. If at anytime they use the app, the relative timeout resets.


If a session needs to be revoked, we offer the capability to revoke user sessions. To have these settings modified, contact [Domo Support](/s/article/360042922874).


Native device user authentication
---------------------------------


As an additional layer of security to add confidence that those accessing the device are the authorized users Domo has added the additional layer of native device user authentication.


Native device user authentication requires that any device running the Domo mobile app have an additional form of device security setup prior to and each time the user attempts to access the Domo mobile app. This is done in the form of biometric or passcode authentication depending on the technology of each device.


![Mobile_1.png](Mobile_1.png)    ![Mobile_2.png](Mobile_2.png)


If additional mobile verification is needed for all users, an admin can require all users in their instance to use app authentication. *This option is enabled by Domo upon request*.


Enhanced data encryption
------------------------


All push notifications sent to iOS devices are encrypted over https. Push notification payloads can be end-to-end encrypted on request.


iOS and Android native encryption are used for any content which is cached on the device for increased performance. Cached content is wiped from the device with the termination of each user session.


Domo encrypts all customer data that is stored at persistent storage within Domo. For this purpose, Domo utilizes Advanced Encryption Standard (AES) algorithm with a key size of 256 bits.


To protect our customers’ data as it is transmitted across untrusted networks, Domo uses a combination of secure protocols, including TLS, with only a limited number of trusted ciphers supported. SSH, and SFTP is also supported, where appropriate, for the secure transfer of data. Domo does not allow clear text or unencrypted data communication protocols. Domo’s best practice ensures that all Domo customers use at least one of the provided secured services (TLS, SSH, SFTP). We use TLS 1.2.


![Picture1.png](Picture1.png)


Content control with export and download restrictions
-----------------------------------------------------


Another tool at your disposal for enhanced security control of mobile content is the ability to restrict download, export or copy and paste functionality. With these restriction turned on you can ensure no content is share outside of the Domo application leveraging any of the native features of the app or device.


Copy/paste, downloading, and sharing of Domo content can be locked down upon customer request.


Customer audit logging
----------------------


All end user activity in the Domo instance is logged. This log includes at a minimum, what action was taken, when it happened, and who initiated the action. Customers can then review these logs within their Domo instance at any time for user activity and anomalies and can filter this data by user, time, and event.


Customers also have the ability to integrate their own Domo instance logs directly into their in-house Security Information Event Management (SIEM) tools and internal incident processes. This allows customers to consume the Domo instance logs within their own Security Operations Center (SOC), and achieve near real time visibility into all user actions in their instance.

