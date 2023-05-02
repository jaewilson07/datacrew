

Intro
-------

Workfront (formerly called AtTask) develops web-based work management and project management software. Use Domo's Workfront Writeback Connector to write details from a Domo dataset back to a Workfront object. To successfully use this connector, your Domo dataset must contain an 'ID' column representing the ID of the Workfront object you wish to write back to. Domo will then take any additional columns that match either the Key or Label of the specified Workfront object. Please use the Metadata reports in the Workfront Connector to get details of the schema for each object, only fields will be updated. Reference Fields and Collections should be modified as a part of their own objects. Boolean must be given as a string value of "true" or "false". String array values should be passed as a comma separated list of values without quotes or brackets. To learn more about the Workfront API, visit their page (

https://developers.attask.com/api-docs/

).


 You export the Domo data to Workfront in the Data Center. This topic discusses the fields and menus that are specific to the Workfront Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this connector, you must have the following:

 The username and password you use to log into your Workfront account
* The URL for your AtTask/Workfront server (Example:

https://yourcompany.attask-ondemand.com

)
* You can also select the API version you wish to connect to

Configuring the Connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Workfront Writeback

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

Workfront

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
 Enter the username you use to log into your Workfront account.
  |
|
 Passwrod
  |
 Enter the password you use to log into your Workfront account.
  |
|
 URL
  |
 Enter the URL for your AtTask/Workfront server (Example,

https://yourcompany.attask-ondemand.com

).
  |
|
 API Version
  |
 Select the API version you wish to connect to.
  |


 Once you have entered valid credentials, you can use the same account any time you set up a new Domo-Workfront connection. You can manage connector accounts in the
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
 Report
  |
 Select the Workfront Object you would like to write data to.
  |
|
 DataSet ID
  |
 Enter your Domo DataSet ID(GUID) located in the DataSet url. Example:

https://customer.domo.com/datasources/

***aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee****
 /details/.


 Your dataset must contain ID as a column, representing the ID of the object to be updated, as well as any columns that exactly match the ID or Label of the fields you wish to update.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

