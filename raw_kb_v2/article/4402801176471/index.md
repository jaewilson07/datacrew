

Intro
-------

HubSpot develops software for social media and email marketing, content management, web analytics, and search engine optimization. Use Domo's HubSpot Engagement connector to compile reports about your call engagements and dispositions. To learn about the HubSpot API, visit their website (

http://developers.hubspot.com/docs/overview

).


 The HubSpot Engagement connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your HubSpot account in the

Data Center

. This topic discusses the fields and menus that are specific to the HubSpot Engagement connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 Compiling reports about aspects of social media and email marketing, such as call engagements and call dispositions.
  |
|
**Primary Metrics**
 | * Call engagement dispositions
* Call engagements
 |
|
**Primary Company Roles**
 |
 Marketing/sales roles
  |
|
**Average Implementation Time**
 |
 Less than 1 hour
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 2
  |

Prerequisites
---------------

To connect to your HubSpot account and create a DataSet, you must have the following:

 Your Hubspot email address and password. Alternatively, you can login using your Google or SSO (Single Sign On) credentials.

Connecting to Your HubSpot account
------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the HubSpot Engagement Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials pane

The Domo HubSpot Engagement Connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing HubSpot


 accounts in Domo) to open the HubSpot OAuth screen where you can enter your HubSpot email address and password. Once you have entered valid Hubspot credentials, you can use the same account any time you go to create a new HubSpot Engagement DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**


 If you are already logged into

HubSpot

when you connect in Domo, you are authenticated automatically when you click


**Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of

HubSpot

.


###
 Details pane

This pane contains a primary menu in which you select your HubSpot Engagement report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select a HubSpot report. The following reports are available:


|  |  |
| --- | --- |
|
 Call Engagement Dispositions
  |
 Get the possible dispositions for sales calls (stored as engagements), listed as the outcome when viewing the call's outcome when viewing the call in the timeline in HubSpot.
  |
|
 Engagement
  |
 This endpoint is used to get all engagements in an account.
  |


 |


###
 Other panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQ
-----


####
 What endpoint is the base URL for this connector?

The base URL for the HubSpot Engagement connector is

https://api.hubapi.com/

.

###
 Which endpoint(s) does each report call in this connector?


|
 Report Name
  |
 Endpoint URL(s)
  |
| --- | --- |
|
 Call Engagement Dispositions
  |
 /calling/v1/disposition
  |
|
 Engagement
  |
 /engagements/v1/engagements/page
  |


####
 What kind of credentials do I need to power up the HubSpot Engagement connector?

You need your Hubspot email address and password. Alternatively, you can login using your Google or SSO (Single Sign On) credentials.

###
 How do I know my Hubspot credentials are secure?

The login process uses the OAuth process, so your Hubspot credentials are never seen or stored by Domo. This keeps your login secure. You can revoke Domo's access to your account at any time.

###
 What kind of HubSpot account do I need to access the API?

You need a Marketing Professional or Enterprise HubSpot account to access the API.

###
 How frequently will my data update?

As often as needed.

###
 Are there any API limits that I need to be aware of?

No

###
 Can I use the same account to create multiple datasets?

Yes

