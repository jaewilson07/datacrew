

Intro
-------

HubSpot develops software for social media and email marketing, content management, web analytics, and search engine optimization. Use Domo's Hubspot Writeback connector to export your data from a Domo DataSet to your Hubspot account. To learn about the HubSpot API, visit their website (

http://developers.hubspot.com/docs/overview

).


 You connect to your HubSpot account in the Data Center. This topic discusses the fields and menus that are specific to the Hubspot Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this connector, you will need your Domo Client ID and Client Secret.


 To create a Domo client ID and client secret:

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


 Hubspot Writeback


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


 For more details about obtaining these credentials, see Prerequisites.


 O


 nce you have entered valid credentials, you can use the same account any time you go to create a new Domo-Hubspot connection. You can manage connector accounts in the


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
 Input DataSet ID
  |
 Enter the DataSet ID (GUID) for the DataSet you want to copy to a OneDrive folder or workspace. You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following datasources/. For example, in the URL

https://mycompany.domo.com/datasources/845305d8-da3d-4107-a9d6-13ef3f86d4a4/details/overview

, the DataSet ID is 845305d8-da3d-4107-a9d6-13ef3f86d4a4.
  |
|
 Select Filename
  |
 Select how you want to choose the file where data will be copied.
 * ****************Use Input DataSet GUID****************
 . The filename will be the number you entered for
 ****************Domo DataSet ID****************
 .
* ****************Use Input DataSet Name****************
 . The filename will be the same as that of the input DataSet.
* ****************Enter File Name****************
 . You will give the file a custom name in the
 ****************File Name****************
 field.
 |
|
 Filename
  |
 Enter the desired output filename.
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
 How frequently will my data update?

As often as needed.

###
 How do I find the Input Dataset ID?

Your Domo input dataset id is in the URL of the dataset you are exporting data from. For example:

https://customer.domo.com/datasources/

*aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee**
 /details/settings


 Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


