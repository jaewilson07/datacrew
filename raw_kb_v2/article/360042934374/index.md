

Intro
-------


 Users can sign in to


 Domo


 using either the built-in authentication system of


 Domo or using a Single Sign-On (SSO) solution from a supported provider.  Domo provides two such SSO solutions—Security Assertion Markup Language (SAML) authentication and OpenID Connect. Both SAML and OIDC Connect can run at the same time. This makes it easy to segment internal and external users. This is also useful for separating the SSO solutions you use for Domo access and

Enabling SSO with OpenID Connect

.

Using SAML, administrators can enable Single Sign-On into Domo. Once Single Sign-On has been enabled, new users are automatically provisioned from LDAP, and LDAP groups can be imported from an existing identity provider.


 To use SAML, you must have a cloud identity provider (IDP) or federation service in place that supports authentication via SAML 2.0. For more information about SAML 2.0, see

http://en.m.wikipedia.org/wiki/SAML\_2.0

You can add specific users to the Direct Sign-On List to enable them to bypass SSO and sign into Domo directly. These users can then toggle login modes (Direct or Single Sign-On) from the Domo login screen. This is especially useful in situations where you want to grant Domo access to contractors or non-employees who are not given accounts in the company’s email or directory system.


 You must have an "Admin" default security role or a custom role with "Manage All Company Settings" enabled to set up SAML. For more information about default roles, see

Managing Custom Roles

.


 Domo provides three methods of setting up SSO:

 **Manual Setup**
 . This is the "traditional" method for setting up SSO in Domo.
* **Metadata Upload**
 . This method allows you to retrieve your configuration information and digital certificate just by entering the URL for your identity provider. Be aware that not all identity providers offer this service.
* **Setup Wizard**
 . This wizard guides you through the difficult jargon and details of SSO configuration. The wizard offers context-based instructions for a number of leading identity provider services, including Okta, Ping, Microsoft Azure, Salesforce, and more.

Of these methods, metadata upload is strongly recommended, as you only need to enter your identity provider URL—the rest of the work is done automatically. If this method is not supported by your identity provider, it is recommended you use the setup wizard. Manual setup is recommended only if neither of the other two methods meet your needs.


 This topic first explains the components of the Single Sign-On tab user interface in Domo. It then gives provides instructions for configuring SSO using the three available methods.


**Notes:**

 Enabling SSO turns off the traditional Domo login. Users should typically be assigned to the application in your IDP before SSO is enabled to avoid interruption.
* Once SSO is enabled, invited users may need to be assigned to Domo in the identity provider before they can sign in (depends on company IDP policies).
* If SSO is enabled but you are unable to log in, you can log in with prior Domo credentials by going to
 **https://<subdomain>.domo.com/auth/index?domoManualLogin=true**
 . You must have an "Admin" default security role, a custom role with "Manage All Company Settings" enabled, or be on the Direct Sign On list to use this manual login. For more information about default roles, see

Managing Custom Roles

.
* You can disable SSO at any time. This turns on the traditional email and password login. Users who had existing logins can use their old passwords or reset their passwords from the login page. Users with "Admin" security roles can also manually reset user passwords by going to the
 **People**
 sub-tab for the specific individual in Admin Settings and clicking
 **Reset Password**
 .
* Users of the Domo Mobile application can log in to Domo by entering their company's subdomain, then entering their IDP username and password in the web view. SP initiated authentication is required for the Mobile App to work with SSO.
* When SSO is turned on, it is not possible to directly change a user’s email address, even if you have an "Admin" default security role. This is because the email is the key used to match users logging in from SSO with users inside Domo. Changing it would cause the person to have a new user the next time they sign in, and all of their permissions would be lost. If you absolutely
 *must*
 change a user's email address (for example, perhaps a user gets married and their last name changes), the best way to do so is by using the
 **Bulk Import**
 option in the
 **More >**
