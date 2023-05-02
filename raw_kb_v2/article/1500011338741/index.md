

Intro
-------

The Snowflake OAuth Writeback Connector makes it easy to bring all your data into Domo and normalize it, then send it back to Snowflake while simultaneously making it available for queries. If you are already using Snowflake as a data warehousing solution, this connector helps you use Domo in conjunction with it to get the most from your data. To use this connector, you must have your Snowflake account name (domain), and the client id and client secret

provided by Snowflake when the client is registered

. For more information about the Snowflake API, go to

https://docs.snowflake.net/manuals

.


 You connect to your Snowflake account in the Data Center. This topic discusses the fields and menus that are specific to the Snowflake OAuth Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Best Practices
----------------


**Important:**
 Snowflake asserts your need to manually re-connect your Domo account every time the account expires. The Snowflake integration controls how often the account will expire. If it is set to expire the refresh tokens every 90 days, then you will need to reconnect the account every 90 days. If you would like to increase the refresh timeout to more than 90 days, then you will need to contact the
 **Snowflake Support**
 , and they can increase the maximum timeout from 90 days to 1 year.

Prerequisites
---------------

To connect to your Snowflake database account and create a DataSet, you must have the following:

 The full name of your account (provided by Snowflake). This is the portion of your Snowflake URL immediately following https://.


 Note that your full account name may include additional segments that identify the region and cloud platform where your account is hosted. The following table provides account name examples by cloud platform/region. For each row, it assumes your account name is "xy12345."
* The Client ID and Client Secret provided by Snowflake when the client is registered.


**Important**
 : You will need the following permissions on Snowflake:
 * CREATE TABLE
* COPY INTO
* PUT
* CREATE FILE FORMAT
* REMOVE
* LIST


 Configuring the connection
-----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Snowflake OAuth Writeback

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Snowflake account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Account Name
  |
 Enter the account name for your Snowflake account. For information about finding your account name, see "Prerequisites."
  |
|
 Client ID
  |
 Enter your Client ID provided by Snowflake when the client is registered.
  |
|
 Client Secret
  |
 Enter your Client Secret provided by Snowflake when the client is registered.
  |
|
 Role
  |
 Enter your role.
  |


 Once you have entered valid Snowflake credentials, you can use the same account any time you go to create a new Domo-Snowflake connection. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane


 This pane contains a number of fields for specifying your data and indicating where it's going.


|
 Menu
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
 * ****Use Input DataSet GUID-****
 The table name will be the number you entered for


**Input**
****DataSet ID****
 .
* **Enter Table Name-**
 You will give the table a custom name in the
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
|
 Use All Caps for Column Names and Table Name
  |

Select 'True' if you want to write back your column names and table name in ALL CAPS so the names are case insensitive within Snowflake; otherwise, select 'False.'

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------

###
 When should I use this connector?

This connector allows you to write data from a Domo dataset to a Snowflake instance. The connector uses a user-defined app in Snowflake to support OAuth authentication.

###

I am receiving an error saying, "OAuth access token expired." Why?


 To avoid this error, you need to refresh the token. Snowflake asserts your need to manually re-connect your Domo account every time the account expires. The Snowflake integration controls how often the account will expire. If it is set to expire the refresh tokens every 90 days, then you will need to reconnect the account every 90 days. If you would like to increase the refresh timeout to more than 90 days, then you will need to contact the
 **Snowflake Support**
 , and they can increase the maximum timeout from 90 days to 1 year.


####

What kind of credentials do I need to power up this connector?


 You need the full name of your account, and the client ID and client secret provided by Snowflake when the client is registered. You may also provide your role.


####

Are there any API limits I should be aware of?

This depends on your server configuration.

###

How frequently will my data update?

DataSets can run as often as every 15 minutes. However, depending on the runtime of the query, DataSets may need to run less frequently.

###
 How do I find the Input Dataset ID?

Your Domo input dataset id is in the URL of the dataset you are exporting data from.


 Example:

https://customer.domo.com/datasources/

*aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee**
 /details/settings

###

Why can't I connect to my Snowflake database? Do I need to whitelist any IP addresses?

Before you can connect to a Snowflake database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses in Domo

.


