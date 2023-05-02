

Intro
-------


**Important:**
 Salesforce API Change


 Due to Salesforce's changing API, on
 **August 1st**
 ,
 **2018**
 Domo will be releasing new Salesforce and Salesforce Advanced connectors. These connectors will work in conjunction with a Salesforce managed package installed via the Salesforce App Store. The new version will enable Salesforce administrators to control who can use the Domo Salesforce connectors inside Salesforce, providing ease of administration and enhanced security.


**Will my current DataSets continue to work?**


 All current Salesforce and Salesforce Advanced connector DataSets do not work in conjunction with the Salesforce managed package and no dependencies need to be installed for the connectors to function. Existing DataSets will continue to run until
 **September 1st, 2018**
 .


**I want to create a new Salesforce DataSet. What should I do?**


 Beginning August 1st 2018, any new DataSets created will require you to download the Salesforce managed package via the Salesforce App Store to properly function.


**What will happen if I don't install the Salesforce managed package before September 1st, 2018?**


 Any Salesforce instance bringing data into Domo via the Salesforce or Salesforce Advanced connector will stop running until the Salesforce managed package is installed.


 For more information on how to download and install the Salesforce managed package, see

Installing the Domo Connector Package

.


 Salesforce.com

builds the world's most popular customer relationship management (CRM) product. Use Domo's Salesforce Advanced connector to import prebuilt tabular reports or retrieve fields from a given Salesforce object. To learn more about Salesforce's APIs, visit their page (

https://trailhead.salesforce.com/en/content/learn/modules/api\_basics

).


 You connect to your Salesforce account in the Data Center. This topic discusses the fields and menus that are specific to the Salesforce connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Salesforce account and create a DataSet, you must have Salesforce credentials. You must also have an installed Domo Connector Package from the Salesforce AppExchange (required as of August 1, 2018; see next section for installation instructions)

##
 Installing the Domo Connector Package

The "Domo Connector Package" found in Salesforce AppExchange allows Salesforce users to import their data into Domo. Follow these instructions to download and install the Connector Package from the AppExchange.


**To install Domo's Salesforce Managed Package,**

. Log into Salesforce.
2. Navigate to the Salesforce AppExchange at

https://appexchange.salesforce.com

and search for "Domo Connector Package," then click on it.
3. Customers can go directly to the package with the following link:


 https://login.salesforce.com/packaging/installPackage.apexp?p0=04t1I000001ymKN
4. If you are installing into a sandbox organization you must replace the initial portion of the URL with


 http://test.salesforce.com


 Alternatively, you can go directly to

https://appexchange.salesforce.com/a...A00000EcrsyUAB

.
5. Click
 **Get It Now**
 .
6. Choose whether you want to install in a production environment or sandbox.
7. Check the box reading "I have read and agree to the terms and conditions," after Reading the terms and conditions.
8. Click
 **Confirm and Install**
 .
9. Click the
 **Install for All Users**
 tile.

For more details, see Salesforce's documentation at

https://help.salesforce.com/articleV...ges.htm&type=5

.


 Connecting to Your Salesforce Account
---------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Data Selection**
 panes in the Salesforce Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Salesforce Advanced connector uses OAuth to connect, so there is no need to enter credentials within Domo. Select the desired Salesforce environment (either
 **Sandbox**

or
 **Salesforce**
 ) then click
 **Connect**
 (or select
 **Add Account**
 if you have existing Salesforce accounts in Domo) to open the Salesforce OAuth screen where you can enter your Salesforce credentials. Once you have entered valid Salesforce credentials, you can use the same account any time you go to create a new Salesforce DataSet. You can manage connector accounts in the
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
 Data Selection Pane

This pane provides access to four different routes for pulling Salesforce data into Domo. Each of these is described in continuation.

###
 Browse Objects and Fields

Use this option to select a Salesforce object and define its associated fields and relationships. Any configuration options you choose here are reflected in the SOQL query, which is automatically generated in the
 **Query**
 tab.


 The following table describes the configuration options available when choosing this route:


 Option
  |
 Description
  |
| --- | --- |
|
 Which Salesforce Object Would You Like to Use?
  |
 Select the Salesforce object you want to import into Domo.
  |
|
 What Fields Would You Like to Retrieve?
  |
 Select all the fields you want to retrieve. You can select as many fields as you want. You can drill down on an object to show the fields under that object, or you can search for a specific field using the
 **Search**
 box.
  |
|
 Would You Like to Filter by Date?
  |
 Select a date filtering option. A number of options is available, including the creation date, last activity date, last viewed date, etc.
  |
|
 What Relationships Would You Like to Include?
  |
 Select all relationships you want to include in your DataSet.
  |
|
 Column Name Styles
  |
 Select whether to use Salesforce internal names or labels as the column names in the DataSet.
  |
|
 Retrieve All Fields
  |
 Select whether new fields will be automatically retrieved from Salesforce if all the fields under a parent object are selected.
  |
|
 Type of Records to Retrieve
  |
 Specify whether you want to import all records (including deleted records) or active fields only.
  |
|
 Reset Schema?
  |
 Specify whether you want your DataSet columns to be reset when a query or field selection is modified.
  |


####
 Query

Use this option to pull Salesforce data into Domo by inputting a query.


 Option
  |
 Description
  |
| --- | --- |
|
 Enter your SOQL Query
  |
 Enter the desired SOQL query. Note that a query is automatically generated here when you specify configuration options in the
 **Browse Objects and Fields**
 tab. However, you can edit this query if you want, or even enter an entirely new query.
  |
|
 Data Retrieval -- Type of Records to Retrieve
  |
 Specify whether you want to import all records (including deleted records) or active records only.
  |
|
 Schema Options -- Reset Schema
  |
 Specify whether you want your DataSet columns to be reset when a query or field selection is modified.
  |


####
 Tabular Reports


|
 Menu
  |
 Description
  |
| --- | --- |
|
 Select a Salesforce Tabular Report
  |
 Select a tabular report to import from Salesforce.


 |
|
 Select a Unique Key Present in the Data
  |
 Select a unique key in your DataSet. This is necessary if you want to import more than 2000 rows of data.
  |
|
 Select the Date Format Returned by the Report
  |
 Select how you want dates to be formatted in your report.
  |


####
 Sharing Rules Settings

This option is locked to reduce the risk of error when creating reports.

##
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

