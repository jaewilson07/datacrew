

Intro
-------

Salesforce

Database.com

is an enterprise database built for the cloud that enables developers to focus on building apps instead of managing and maintaining databases and hardware. To learn more about the

Database.com

API, visit their page (

https://www.salesforce.com/platform/database/

).


 You connect to your

Database.com

account in the Data Center. This topic discusses the fields and menus that are specific to the

Database.com

connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your

Database.com

account and create a DataSet, you must have credentials for either a Salesforce

Database.com

or Sandbox account.


 Connecting to Your

Database.com

Account
-----------------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Database.com

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo

Database.com

connector uses OAuth to connect, so there is no need to enter credentials within Domo. Select the environment you want to pull data from (either
 **Database.com**
 or
 **Sandbox**
 ) then click
 **Connect**
 (or select
 **Add Account**
 if you have existing

Database.com

accounts in Domo) to open the Salesforce OAuth screen where you can enter your Salesforce credentials. Once you have entered valid credentials, you can use the same account any time you go to create a new

Database.com

DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Salesforce when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Salesforce.


###
 Details Pane

This pane contains menus for configuring how you want to pull data from Database.com.


 Menu
  |
 Description
  |
| --- | --- |
|
 How do you want to select your

Database.com

data?
  |
 Select how you want to pull data from

Database.com

. If you select
 **Browse Objects**
**and Fields**
 , you specify your data by selecting objects with associated fields and relationships. If you select
 **Query**
 , you enter an SOQL query to retrieve data.


 |
|

Database.com

Objects
  |
 Select the object (table) containing the data you want to pull into Domo.
  |
|
 Columns
  |
 Select the names of the columns with data you want to pull into Domo.
  |
|
 Relationships
  |
 Select joinable tables on the selected object.
  |
|
 Query
  |
 Enter the SOQL query you want to use to pull data into Domo.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