**Admin > Governance > People**
 sub-tab. For more information, see

Adding Users to Domo

.


**Video - SAML Single Sign On (SSO)**


 Parts of the Single Sign-On tab
----------------------------------


 The following table lists and describes the various components of the
 **More >**
**Admin > Authentication > SAML (SSO)**
 tab in Domo:


 Component
  |
 Description
  |
| --- | --- |
|
 Revert All
  |
 Reverts your SSO configuration back to the most recently saved settings.
  |
|
 Save Config
  |
 Saves the current configuration.
  |
|
 Test Config
  |
 Tests the current configuration.
  |
|
 Wizard option
  |
 Opens the SSO configuration wizard. You can also open the wizard by clicking
 **Start Setup > Wizard**
 in the intro screen. (The intro screen only appears if you have not yet set up SSO.)
  |
|
 Manual Setup, Direct Sign-On List, and Attributes Tabs
  |
 Provide access to different sections of the SSO screen.
 * **Manual Setup**
 . The tab open by default when you open the SSO screen (shown in the above screenshot). Here you can enter information from and for your IdP as well as specify a number of advanced settings.
* **Direct Sign-On List**
 . Allows you to enable specific users to bypass SSO and sign into Domo directly.

These users can then toggle login modes (Direct or Single Sign-On) from the Domo login screen.
* **Attributes**
 . Lists the attributes and formats accepted by Domo.
 |
|
 Enable SSO
  |
 The "master switch" for toggling SSO on or off in your instance.
  |
|
 "Information from your IdP" section
  |
 Contains fields and options for information you will need to obtain from your identity provider and enter into Domo. These fields and options are as follows:
 - **Metadata Upload**
 . Allows you to retrieve your configuration information and digital certificate just by entering the URL for your identity provider. Be aware that not all identity providers offer this service. (If you click this link, the text changes to "Manual entry." Click this if you want to configure SSO using manual entry.)
- **Identity Provider Endpoint URL**
 . The URL where your SAMLRequest is sent. This URL is provided by your IDP or federation service.
- **Entity ID**
 . The unique identifier of the Domo instance making the SAMLRequest. This is sometimes provided by the IDP as an "Issuer ID" or "Identity ID" and is usually in the format of a URL. This value is also referred to as the “SP Entity ID.” This field may not be needed in all configurations; in this case it can be left blank. Examples are given when you click the

icon.
- **X.509 Certificate**
 . The certificate that is signed by the identity provider and establishes trust between Domo and the IDP. This certificate is always issued by the IDP and is uploaded into Domo.

*Note:**
 If you are using Google Chrome, the certificate needs to be in

.pem

format. If you have a certificate in

.cert

format, rename the file to include a

.pem

extension and upload it.

|
|
 "Information your IdP may need" section
  |
 Contains fields and options for information you may need to enter into your identity provider. These fields and options are as follows:
 * **Metadata download**
 . Allows you to download an XML file that can then be uploaded to your IdP to complete your configuration. Be aware that not all identity providers offer this service.
* **SAML Assertion Endpoint URL**
 . The endpoint where the IDP sends the SAML Request. You must copy and paste this URL into your identity provider to complete the setup. In some cases, you may only be required to enter your subdomain (for example, "acmecorp") in the IDP.
* **Sign authentication requests**
 . Lets you sign authentication requests for Service Provider-initiated SSO. To enable this, you will need to...

1. Download Domo's signing certificate. (A link appears when you check the
	 **Sign authentication request**
	 box.)
	2. Install the certificate at your IDP.
	3. Wait for confirmation from your IDP on the install.
	4. Click
	 **Save**
	 to begin signing authentication requests.
 |
|
 Advanced Settings
  |
 These settings are as follows:
 + **Only invited people can access Domo**
 . Limits access to Domo to only those invited to join Domo.

