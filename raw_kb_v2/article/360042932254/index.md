

Intro
-------

Use this connector to export your data from a Domo DataSet to a Firebase collection. To learn more about Firebase, visit their website at

https://aws.amazon.com/Firebase/

.


 You export data to a Firebase collection in the Data Center. This topic discusses the fields and menus that are specific to the Firebase Writeback Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in


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
* The name of your Firebase Realtime Database.
* A Firebase database secret. To generate a Firebase database secret:

1. Log into the Firebase console.
	2. Click on your project.
	3. Click
	 **Project Overview**
	 .
	4. In the settings gear menu, select
	 **Project Settings > Service Accounts > Database Secrets > Add Secret**
	 .

Configuring the Connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Firebase Writeback Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Domo developer account as well as the collection in your Firebase database where you want your data to be copied to. The following table describes what is needed for each field:


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
 Database Secret
  |
 Enter your Firebase database secret. For more information about obtaining a database secret, see "Prerequisites" above.
  |
|
 Database Name
  |
 Enter the name of your Firebase Realtime Database.
  |

For more information about obtaining these credentials, see "Prerequisites," above.

Once you have entered valid credentials, you can use the same account any time you go to set up a new Domo-Firebase connection. You can manage connector accounts in the
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
 Input DataSet ID
  |
 Enter the DataSet ID (GUID) for the DataSet you want to copy to Firebase. You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following

datasources/

. For example, in the URL

https://mycompany.domo.com/datasources/845305d8-da3d-4107-a9d6-13ef3f86d4a4/details/overview

, the DataSet ID is

845305d8-da3d-4107-a9d6-13ef3f86d4a4.

|
|
 Select Collection Name
  |
 Select how you want to indicate the collection where the data will be copied.
 * **Use Input DataSet GUID**
 . The table name will be the number you entered for
 **DataSet ID**
 .
* **Use Input DataSet Name**
 . The table name will be the same as that of the input DataSet.
* **Enter Collection Name**
 . You will give the table a custom name in the
 **Collection Name**
 field.
 |
|
 Collection Name
  |
 Enter the name of the collection in your Firebase database where you want your DataSet data to be copied.


 For example, enter just

ABC

to indicate a collection that is the immediate child of the root.


 To enter a location that is not a direct child of the root, use forward slashes, e.g.

ABC/DEF

.


 Illegal characters include all of the following: .$[]#"
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see


 Adding a DataSet Using a Data Connector


 .


 FAQs
------


#####
 How often can the data be updated?

DataSets should be set to update no more than once every 15 minutes.

####
 Are there any API limits I should be aware of?

While Firebase may enforce API rate call limits, you should not need to worry about them.

