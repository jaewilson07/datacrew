

Intro
-------

Use this connector to export your data from a Domo DataSet to a URL that accepts HTTP posts. The post body will be a JSON array of JSON row objects. The connector will send 100 rows of data at a time.


 You export DataSet data to JSON in the Data Center. This topic discusses the fields and menus that are specific to the JSON Post Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in


 Adding a DataSet Using a Data Connector


 .


 Prerequisites
---------------

To configure this connector, you will need a Domo Client ID and Client Secret. To obtain these credentials, do the following:

. Log into your Domo developer account at

https://developer.domo.com/login

.
2. Create a new client

.
3. Select the desired data and user application scope.
4. Click
 **Create**
 .

Configuring the Connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the JSON Post Writeback Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Domo developer account. The following table describes what is needed for each field:


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


 For information about obtaining these credentials, see "Prerequisites," above. Once you have entered valid credentials, you can use the same account any time you go to set up a new Domo-JSON connection. You can manage connector accounts in the
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
 Enter the DataSet ID (GUID) for the DataSet you want to copy to S3. You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following

datasources/

. For example, in the URL

https://mycompany.domo.com/datasources/845305d8-da3d-4107-a9d6-13ef3f86d4a4/details/overview

, the DataSet ID is

845305d8-da3d-4107-a9d6-13ef3f86d4a4.

|
|
 Post URL
  |
 Enter the URL you want to post the data from your DataSet to.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see


 Adding a DataSet Using a Data Connector


 .

