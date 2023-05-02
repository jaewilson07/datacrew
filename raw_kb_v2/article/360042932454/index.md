

Intro
-------

Outreach is a sales communication platform that makes your team's communication workflows faster and reveals the performance insights that make them more effective at selling. Use Domo's Outreach Writeback connector to create and update prospects, accounts and opportunities in Outreach. To learn more about the Outreach API, visit their page (

https://www.outreach.io/platform/

).


 You connect to your Outreach Writeback account in the Data Center. This topic discusses the fields and menus that are specific to the Outreach Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To connect to your Outreach account and create a DataSet, you must have the following:

 Your Domo Client ID and Client Secret.
* Your Outreach Client ID and Client Secret, created when registering an OAuth app with Outreach. Use the following redirect URI while registering the app -

https://oauth.domo.com/api/data/v1/oauth/providers/outreachwriteback/exchange
* Your Outreach username and password.


#####
**To obtain the Domo Client ID and Client Secret, do the following:**


1. Log into your

Domo developer account

.
2. In the top right corner, click
 **My Accounts**
 >>
 **New Client**
 .
3. Enter the name and description for your application.
4. Provide the application scope by selecting the checkboxes for
 ****Data****
 and
 ****User****
 .


 5. Click
 **Create**
 .


 Once you have created a client, you can manage the client by clicking on
 **Manage Client**
 . Your
 **Client Secret**
 will appear in the
 **Manage Client**
 section.


 Configuring the connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Outreach Writeback

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane

This pane contains fields for entering credentials for your Domo developer account as well as your Outreach account. The following table describes what is needed for each field:

Field

|

Description

|
| --- | --- |
|
 Domo Client ID
  |
 Enter your Domo Client ID. For more information, see

Prerequisites

.
  |
|
 Domo Client Secret
  |
 Enter your Domo Client secret. For more information, see

Prerequisites

.
  |
|
 Outreach Client ID
  |
 Enter your Outreach Client ID. You will need to register an app within Outreach.
  |
|
 Outreach Client Secret
  |
 Enter your Outreach Client Secret. You will need to register an app within Outreach.
  |


 Once you have entered valid credentials, you can use the same account any time you go to create a new

Outreach Writeback

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
 Select the Outreach Writeback report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Account
  |
 This report is used to update the details about accounts that are associated with logged in user.
  |
|
 Prospects
  |
 This report is used to create a new prospect resource or to update an existing prospect that is associated with logged in user.
  |
|
 Opportunity
  |
 This report is used to create a new opportunity resource or to update an existing opportunity for a sale or pending deal.
  |

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

