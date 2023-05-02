

Intro
-------

To get started with Domo Everywhere, you must establish a connection between the publishing organization and all of the subscribing organizations. The Domo administrator for the publishing organization creates and maintains the connections to the subscribing organizations from the Domo Everywhere central hub. The admin also configures the authentication for each user within the subscribing organizations. This is called routing.


 After routing is configured, the admin must create each subscribing organization within the publishing organization and provide the key attributes for the individual users that are authenticating so that they can be mapped to the appropriate subscribing organizations. After the key attributes are provided, Domo completes the mapping process automatically. The admin can then view the mapping details from within the publishing organization.

This article describes how to configure publishing organizations and subscriber organizations in the following topics:

 Prerequisites
* Routing

+ G


	 rant embed access
	+ Download/upload routing certificate
* Subscriber Organization Setup

+ Define the key attribute
	+ Create a subscriber organization
	+ Remove a subscriber organization
* Mapping
* Troubleshooting
* FAQ

Prerequisites
-----------------

You need to do the following before routing, creation, and mapping:

 Purchase the Domo Everywhere product.
* Configure the publishing organization in Domo.
* Identify your organization's authentication method in the following table and obtain any listed information.


**Note:**
 If a third-party system hosts key attributes used to authenticate the identity of your users, choose OIDC or SAML.


|
 Authentication Method
  |
 Description
  |
| --- | --- |
|
 JWT Secret
  |

This method requires the simplest implementation. If your system hosts key attributes used to authenticate the identity of your users, choose JWT Secret. No additional


 information is needed. Generate the secret as instructed in the UI.


**Important:**
 A secret is a one-to-many relationship. After you select
 **Generate Secret**
 one time, copy it and put it in the places that you need it. When you navigate away from the page, that secret cannot be recovered. Generating a new secret invalidates all existing secrets.

|
|
 JWT Public Key
  |

If your organization uses this method, you can get the Public Key from your IT manager.

|
|
 OpenID Connect (OIDC)
  |
 You need the following information:

-  Client ID

-  Client Secret

-  Authorization url

-  Token endpoint

-  Exchange endpoint

-  User information endpoints
  |
|
 SAML (SSO)
  |
 You need the following information:

-  Entity ID

-  Login endpoint url

-  Logout endpoint url
  |


**Note:**
 During beta, you must upload the Routing Certificate from the publishing organization to the
 **Routing**
 tab of each new subscribing organization that you create. For detailed instructions on how to do this, see

Uploading the Routing Certificate to the Subscribing Organization

.

Routing
-----------

Complete the tasks in this section according to the authentication method you identified above.

###
 Choosing the Authentication Method

1. From the navigation header, go to
 **More**
 >
 **Admin**
 .


 2. From the
 **Domo Everywhere**
 menu on the Admin page, select
 **Embed**
 .

3. In the
 **Embed**
 section, go to the
 **Routing**
 tab.


 4. Select your authentication method from the menu.

5. Fill in the information for your authentication method.

*Important:**
 As a reminder, if you use JWT Secret, make sure to copy and save the secret after you generate it. When you navigate away from the page, that secret cannot be recovered. If you generate a new secret, all existing secrets are invalidated.


###


 Grant Embed Access

This security feature is optional. The
 **Embed Url**
 feature allows you to create a pre-approved list of domains that can display your embedded Domo content. Even with the embed code, a domain that is not on the allowlist cannot display the content.


 To use this feature, enter the URL of each site you wish to add to the allowlist in the
 **Domain name**
 field and select
 **Add**
 .


 The URLs on the allowlist display below the
 **Domain name**
 field.


###


 Download Routing Certificate

This security feature is optional. If your website or portal requires certificate encryption between Domo and the website, you can download the certificate here.


 To download the certificate, select

*Download**
 to the right of the
 **Routing Certificate**
 field.

You can now upload the certificate to your authentication provider.

###
 Uploading the Routing Certificate to the Subscribing Organization

After you download the Routing Certificate, you can upload it to a subscriber organization's Domo environment by following these steps:


 1. Load the Domo environment you want to upload the certificate to.


 2. From the navigation header, go to
 **More**
 >
 **Admin**
 .


 3. From the
 **Domo Everywhere**
 menu on the Admin page, select
 **Embed**
 .


 4. Go to the
 **Routing**
 tab.


 5. In the
 **Authentication Method**
 menu, select
 **SAML (SSO)**
 .


 6. Select
 **Edit**
 .


 The
 **Edit SAML (SSO)**
 dialog displays.


 7. In the
 **Certificate**
 field, enter the Routing Certificate.


 8. Select
 **Save**
 .

##
 Paste the Embed URL

After you have chosen the authentication method and configured all security features, you can view the embed url.


 1. Copy the address in the
 **Embed Url for identity broker**
 field by selecting

*Copy**
 .


 2. Paste the address into your host site or software to redirect users to their mapped account.


**Note:**
 If the format of your url does not display as https://
 *domain*
 .

identity.domo.com

, contact your Customer Success Manager (CSM).

Subscriber Organization Setup
---------------------------------

After you have successfully set up routing, the next step is adding subscriber organizations that will receive your published content. A Domo admin


 can create, update, and delete any number of subscribing organizations based on needs and workflows.


 Before you can create a subscriber organization for the first time, you need to define your key attribute. The key attribute is the value that Domo uses to map a user to an organization. To help you determine your key attribute, consider, for your organization, what is the field in a user's profile that comes from your identity provider (IDP)? Common examples are "customer ID" and "partner ID." We recommend renaming the
 **Key attribute**
 field to your preferred value.


 After you define your key attribute once, you can then skip this section and begin at

Creating a Subscriber Organization.


###


 Define the Key Attribute

