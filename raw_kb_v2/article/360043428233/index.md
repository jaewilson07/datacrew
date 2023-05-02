

Intro
-------

Domo Mobile includes the following state-of-the-art security features.


 Customer access control
-------------------------

Domo has partnered with numerous Identity Providers (IdP) to enable customers to easily integrate Domo with customers’ existing SAML-based SSO and Multi Factor Authentication (MFA) solutions. In this model, Domo never has access to passwords used for gaining access to Domo’s services. When logging in, a Domo client is redirected to its own SSO system to authenticate. Domo then receives a cryptographic token indicating a successful authentication against that customer’s infrastructure. When a customer changes his/her password in his/her own company infrastructure, the changes automatically work with Domo, yet Domo never has access to a customer’s password.


 Single sign-on
----------------

The user will be required to sign into the company identity provider when they initially log in, which will then give them access to the Domo mobile app.


 2-factor authentication
-------------------------

Domo offers customers the option of implementing an extra layer of security by supporting multi-factor authentication. Domo supports this by having users register their mobile device phone number where they will receive an SMS message whenever Domo needs to authenticate them (or alert them of any discrepancy). In the event an authentication request is identified as anomalous or matches one or more elevated risk factors, Domo will send a unique authentication code to their registered SMS device. For users without a registered SMS device, additional authentication questions can be registered to provide for improved security authentication.


 Encryption
------------

Domo encrypts all customer data that is stored at persistent storage within Domo. For this purpose, Domo utilizes Advanced Encryption Standard (AES) algorithm with a key size of 256 bits.


 To protect our customers’ data as it is transmitted across untrusted networks, Domo uses a combination of secure protocols, including TLS, with only a limited number of trusted ciphers supported. SSH, and SFTP is also supported, where appropriate, for the secure transfer of data. Domo does not allow clear text or unencrypted data communication protocols. Domo’s best practice ensures that all Domo customers use at least one of the provided secured services (TLS, SSH, SFTP). We use TLS 1.2.


 IOS and Android native encryption is used for content we cache.


 Session management & timeout
------------------------------

When the user first logs in, we offer a session token that expires by default in 8 hours. This is configurable in hour increments with a min of 1 and a max of 24. Finer control around session token expiration times (making it possible to go down to 15-20 minutes) is currently under development.


 Customer audit logging
------------------------

All end user activity in the Domo instance is logged. This log includes at a minimum, what action was taken, when it happened, and who initiated the action. Customers can then review these logs within their Domo instance at any time for user activity and anomalies and can filter this data by user, time, and event.


 Customers also have the ability to integrate their own Domo instance logs directly into their in-house Security Information Event Management (SIEM) tools and internal incident processes. This allows customers to consume the Domo instance logs within their own Security Operations Center (SOC), and achieve near real time visibility into all user actions in their instance.


 Third-party penetration testing
---------------------------------

Domo undergoes independent third-party application, mobile, system, and network penetration tests bi-annually. The executive reports detailing the scope, any findings, and the status of each finding is then made available to customers in our Independent Security Reports (ISR).


 Content control with export and download restrictions
-------------------------------------------------------

Copy/paste, downloading, and sharing of Domo content can be locked down upon customer request.

