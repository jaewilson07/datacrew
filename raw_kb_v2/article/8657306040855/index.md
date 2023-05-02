

Intro
-------

You can use Domo's DataSet Copy Advanced connector to copy data from one Domo instance to another. You do this in the Data Center.


 The DataSet Copy DataSet connector is a "File" connector, meaning it retrieves files and outputs them to Domo. In the Data Center, you can access the connector page for this and other File connectors by clicking


**File**


 in the toolbar at the top of the window.


 There are two versions of this connector, a regular and an advanced version. The only difference between these is that the advanced version asks you for the username and password for the Domo instance you are copying from. Because of this, we do not provide separate documentation for the advanced version.


 This topic discusses the fields and menus that are specific to the DataSet Copy connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

For creating the credentials you can refer following steps:


 To obtain your Domo Client ID and Client Secret:

 Log into the

Domo developer account

.
* In the top right corner under My Account click New Client.
* Enter the application name and description.
* Provide the application scope by selecting the checkboxes for Data and User.
* Click Create. Once you have created a client, you can manage the client by clicking on Manage Client.
* Your Value will appear in the Manage Client section.

The DataSource ID of the data you want to copy. You can find the DataSource ID by opening the Details view for the DataSet in the Data Center. The ID is the number in the URL following "/datasources/".

Configuring the Connector
---------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the DataSet Copy Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to create a DataSet Copy account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Domo Client ID
  |
 Enter the Client ID for the Domo instance you are copying from.
  |
|
 Domo Client Secret
  |
 Enter the Client Secret for the Domo instance you are copying from.
  |

For more information about obtaining the above credentials, see "Prerequisites," above.


 Once you have entered valid credentials, you can use the same account any time you go to create a new DataSet Copy DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

In this pane you enter details about the DataSet you want to copy.


 Field
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the report you want to run.
  |
|

DataSource ID

|
 The DataSource ID of the data you want to copy. You can find the DataSource ID by opening the Details view for the DataSet in the Data Center.
  |
|
 Only Updated Data
  |

Choose 'Yes' to retrieve data only if the dataset has run after the latest run of this copy dataset. This helps prevent stale data.

|
|

DataSet's Schema

|
 Choose 'Yes' to use the schema from the inputted dataset for every run.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 What kind of credentials do I need to power up this connector?

You need the username, password, and access token of an account that has access to the original dataset.

###
 I am not able to connect with my access token. Why?

Access tokens are associated with specific user accounts and have the same access as the user. If the user's permissions change, the access token reflects that.

###
 Why do I need the access token?

Access tokens are used to import data in or export data from Domo.

###
 How can I get the access token?

You need to have an "Admin" security role in generating an access token; otherwise, you need to request an access token from your Domo Admin. Visit

Managing Access Tokens

for more details.

###
 What else do I need to do to power up my connector?

You need to provide the Domo instance containing the dataset and the dataset id of the data you want to copy.

###
 How can I find the Domo instance and dataset id?

If your Domo URL is "

https://abc123.domo.com"

", the instance would be "abc123".


 You can find the dataset id in the Details view for the dataset in the Data Center. The id is the number in the URL following "/datasources/".

###
 How often can the data be updated?

Datasets should be set to update once every 15 minutes.

###
 Are there any API limits that I need to be aware of?


