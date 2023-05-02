

Intro
-------

Eloqua Corp. is a marketing automation SaaS company which develops automated marketing and demand generation software and services for business-to-business marketers. Use Domo's Eloqua Writeback connector to push your Domo data into an Eloqua custom object. To learn more about the Eloqua API, visit their page (

https://community.oracle.com/community/topliners/code-it

).


 You export data to Eloqua in the Data Center. This topic discusses the fields and menus that are specific to the Eloqua Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in


 Adding a DataSet Using a Data Connector


 .

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this connector, you must have the following:

 Your Eloqua username
* Your Eloqua password
* Your Domo client ID
* Your Domo client secret

To create a Domo client ID and client secret, do the following:

. Navigate to

https://developer.domo.com

and log in.
2. Click
 ****New Client****
 (found under "My Account" in the top right corner).
3. Create a new client with Application Scopes of
 ****Data****
 and
 ****User****
 .


 When you click
 ****Create****
 , you will be redirected to the client ID and client secret.
4. Copy the client ID and client secret, as you will need them soon.

Configuring the Connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Eloqua Writeback Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to Eloqua as well as your Domo developer account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Domo Client ID
  |
 Enter your Domo client ID. For steps on obtaining your client ID and client secret, see "Prerequisites," above.
  |
|
 Domo Client Secret
  |
 Enter your Domo client secret. For steps on obtaining your client ID and client secret, see "Prerequisites," above.
  |
|
 Username
  |
 Enter your Eloqua username.
  |
|
 Password
  |
 Enter your Eloqua password.
  |
|
 Company
  |
 Enter the company name associated with your Eloqua account.
  |


 Once you have entered valid credentials, you can use the same account any time you go to set up a new Domo-Eloqua connection. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains various fields and menus for setting up your Domo-Eloqua connection.


 Menu
  |
 Description
  |
| --- | --- |
|
 DataSet ID
  |
 Enter the DataSet ID (GUID) for the DataSet you want to copy to an Eloqua custom object. You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following

datasources/

. For example, in the URL


 https://mycompany.domo.com/datasourc...tails/overview


 , the DataSet ID is

845305d8-da3d-4107-a9d6-13ef3f86d4a4

.


 |
|
 Eloqua Object
  |
 Select the Eloqua object you want to write your Domo data to.
  |
|
 Identifier Fieldname - Eloqua Field
  |
 Select the field (column) in the selected Eloqua custom object you want to write data to. This data will be copied from the column you select for
 **Identifier Fieldname - DataSet Field**
 . For example, if you select
 **Numbers**
 for
 **DataSet Field**
 and
 **Number of Tickets**
 for
 **Eloqua Field**
 , all data in the
 **Numbers**
 column will be copied into the
 **Number of Tickets**
 column.
  |
|
 Identifier Fieldname - DataSet Field
  |
 Select the field (column) in the selected Domo DataSet you want to copy into your Eloqua custom object. This data will be copied into the column you select for
 **Identifier Fieldname - Eloqua Field**
 . For example, if you select
 **Numbers**
 for
 **DataSet Field**
 and
 **Number of Tickets**
 for
 **Eloqua Field**
 , all data in the
 **Numbers**
 column will be copied into the
 **Number of Tickets**
 column.
  |
|
 Optional Fields - Eloqua Fields
  |
 Select an optional field (column) in the selected Eloqua custom object you want to write data to. This data will be copied from the column you select for
 **Optional Fields**
**- DataSet Fields**
 . For example, if you select
 **Numbers**
 for
 **DataSet Fields**
 and
 **Number of Tickets**
 for
 **Eloqua Fields**
 , all data in the
 **Numbers**
 column will be copied into the
 **Number of Tickets**
 column.


 You can add rows for more optional fields by clicking the plus button on the right, or remove a row by clicking the minus button.
  |
|
 Optional Fields - DataSet Fields
  |
 Select an optional field (column) in the selected Domo DataSet you want to copy into your Eloqua custom object. This data will be copied into the column you select for
 **Optional Fields**
**- Eloqua Fields**
 . For example, if you select
 **Numbers**
 for
 **DataSet Fields**
 and
 **Number of Tickets**
 for
 **Eloqua Fields**
 , all data in the
 **Numbers**
 column will be copied into the
 **Number of Tickets**
 column.


 You can add rows for more optional fields by clicking the plus button on the right, or remove a row by clicking the minus button.
  |


**Note:**
 The Eloqua Writeback Connector looks for a
 *\_BATCH\_ID\_*
 column. If this column is present in the input DataSet, the Connector will keep track of the highest
 *\_BATCH\_ID\_*
 in the source DataSet to keep track of the data already written to Eloqua. For the next run the Connector will only write rows with a
 *\_BATCH\_ID\_*
 higher than the one recorded on previous runs. This is to avoid writing duplicate data to Salesforce. If the
 *\_BATCH\_ID\_*
 column is not present in the source DataSet, all the data will be written to Salesforce every time the Connector runs.


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see


 Adding a DataSet Using a Data Connector


 .

