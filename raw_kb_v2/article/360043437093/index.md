

Intro
-------

Snowflake is data warehouse that makes it easy to bring together all your data and make it available to all of the users and systems that need to analyze it. You can use Domo's Snowflake Writeback connector to push data from a Domo DataSet into a Snowflake database. For more information about the Snowflake API, go to

https://docs.snowflake.net/manuals

.


 This topic discusses the fields and menus that are specific to the Snowflake Writeback connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To connect to a Snowflake database and create a DataSet, you must have the following:

 The full name of your account (provided by Snowflake). This is the portion of your Snowflake URL immediately following

https://

.


 Note that your full account name may include additional segments that identify the region and cloud platform where your account is hosted. The following table provides account name examples by cloud platform/region. For each row, it assumes your account name is "xy12345."
* The username and password for your Snowflake account.
* A Domo Client ID and Client Secret. To obtain these credentials, do the following:

1. Log into your Domo developer account at

 https://developer.domo.com/login

 .
	2. Create a new client

 .

**Note:**
	 When creating a new client, if you utilize multiple Domo instances, make sure you're logged into the Developer Portal using the correct instance.
	3. When creating the client, select ALL of the scopes. (Account, Audit, Buzz, Data, Dashboard, User, and Workflow.)
	4. Click
	 ****Create****
	 .


**Important**
 : You will need the following permissions on Snowflake:
 * CREATE TABLE
* COPY INTO
* PUT
* CREATE FILE FORMAT
* REMOVE
* LIST

Configuring the connection
----------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Snowflake Writeback Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to your Domo developer account as well as your Snowflake account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Account Name
  |
 Enter the account name for your Snowflake account. For information about finding your account name, see

Prerequisites

.
  |
|
 Username
  |
 Enter the username associated with your Snowflake account.
  |
|
 Password
  |
 Enter the password associated with your Snowflake account.
  |
|
 Role
  |
 Enter your role.
  |
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

After you have entered valid credentials, you can use the same account in Domo any time you create a Snowflake Writeback DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a number of fields and menus for entering your SQL query and specifying the location of the data you want to retrieve.


 Parameter
  |
 Description
  |
| --- | --- |
|
 Input DataSet ID
  |
 Enter the DataSet ID (GUID) for the DataSet you want to copy to Snowflake. You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following

datasources/

. For example, in the URL

https://mycompany.domo.com/datasources/845305d8-da3d-4107-a9d6-13ef3f86d4a4/details/overview

, the DataSet ID is

845305d8-da3d-4107-a9d6-13ef3f86d4a4

.
  |
|
 Select Table Name
  |
 Select how you want to name the table where data will be copied.
 * ****Use Input DataSet GUID****
 . The table name will be the number you entered for
 **Input**
****DataSet ID****
 .
* ****Use Input DataSet Name****
 . The table name will be the same as that of the input DataSet.
* **Enter Table Name**
 . You will give the table a custom name in the
 ****Custom Table Name****
 field.
 |
|
 Enter Table Name
  |
 Enter the name of the Snowflake table you want your data copied to (spaces and special characters will be replaced with underscores).
  |
|
 Warehouses
  |
 Select the warehouse containing the table you want to send data to.
  |
|
 Databases
  |
 Select the database containing the table you want to send data to.
  |
|
 Database Schema
  |
 Select the database schema containing the data you want to retrieve.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

##
 FAQs


####
 When should I use this connector?

The Domo Snowflake Writeback connector allows you to write data from a Domo dataset to a Snowflake instance using a local username and password in your Snowflake instance. If you do not already have the connector enabled, please contact your Domo Account Executive.

###
 What permissions do I need on Snowflake?

You need the CREATE TABLE, COPY INTO, PUT, CREATE FILE FORMAT, REMOVE, and LIST permissions on Snowflake.

###
 What kind of credentials do I need to power up the Snowflake Writeback connector?

You need the full name of your account (provided by Snowflake), Domo developer account credentials (client id and client secret), and Snowflake credentials (username and password.)

###
 Where can I find my Domo client id and client secret?

To create a new client:

 Login to

Domo developer account

.
* In the top right corner under
 **My Account**
 click
 **New Client**
 .
* Enter the application name and description.
* Provide the application scope by selecting the checkboxes for
 **Data**
 and
 **User**
 .
* Click
 **Create**
 .

Once you have created a client, you can manage the client by clicking on
 **Manage Client**
 .

###
 How frequently will my data update?

As often as needed.

###
 Are there any API limits that I need to be aware of?

Limits depend on your server configuration.

###
 Can I use the same Snowflake Writeback account for multiple datasets?

Yes

###
 Why can't I connect to my Snowflake database? Do I need to whitelist any IP addresses?

Before you can connect to a Snowflake database in Domo, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses

.

###
 How do I find the Input Dataset ID?

Your Domo input dataset id is in the URL of the dataset you are exporting data from. For example:

https://customer.domo.com/datasources/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee/details/settings


