

Intro
-------

Amazon Redshift is a fast and powerful, fully managed, petabyte-scale data warehouse service in the cloud.


 You connect to your Amazon Redshift Unload account in the Data Center. This topic discusses the fields and menus that are specific to the Amazon Redshift Unload connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to Amazon Redshift so you can begin creating Amazon Redshift Unload DataSets, you must have the following:

 The hostname for the Redshift database
* The database name for the Redshift database
* Your Redshift username and password
* The port number of your Redshift database

CA certificate text or URL path is required
 *only*
 if you select
 **Certificate string**
 or
 **URL path**
 , respectively, in the
 **Certificate type**
 menu.


 If you do not know any of the information for Redshift, contact your Amazon Redshift Database Administrator.

##
 Whitelisting

Before you can connect to Redshift, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your Amazon Redshift Unload Account
---------------------------------------------------


 This section enumerates the options in the


**Credentials**


 and


**Details**


 panes on the Amazon Redshift Unload Connector page. The components of the other panes on this page,


**Scheduling**
**Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Amazon Redshift Unload account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Host
  |
 Enter the hostname for the Redshift database you want to pull data from.
  |
|
 Database
  |
 Enter the database name for the Redshift database you want to pull data from.
  |
|
 Username
  |
 Enter the username for your Redshift account,
  |
|
 Password
  |
 Enter the password for your Redshift account.
  |
|
 Database Port
  |
 Enter the port number for the Redshift database you want to pull data from.
  |
|
 Certificate Format
  |
 Select a certificate format. If you do not want to include a certificate, leave the default
 **No certificate**
 option selected. If you select
 **Certificate string**
 , you must paste the text for your certificate in the
 **Certificate**
 field. If you select
 **URL path**
 , you must enter the URL where your certificate is located in the
 **Certificate**
 field.
  |
|
 Certificate
  |
 Paste the text for your CA certificate or enter the URL where your certificate is located. This is optional. If you do not want to include a certificate, select
 **No certificate**
 in the
 **Certificate Format**
 menu.
  |


 Once you have entered valid credentials, you can use the same account any time you go to create a new Amazon Redshift Unload DataSet. You can manage connector accounts in the


**Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains various options for specifying the data you want to pull into Domo.


 Menu
  |
 Description
  |
| --- | --- |
|
 Query Type
  |
 Select the desired query type. If you select
 **Query**
 , you will be prompted to enter a regular SQL query without a parameter. If you select
 **Query Parameter**
 , you will be prompted to enter a SQL query with a parameter.


|  |  |
| --- | --- |
| **Query Type**  | **Description**  |
|
 Custom Query
  |
 Enter the SQL query to execute.
  |
|
 Query Builder
  |
 Select schema, database table, and column names(fields) to auto-generate your query.
  |

|
|
 How would you like to import data?
  |

  |
| --- |
|
 Standard update (replace/append)
  |
|
 User partition
  |
|
 Use upsert
  |

|
|
 Query
  |
 Enter the SQL query you want to use to pull in data.


 For example:

select \* from Employee

You can use the
 **Generated Query**
 parameter to help you write a usable SQL query. To use the


**Generated Query**
 , do the following:
 1. Select your database table and table columns in the appropriate menus.
2. Copy the SQL statement that appears in the
 **Generated Query**
 field.
3. Paste the copied SQL statement into the
 **Query**
 field.


 |
|
 Database Tables
  |
 Select the database tables you want to pull into Domo if desired.
  |
|
 Table Columns
  |
 Select the table columns you want to pull into Domo.
  |
|
 Update Method
  |

When Domo retrieves your data from the source, you can determine how that new data is imported into the current DataSet. We advise you to always use the Merge method, but we also offer Append and Replace if you need it.

  |  |
| --- | --- |
|
 Merge
  |
 This method will replace all updated rows, while any new rows will be appended.
  |
|
 Append
  |
 This method will take your new data and add it to your current DataSet. Using this may create duplicate data entries.
  |
|
 Replace
  |
 This method will take your current DataSet and replace it with new data. Using this may result in some data loss.
  |

|
|
 Basic Scheduling
  |

Choose a predefined update schedule (every day between 9 AM and 10 AM)

 Specify a daily window of activity for 15-minute, 30-minute, and hour intervals

With a
 **Manual schedule**
 , you can opt-in to receive a reminder when the data needs to be updated

|
|
 Advance Scheduling
  |


 Advanced Scheduling


 Define a fine-grained schedule with a specific time or update frequency


* Limit the schedule to run on specific days and months
* Start scheduled updates on a future date with
 **Delay Start**

*Note:**
 Schedules are set from the current time in UTC

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


#####
 How often can the data be updated?

As often as needed.

####
 Are there any API limits I should be aware of?

This depends on your server configuration.

####
 Why can't I connect to my Redshift database? Do I need to whitelist any IP addresses?

Before you can connect to a Redshift database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses

.

