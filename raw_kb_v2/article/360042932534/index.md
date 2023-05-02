

Intro
-------

Workiva is a leading cloud platform for connected reporting across accounting, finance, audit, and internal controls. To learn more about the Workiva API, visit their page (

https://success.workiva.com/developers/api-reference

).


 You export data from Domo to Workiva in the Data Center. This topic discusses the fields and menus that are specific to the Workiva Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this connector, you must have a Domo Client ID and Client Secret. To obtain these credentials, do the following:

. Log into your Domo developer account at

https://developer.domo.com/login

.
2. Create a new client

.
3. Select the desired data and user application scope.
4. Click
 ********Create********
 .

You must also have the following:

 A Workiva client ID
* A Workiva client secret

To learn how to obtain these credentials, see

https://success.workiva.com/developers/guides/setup

.


 Configuring the Connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Workiva Writeback Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Workiva account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Domo Client ID
  |
 Enter your Domo client ID.
  |
|
 Domo Client Secret
  |
 Enter your Domo client secret.
  |
|
 Client ID
  |
 Enter your Workiva client ID.
  |
|
 Client Secret
  |
 Enter your Workiva client secret.
  |

For information about obtaining these credentials, see "Prerequisites," above.

Once you have entered valid Workiva credentials, you can use the same account any time you go to create a new Workiva DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a number of fields for specifying your data and indicating where it's going.


 Menu
  |
 Description
  |
| --- | --- |
|
 Domo DataSet ID
  |
 Enter the DataSet ID (GUID) for the DataSet you want to copy to Workiva. You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following

datasources/

. For example, in the URL

https://mycompany.domo.com/datasources/845305d8-da3d-4107-a9d6-13ef3f86d4a4/details/overview

, the DataSet ID is

845305d8-da3d-4107-a9d6-13ef3f86d4a4

.
  |
|
 Spreadsheet ID
  |
 Enter the ID of the Workiva spreadsheet where you want to send your Domo data. This can be found in the spreadsheet URL. For example, in the URL


 https://app

.

wdesk.com/a/aabbccddeeffgghhkkllXTest/spreadsheet/aaaa-bbbb-cccc-dddd-eeee


 , the ID is

aaaa-bbbb-cccc-dddd-eeee

.
  |
|
 Sheet ID
  |
 Select the specific sheet where you want to send your Domo data.
  |
|
 Region
  |
 Enter the region of the spreadsheet where you want to send your Domo data. Formatting guidelines are as follows:


|
 If you were to enter this...
  |
 ...your Domo data would end up here
  |
| --- | --- |
|

A1

|
 Cell A1
  |
|

A2:D8

|
 All cells in the range between A2 and D8 (inclusive)
  |
|

A:A

|
 All cells in column A
  |
|

1:3

|
 All cells in rows 1 through 3
  |
|

B3:

|
 All cells below and to the right of B3 (inclusive)
  |
|

:

|
 All cells in the sheet
  |

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

