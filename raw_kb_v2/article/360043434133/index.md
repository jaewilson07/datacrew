

Intro
-------

SocialFlow collects data about social media activity to help companies know when it is best to post their content for maximum effect. To learn more about the SocialFlow API, visit their Github page (

https://github.com/SocialFlowDev/soc...ow-api-example

).


 You connect to your SocialFlow account in the Data Center. This topic discusses the fields and menus that are specific to the SocialFlow connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your SocialFlow account and create a DataSet, you must have the following:

 The email address associated with your SocialFlow account
* Your SocialFlow password

Alternatively, you can sign in with Google credentials.


 Connecting to Your SocialFlow Account
---------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the SocialFlow Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo SocialFlow connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing SocialFlow accounts in Domo) to open the SocialFlow OAuth screen where you can enter your SocialFlow or Google credentials. Once you have entered valid credentials, you can use the same account any time you go to create a new SocialFlow DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into SocialFlow when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of SocialFlow.


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
 Select the SocialFlow report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Accounts
  |
 Returns a list of social accounts the SocialFlow client has authorized.
  |
|
 Content Archive
  |
 Returns data for messages currently contained in the SocialFlow Content Archive.
  |
|
 Content Queue
  |
 Returns data for messages currently in the SocialFlow Queue.
  |
|
 Content Sources
  |
 Returns all content sources a user has added to SocialFlow.
  |
|
 Notifications
  |
 Returns a list of notifications of recent activity detected by SocialFlow.
  |

|
|
 Service User ID
  |
 Select the user or account you want to retrieve information for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