*Note:**
 If you do not check this box, users will be created with the default security role of Priviliged. It is recommended that you change the default security role to Participant if you choose to let uninvited people access Domo. For more information, see

Default Security Role Reference

.
+ **On logout, direct users to the following URL:**
 Lets you specify a URL to redirect users to when they log out of Domo.
+ **Use SAML Relay State to redirect**
 . Lets you use the SAML Relay State parameter to deep-link to specific Domo content. This is sometimes useful when you need to embed a number of cards on the same page. (See Sharing Cards Outside of Domo for more information.) However, not all IDPs support this option.
+ **Import Groups from Identity Provider**
 . Allows Domo to import group membership data from the SAML assertion into Domo. These imported groups appear as “Directory Groups” in your “Groups” page, and can be used just like groups created in Domo. Because these groups come from your IDP, they cannot be edited in Domo. For this feature to be used, "group" must be passed as an attribute from your IDP.

*Note:**
 For a group to be added to Domo from your IDP, a user needs to be a member of the group and sign in. This will add the directory group to Domo
+ **Show Domo sign-in screen/Skip to identity provider**
 . Determines whether Domo's sign-in screen is shown or if the identity provider is shown instead.
* **Note:**
 If "Skip to identity provider" is selected, users who are on the Direct Sign-On List will need to use the following URL in order to login with their Direct Sign-On credentials:

https://<subdomain>.domo.com/auth/index?domoManualLogin=true
* **Mixed Mode Login**
 . Allows the use of SSO for automating logins for the Embed feature set without changing the current user login experience. With this option selected, a user navigating to <instance>.

domo.com

will see the normal username/password sign-in options, not the SSO sign-in button.
 |

Configuring Single Sign-On
----------------------------

You can configure Domo SSO using any of these methods:

 **Metadata Upload**
 .
 *Recommended*
 . Allows you to retrieve your configuration information and digital certificate just by entering the URL for your identity provider. Be aware that not all identity providers offer this service.
* **Setup Wizard**
 .
 *Recommended if metadata upload is not supported by your IdP*
 . This wizard guides you through the difficult jargon and details of SSO configuration. The wizard offers context-based instructions for a number of leading identity provider services, including Okta, Ping, Microsoft Azure, Salesforce, and more.
* **Manual Setup**
 . This is the "traditional" method for setting up SSO in Domo.


###
 Metadata Upload

Metadata upload is highly recommended for setting up Domo SSO, as it allows you to pull in all necessary information simply by entering your IdP's URL. If your IdP does not support this option, it is recommended you use the Setup Wizard as a next resort.


**To set up SSO using Metadata Upload,**

. Select
 **More**
**> Admin > Authentication > SAML (SSO)**
 .


 If SSO has not yet been set up for your Domo, an intro screen appears listing the benefits of SSO. Otherwise, you are taken directly into the
 **Single Sign-On (SSO)**
 tab.
2. (Conditional) Do one of the following:

* If the intro screen appears, scroll to the bottom, click
	 **Start Setup**
	 , then click the
	 **Metadata upload**
	 tile.
	* If you are taken directly to the
	 **Single Sign-On (SSO)**
	 tab, click
	 **Metadata upload**
	 (found in the "Information from your IdP" section).
3. In the
 **Metadata URL**
 field, enter the SAML metadata URL for your identity provider.


###
 Setup Wizard

The SSO setup wizard is recommended if your identity provider does not support Metadata Upload as described in the preceding section.


**To set up SSO using the Setup Wizard,**

. Select
 **More**
**> Admin > Authentication > SAML (SSO)**
 .


 If SSO has not yet been set up for your Domo, an intro screen appears listing the benefits of SSO. Otherwise, you are taken directly into the
 **Single Sign-On (SSO)**
 tab.
2. (Conditional) Do one of the following:

* If the intro screen appears, scroll to the bottom, click
	 **Start Setup**
	 , then click the
	 **Wizard**
	 tile.
	* If you are taken directly to the
	 **Single Sign-On (SSO)**
	 tab, click the bolded word "wizard"

 near the top of the tab.

 The Setup Wizard now opens.
