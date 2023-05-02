

Intro
-------

Ivinex is a Customer Relationship Management (CRM) all-in-one platform that tracks sales, service, marketing, and call center data.  To learn more about the Ivinex API, visit their page (

http://training.ivinex.com/ivinex-api-documentation/

).


 You connect to your Ivinex account in the Data Center. This topic discusses the fields and menus that are specific to the Ivinex connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Ivinex account and create a DataSet, you must have the following:

 Your Ivinex company URL.
* Your Ivinex username and password.

Connecting to Your Ivinex Account
-----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Ivinex Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Ivinex account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Company
  |
 Enter the URL for your company Ivinex instance.
  |
|
 Username
  |
 Enter your Ivinex username.
  |
|
 Password
  |
 Enter your Ivinex password.
  |


 Once you have entered valid Ivinex credentials, you can use the same account any time you go to create a new Ivinex DataSet. You can manage connector accounts in the
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
 Select the Ivinex report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Tabs
  |
 Returns data about tabs.
  |
|
 Fields
  |
 Returns data about fields.
  |
|
 Records
  |
 Returns records for a specified tab.
  |
|
 RelatedItems
  |
 Returns records linked to the specified record and tab.
  |
|
 AllRelatedItems
  |
 Returns records linked to any other records.
  |

|
|
 Tab
  |
 Enter the name of the tab you want to retrieve data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.

