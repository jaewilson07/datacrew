

Intro
-------

In the

Admin Settings

, you can handle many administrative functions in Domo, including managing users and groups, controlling user access to content, and changing your organization's name and logo that appear in Domo.


 This article provides information on the Admin Settings in the following topics:

 Access the Admin Settings
* Navigate the Admin Settings

Access the Admin Settings
-----------------------------


 In the Domo navigation header, select
 **More**
 >
 **Admin**
 . The Admin Settings screen displays. Depending on your level of Domo access, your Admin Settings may display differently.


**Note:**
 Your Admin Settings options may be different, depending on your Domo environment's security settings.


 Navigate the Admin Settings
-------------------------------

The Admin Settings contain the following menus, available on the Admin Settings screen, shown above, or in the left side rail, which you can expand by selecting the

hamburger menu.


 The left side rail also has a search field, where you can search for a specific topic in the Admin Settings.


 The Admin Settings menu options include the following (depending on your Domo security settings).


 Governance, Content, Company settings, Brand Kit, and Domo Everywhere have their own documentation, linked below. The other options are treated in this article and link to headings below.

 Governance
* Content
* Authentication
* Network security
* Company settings
* Brand Kit
* Domo Everywhere
* Features
* More

Authentication
------------------

The Authentication tab contains the following pages:

 Authentication
* OpenID Connect (SSO)
* SAML (SSO)
* Access tokens
* API Clients


###


 Authentication

The
 **Authentication**
 menu contains options for authenticating in Domo, including password criteria, username autocomplete, and multi-factor authentication. For more information on these topics, see:

 Setting Password Requirements
* Changing Your Password
* Disabling Username Autocomplete in the Login Screen
* Turning On Multi-Factor Authentication


###


 OpenID Connect (SSO)

The OpenID Connect (SSO) sub-tab lets you configure SSO using OpenID Connect. For more information, see

Enabling SSO with OpenID Connect

.

##


 SAML (SSO)

The SAML (SSO) sub-tab ets you configure Single Sign-On (SSO) for your Domo instance. For more information, see

Understanding and Configuring Domo Single Sign-On

.

##


 Access Tokens

The Access tokens sub-tab lets you view a list of access tokens that have been issued. For more information, see

Managing Access Tokens

.

##


 API Clients

Network Security
--------------------

The
 **Network security**
 menu contains the following pages:

 Invite authorized domains
* Custom Apps authorized domains
* Embed authorized domains
* IP Address Whitelist


###


 Invite Authorized Domains

The Authorized domains (for invites) sub-tab lets you specify email domains for users who can be invited to Domo. For more information, see

Specifying Authorized Domains for Invited Users

.

##


 Custom Apps authorized domains

The Custom Apps authorized domains sub-tab lets you specify the domains allowed for navigation from a Custom App. If this is left blank, it allows navigation to all domains from a Custom App.

##


 Embed Authorized Domains

The Embed settings sub-tab allows you to set a bounce page. Depending on browser type and user settings, the Domo cookie may be rejected when embedding Domo in an iFrame. For example, the Safari browser requires a user to either visit a Domo site first or to change their privacy settings in order to load Domo in an iFrame. Learn more about Safari

here

.


 To support these browsers, Domo provides a bounce page. This bounce page automatically loads a Domo page that sets a cookie, then returns the user to the referring site. For security reasons, this bounce page only works when the user’s browser originates from one of the sites listed below. Wild cards in the form of an asterisk “\*” are allowed as a placeholder for the subdomain or path. Find more information on how to implement the bounce page in your custom app or embedding website

here

.

##


 IP Address Whitelist

The Whitelist sub-tab lets you whitelist specific IP addresses in Domo. For more information, see

Whitelisting IP Addresses in Domo

.


 Features
------------

The
 **Features**
 menu contains the following sections. Goals and Cloud Amplifier have their own documentation, linked below.

 Certified Content
* Approvals
* Slideshows
* Buzz
* Goals
* Cloud Amplifier
* Connectors


###


 Certified Content

When you select
 **Certified Content**
 in the sub-tab menu, you can see a list of all Domo Cards or DataSets that have been certified, that are awaiting certification, or that have an expired certification. You can also modify the fields and approvers in the Card or DataSet certification request form. You must have an "Admin" security profile to see this tab.


 The following screenshot shows the most important components of the
 **Certified Content**
 tab for Cards. (Most of these components are the same for Cards and DataSets.)

You can learn more about these components in the following table:


|

Name

|

Description

|
| --- | --- |
|
 Navigation pane
  |
 Lets you switch between the tabs for Certified Cards and Certified DataSets.
  |
|

Company-certified Card form

|

Allows you to open the Card company-level certification request form for editing. This is the form that users fill out when they want to request company-level certification for a Card. Company-level certification represents the highest level of certification your organization can bestow. In the form edit view, you can edit the fields users need to fill out as well as the names of the Card approvers. For more information, see

Certifying Cards and DataSets

