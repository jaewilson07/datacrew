

Intro
-------

CallTrackingMetrics is a SaaS company that provides call tracking tools and analysis to organizations. Use Domo's CallTrackingMetrics connector to retrieve data about calls, users, voice menus, schedules, and more. To learn more about the CallTrackingMetrics API, visit their page (

https://www.calltrackingmetrics.com/developers/

).


 You connect to your CallTrackingMetrics account in the Data Center. This topic discusses the fields and menus that are specific to the CallTrackingMetrics connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your CallTrackingMetrics account and create a DataSet, you must have the following:

 The token for the CallTrackingMetrics account
* The secret key for the CallTrackingMetrics account

Connecting to Your CallTrackingMetrics Account
------------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the CallTrackingMetrics Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your CallTrackingMetrics account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Token
  |
 Enter the token for the CallTrackingMetrics account.
  |
|
 Secret
  |
 Enter the secret key for the CallTrackingMetrics account.
  |


 Once you have entered valid CallTrackingMetrics credentials, you can use the same account any time you go to create a new CallTrackingMetrics DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


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
 Select the CallTrackingMetrics report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Calls
  |
 Returns a list of calls for the account.
  |
|
 GeoRouters
  |
 Returns a list of GeoRouters for the account.
  |
|
 Numbers
  |
 Returns a list of numbers for the account.
  |
|
 Queues
  |
 Returns a list of queues for the account.
  |
|
 Receiving Numbers
  |
 Returns a list of receiving numbers of the account.
  |
|
 Schedules
  |
 Returns a list of schedules for the account.
  |
|
 Sources
  |
 Returns a list of sources for the account.
  |
|
 Users
  |
 Returns a list of users for the account.
  |
|
 Voice Menus
  |
 Returns a list of voice menus for the account.
  |
|
 Webhooks
  |
 Returns a list of webhooks for the account.
  |

|
|
 CallTrackingMetrics Account Details
  |
 Select the account you want to retrieve information for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

