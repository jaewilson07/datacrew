

Intro
-------

Teckst is a texting platform that allows customer service teams to two-way text with customers instead of using phone calls and emails. Use Domo's Teckst connector to retrieve metrics for issues and messages. To learn more about the Teckst API, visit their page (

https://api.teckst.com/v1/docs/

).


 You connect to your Teckst account in the Data Center. This topic discusses the fields and menus that are specific to the Teckst connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Teckst account and create a DataSet, you must have your Teckst username and password.


 Connecting to Your Teckst Account
-----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Teckst Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Teckst account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter the username for your Teckst account.
  |
|
 Password
  |
 Enter the password for your Teckst account.
  |


 Once you have entered valid Teckst credentials, you can use the same account any time you go to create a new Teckst DataSet. You can manage connector accounts in the
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
 Select the Teckst report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Issues per Interval
  |
 Returns a count of issues over a period of time.
  |
|
 Messages per Interval
  |
 Returns a count of messages over a period of time.
  |
|
 Messages per Issue
  |
 Returns the average number of messages per issue.
  |

|
|
 Group By
  |
 Select the date granularity for the data in the report.
  |
|
 CRM ID
  |
 Enter the ID of the CRM you want to retrieve information for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

