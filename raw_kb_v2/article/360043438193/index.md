


 Intro
-------

This topic explains how to use Salesforce Classic and Salesforce Lightning to configure SSO in Domo. You must have an "Admin" default security role or a custom role with "Manage All Company Settings" enabled to set up SSO. For more information about default roles, see

Managing Custom Roles

.


 Requirements
--------------


 To use SFDC to log in to your Domo instance, you need the following components:


* A

Salesforce.com

customer account where all users using Domo have an email address attribute
* A Domo instance that has the Single Sign-On feature switch turned on
* A SSL certificate to use to sign your SFDC login page


 After you have met these requirements, you are ready to add Domo as a supported single sign-on application in SFDC.

Creating the Domo App
-----------------------

When configuring SSO using Salesforce, the first thing you need to do is create a Domo App within Salesforce. The steps for doing this are different depending on whether you are using Salesforce Classic or Salesforce Lightning.

##
 Creating the Domo App in Salesforce Classic


1. Login as an administrator to your

Salesforce.com

account and go to
 **Setup**
 .
2. Go to
 **Security Controls > Identity Provider**
 , and download the certificate that you would like to use to establish trust with Domo.

*Note:**
 If you’re using Salesforce Communities as your provider, download the metadata from the communities page instead of what’s shown in the screenshot above.

. Under the
 **Build**
 left-hand menu, select
 **Create > Apps**
 .
2. Under the
 **Connected Apps**
 section, click
 **New**
 .


1. Fill out the Basic Information in the
 **New Connected App**
 view.
2. Under Web App Settings, enter

https://yourcompany.domo.com

in the
 **Start URL**
 text field and select
 **Enable SAML**
 .
3. Enter

[yourcompany].

domo.com


 in the
 **Entity Id field**
 .
4. Enter

https://[yourcompany].

domo.com/auth/saml


 in the
 **ACS URL**
 field.
5. Choose
 **Username**
 as the Subject Type.
6. Choose
 **urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress**
 as the Name ID Format.
7. Ensure that the
 **Verify Request Signatures**
 and
 **Encrypt SAML Response**
 are unchecked.
8. Click
 **Save**
 .

3. Click
 **New**
 in Custom Attributes.
14. In the
 **Key**
 , type

Email

and select
 **Insert Field**
 . Choose
 **User > E-mail**
 , and click
 **Close**
 .
15. You may also add the following custom attributes to the Domo app:

* Name: The full name of the person logging in; this is used to populate a user’s name in Domo.
	* Group: Treated like a group in Domo. You can pre-assign access to content in Domo by using the group attribute.
	* Title: Used to populate a user’s title in Domo.
16. Click
 **Save**
 .

. From the App screen, click
 **Manage**
 .

. Copy the “IdP-Initiated Login URL” from the
 **SAML Login Information**
 section.


###
 Configuring the Domo App in Salesforce Lightning


1. Login as an administrator in your

Salesforce.com

account.
2. Select
 **Setup**
 from the gear menu.
3. In the left-hand navigation, select
 **Settings > Identity > Identity Provider**
 .
4. (Conditional) If you have not yet enabled Salesforce as an identity provider, click the
 **Enable Identity Provider**
 icon then follow the instructions to create a certificate (this should already be done in most instances).

Once Salesforce is enabled as an identity provider, you should see the following screen:
5. Click the
 **Download Certificate**
 button.


 You will use this certificate later when configuring SSO in Domo.
6. In the left-hand navigation, under "Platform Tools," select
 **Apps > App Manager**
 .
7. Once the page loads, click
 **New Connected App**
 in the upper right corner.
8. In the
 **New Connected App**
 view, fill out the basic information.
9. Under
 **Web App Settings**
 , in the
 **Start URL**
 text field enter your Domo instance URL (


 https://
 *yourcompany*
 .

domo.com

).
10. Click
 **Enable SAML**
 .
11. In the
 **Entity ID**
 field, enter your Domo URL instance minus the https:// (

yourcompany*
 .

domo.com


 ).
12. In the
 **ACS URL**
 field, enter


 https://
 *yourcompany*
 .

domo.com/auth/saml

.
13. For the
 **Subject Type,**
 select
 **Username**
 .
14. For the
 **Name Format**
 , select
 **urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress**
 .
15. Ensure that the boxes for
 **Verify Request Signatures**
 and
 **Encrypt SAML Response**
 are unchecked.


 Your settings should now look as follows:
16. Click
 **Save**
 at the bottom of the screen.


 You should be redirected to a
 **Manage Connect Apps**
 screen displaying your app details.
17. In the
 **Custom Attributes**
 area at the bottom of the screen, click
 **New**
 .
18. In the
 **Key**
 field, type "Email," then click
 **Insert Field**
 .
19. Select
 **$User>**
 in the left pane and
 **Email**
 in the right pane, then click
 **Insert**
 .
20. Click
 **Save**
 to add the attribute.


 You should again be redirected to the
 **Manage Connect Apps**
 screen.
21. Click the
 **Manage**
 button at the top of the screen.
22. In the "SAML Login Information" section, copy the
 **SP-Initiated POST Endpoint**
 .

You will use this later when configuring SSO in Domo.
23. Assign Profiles or Permission Sets to your users by clicking
 **Manage Profiles**
 or
 **Manage Permission Sets**
 and selecting the correct values. If you are unsure of which Profiles/Permissions Sets should be used to grant access to Domo, consult a security administrator.


 Login to Domo via Salesforce will
 *not*
 work until you have selected the Profiles or Permission Sets associated with the app and assigned the app by one of these two mechanisms to your users.
24. Once you have configured Profiles or Permission Sets, go on to the next section to configure SSO in Domo.

Configuring SSO in Domo
-------------------------


1. Login to your Domo account as an administrator and navigate to
 **More > Admin**
**> Authentication > SAML (SSO)**
 .
2. Click
 **Enable Single Sign-On**
3. In the
 **Identity Provider Endpoint URL**
 field, paste the value you copied from Salesforce.com.
4. In the Entity ID field, type

[yourcompany].

domo.com


 .
5. Upload the certificate from

Salesforce.com

into Domo.
6. Select whether you would like to import groups from Salesforce.com.
7. Click
 **Test Config**
 to verify that your configuration works correctly.
8. Click
 **Save Config**
 .

