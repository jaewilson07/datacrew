

Intro
-------

You can use Domo's DataSet Copy connector to copy data from one Domo instance to another. You do this in the Data Center.


 The DataSet Copy DataSet connector is a "File" connector, meaning it retrieves files and outputs them to Domo. In the Data Center, you can access the connector page for this and other File connectors by clicking
 **File**
 in the toolbar at the top of the window.


 There are two versions of this connector, a regular and an advanced version. The only difference between these is that the advanced version asks you for the username and password for the Domo instance you are copying from. Because of this, we do not provide separate documentation for the advanced version.


 This topic discusses the fields and menus that are specific to the DataSet Copy connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To copy data from one instance to another, you must have the following:

 The access token for the DataSet you are copying data from. This token belongs to the owner of the DataSet you are copying data from. If you have an "Admin" security role, you can generate access tokens; otherwise, you need to request an access token from an administrator. Make sure the token is not expired. For information about generating access tokens, see

Managing Access Tokens

.
* The Domo instance containing the DataSet you want to copy. For example, if your Domo URL was

https://abc123.domo.com

, the instance would be

abc123.
* The DataSource ID of the data you want to copy. You can find the DataSource ID by opening the Details view for the DataSet in the Data Center. The ID is the number in the URL following

"/datasources/"

.
* Credentials (username and password) for the Domo instance you are copying from (Advanced version only).

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
 Username (Advanced version only)
  |
 Enter the username for the Domo instance you are copying from.
  |
|
 Password (Advanced version only)
  |
 Enter the password for the Domo instance you are copying from.
  |
|
 Access Token
  |
 Enter the developer token for the DataSet you are copying data from.
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
 DataSource ID
  |
 Enter the

Domo DataSource ID of the DataSet to pull data from. The DataSource ID is the GUID in the URL of the DataSet, immediately after /datasources/.

|
|
 Domo Instance
  |

Enter the Domo instance name.


 For example, in

https://abc123.domo.com

, abc123 is the instance.

|
|
 Exclude Meta Columns
  |
 Select this checkbox if you do not want Domo to add meta columns to the copied dataset (Batch ID, Batch Last Run, and Domo Instance).
  |
|
 Fetch Incremental Data
  |

Select this checkbox to fetch incremental data for the input dataset. The connector will fetch the incremental data from the last successful runs only when the Update mode for your input dataset as well as the DataSet Copy dataset is set to Append.

|
|
 Only Updated Data
  |

Choose 'Yes' to retrieve data only if the dataset has ran after the latest run of this copy dataset. This helps prevent stale data.

|
|
 Preserve Empty String
  |

Select this checkbox if you do not want the empty strings to be converted into null values.

|
|
 Use Origin DataSet's Schema
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

You need the username, password and the access token of an account that has access to the original dataset.

###
 I am not able to connect with my access token. Why?

Access tokens are associated with the specific user accounts and have the same access as the user. If the user's permissions change, the access token reflects that.

###
 Why do I need the access token?

Access tokens are used to import data in or export data from Domo.

###
 How can I get the access token?

You need to have an "Admin" security role to generate an access token; otherwise, you need to request an access token from your Domo Admin. Visit

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

No

