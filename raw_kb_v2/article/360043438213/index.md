

Intro
-------

This article provides troubleshooting for single sign-on using SAML, including Okta, ADFS, and PingIdentity, in the following categories:

 SAML requests and responses
* Basic troubleshooting
* Troubleshoot SAML requests
* Troubleshoot SAML responses

SAML Requests and Responses
-------------------------------

Single sign-on (SSO) logins use a special communication protocol called SAML, which stands for Security Assertion Markup Language.


 The SAML request is a message sent from Domo to your IdP during login. This message contains identifying information about your Domo instance so that your IdP knows which system you are trying to log into. Depending on your settings in Domo, it may also contain a digital certificate to further authenticate that the login request originated from Domo.


 The SAML response is a message sent from your IdP to Domo during login. This message contains identifying information about the person logging in so that Domo knows which user you are. It also contains a digital certificate to confirm that the login response comes from your IdP.


 A typical SAML login works like this:

. Navigate to the URL of your Domo instance.
2. Select
 **Sign In**
 .


 Domo redirects you to the IdP with a SAML request packet.
3. The IdP authenticates whether you have permission to log in to Domo from its system.


 If you have permission, the IdP redirects you back to Domo with a SAML response packet.
4. Domo verifies that the SAML response packet contains the correct authorization information from the IdP and allows you to log in.


**Note:**


* If
 **Skip to Identity Provider**
 is selected in your Domo SSO settings, you do not have to select
 **Sign In**
 during login; you are automatically redirected to the IdP's login page.
* If you have recently logged in to the IdP for Domo or another service, the IdP may skip the username and password prompt and immediately return you to Domo.
* If both of the above occur, the entire login process may be invisible to you, except for a possible 1-5 second delay while the redirects and other steps take place in the background.

Basic Troubleshooting
-------------------------

Before proceeding to advanced troubleshooting in the next sections, review these common causes of failed SAML logins:

 If you do not see the
 **Sign In**
 button when logging in:

+ Make sure you enter the instance URL correctly. Entering an incorrect URL still takes you to a normal login page, even if there is no real Domo instance at that address.
	+ Check if
	 **Mixed-mode Sign-in**
	 is enabled in your Domo SSO settings; if it is, the product is working as intended. This option displays the regular login page for normal instance logins but allows IdP systems to initiate SSO logins, which is most commonly used for SSO-enabled embedding of cards in external systems where SSO is not desired for regular logins.


* If you receive an error when logging in, and the error displays on a Domo-branded webpage, the issue may be:

+ The IdP redirected you to the wrong Domo login URL.
	+ The digital certificate sent by the IdP in the SAML response does not match the certificate that was uploaded to Domo for validating the origin of the SAML response.
	+ Your email attribute is not correctly defined in the SAML response.
	+ Your email attribute IS correctly defined in the SAML Response, but the email is not assigned to any existing users, and
	 **Only invited people can access Domo**
	 is selected in your Domo SSO settings. When this option is selected, users must be manually created and cannot be auto-generated when logging in via SSO.
* If you receive an error when logging in, and the error does NOT display on a Domo-branded webpage, the issue may be:
	+ The SAML Endpoint URL or Entity ID is incorrect in your Domo SSO settings.
	+ The IdP is expecting a signed SAML request, but
	 **Sign Authentication Requests**
	 is not enabled in your Domo SSO settings. Alternatively, the digital certificate loaded into the IdP does not match the certificate provided by Domo near where this setting is enabled.
	+ You do not have IdP permissions to use Domo. Typically, IdP systems have a permissions system built in to allow different users access to different tools, so users trying to log in to Domo must have permission to use Domo in the IdP settings.

Troubleshoot SAML Requests
------------------------------

*Note:**
 The following instructions are specific to the Google Chrome web browser.

##


 Collect a SAML Request


1. Open a new Incognito window in Google Chrome.
2. Right-click anywhere in the main window and select
 **Inspect**
 .


 Chrome opens the
 **DevTools**
 panel.
3. In the
 **DevTools**
 panel, select the
 **Network**
 tab, and then select the
 **Preserve log**
 checkbox.
4. Without closing the tab containing the
 **DevTools**
 panel, navigate to the URL for your Domo instance in the Incognito window.
5. Select
 **Sign In**
 .


 You are redirected to your IdP's login page, and Domo sends a SAML request packets to your IdP.
6. To retrieve the SAML request, go to the
 **DevTools**
 panel, find the
 **Filter**
 field in the
 **Network**
 tab, and enter the word "SAML".


 A network communication record displays in the list below the
 **Filter**
 field.
7. Select the network communication record, then select the
 **Headers**
 tab.
8. In the
 **Response**
 tab, go to the
 **Form Data**
 section. The block of text below this section is the SAML request in an encoded form.

*Note:**
 Data is not encoded to protect the data, but rather to protect communication systems from misinterpreting the data as commands to execute.

##
 Decode a SAML Request


**Important:**
 Your SAML request contains sensitive data, so do not decode it using an online website. Instead, follow the steps below to decode your SAML request using the Chrome browser on a machine.


1. After completing the

previous procedure

, copy the encoded SAML request from the
 **Form Data**
 section.
2. In the
 **DevTools**
 panel, select the
 **Console**
 tab.
3. Enter "atob('
 *SAMLRequestValue*
 ')" in the
 **Console**
 tab. Be sure to keep the single quotes and replace
 *SAMLRequestValue*
 with the encoded SAML value you copied in Step 1.

*Note:**
 If your SAML value has line breaks, remove them after pasting.
4. Press
 **Enter**
 on your keyboard.

Chrome decodes the SAML request into its original XML format.

##
 Interpret a SAML Request

