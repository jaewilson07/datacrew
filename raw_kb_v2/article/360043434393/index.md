

Intro
-------

Zendesk Sunshine is an open, flexible CRM platform. Sunshine lets you seamlessly connect and understand all of your customer data wherever it lives. Use Domo's Zendesk Sunshine connector to receive details about profiles, events and custom objects. To learn more about the Zendesk Sunshine API, visit

https://developer.zendesk.com/rest\_api/docs/sunshine/introduction

.


 You connect to your Zendesk account in the Data Center. This topic discusses the fields and menus that are specific to the Zendesk Sunshine connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Zendesk account and create a DataSet, you must have the following:

 Your Zendesk username
* Your Zendesk API token or password
* The Zendesk URL for your company

The user must be a Zendesk admin in order to connect to the Zendesk account.


 Connecting to Your Zendesk Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Zendesk Sunshine

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your

Zendesk

account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter the username for your Zendesk account. The user must be a Zendesk admin.
  |
|
 Authenticated By
  |
 Specify whether you want to use your Zendesk API token or password to authenticate.
  |
|
 API Token or Password
  |
 Enter your Zendesk API token or password. This must match what you have selected in the
 ****Authenticate By****
 menu.
  |
|
 Zendesk URL
  |
 Enter the Zendesk URL for your company.
  |


 Once you have entered valid

Zendesk

credentials, you can use the same account any time you go to create a new

Zendesk Sunshine

DataSet. You can manage connector accounts in the
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
 Select the Zendesk Sunshine report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 List Custom Object Types
  |
 This report returns the account's custom object types.
  |
|
 List Objects Records By Type
  |
 This report returns object records by object type key.
  |
|
 List Relationship Records By Type
  |
 This report returns all relationship records of the specified relationship type.
  |
|
 List Relationship Types
  |
 This report returns the account's relationship types.
  |

|
|
 Custom Object Type
  |
 Select the custom object type.
  |
|
 Relationship Type
  |
 Select the relationship type.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

