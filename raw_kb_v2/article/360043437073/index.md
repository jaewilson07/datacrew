

Intro
-------

Salesforce is a cloud-based platform for customer relationship management. Use Domo's Salesforce Writeback connector to export your data from a Domo DataSet to your Salesforce account.


 To learn more about the Salesforce API, visit any of the following:

 https://www.salesforce.com/developer/docs/api/
* http://resources.docs.salesforce.com/200/9/en-us/sfdc/pdf/salesforce\_field\_names\_reference.pdf
* https://developer.salesforce.com/docs/atlas.en-us.api.meta/api/data\_model.htm

You can push DataSet data to Salesforce in the Data Center. This topic discusses the fields and menus that are specific to the Salesforce Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

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
5. Customers can go directly to the package with the following link:

https://login.salesforce.com/packaging/installPackage.apexp?p0=04t1I000001ymKN
6. If you are installing into a sandbox organization you must replace the initial portion of the URL with

http://test.salesforce.com

Configuring the Connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 pane in the Salesforce Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane

This pane contains fields for entering credentials to connect to your Domo developer account. The following table describes what is needed for each field:

Field

|

Description

|
| --- | --- |
|
 Salesforce Environment
  |
 Select the desired Salesforce environment.
  |
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

After you connect, you are taken to the Salesforce OAuth screen where you are prompted to enter your Salesforce username and password.

Once you have entered valid credentials, you can use the same account any time you go to create a new Salesforce Writeback connection. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###

Details Pane

This pane contains four sections for selecting and configuring the data you want to send to Salesforce.

###
 Writeback Type

Here, you can choose whether you want to insert data from a Domo DataSet into a) an existing Salesforce table, or b) a new table. If you select the first option, your Salesforce objects are populated automatically in the
 **Salesforce Setup**
 section of the
 **Details**
 pane and you can choose the one you want to push data to. If you select the second option, you are prompted to define the Salesforce object in the
 **Salesforce Setup**
 section of the
 **Details**
 pane.

###
 Domo DataSet

Enter the DataSet ID (GUID) for the DataSet you want to copy to Salesforce. You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following datasources/. For example, in the URL

https://mycompany.domo.com/datasources/845305d8-da3d-4107-a9d6-13ef3f86d4a4/details/overview

, the DataSet ID is

845305d8-da3d-4107-a9d6-13ef3f86d4a4

.

*Note:**
 The Salesforce Writeback Connector looks for a
 *\_BATCH\_ID\_*
 column. If this column is present in the input DataSet, the Connector will keep track of the highest
 *\_BATCH\_ID\_*
 in the source DataSet to keep track of the data already written to Salesforce. For the next run the Connector will only write rows with a
 *\_BATCH\_ID\_*
 higher than the one recorded on previous runs. This is to avoid writing duplicate data to Salesforce. If the
 *\_BATCH\_ID\_*
 column is not present in the source DataSet, all the data will be written to Salesforce every time the Connector runs.


####
 Salesforce Setup

If you selected
 **Insert Data in Existing Table**
 in the
 **Writeback Type**
 section, your Salesforce objects appear here automatically and you can choose the one you want to push data to. If you selected
 **Insert Data in New Table**
 in the
 **Writeback Type**
 section, you are prompted to enter the following here:

 The Salesforce internal object name (without spaces)
* An object label (display label) for the new Salesforce object
* A plural display label for the new Salesforce object


####
 Configuration Mapping

Here, you will match columns from your Domo DataSet with the desired Salesforce field.


 For required Salesforce fields, select the correct DataSet column.


 For optional fields, match the desired Salesforce fields and DataSet columns.

##
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

