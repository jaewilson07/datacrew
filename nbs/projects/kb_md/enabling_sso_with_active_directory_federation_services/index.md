---
title: Enabling SSO with Active Directory Federation Services
url: https://domo-support.domo.com/s/article/360043439013
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamlGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamlGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanoGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZanoGAC)', '[https://domo-support.domo.com/s/article/360043438973](https://domo-support.domo.com/s/article/360043438973)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZapJGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZapJGAS)', '[https://domo-support.domo.com/s/article/360043439013](https://domo-support.domo.com/s/article/360043439013)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanoGAC/implementing-sso](https://domo-support.domo.com/s/topic/0TO5w000000ZanoGAC/implementing-sso)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003048
views: 2,299
created_date: 2022-10-24 21:05:00
last updated: 2022-10-24 22:39:00
---



Intro
-----


You can sign in to Domo using a Single Sign-On (SSO) solution from Active Directory Federation Services. You must have an "Admin" default security role or a custom role with "Manage All Company Settings" enabled to enable SSO. For more information about default roles, see [Managing Custom Roles](/s/article/360043438973 "Default Security Role Reference").


Prerequisites
-------------


To use AD FS to log in to Domo, your system must have the following components:


* An Active Directory instance in which all Domo users have an email address attribute.
* A Domo instance that has the Single Sign-On feature switched on.
* A server running Microsoft Server 2012 or 2008.
* An SSL certificate to sign your AD FS login page and the fingerprint for the certificate.


After you meet these basic requirements, you must install AD FS on your server. Configuring and installing AD FS is beyond the scope of this topic, but is detailed in this [Microsoft KB article](http://msdn.microsoft.com/en-us/library/gg188612.aspx).


When you have a fully installed AD FS installation, note down the value for the "SAML 2.0/W-Federation" URL in the AD FS Endpoints section. If you chose the defaults for the installation, this will be "/adfs/ls/."


Adding a Relying Party Trust
----------------------------


After you have configured AD FS on your server with certificates, you are ready to add Domo as a relying party trust.


**To add a relying party trust,**


1. Open AD FS.
2. In the folders list on the left side of the screen, select **Trust Relationships > Relying Party Trusts**.
3. In the pane on the right side of the screen, click **Add Relying Party Trust**.  
The **Add Relying Party Trust** wizard opens.
4. Click **Start**.
5. Select **Enter data about the relying party manually** then click **Next**.
6. In the **Display name** field, enter the application name that you want users to see, then click **Next**.
7. Select **AD FS Profile**, then click **Next**.
8. Click **Next** in the **Configure Certificate** screen.
9. In Domo, select **More >**  **Admin**.  
The Admin Settings opens.
10. Expand **Authentication**, then select **SAML (SSO)**.
11. Copy the **SAML Assertion Endpoint URL**.
12. In AD FS, in the **Configure URL** screen, select **Enable support for the SAML 2.0 WebSSO protocol**.
13. Paste the SAML Assertion Endpoint URL into the text field, then select **Next**.
14. In the **Configure Identifiers** screen, enter *subdomain*.[domo.com](http://domo.com), in the **Relying party trust identifier** field, replacing subdomain with your company’s Domo subdomain. This URL must match that in the **Entity ID** field  in the **Admin** **> Authentication > SAML (SSO)** tab in Domo.
15. Click **Add** to add the URL as a trust identifier.
16. Click **Next**.
17. In the **Configure Multifactor Authentication Now** screen, click **Next**.
18. In the **Choose Issuance Authorization Rules** screen, choose whether you want to permit or deny all users when they attempt to log in to your company's Domo instance, then click **Next**.




 


**Note:**If you choose to deny all users, you can create rules later to permit only those users that you specify in your Domo instance.
19. In the **Ready to Add Trust** screen, click **Next**.
20. In the **Finish** screen, ensure that the box is checked, then click **Close**.


Creating claim rules
--------------------


In this set of steps, you must set claim rules in AD FS.


1. In AD FS, select the relying party trust you created in the previous set of steps then click **Edit Claim Rules**.  
The **Edit Claim Rules** wizard opens.
2. Click **Add Rule**.
3. In the **Claim rule template** dropdown, select **Send LDAP Attributes as Claims**, then click **Next**.
4. In the **Claim rule name** field, enter "Domo Claims."
5. In the **Attribute store** field, select **Active Directory**.
6. Map the outgoing claim types as outlined below:



| LDAP Attribute | Outgoing Claim Type |
| --- | --- |
| E-Mail-Addresses (required) | email |
| Display-Name (required) | Name |
| Is-Member-of-DL | Group |
|  Title | Title  |



 


**Note:**Any groups you include are treated as user groups in Domo. For more information about user groups, see [User and Group Management](/s/topic/0TO5w000000ZapJGAS "Managing Users and Groups").
7. Click **Finish**.
8. Click **Apply**.
9. Click **OK** to close the wizard.


Setting access to Domo (conditional)
------------------------------------


If you chose to deny all users access to Domo in the previous set of steps, you must add Issuance Authorizations for the users you want in Domo.


**To add Issuance Authorizations,**


1. In AD FS, start the **Edit Claim Rules** wizard for the relying party trust you created.
2. Open the **Issuance Authorization Rules** tab.
3. Click **Add Rule**.
4. In the **Choose Rule Type** screen, click **Next**.
5. In the **Configure Claim Rule** screen, enter a name for the rule in the **Claim rule name** field.
6. Specify the claims and values that are to be used to permit or deny access to Domo.
7. Click **Finish**.
8. Click **Apply**.
9. Click **OK** to close the wizard.


Configuring Domo with AD FS (conditional)
-----------------------------------------


If you have not already copied your signing certificate to a known file location, follow the steps in this section.


**To configure Domo with AD FS,**


1. In AD FS, select **Service > Certificates** in the folders panel.
2. Select the token-signing certificate.
3. Click **View Certificate**.
4. Open the **Details** tab.
5. Select **Copy to File**.
6. Save the certificate as a Base-64 encoded X.509 file to a known location.
7. Click **Finish**.
8. In Domo, select **More** **>**  **Admin**.  
The Admin Settings opens.
9. Expand **Authentication**, then select **SAML (SSO)**.
10. In the **Identity Endpoint URL** field, enter the location where Domo should send the SAMLRequest.  
This is usually the name of your AD FS server followed by /adfs/ls/. For example: [ssp.example.com/adfs/ls/](http://ssp.example.com/adfs/ls/).
11. In the **Entity ID** field, enter the unique identifier you used in the Relying Party Trust setup (*subdomain*.[domo.com](http://domo.com)).
12. Upload the token-signing certificate into Domo.
13. Indicate whether you want to import LDAP groups into Domo automatically.
14. Click **Test Connection** to verify that the configuration works.
