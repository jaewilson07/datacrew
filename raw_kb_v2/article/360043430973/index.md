

Intro
-------

Celtra empowers agencies, media suppliers and brand leaders with the leading creative technology for data-driven brand display advertising across all screens. To learn more about the Celtra API, refer to their blog (

http://www.celtra.com/insights/blog/...ed-adcreator-3

).


 You connect to your Celtra account in the Data Center. This topic discusses the fields and menus that are specific to the Celtra connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Best Practices
----------------

The dimensions and metrics available when using the Celtra connector are almost identical to those in the Celtra Report Builder (which you can find in Celtra by going to
 **Reporting Center > Report Builder**
 ). It is recommended you use the Report Builder to build the report you want in Domo, noting the dimensions and metrics, then select those same fields in the Domo connector. This lets you quickly find the right data, speed up your connector configuration time, and schedule your reporting.


 Prerequisites
---------------

To connect to your Celtra account and create a DataSet, you must have the following:

 A Celtra App ID
* A Celtra secret key
* Your Celtra subdomain

You can obtain your App ID and secret key by navigating to
 **User Name > Settings**
 in Celtra. After you create the API application, you will receive these credentials.


 You can find your Celtra subdomain by looking at the portion of your Celtra instance URL right after

https://

. For example, if your Celtra instance was


 customerxyz.celtra.com


 , your subdomain would be

customerxyz

.


 Connecting to Your Celtra Account
-----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Celtra Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Celtra account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 App ID
  |
 Enter your Celtra app ID.
  |
|
 Secret Key
  |
 Enter your Celtra secret key.
  |
|
 Subdomain
  |
 Enter your Celtra subdomain.
  |

For information about obtaining these credentials, see "Prerequisites," above.

Once you have entered valid Celtra credentials, you can use the same account any time you go to create a new Celtra DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a primary
 **Reports**
 menu, along with various other menus which may or may not appear depending on options you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Celtra report you want to run. Currently only one report type is available.


|  |  |
| --- | --- |
|
 Analytics
  |
 Returns analytics data for the authenticated user.
  |

|
|
 Filter Type
  |
 Select whether you want the data in your report to be filtered by an account, campaign, creative, or placement.
  |
|
 Account ID
  |
 Enter the ID of the account you want to retrieve data for. The ID is presented as an 8 character alpha-numeric value.


**To find an account ID in Celtra, do the following:**
1. Log into Celtra.
2. Navigate to the Report Builder (
 **Reporting Center > Report Builder**
 ).
3. Locate the "Account ID" dimension and include it in the report.


 The spreadsheet sample panel then populates with the "Account ID" column.


 If you only have one account in Celtra, the ID that appears as the data for the "Account ID" column is your Account ID to use for the connector configuration. If you have many accounts, it is recommended that you download the report from Celtra as an Excel file to see all the Account IDs that exist for your organization. You may then pick and choose the Accounts IDs you want to use for the connector.


 The Domo connector currently only supports 1 Account ID per DataSet, so if you have 4 Accounts IDs you want to use in Domo, at a minimum you must set up 4 DataSets, 1 DataSet per Account ID.
  |
|
 Campaign ID
  |
 Enter the ID of the campaign you want to retrieve data for. You can find the campaign ID under the campaign name in the
 **My Campaign**
 tab.
  |
|
 Creative ID
  |
 Enter the ID of the creative you want to retrieve data for.
  |
|
 Placement ID
  |
 Enter the ID of the placement in which the creative was trafficked.
  |
|
 Dimension
  |
 Select all of the dimensions you want your data to be broken down by.
  |
|
 Metrics
  |
 Select all of the metrics you want to appear in your report.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

