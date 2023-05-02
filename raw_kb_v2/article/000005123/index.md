

Intro
-------


 Denodo is a platform for data virtualization. Denodo enables real-time access to integrated data across an organization's diverse data sources without the need for data replication. Domo's Denodo connector allows you to import any data from Denodo into Domo for in-depth analysis and visualization. To learn more about Denodo Platform, visit their website,

Denodo Platform Overview.


 The Denodo connector is a "Database" connector, meaning it retrieves data from different data sources.


 You connect to your Denodo account in the Data Center. This topic discusses the fields and menus that are specific to the Denodo connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 Pulling data files from Denodo into Domo.
  |
|
**Average Implementation Time**
 |
 The time taken to configure depends on the amount of data that is uploaded to Denodo.
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 2
  |


 Prerequisites
----------------


 To connect to your Denodo account and create a DataSet, you must have the following:


* Denodo hostname you need to use to access your Denodo account.
* Denodo port number you need to use to access your Denodo account.
* Denodo Database Name
* Denodo username.
* Denodo password.


 Connecting to Your Denodo Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Denodo Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


 Credentials Pane
-------------------


 The Domo Denodo connector uses Denodo Hostname, Denodo Port number, Denodo database name, Denodo username, and Denodo password to connect within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have an existing Denodo account in Domo) to open the Denodo login screen where you can enter the email address and password associated with your Denodo account. Once you have entered valid Denodo credentials, you can use the same account any time you go to create a new Box DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


 This pane includes the following fields:


|

*Field**

|

*Description**

|
| --- | --- |
|
 Host
  |
 Enter the Denodo hostname. For example,
 ***myserver.domain.com***
 .
  |
|
 Port
  |
 Enter the Denodo port number.
  |
|
 Database Name
  |
 Enter the Denodo Database Name.
  |
|
 Username
  |
 Enter the Denodo Username.
  |
|
 Password
  |
 Enter the Denodo password.
  |


 Details Pane
---------------


 This pane includes the following fields and menus:


|
 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the report you want to run. The following reports are available:


|
 Custom Query
  |
 Enter the query to execute.
  |
|
 Query Helper
  |
 Select a view and fields to auto-generate your query.
  |

|
|
 User Query
  |
 Enter Denodo VQL query to execute.
  |
|
 Fetch Size
  |
 Enter the fetch-size for memory performance. If it is blank, the default value will be 1000.
  |
|
 Query Timeout
  |
 Enter the query timeout value in minute(s). If it is blank, the default value set by Denodo will be 15 minutes.
  |

Other Panes
-------------

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQ
-----


####
 When can I use this connector?

Allow real-time access to integrated data across an organization's diverse data sources without the need for data replication by using the connector.

###
 How often can the data be updated?

As often as needed.

###
 What is the default fetch-size for memory performance?

The default value is 1000.

###
 What is the default query timeout value?

The default value set by Denodo is 15 minutes.

###
 What kind of credentials do I need to power up this connector?

You need to obtain the hostname, port number, database account, account username, and account password.

