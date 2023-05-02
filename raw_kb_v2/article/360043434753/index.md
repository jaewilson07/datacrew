

Intro
-------

Yammer is a freemium enterprise social networking service used for private communication within organizations. You can use Domo's Yammer connector to retrieve data about networks, suggestions, users, messages, and notifications. To learn more about the Yammer API, go to

https://developer.yammer.com/restapi/

.


 This topic discusses the fields and menus that are specific to the Yammer connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Yammer account and create a DataSet, you must have the following:

 The email address from your organization you used when you set up your Yammer account. This email address must contain your organization's Internet domain (such as


 domo.com


 ).
* Your Yammer password.

Connecting to Your Yammer Account
-----------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Yammer Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Yammer connector uses OAuth to connect. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Yammer accounts in Domo)


 to open the Yammer OAuth screen where you can enter your Yammer email address and password. After you enter your credentials, you must authorize Yammer to connect to Domo by clicking
 **Allow**
 . Once you have entered valid Yammer credentials, you can use the same account in Domo any time you create a Yammer DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Yammer when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Yammer.


###
 Details Pane

This pane contains a primary
 **Report**
 menu, along with various other fields and menus that may or may not appear depending on the selected report type.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select a Yammer report. The following reports are available:


|  |  |
| --- | --- |
|
 Networks
  |
 Returns a list of networks to which the authenticated user has access.
  |
|
 Search
  |
 Returns groups, messages, topics, or users matching the provided query.
  |
|
 Suggestions
  |
 Returns a list of suggested groups and users.
  |
|
 Users
  |
 Returns a list of users in the authenticated user's organization.
  |
|
 Messages
  |
 Returns public messages in the network. You can filter messages by selecting a
 **Message Type**
 .
  |
|
 Notifications
  |
 Returns the notifications feed for the authenticated user.
  |


 |
|
 Search In
  |
 Select the Yammer area you want to search.
  |
|
 Search Query
  |
 Enter the query you want to retrieve data for.
  |
|
 Message Type
  |
 Select the type of messages you want to retrieve.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

