

Intro
-------

Airtable is a cloud collaboration service that produces a spreadsheet-database hybrid, with the features of a database but applied to a spreadsheet. To learn more about the Airtable API, visit their page (

https://airtable.com/api

).


 You connect to your Airtable account in the Data Center. This topic discusses the fields and menus that are specific to the Airtable connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Airtable account and create a DataSet, you must have an Airtable API key. For information about obtaining an API key, go here:

https://support.airtable.com/hc/en-u...et-my-API-key-

Connecting to Your Airtable Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Airtable Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Airtable account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your Airtable API key. For information about obtaining an API key, see "Prerequisites," above.
  |


 Once you have entered a valid Airtable API key, you can use the same account any time you go to create a new Airtable DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains two fields in which you enter information for pulling in data from Airtable.


 Menu
  |
 Description
  |
| --- | --- |
|
 App ID
  |
 Enter the App ID of the Airtable app you want to retrieve information from. This ID must be a 100% match, including case and spaces. You can find your App ID by going to

https://airtable.com/api

, signing into your account, then selecting the desired report. The App ID can then be found in the URL following


 airtable.com


 and will begin with the word

app

.
  |
|
 Field Selection Method
  |

Specify whether you want to select all fields/columns or enter the fields/columns manually that you want to fetch data for.

|
|
 Flatten Sublists
  |
 Check this box if you'd like us to flatten sublists.

Checking this box might result in errors occurring due to too many columns.

Not flattening might result in some boxes having the value List instead of the actual data sublist

|
|
 Table
  |
 Enter the name of the table you want to pull into Domo. This name must be a 100% match, including case and spaces.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


#####
 How often can the data be updated?

As often as needed.

####
 Are there any API limits I should be aware of?

The API has a limit of 5 requests per second.