Review these two items in your decoded, XML-formatted SAML request:

 Look for an entry similar to this:

``
<saml2:Issuer xmlns:saml2="urn:oasis:names:tc:SAML:2.0:assertion">some_text</saml2:Issuer>
```


 The text you have in place of
 *some\_text*
 is the Entity ID for Domo, or the identifier that tells your IdP that Domo is the application you are trying to log into. This is the same value as the
 **Entity ID**
 field in your Domo SSO settings, which is usually the URL of your Domo instance, but some IdPs require a special identifier.
* If
 **Sign Authentication Requests**
 is enabled in your Domo SSO settings, look for an entry similar to this:


```
<ds:X509Certificate>some_certificate</ds:X509Certificate>

``


 The text you have in place of
 *some\_certificate*
 is the x.509 digital certificate that helps your IdP confirm that your login request came from Domo.


###
 Troubleshoot a SAML Request

After collecting, decoding, and interpreting your SAML request, use the following troubleshooting steps to resolve any issues:

 The
 **Entity ID**
 is a value that you specify in the SSO settings for Domo to include in the SAML request. Your IdP must be able to recognize this value to verify that Domo is the system you are trying to log into.

Typically, Domo is set up in your IdP system as an app with an Entity ID specified in the app settings. Check your IdP and make sure the Entity IDs match between the two systems. You may need to contact your IdP's support team for help finding the Entity ID for the app in their system.
* The
 **x.509 digital certificate**
 is a value provided by Domo that should be uploaded to your IdP's system in connection with the Domo app so that it knows what value to expect in the SAML request. You can download a copy of the certificate from the Domo SSO settings under
 **Information your IdP may need**
 .


 Verify that the certificate from the SAML request matches the certificate uploaded for the Domo app in your IdP system. If you have a certificate file, you can open it in a text editor for viewing.

Troubleshoot SAML Responses
-------------------------------

*Note:**
 These instructions are specific to the Google Chrome browser.

##


 Collect a SAML Response


1. Open a new Incognito window in Google Chrome and navigate to the URL for your Domo Instance.
2. Select
 **Sign In**
 .


 You are redirected to your IdP's login page. Do not yet enter your credentials.


**Note:**
 If
 **Skip to Identity Provider**
 is selected in your Domo SSO settings,

you are automatically redirected to the IdP's login page.
3. Right-click anywhere in the main window and select
 **Inspect**
 .


 Chrome opens the
 **DevTools**
 panel.
4. In the
 **DevTools**
 panel, select the
 **Network**
 tab, and then select the
 **Preserve log**
 checkbox.
5. Without closing the tab containing the
 **DevTools**
 panel, enter your credentials for your IdP and continue until you reach the Domo error page.


 Your IdP sends a SAML response packet to your Domo instance.
6. To retrieve the SAML request, go to the
 **DevTools**
 panel, find the
 **Filter**
 field in the
 **Network**
 tab, and enter the word "SAML".


 A network communication record displays in the list below the
 **Filter**
 field.
7. Select the network communication record, then select the
 **Headers**
 tab.
8. In the
 **Response**
 tab, go to the
 **Form Data**
 section. The block of text below this section is the SAML response in an encoded form.


###
 Decode a SAML Response

*Important:**
 Your SAML response contains sensitive data, so do not decode it using an online website. Instead, follow the steps below to decode your SAML request using the Chrome browser on a machine.

. After completing the

previous procedure

, copy the encoded SAML response from the
 **Form Data**
 section.
2. In the
 **DevTools**
 panel, select the
 **Console**
 tab.
3. Enter "atob('
 *SAMLResponseValue*
 ')" in the
 **Console**
 tab. Be sure to keep the single quotes and replace
 *SAMLResponseValue*
 with the encoded SAML value you copied in Step 1.


**Note:**
 If your SAML value has line breaks, remove them after pasting.
4. Press
 **Enter**
 on your keyboard.

Chrome decodes the SAML response into its original XML format.

##
 Interpret a SAML Response

Review these two items in your decoded, XML-formatted SAML response:

 Look for an entry similar to this:

``
<ds:X509Certificate>some_certificate</ds:X509Certificate>
```

The text you have in place of
 *some\_certificate*
 is the x.509 digital certificate that helps your IdP confirm that your login request came from Domo.
* Look for an entry similar to this:


```
<saml2:Attribute Name="email"><saml2:AttributeValue>some_email</saml2:AttributeValue></saml2:Attribute>

``


 The text you have in place of
 *some\_email*
 is your email address, which is how Domo identifies exactly who is logging in. The
 *`<saml2:Attribute>`*
 and
 *`<saml2:AttributeValue>`*
 tags can contain more information than what is shown in the example above, but it's important that the
 *Name="email"*
 exists within the
 *<saml2:Attribute>*
 tag.


###
 Troubleshoot a SAML Response

After collecting, decoding, and interpreting your SAML response, use the following troubleshooting steps to resolve any issues:

 The
 **x.509 digital certificate**
 is a value provided by your IdP that should be uploaded to the SSO settings in your Domo instance so that Domo knows what value to expect in the SAML response. You may need to work with your IdP's support team to learn where to retrieve the certificate on their end. This is usually a .pem, .cer, or .cert file.


 Verify that the certificate from the SAML response matches the certificate uploaded to your SSO settings in Domo.


 This certificate must be included in the SAML response.
* The
 **user email address**
 is a value from the user's profile within the IdP. The SAML settings in the IdP should be configured to include this Attribute with the SAML Response. You may need to work with your IdP's support team to learn how to set up that configuration in their system.


 Verify that the email address from the SAML response matches your primary email address in Domo.


 This email attribute must be included in the SAML response.