3. Follow the steps of the wizard to set up SSO in Domo.

*Tip:**

If you need to close out of the wizard before you've completed your setup, don't worry—the wizard remembers the screen you ended on and will open that screen when you return.


###
 Manual Setup

To properly implement Single Sign-On with SAML in Domo using manual setup, you must configure SSO in both your Identity Provider and in the
 **More >**
**Admin > Authentication > SAML (SSO)**
 tab in Domo.


**To configure Single Sign-On,**

. Configure Single Sign-On for Domo in your IDP.


 Because different IDPs configure applications differently, it is best to consult the documentation for your particular IDP for setup. However, the following list explains how to configure certain SSO components that are common across most IDPs.


|
 Component
  |
 Instructions
  |
| --- | --- |
|
 Integration Type
  |
 Select SAML 2.0 as the Integration Type.
  |
|
 Application Logo
  |
 If asked to supply an application logo, you can use the following:

|
|
 Identity Provider SSO URL
  |
 The URL where Domo sends the SAMLRequest. Copy and paste this URL from the
 **SAML Assertion Endpoint URL**
 field in
 **More >**
**Admin > Authentication > SAML (SSO)**
 in Domo.
  |
|
 Audience URI (SP Entity ID)
  |
 Enter the URL for the intended audience.
  |
|
 Default Relay State
  |
 Leave this field blank, as Domo does not use it in the app configuration.
  |
|
 Application Username
  |
 Enter a user's email address as the username.
  |
|
 SAML Attributes
  |
 When defining which attributes get passed to Domo, use the following names for each of the attributes. (All attribute names should be lowercase except for SAML\_SUBJECT. The "email" attribute is required; all others are optional.)


|
 Attribute Name
  |
 Description
  |
 Format
  |
| --- | --- | --- |
|
 email
  |
 Email
  |

someone@acme.com*

|
|
 email.secondary
  |
 Email
  |

someone@acme.com*

|
|
 group
  |
 Directory Groups
  |
*CN = Some Group, OU = Some Org, DC = Acme, DC = com*
 |
|
 title
  |
 Job Title
  |
*Product Manager*
 |
|
 user.phone
  |
 Personal Phone Number
  |
*Any format*
 |
|
 desk.phone
  |
 Desk Phone Number
  |
*Any format*
 |
|
 name
  |
 Full Name
  |
*Jon Smith*
 |
|
 name.personal
  |
 Personal Name (this field and the

name.family

field are concatenated into

name

)
  |
*Jon*
 |
|
 name.family
  |
 Family Name (this field and the

name.personal

field are concatenated into

name

)
  |
*Smith*
 |
|

employee.id

|
 Employee ID
  |
*521*
 |
|
 hire.date
  |
 Hire Date
  |
 |
|
 role
  |
 Role
  |
*Instructional Designer*
 |
|
 department
  |
 Department
  |
*Engineering*
 |
|
 timezone
  |
 Time Zone
  |
 |


 |
|
 Certificate
  |
 Download the certificate provided by the IDP. You will upload this certificate to Domo when configuring SSO in Domo.
  |
2. Ensure that appropriate users are given access to Domo in the IDP.
3. In Domo, select
 **More**
**> Admin**
 .


 The Admin Settings opens.
4. Expand
 **Authentication**
 , then select
 **SAML (SSO)**
 .
5. Click
 **Enable Single Sign-On**
 .
6. In the
 **Identity Provider Endpoint URL**
 field, enter the URL where the SAMLRequest is to be sent.
7. In the
 **Entity ID**
 field enter the identifier of the Domo instance making the SAML request. This should match the "Audience URI" you entered in your IDP.
8. Upload the X.509 certificate by clicking

, browsing to the certificate on your hard drive, and clicking
 **Open**
 .
