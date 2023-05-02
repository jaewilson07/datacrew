

Intro
-------

QuickBase is a low-code platform for citizen development for building, customizing and connecting scalable, secure cloud applications mapped to unique business challenges without compromising IT governance and control. To learn more about the QuickBase API, visit their page (

https://help.quickbase.com/api-guide/index.html

).


 You connect to your QuickBase account in the Data Center. This topic discusses the fields and menus that are specific to the QuickBase connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 | * Project management
* Sales management
* IT management
* Custom database
* Human resources
* Field service management
* Marketing
 |
|
**Primary Metrics**
 |
 Varies greatly because it is such a customizable tool
  |
|
**Primary Company Roles**
 |
 Varies greatly because it is such a customizable tool
  |
|
**Average Implementation Time**
 |
 10-15 hours
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 5
  |

Best Practices
----------------

The best way to get started with this connector is by implementing the "Do Query" report. To configure this report, follow these instructions:

. Select
 **Do Query**
 as your report type.
2. Enter the DBID in the
 **Query Params**
 field.


 You can find the DBID you want to query by reviewing the URL when logged into QuickBase. The DBID comes directly after the

/db/

in the url. You can visit this page from QuickBase describing how to get the DBID:

http://www.quickbase.com/developer/k...uickbase-table
3. Leave the
 **Query**
 field blank.
4. Enter a list of fields IDs in the
 **Column List**
 field can be populated with a list of field ids (FID) that are period separated (10.12.15.18).


 Alternatively, you can simply enter

a

to pull in all columns.

You can get the FIDs for the columns in the DBID by going to
 **Settings**
 in the application and clicking
 **Tables**
 . This shows you the schema details for the DBID you are reviewing, including the field id (FID). If the FID column isn't viewable, click
 **Show Field IDs**
 below the field list. For more information, see

http://qunect.com/appnotes/fid.html

.


 The date columns are returned through the connector as the number of milliseconds since epoch (1970-01-01). To convert these numeric values to the correct date, a transformation in a DataFlow can be used with the following:


`from_unixtime(date_column/1000) as date_column`


 This transformation will convert the number to a date-time format.


 For more information about DataFlows, see

Creating a Magic ETL DataFlow

.


 Prerequisites
---------------

To connect to your QuickBase account and create a DataSet, you must have the following:

 Your QuickBase domain. This is essentially the URL of your QuickBase instance without

http://

. For example:


 abc.quickbase.com


 .
* Your Quickbase user token. To find your user token, do the following:

1. Navigate to

 www.quickbase.com

 and log in using your credentials.
	2. In the
	 **User**
	 menu on the global bar, select
	 **My preferences**
	 .
	3. Under "My User Information," click
	 **Manage my user tokens**
	 .
	4. Locate your user token in the list, or generate a new token.

For more information about generating a token, see

https://help.quickbase.com/api-guide...er\_tokens.html

.


 Connecting to Your QuickBase Account
--------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the QuickBase Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your QuickBase account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Domain
  |
 Enter your QuickBase domain, for example


 abc.quickbase.com


 .
  |
|
 User Token
  |
 Enter your QuickBase user token. For information about finding your user token, see "Prerequisites," above.
  |


 Once you have entered valid QuickBase credentials, you can use the same account any time you go to create a new QuickBase DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a primary
 **Reports**
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the QuickBase report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Ancestor Info
  |
 Retrieves ancestor information about the current application.
  |
|
 App DTM Info
  |
 Retrieves the timestamp of the last time change throughout the application.
  |
|
 DB Info
  |
 Retrieves metadata information, such as the last time the table was modified.
  |
|
 DB Page
  |
 Retrieves stores pages in QuickBase.
  |
|
 DB Var
  |
 Retrieves values assigned to variables (DBVars) set up in your QuickBase application.
  |
|
 Do Query
  |
 Retrieves records from a table using a query.
  |
|
 Granted DBs
  |
 Retrieves a list of the names and DBIDs of all the applications and tables that you are entitled to access, across all domains.
  |
|
 Number Records
  |
 Retrieves the total number of records in a table.
  |
|
 Record Info
  |
 Retrieves the values and types of all fields in a record.
  |
|
 Role Info
  |
 Retrieves all of the roles that apply to the application.
  |
|
 Schema
  |
 Retrieves information about the specified application or application table.
  |
|
 User Info
  |
 Retrieves the username and user ID associated with an email address used for QuickBase sign-in.
  |
|
 User Role
  |
 Retrieves roles assigned to a specific user in an application.
  |

|
|
 Query Params
  |
 Enter query parameters. For example:

dbid='abcd1234'
  |
|
 Query
  |
 Enter your search query.
  |
|
 Column List
  |
 Enter a period-separated list of column indices to display. To show all columns, enter

a

.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


* Review the connector history for error messages.
* Double-check the application token and credentials entered into Domo.
* If the connector is pulling in a limited number of columns, adjust the column list to a smaller number of columns by entering in a period-separated list of Field IDs (FID).
* Because of the flexible nature of QuickBase, there are instances where the column names can become excessively long. This can cause issues when manipulating data using a MySQL Dataflow in Domo. There is a limit of 64 characters in a MySQL column name. To remedy this, a Magic ETL DataFlow can be used to rename columns. For more information, see

Creating a Magic ETL DataFlow

.