1. In
 **Domo Everywhere**
 , go to the
 **Embed**
 section.


 2. In
 **Embed**
 , go to the
 **Mapping**
 tab.


 At the top of the Mapping tab, the
 **Key attribute**
 field displays


 3. Select
 **Edit**
 to edit the field and name your key attribute.


 The
 **Edit key attribute**
 modal displays.

You can name your key attribute whatever your organization uses for the value that identifies your customers. In this example, we are using customerID.

4. After you enter your key attribute name, select
 **Save.**


 Your key attribute now displays throughout Domo Everywhere where the key attribute appears.

###


###


 Create a Subscriber Organization

If your

key attribute

is defined, follow these steps to create a subscriber organization.


 1. From the navigation header, go to
 **More**
 >
 **Admin**
 .


 2. In the
 **Domo Everywhere**
 menu, select
 **Organizations**
 .


 The
 **Organizations**
 section of Domo Everywhere displays.

3. Select
 **+ New Organization**
 .


 The
 **New Organization Creation**
 modal displays.

4. In the modal, enter the
 **Organization Name**
 .

We recommend giving the organization a name that corresponds with a service account that the organization uses consistently to validate all end customer accounts
 *.*


 5. Enter the
 **Service account email**
 .

6. Enter the value for your key attribute, which displays in the modal the way that you configured it in the
 **Mapping**
 tab. In this example, the key attribute is configured as the customerID.

5. (Optional) Check the box if you want to share with the default group.


 6. Select
 **Save**
 .


 Saving may take a few seconds because the system is confirming that no duplicate customer names have been sent.

##


 Remove a Subscriber Organization


**Important:**
 The subscriber organization must unsubscribe from all publications before you can remove it.


1. From the navigation header, go to
 **More**
 >
 **Admin**
 .


 The Admin Settings display.
2. In the
 **Domo Everywhere**
 menu, select
 **Publications**
 .


 The
 **Publications**
 page displays.
3. Open the
 **Subscribers**
 tab.


 Each subscriber organization displays as a row.
4. Select

*More**
 for the subscriber you want to remove.


 The edit and delete options display.
5. Select

*Delete Subscriber**
 .

A dialog displays where you must acknowledge that you understand that the subscriber is being removed from Domo permanently and that everybody that has access to that subscriber's Domo environment will no longer be able to log in.
6. Select
 **Delete**
 to remove the subscriber or
 **Cancel**
 to cancel the operation.

Mapping
-----------

After creating an organization, it's time to set its


 key attribute for mapping. Users are mapped according to the
 **Attribute Value**
 that displays on the left side of the mapping table. As each user signs into the host portal, Domo redirects the iframe to the
 **Child instance URL**
 listed on the right side of the mapping table.

Follow these steps to map a subscriber organization:


 1. From the navigation header, go to
 **More**
 >
 **Admin**
 .


 2. In the
 **Domo Everywhere**
 menu, select
 **Embed**
 .


 3. Go to the
 **Mapping**
 tab.


 4. Select
 **+ Add Mapping**
 .

The
 **Add mapping**
 dialog displays.

5. In the dialog, fill in the
 **Attribute Value**
 and the
 **Child instance URL**
 for the user.


 6. Select
 **Save**
 .


 The dialog closes.


 Users are now mapped to the correct subscribing organization.


 Troubleshooting
-------------------


 {"status":400,"statusReason":"Bad Request","message":"No value in attribute..."}

This usually occurs if you have changed the

Key Attribute name from the default and your host page has not adjusted to watch for the new name. The default always looks for "keyAttribute."


 We recommend you change it to the field in your data and user profiles. Common examples include "Customer ID" and "Partner ID."

###

Changing the Key Attribute Name


 1. Inside Domo Everywhere, go to the
 **Embed**
 section.


 2. Go to the
 **Mapping**
 tab.


 3. In the
 **Key attribute**
 field, enter the value you would like to use instead.

{"status":500,"statusReason":"Internal Server Error" ...}

This usually occurs if you or the automated process have not successfully uploaded the cert.pem to the SSO settings in the subscriber organization's Domo environment. Routing Certificates are usually uploaded automatically by the published configuration.

If that process was not successful or you are integrating a preexisting instance that was not created through Domo Everywhere admin, you can also manually download the SSO certificate from the publishing organization and upload it to the subscriber organization.


 For detailed instructions on how to do this, see

Downloading the Routing Certificate

, above.

"Browser cannot open page in embedded iframe"

This usually happens if the
 **no-iframe-embedding**
 feature switch is active. Deactivation of the switch is normally done

automatically as a part of the configuration published from the parent to the child along with the rest of the brand kit and subscriber feature switches.

If you click the "open site in new window" and the cert mentioned above has been uploaded, the child should load when accessed directly or when you click the "Open Site in New Window" button above.


 If that published configuration was unsuccessful or the child is a preexisting instance, "no-iframe-embedding" can be activated by contacting your Domo representative. This will ensure the child environment also loads in embedded iframes.


 Frequently Asked Questions
------------------------------

*My customer has a certain template they apply to their users. How can I make sure that template is used?**


 For this version, we require all subscribing organization's to use the same "embedded end customer account" feature switch template. That template hides the Domo platform header and footer, removes Domo branding, and activates auto-subscription capabilities. However, if you have additional unique needs, you can coordinate additional template changes by contacting your CSM/AE.


 Your custom template is then automatically used in the creation of subscriber organizations for that publisher.


**I need to create multiple subscribers. Is there a bulk creation option?**


 Not yet. That is queued for release soon after this beta begins.


**Can I automate the bulk creation of instances programmatically via API?**


 Not yet. That is part of the general release of customer creation that includes bulk creation.

