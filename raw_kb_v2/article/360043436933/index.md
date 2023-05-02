

Intro
-------

Google BigQuery is a cloud-based big data analytics web service for processing very large read-only datasets. Use this connector to export your data from a Domo DataSet into a BigQuery table. To learn more about the BigQuery API, go to

https://cloud.google.com/bigquery/docs/reference/v2/

.


 You export data to BigQuery in the Data Center. This topic discusses the fields and menus that are specific to the BigQuery Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in


 Adding a DataSet Using a Data Connector


 .

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this connector, you will need the following:

 A Domo Client ID and Client Secret.
* A Google Service Token JSON file.

The following subsections explain in detail how to obtain the above credentials.

##
 Creating a Domo Client ID and Client Secret

To create a Domo client ID and client secret, do the following:

. Navigate to

https://developer.domo.com

and log in.
2. Click
 **New Client**
 (found under "My Account" in the top right corner).
3. Create a new client with Application Scopes of
 **Data**
 and
 **User**
 .

When you click
 **Create**
 , you will be redirected to the client ID and client secret.
4. Copy the client ID and client secret, as you will need them soon.


###
 Obtaining a Service Token JSON File

To obtain a Google Service Token JSON file, do the following:

. In the Google Developers Console, open the
 **Credentials**
 tab.
2. Click
 **Create credentials**
 then select
 **Service account key**
 .
3. Select
 **New service account**
 .
4. Name the new service account.
5. In the
 **Role**
 dropdown, select
 **Project > Owner**
 .
6. For the
 **Key type**
 , select
 **JSON**
 .
7. Click
 **Create**
 , then
 **Save**
 .
8. Select a safe location for the file, as you will need it soon.

Configuring the Connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Google BigQuery Writeback Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Domo developer account as well as your destination table in BigQuery. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Domo Client ID
  |
 Paste the Domo client ID you copied in Step 4: Creating a Domo Client ID and Client Secret, in the "Prerequisites" section above.
  |
|
 Domo Client Secret
  |
 Paste the Domo client secret you copied in Step 4: Creating a Domo Client ID and Client Secret, in the "Prerequisites" section above.
  |
|
 Service Token JSON
  |
 Paste the JSON Service Token you generated in Step 3: Creating a Service Account, in the "Prerequisites," above.
  |


 Once you have entered valid credentials, you can use the same account any time you go to set up a new Domo-Google BigQuery connection. You can manage connector accounts in the
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
 Input BigQuery Table Name
  |
 Enter the name of the BigQuery table you want to send Domo data to. The table you indicate will be deleted and recreated with each run.
  |
|
 Input BigQuery DataSet Name
  |
 Enter the name of the BigQuery dataset in which the table is found.
  |
|
 Input Domo DataSet ID
  |
 Enter the DataSet ID (GUID) for the DataSet you want to copy to a BigQuery table. You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following

datasources/

. For example, in the URL

https://mycompany.domo.com/datasources/845305d8-da3d-4107-a9d6-13ef3f86d4a4/details/overview

, the DataSet ID is

845305d8-da3d-4107-a9d6-13ef3f86d4a4.

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see


 Adding a DataSet Using a Data Connector


 .

