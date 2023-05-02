

Intro
-------


 You can sign in to

Domo

using a Single Sign-On (

SSO

) solution from

PingIdentity

.

You must have an "Admin" default security role or a custom role with "Manage All Company Settings" enabled to set up SSO. For more information about default roles, see

Managing Custom Roles

.


 Prerequisites
---------------

To integrate with PingIdentity’s PingOne Cloud Access Services for connecting with Domo, your system must do one of the following:

 provide a Security Assertion Markup Language 2.0 (SAML 2.0) interface


 For more information about SAML 2.0, see

http://en.m.wikipedia.org/wiki/SAML\_2.0
* be Active Directory with a SAML 2.0 interface
* be Active Directory with PingIdentity AD Connect software


 If using Active Directory without a SAML 2.0 interface, you can install PingIdentity AD Connect software that enables the necessary SAML interface. Install PingIdentity AD Connect on a Windows 2008 Server. For more information, see

https://www.pingone.com/docs/pingone-cas-integration-guide.cfm

For more information about PingOne Cloud Access Services, see

https://www.pingone.com/#how-it-works

.


 Configuring Single Sign-On with PingIdentity using SAML
---------------------------------------------------------

You can configure Single Sign-On with PingIdentity using SAML.

. Configure SAML in Domo, as explained in

Understanding and Configuring Domo Single Sign-On Using SAML

.
2. Set up your SAML-enabled Ping application in Ping.

1. In the
	 **Create a Connection**
	 screen...


		1. Select your protocol version of SAML.
		2. In the
		 **Assertion Consumer Service**
		 field, enter the URL from the
		 **SAML Assertion Endpoint URL**
		 field found in the
		 **Single Sign-On**
		 tab in the Major Domo Center in Domo.
		3. In the
		 **Entity ID**
		 field, enter the unique identifier of the Domo instance making the SAMLRequest.
		4. Check the
		 **SAML Multiplexing**
		 box.
	2. In the
	 **SSO Attribute Requirements**
	 screen...


		1. Create the following attributes:

	 SAML\_SUBJECT, email, group, title, phone,


		 and


		 name

	 .
		2. Check the
		 **Required**
		 box for

	 SAML\_SUBJECT

	 and

	 email

	 .


