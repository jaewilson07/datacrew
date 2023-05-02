

Intro
-------


 Emarsys, a leading provider of marketing software, enables true, one-to-one interactions between marketers and consumers. Use Domo’s Emarsys Contacts Writeback connector to export your contacts data from a Domo dataset to your Emarsys account.

To learn more about the

Emarsys

API, visit their page

https://dev.emarsys.com/v2/emarsys-developer-hub/what-is-the-emarsys-api

.


 You configure your Domo-

Emarsys Contacts

connection in the Data Center. This topic discusses the fields and menus that are specific to the

Emarsys Contacts

Writeback Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this Connector, you must have the following:

 Your Domo developer account client ID and client secret
* Your Emarsys Contacts username and secret


#####
 To obtain your Domo developer credentials, do the following:


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

Emarsys Contacts Writeback

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

Emarsys Contacts

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
 Username
  |
 Enter your Emarsys Contacts username.
  |
|
 Secret
  |
 Enter your Emarsys Contacts secret.
  |


 Once you have entered valid credentials, you can use the same account any time you go to set up a new Domo-Emarsys Contacts Writeback DataSet. You can manage connector accounts in the
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
 Report
  |

  |  |
| --- | --- |
|
 Contacts
  |
 Write data from Domo to Emarsys contacts.
  |

|
|
 Enter a dataset to map the fields here
  |
 Enter the id of your Domo dataset containing data to write to Emarsys Contacts.
  |
|
 Enter the DataSet ID
  |
 The ID is located in the dataset URL.


 Example:

https://customer.domo.com/datasources/

*aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee**
 /details/settings
  |
|
 Emarsys Setup
  |
 Enter the needed details for Emarsys
  |
|
 Export contacts to a contact list
  |
 Select this checkbox if you want to export contacts to a contact list.
  |
|
 Configuration Mapping
  |
 Select whether to use automated mapping (if your dataset fields match Emarsys Contacts Fields) or to define the mapping manually.
  |
|
 Use automated mapping
  |
 Generating the mapping automatically only works if the Emarsys Contacts Fields and Dataset Fields are an exact match. Don't see the fields you are expecting via automated mapping? Try manual mapping.
  |
|
 Select mapping manually
  |
 For manual mapping, match the desired Emarsys Contacts fields and dataset columns.
  |
|
 Emersys Contacts Fields
  |
 Select the Emarsys Contacts fields to match with the desired DataSet fields.
  |
|
 DataSet Fields
  |
 Select the DataSet fields fields to match with the desired Emarsys Contacts fields.
  |
|
 Unique Key Mapping
  |
 Select a key to identify existing contacts that will be updated. Emarsys recommends using ID or UID to identify contacts and avoid conflicts that can happen when using the email field.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 What kind of credentials do I need to power up this connector?

You need your Domo Developer account credentials (client ID and client secret), and the username and secret associated with your Emarsys Contacts account.

###
 How frequently will my data update?

As often as needed.

###
 How do I find the Input Dataset ID?

Your Domo input dataset id is in the URL of the dataset you are exporting data from. For example:

https://customer.domo.com/datasources/

*aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee**
 /details/settings

###
 What mapping options are available?

You can use automated mapping or define the mapping manually.

###
 I don't see the expected fields via automated mapping. Why?

Generating the mapping automatically only works if the Emarsys Contacts Fields and Dataset Fields are an exact match. If you don't see the fields you are expecting via automated mapping, try manual mapping.

