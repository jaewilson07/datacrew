

Intro
-------

Google Cloud Storage is an Internet service used to store data in Google's cloud. Use this connector to export your data from a Domo DataSet to a Google Cloud Storage bucket. To find out more about the Google Cloud Storage API, visit

https://cloud.google.com/storage/docs/json\_api/

.


 You export data to Google Cloud Storage in the Data Center. This topic discusses the fields and menus that are specific to the Google Cloud Storage Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in


 Adding a DataSet Using a Data Connector


 .

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this connector, you will need the following:

 A Domo Client ID and Client Secret. To obtain these credentials, do the following:

1. Log into your Domo developer account at

 https://developer.domo.com/login

 .
	2. Create a new client

 .
	3. Select the desired data and user application scope.
	4. Click
	 **Create**
	 .
* A Google Service Token JSON file. To obtain this file, do the following:

1. Open the

 Google Cloud Platform Console

 .
	2. In the
	 ****Service account****
	 menu, select
	 ****New service account****
	 .
	3. In the
	 ****Service account name****
	 field, enter a descriptive name for the account.
	4. In the
	 ****Role****
	 dropdown, select
	 ****Project owner****
	 .
	5. Make sure
	 ****Key type****
	 is set to
	 ****JSON****
	 .
	6. Click
	 ****Create****
	 .

Configuring the Connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Google Cloud Storage Writeback Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Domo developer account as well as your Google Cloud Storage bucket. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Domo Client ID
  |
 Enter your Domo client ID. For more information, see "Prerequisites," above.
  |
|
 Domo Client Secret
  |
 Enter your Domo client secret. For more information, see "Prerequisites," above.
  |
|
 Service Token JSON
  |
 Paste the JSON Service Token you generated in the Google Cloud Platform Console. For more information, see "Prerequisites," above.
  |


 Once you have entered valid credentials, you can use the same account any time you go to set up a new Domo-Google Cloud Storage connection. You can manage connector accounts in the
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
 Project
  |
 Enter the API ID of the project you want to retrieve data for.
  |
|
 Bucket
  |
 Select the bucket in which you want to store the data.
  |
|
 Input DataSet ID
  |
 Enter the DataSet ID (GUID) for the DataSet you want to copy to S3. You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following

datasources/

. For example, in the URL

https://mycompany.domo.com/datasources/845305d8-da3d-4107-a9d6-13ef3f86d4a4/details/overview

, the DataSet ID is

845305d8-da3d-4107-a9d6-13ef3f86d4a4.

|
|
 Select Filename
  |
 Select whether you want to reference your DataSet using the
 **Input DataSet ID**
 or an output file name.
  |
|
 Filename
  |
 Enter the output file name for your data.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see


 Adding a DataSet Using a Data Connector


 .