9. (Optional) If you want to automatically import groups from your IDP, check the box that reads
 **Import groups from identity provider**
 .
10. Copy the URL from the
 **SAML Assertion Endpoint URL**
 field into the
 **Identity Provider SSO URL**
 in your IDP if you have not already done so.
11. Click
 **Test Connection**
 to make sure everything is configured properly.
12. Clicking
 **Test Connection**
 simulates an actual login with your credentials and verifies that the SAML Assertion was returned as expected.


**Note:**
 The connection test does not work if you have not given yourself access to Domo in the IDP.
13. (Optional) If you want to see the returned attributes, click
 **View Details**
 .
14. Click
 **Save Changes**
 to enable SSO.


 This verifies that the test connection was successful and turns on SSO for your environment.
15. Sign out of Domo, close your browser, and clear your browser cookies (or open a different browser).


 If you sign out and then sign back in without clearing cookies, a session token issue occurs that causes an error.

Adding Users to Direct Sign-On
----------------------------------

You can add specific users to the Direct Sign-On List to enable them to bypass SSO and sign into Domo directly. These users can then toggle login modes (Direct or Single Sign-On) from the Domo login screen. This is especially useful in situations where you want to grant Domo access to contractors or non-employees who are not given accounts in the company’s email or directory system.


**To add users to the Direct Sign-On List,**

. In
 **More >**
**Admin > Authentication > SAML (SSO)**
 , click the
 **Direct Sign On List**
 header then the
 **Add Users to Direct Sign-On**
 button.
2. Click in the
 **Search Users**
 field and locate the name of a user or group you want to add to the Direct Sign-on List.
3. Click the name of the user or group to add it to the field.
4. Repeat steps 2 and 3 as often as necessary to add the names of all desired users and groups to the field.
5. (Optional) Add notes to the
 **Notes**
 field indicating why these users were added to the Direct Sign-On List.
6. Click
 **Add**
 .

The names of all of the users and groups you added should now appear in a list in this tab. If you added any notes, these should appear as well. You can remove a user or group from the list by clicking the "X" next to it.


**Note:**
 All Admin users in the instance can log in using the Direct Sign-On method without being added to the Direct Sign-On list. However, there must be at least one user in the Direct Sign-On List before the "Use Direct Sign-On" option will be shown during login.


 Transitioning to Single Sign-On
---------------------------------

If you are transitioning from the built-in authentication system of Domo to Single Sign-On, consider the following:

 Before implementing Single Sign-On, ensure that the email addresses for accounts in Domo match the email addresses for accounts in your system.
* When users sign in, Domo can identify users based only on their existing email addresses.
* If a user logs in via Single Sign-On and the email address does not match the email address of an existing account, Domo creates a new account. For this account you must configure group memberships and content access.

Using Single Sign-On in Domo
------------------------------

When using Single Sign-On (SSO) in Domo, users sign in and sign out differently than when using the built-in authentication system of Domo.

##
 Signing in to Domo when using Single Sign-On


* If authenticated to their system, users can connect to Domo using their existing credentials.


 Depending on the type of directory, operating system, and Web browser, users may not have to provide credentials but are seamlessly signed in.
* If not yet authenticated to their system when connecting to Domo, users are presented with a simple sign-in to their system before connecting in to Domo.


###
 Signing out of Domo when using Single Sign-On

To completely sign out, you must sign out of Domo and close the Web browser.


**To sign out of Domo when using Single Sign-On,**

. Mouse over your user menu

, then select
 **Sign Out.**


 After signing out, a sign in page appears.
2. Close the Web browser.


 To complete the sign out process, close the Web browser.


###
 Using Domo with Single Sign-On

When using Domo with Single Sign-On, you cannot

 be sent a forgotten password email
* change your password in your profile
* see the
 **Security**
 tab for setting password requirements
* see a user until the user has signed in to Domo


