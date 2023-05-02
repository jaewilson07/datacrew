

Intro
-------

Marketo provides account-based marketing automation software including email, mobile, social, digital ads, web management and analytics. Use Domo's Marketo Writeback connector to send your Domo data to your Marketo leads objects. To learn more about the Marketo API, visit their page (

https://developers.marketo.com/rest-api/

).


 You export your Domo data to Marketo in the Data Center. This topic discusses the fields and menus that are specific to the Marketo Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this connector, you must have the following:

 Client ID and Client Secret generated during the creation of your custom service.
* The REST endpoint URL provided when you created a custom service.
* The Identity URL provided when you created a custom service.
* Your Domo Developer account Client ID and Client Secret


###
 Obtaining your Domo Developer Client ID and Client Secret:

To create a new client:

. Login to

Domo developer account

.
2. In the top right corner under
 ****My Account****
 click
 ****New Client****
 .
3. Enter the application name and description.
4. Provide the application scope by selecting the checkboxes for
 ****Data****
 and
 ****User****
 .
5. Click
 ****Create****
 .

Once you have created a client, you can manage the client by clicking on
 ****Manage Client****
 . Your
 **Client Secret**
 will appear in the
 **Manage Client**
 section


 Configuring the Connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the (third-party tool) Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Marketo

as well as your Domo developer account.

. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Client ID
  |
 Enter the Marketo Client ID generated during the creation of your custom service.
  |
|
 Client Secret
  |
 Enter the Marketo Client Secret generated during the creation of your custom service.
  |
|
 Endpoint URL
  |
 Enter the REST endpoint URL provided when you created a custom service. Example:


 https://100-AEK-913.mktorest/com/rest

|
|
 Identity URL
  |
 Enter the identity URL provided when you created a custom service. Example:


 https://100-AEK-913.mktorest.com/identity

|
|
 Domo Client ID
  |
 Enter your Domo Developer Client ID. For more information, see

Prerequisites

.
  |
|
 Domo Client Secret
  |
 Enter your Domo Developer Client Secret. For more information, see

Prerequisites

.
  |


 Once you have entered valid credentials, you can use the same account any time you go

to set up a new Domo-Marketo connection.

You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains the details that you need to provide in order to send your leads data from Domo to your Marketo account.


 Menu
  |
 Description
  |
| --- | --- |
|
 Writeback Type
  |
 Select Leads to write data from Domo to Marketo Lead objects
  |
|
 Domo DataSet - DataSet ID
  |
 Enter the ID of your Domo DataSet containing the data to write to Marketo.


 This ID is located in the DataSet URL. Example:

https://customer.domo.com/datasources/

***aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee****
 /details/settings
  |
|
 Configuration Mapping - Map dataset fields and Marketo fields
  |
 - Select whether to use automated mapping (if your DataSet fields match Marketo Fields) or to define the mapping manually


 - For manual mapping, match the desired Marketo fields and DataSet columns.


 - Generating the mapping automatically only works if the Marketo Fields and Dataset Fields are an exact match.


 - If you don't see the fields you are expecting via automated mapping, try manual mapping.


 - Make sure the lookup field is selected among the Marketo fields or manual mapping.
  |
|
 Enter a dataset to map the fields here
  |
 Enter a DataSet in this field to map the fields with your Marketo data.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