.

|
|

Department-certified Card form

|

Allows you to open the Card department-level certification request form for editing. This is the form that users fill out when they want to request department-level certification for a Card. In the form edit view, you can edit the fields users need to fill out as well as the names of the Card approvers. For more information, see

Certifying Cards and DataSets

.

|
|
 Search field
  |
 Lets you search for Cards that have been certified, are pending certification, or have an expired certification.
  |
|

Certified/pending certified Cards

|

Provide details about Cards that are either certified, have certification pending (i.e. a user has requested certification but the Card has not gone through the chain of approvers yet), or that have an expired certification. Entries for certified Cards appear blue, entries for certification pending Cards appear gray, and entries for expired Cards appear red. If you click the

button for a certified or expired Card, a
 **Remove Certification**
 option appears. This option removes the certified status for the Card. If you click the

button for a certification pending Card, a
 **Cancel Certification**
 option appears. This option cancels the approval process for the Card.

|
|

"Expire if edited" toggle

|

Lets you specify whether certified Cards are automatically considered expired if they are edited. This lets you ensure that any content updates to certified Cards get approval first. Note that this is a
 **global**

*setting**
 ; you cannot enable this setting on a Card-by-Card basis.

|
|

Filter menu

|

Lets you filter to show all Cards or those that are certified, pending certification, or have an expired certification.

|


 For more information about Card certification, see

Certifying Cards and DataSets

.

##


 Slideshows


 When you select
 **Slideshows**
 in the sub-tab menu, the middle panel shows the names of the slideshows in Domo, and the rightmost panel shows the Card slides in the slideshow, along with any published URL and access code.


 You can filter the list of slideshows by entering text in the
 **Search**
 field.


 The following screenshot shows the most important components of the
 **Slideshows**
 tab:

You can learn more about these components in the following table:


 Name
  |
 Description
  |
| --- | --- |
|
 Title
  |
 Displays the name of the title and the number of Cards in the slideshow.
  |
|
 Shared URL
  |
 Displays the URL for accessing the slideshow.
  |
|
 Access Code
  |
 Displays the access code for accessing the slideshow.
  |
|
 Stop Publishing
  |
 Removes Web access to the slideshow.
  |
|
 Cards in this Slideshow
  |
 Lists the Cards in the slideshow. You can see information such as the name, refresh rate, and last refresh time for the Card. You can remove a Card from the slideshow by clicking
 **Remove**
 .
  |
|
 Delete Slideshow
  |
 Deletes the slideshow from Domo.
  |

For more information about slideshows, see

Sharing Content Using Slideshows

.

##


 Buzz

When you select
 **Buzz**
 in the sub-tab menu, you can configure global options for Buzz in your Domo instance. You can also see activity indicators showing you the number of Buzz messages sent and users for this week compared to last week.


 Options you can configure in this tab include the following:

 **Enable company-wide General channel**
 . When this box is checked, a "General" conversation is available for all users of Buzz in your instance.
* **Default all conversations around Domo data to private**
 . When this box is checked, the conversations on Domo data will be set to private.
* **Allow all users to invite Social users**
 . When this box is checked, anyone in your Domo can invite users to Domo as Social users. For more information, see

Inviting Others to Join Domo

.


 The
 **Buzz**
 sub-tab appears in your

Admin Settings

Page only if you have an "Admin" default security role or a custom role with the "Edit Conversations and Messages" privilege enabled. For more information about default security roles, see

Managing Roles

.


 For more information about Buzz, see

Buzz Layout

.

##


 Connectors


 The
 **Connectors**
 page allows you to grant and revoke access to power up Connector DataSets. For more information, see our

Connector Permissioning in Domo

article.

More
--------

The More tab contains the following sub-tabs:

 Manage easy links
* Exporting data
* Alert Actions
* Tool Downloads


###


 Manage Easy Links

The Manage easy links sub-tab lets you share easy links with team members so they immediately start collaborating with you over Buzz. For more information, see

Inviting Others to Join Domo

.

##


 Exporting Data

The Exporting data sub-tab lets you enable or disable Excel formulas before exporting Domo data.

##


 Alert Actions

The Alert Actions sub-tab allows you to enable Alert actions, which allow users to use an Alert trigger event to automatically take action in a third party application via webhook or API. These actions may transmit data from the Card or DataSet that the Alert is set on to the third party application. Disabling Alert actions will prevent users from creating Alert actions and will disable any currently functioning actions in Domo.

##


 Tool Downloads

When you select
 **Tool Downloads**
 in the sub-tab menu, a panel appears on the right with information about tools you can download. Currently, you can choose between the following tools:

 Workbench 5
* Workbench 5.1
* Domo ODBC Driver 1.0
* Domo PowerPoint Plugin
* Domo Excel Plugin
* Domo Word plug-in
* Domo CLI
* Domo Google Sheets add-on


 Watch the video below for an overview of the Admin Settings.


**Video - Admin Settings Overview**

