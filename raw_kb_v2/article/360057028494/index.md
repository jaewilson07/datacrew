

Intro
-------

OData (Open Data Protocol) is an OASIS standard that defines the best practice for building and consuming queryable and interoperable REST APIs in a simple and standard way. OData helps you focus on your business logic while building RESTful APIs without having to worry about the various approaches to define request and response headers, status codes, HTTP methods, URL conventions, payload formats, query options, etc. Use Domo's OData connector to pull the data exposed through the OData endpoints. To learn more about OData, visit their page

https://www.odata.org/

.


 You connect to your OData account in the Data Center. This topic discusses the fields and menus that are specific to the OData connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your OData account and create a DataSet, you must have the username and password associated with your OData account.


 Connecting to Your OData Account
----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the OData Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your OData account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter the username associated with your OData account.
  |
|
 Password
  |
 Enter the password associated with your OData account.
  |
|
 URL
  |
 Enter the OData endpoint URL.
  |


 Once you have entered valid OData credentials, you can use the same account any time you go to create a new OData DataSet. You can manage connector accounts in the
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
 Data Tag
  |
 Enter the data tag key.
  |
|
 Fields To Expand
  |
 Enter the comma separated list of fields you would like to expand in the data. This will cause multiple rows to show each object for the entered fields.
  |
|
 Select Data Filter
  |
 Specify the data filter method for your data.
  |
|
 All Data
  |
 Returns all available data.
  |
|
 Use Date Filter
  |
 Filters the data for the selected date range.
  |
|
 Backfill Data
  |
 Backfills the data for the specific field.
  |
|
 Data Filter Field
  |
 Enter the same date filter field name available in response in order to filter the response.
  |
|
 Backfill Field
  |
 Enter the field name that you want to backfill your data for. This functionality works only for the append mode.

***Note****
 : The Backfill field must be present in the response and it must be of integer type.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

