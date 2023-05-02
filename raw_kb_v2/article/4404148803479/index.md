

Intro
-------

With the DataSet Copy Unload connector, you can export data from Domo to your DataSet located at a specific instance. This connector allows you to connect with your Domo Developer account credentials (client id and client secret).


 You export your data in the Data Center. This topic discusses the fields and menus that are specific to the DataSet Copy Unload connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this connector, you will need your Domo Client ID and Client Secret.


 To create your Domo client ID and client secret:

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
6. Once you have created a client, you can manage the client by clicking on
 **Manage Client**
 .

Your
 **Client Secret**
 will appear in the
 **Manage Client**
 section.


 Configuring the Connection
----------------------------


 This section enumerates the options in the


**Credentials**


 and


**Details**


 panes in the

DataSet Copy Unload

Connector page. The components of the other panes in this page,


**Scheduling**
 and


**Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in


 Adding a DataSet Using a Data Connector

.

##

Credentials Pane

This pane contains fields for entering credentials to connect to your Domo developer account. The following table describes what is needed for each field:

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


 For more details about obtaining these credentials, see "Prerequisites."


 O


 nce you have entered valid credentials, you can use the same account any time you go to create a new DataSet Copy Unload connection. You can manage connector accounts in the


**Accounts**
 tab in the Data Center. For more information about this tab, see


 Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a number of fields for specifying your data and indicating where it's going.


 Menu
  |
 Description
  |
| --- | --- |
|
 Input Domo DataSet ID
  |

Enter your Domo dataset ID (GUID) located in the dataset URL.


 Example:

https://customer.domo.com/datasources/


**aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee**

/details/settings

|
|
 Input Source Domo DataSet Instance
  |

Enter your input Domo dataset instance name located in the dataset URL.


 Example: https://

*customer**

.

domo.com/datasources/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee/details/settings


 |
|
 Use High Bandwidth Upload
  |
 Select this checkbox to use high bandwidth upload transfer.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 What kind of credentials do I need to power up this Connector?

You need your Domo developer account client id and client secret.

###
 Where can I find my Domo client id and client secret?


1. Log into the

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
6. Once you have created a client, you can manage the client by clicking on
 **Manage Client**
 .

Your
 **Client Secret**
 will appear in the
 **Manage Client**
 section.

###
 How do I find the Input Dataset ID?

Your Domo input dataset id is in the URL of the dataset you are exporting data from.


 Example:

https://customer.domo.com/datasources/

*aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee**
 /details/settings

###
 How do I find the Input Source Dataset instance?

Your Domo input dataset instance name is located in the URL of the dataset you are exporting data from.


 Example: https://
 **customer**
 .

domo.com/datasources/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee/details/settings


