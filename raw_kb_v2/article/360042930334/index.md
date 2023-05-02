

Intro
-------

Basecamp 3 is a web-based project management tool developed by Basecamp and launched in 2004. To learn more about the Basecamp 3 API, visit their page (

https://github.com/basecamp/bc3-api

).


 You connect to your Basecamp 3 account in the Data Center. This topic discusses the fields and menus that are specific to the Basecamp 3 connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------


 To connect to your Basecamp 3 account and create a DataSet, you must have the following:


* The username or email address you use to log into Basecamp 3
* The password you use to log into Basecamp 3


 Alternatively, if you used a Google account to set up your Basecamp 3 account, use the credentials associated with that Google account.

Connecting to Your Basecamp 3 Account
---------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Basecamp 3 Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###


 Credentials Pane


 The Domo Basecamp 3 connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Basecamp 3 accounts in Domo) to open the Basecamp 3 OAuth screen where you can enter your Basecamp 3 username/email address and password. Once you have entered valid Basecamp 3 credentials and authorized Domo to connect to Basecamp 3, you can use the same account any time you go to create a new Basecamp 3 DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


**Note:**
 If you are already logged into Basecamp 3 when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Basecamp 3.


###
 Details Pane

This pane contains a primary
 **Reports**
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Basecamp 3 report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Basecamps
  |
 Returns a paginated list of active Basecamps visible to the current user, sorted by creation date.
  |
|
 Basecamp by Basecamp ID
  |
 Returns the Basecamp with the provided ID.
  |
|
 Campfire by Basecamp ID
  |
 Returns the Campfire with the provided Basecamp ID.
  |
|
 Campfires
  |
 Returns a paginated list of active Campfires visible to the current user.
  |
|
 Client Approvals
  |
 Returns a paginated list of client approvals.
  |
|
 Client Correspondence
  |
 Returns a paginated list of client correspondences in Basecamp.
  |
|
 Events
  |
 Returns a paginated list of events for the selected Recording type.
  |
|
 Forwards
  |
 Returns a paginated list of Forwards for the provided Basecamp ID.
  |
|
 People
  |
 Returns a list of all people visible to the authenticated user.
  |
|
 People by Basecamp ID
  |
 Returns a list of people for the provided Basecamp ID.
  |
|
 Pingable Persons
  |
 Returns all people in the account who can be pinged.
  |
|
 Recordings
  |
 Returns a paginated list of Recordings for the provided Recording type.
  |
|
 Templates
  |
 Returns a list of templates for the provided Basecamp ID and status.
  |

|
|
 Status
  |
 Select the status you want to retrieve information for.
  |
|
 Basecamp ID
  |
 Select the Basecamp ID you want to retrieve information for.
  |
|
 Type
  |
 Select the Recording type you want to retrieve information for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

