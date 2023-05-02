

Intro
-------


 Emarsys, a leading provider of marketing software, enables true, one-to-one interactions between marketers and consumers. Use Domo’s Emarsys Sales Writeback connector to export your sales data from a Domo dataset to your Emarsys account.

To learn more about the

Emarsys

API, visit their page

https://dev.emarsys.com/v2/emarsys-developer-hub/what-is-the-emarsys-api

.


 You configure your Domo-

Emarsys Sales

connection in the Data Center. This topic discusses the fields and menus that are specific to the

Emarsys Sales

Writeback Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this Connector, you must have the following:

 Domo developer account client ID and client secret
* Emarsys token
* Emarsys merchant ID

To obtain your Domo developer credentials, do the following:

. Log into the

Domo developer account

.
2. In the top right corner under
 **My Account**
 click
 **New Client**
 .
3. Enter the application name and description.
4. Provide the application scope by selecting the checkboxes for
 **Data**
 and
 **User**
 .
5. Click
 **Create**
 .

Once you have created a client, you can manage the client by clicking on
 **Manage Client**
 .


 Configuring the Connection
----------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Emarsys Sales Writeback

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most Connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##

Credentials Pane


 This pane contains fields for entering credentials to connect to your

Emarsys Sales

account where you want your data to be copied to. The following table describes what is needed for each field:


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
 Emarsys Token
  |
 Enter your Emarsys token.
  |
|
 Emarsys Merchant ID
  |
 Enter your Emarsys merchant ID.
  |


 Once you have entered valid credentials, you can use the same account any time you go to set up a new Domo-Emarsys Sales Writeback DataSet. You can manage connector accounts in the
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
 Enter the DataSet ID
  |
 Enter the id of your Domo dataset containing data to write to Emarsys Sales. The ID is located in the dataset URL.


 Example:

https://customer.domo.com/datasources/

*aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee**
 /details/settings
  |
|
 Emarsys Setup
  |
 Enter the needed details for Emarsys.
  |
|
 Configuration Mapping
  |
 Map dataset fields and Emarsys Sales fields.
 * For required fields, select the matching dataset columns.
* For optional field, enter the desired Emarsys Sales field and select the matching dataset columns.
 |
|
 Emersys Sales Fields
  |
 Enter the order the fields should be used to create the export file to send to Emarsys.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

