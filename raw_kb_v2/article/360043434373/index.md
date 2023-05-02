

Intro
-------


 Totango is a software platform that helps recurring revenue businesses simplify the complexities of customer success

. To learn more about the Totango API, visit their page (

https://support.totango.com/hc/en-us/articles/203639605-Totango-HTTP-API-Overview

).


 You connect to your Totango account in the Data Center. This topic discusses the fields and menus that are specific to the Totango connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Totango account and create a DataSet, you must have a Totango app token. To obtain an app token, do the following:

. Login to your Totango account.
2. Click your username in the top-right corner of the page to open your user profile.
3. Locate your app token (API key) under the
 **Integration**
 tab.

Connecting to Your Totango Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Totango Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Totango account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 App Token
  |
 Enter your Totango app token. For instructions about finding your app token, see "Prerequisites," above.
  |


 Once you have entered valid Totango credentials, you can use the same account any time you go to create a new Totango DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains two configuration options—a menu from which you select a report and a field in which you enter your search query.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Totango report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Accounts
  |
 Returns accounts matching your provided search query.
  |
|
 Users
  |
 Returns users matching your provided search query.
  |

|
|
 Query
  |
 Enter your search query. To build a search query, do the following:
 1. Login to Totango.
2. Open the
 **Accounts**
 page (for the "Accounts" report) or
 **Users**
 page (for the "Users" report).
3. Create a new account or user list.
4. Add filters and columns as desired to match your desired search parameters.
5. Click
 **Generate the API endpoint**
 .
6. Copy the code into the
 **Query**
 field in Domo.
 |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

