---
title: Enabling SSO with OpenID Connect
url: https://domo-support.domo.com/s/article/360043438153
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamlGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamlGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanoGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZanoGAC)', '[https://domo-support.domo.com/s/article/360042934374](https://domo-support.domo.com/s/article/360042934374)', '[https://domo-support.domo.com/s/article/360043438973](https://domo-support.domo.com/s/article/360043438973)', '[https://domo-support.domo.com/s/article/360043438033](https://domo-support.domo.com/s/article/360043438033)', '[https://domo-support.domo.com/s/article/360043437993](https://domo-support.domo.com/s/article/360043437993)', '[https://domo-support.domo.com/s/article/360043438153](https://domo-support.domo.com/s/article/360043438153)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanoGAC/implementing-sso](https://domo-support.domo.com/s/topic/0TO5w000000ZanoGAC/implementing-sso)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003049
views: 2,487
created_date: 2022-10-24 21:05:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


Users can sign in to Domo using either the built-in authentication system of Domo or using a Single Sign-On (SSO) solution from a supported provider.  Domo provides two such SSO solutions—Security Assertion Markup Language (SAML) authentication and OpenID Connect (OIDC). This article discusses OIDC. For information about authenticating using SAML, see [Understanding and Configuring Domo Single Sign-On Using SAML](/s/article/360042934374 "Understanding and Configuring Domo Single Sign-On Using SAML").


You must have an "Admin" default security role or a custom role with "Manage All Company Settings" enabled to set up SSO. For more information about default roles, see [Managing Custom Roles](/s/article/360043438973 "Default Security Role Reference").


**Video - OpenID Connect (SSO)**



 


Understanding OpenID Connect
----------------------------


Though SAML (Security Assertion Markup Language) is the primary SSO protocol for enterprise organizations, many companies are switching to OIDC. This is because it...


* works better for mobile devices.
* is ideal for external users/non-employees.
* is based on OAuth 2, making it a better fit for developers.
* is simpler to configure and cheaper to acquire, making SSO accessible to small businesses and corporate companies.
* is an industry standard supported by identity systems such as Azure Active Directory, Auth0, Google G Suite, Okta, and OneLogin.


OIDC is native to some IdPs, like Azure AD. Otherwise, an integrating system is required, such as Okta, Google, Ping, etc.


You can easily configure SSO with [Azure Active Directory](/s/article/360043438033 "Enabling Single Sign-On with Azure Active Directory") or any other supported identity provider.  


Both SAML and OIDC Connect can run at the same time. This makes it easy to segment internal and external users. This is also useful for separating the SSO solutions you use for Domo access and [Domo Embed](/s/article/360043437993 "Sharing Cards Outside of Domo Using Domo Embed").  For example, you can use SAML for controlling employee access in Domo and OIDC for embedding cards into other websites and applications. 


You can still use Direct Sign-On (DSO) while both SSO methods are in use. Currently you must configure DSO in **More >** **Admin > Authentication > OpenID Connect (SSO)**, even though it applies to both SAML and OIDC. For more information about DSO, see [Understanding and Configuring Domo Single Sign-On Using SAML](/s/article/360042934374 "Understanding and Configuring Domo Single Sign-On Using SAML").


To configure OIDC, you must have an "Admin" security profile in Domo. You must also have admin access to the IdP.  


If your IdP permits using metadata import (which accounts for nearly all IdPs), you can use this to import your OIDC metadata into Domo. This makes configuration easier, since most of your settings will be configured automatically. Otherwise you will need to enter the authentication request endpoint URL, client ID and client secret, and so on. 


### Supporting Internal and External Users


Enterprise companies often have employees who are not in their corporate directory but still need access to Domo. It is possible for these users to allow sign-in using DSO, but this can become tedious with large numbers of users. A better solution is to use OIDC to introduce a second IdP specifically for external users. This allows you to share content with people not in your corporate directory. Users who come to Domo without authenticating are sent by default to the SAML IdP.


Configuring OpenID Connect
--------------------------


You configure and enable OpenID Connect by navigating to **More > Admin >** **Authentication > OpenID Connect (SSO)** in the Admin Settings then filling in the required information and turning on advanced options if desired. 


By default, the interface assumes you want to use metadata-driven entry for your configuration. This means you only need to enter the client ID and client secret generated by your IdP, along with a well-known config URL. The well-known config pulls in all metadata for the IdP, meaning you do not have to enter any other information for the IdP such as a token endpoint URL, public key, and so on. Nearly all IdPs have well-known configs. If you do not know the well-known config for your IdP, you can probably find it (or instructions for configuring it) by doing a Google search (e.g. you would search for "Azure well-known config" to find the well-known config for Azure). 


If your IdP does not have a well-known config (which is usually the case only when your company has created its own IdP), you will need to enter the metadata for the IdP manually. You can do this by clicking **Manual entry** in the **OpenID Connect (SSO)** sub-tab in Domo then filling in the fields with the information for your IdP.


**To configure OpenID Connect using metadata from your IdP,**


1. Select **More** **> Admin > Authentication > OpenID Connect (SSO)**.
2. In the **Well known config** field, enter the well-known config URL for your IdP.  
For more information about finding your well-known config, see the preceding information in this section.
3. Enter the client ID for your app in the **Client ID** field.
4. Enter the client secret for your app in the **Client Secret** field.  
Both of these credentials should be generated when you create an app for your IdP.
5. (Conditional) If your IdP requires an assertion endpoint URL from Domo, click the clipboard icon next to the **OpenID Connect Assertion Endpoint URL** then paste the copied URL into the correct space in your IdP settings.
6. (Optional) If you want to enable any advanced settings, check their boxes.   
Advanced settings are discussed in the following section.
7. Turn on the toggle reading "Enable OIDC."
8. Click **Save Config**.


**To configure OpenID Connect using manual configuration,**


1. Select **More** **> Admin > Authentication > OpenID Connect (SSO)**.
2. Click **Manual entry**.   
  
![oidc_manual_entry_link.png](oidc_manual_entry_link.png)
3. Fill in all the fields with the information as found in your IdP.
4. (Conditional) If your IdP requires an assertion endpoint URL from Domo, click the clipboard icon next to the **OpenID Connect Assertion Endpoint URL** then paste the copied URL into the correct space in your IdP settings.
5. (Optional) If you want to enable any advanced settings, check their boxes.   
Advanced settings are discussed in the following section.
6. Turn on the toggle reading "Enable OIDC."
7. Click **Save Config**.


### Advanced Settings


Advanced settings are available for both metadata-driven and manual configurations. Keep in mind that these settings are not applied until you save your configuration.


Available advanced settings are as follows:




| Setting | Description |
| --- | --- |
| Only invited people can access Domo | Domo will only match users coming in from the IdP, not create new ones. |
| On logout, direct people to the following URL | Allows you to specify the URL that users are taken to when they log out of Domo. |
| Import groups from identity provider | Allows you to pull in groups from your identity provider.  |
| Mixed mode login | When you enable this setting, users who visit Domo without authenticating through the IdP while be prompted for a username and password, while those coming into Domo authenticated through the IdP will be allowed in without having to enter credentials. |
| Show Domo sign-in screen/Skip to identity provider | Allows you to choose whether users are shown a Domo login screen or are redirected to the IdP instead. |


 

