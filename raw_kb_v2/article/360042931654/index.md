

Intro
-------

Amazon Redshift is a hosted data warehouse project that is part of the larger cloud computing platform Amazon Web Services. Redshift handles analytics workloads on large scale DataSets stored by a column-oriented DBMS principle. With the Amazon Redshift Upsert Connector you have the ability to schedule your data using the merge (upsert) option.


 You connect to your Amazon Redshift Upsert Account in the Data Center. This topic discusses the fields and menus that are specific to the Amazon Redshift Upsert connector interface. General information for adding DataSets and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to Amazon Redshift so you can begin creating Amazon Redshift Upsert DataSets, you must have the following:

 JDBC Driver
* The host name for the Redshift database
* The database name for the Redshift database
* Your Redshift username and password
* The port number of your Redshift database
* The format of your certificate. This must match what you enter in the Certificate field.
* The text for your CA certificate or enter the URL where your certificate is located. By default, no certificate is required.


###
 Whitelisting

Before you can connect to a Redshift database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting To Your Amazon Redshift Upsert Account
---------------------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Amazon Redshift Upsert Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Amazon Redshift Upsert account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 JDBC Driver
  |
 Select the JDBC driver to use.
  |
|
 Host
  |
 Enter the host name for the SQL database. If you do not know the host name, contact your Amazon Redshift Database Administrator.
  |
|
 Database
  |
 Enter the name of the SQL database. If you do not know the database name, contact your Amazon Redshift Database Administrator.
  |
|
 Username
  |
 Enter your Redshift username. If you do not know your username, contact your Amazon Redshift Database Administrator.
  |
|
 Password
  |
 Enter your Redshift password. If you do not know your username, contact your Amazon Redshift Database Administrator.
  |
|
 Database Port
  |
 Enter the port number of your Redshift database. If you do not know the port number, contact your Amazon Redshift Database Administrator.
  |
|
 Certificate Format
  |
 Select a certificate format. This must match what you enter in the
 **Certificate**
 field. If you are not aware of a special certificate, select no certificate.
  |
|
 Certificate
  |
 Paste the text for your CA certificate or enter the URL where your certificate is located. By default, no certificate is required.
  |

Once you have entered valid credentials, you can use the same account any time you go to create a new Amazon Redshift Upsert DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains various options for specifying the data you want to pull into Domo


 Menu
  |
 Description
  |
| --- | --- |
|
 Query Type
  |
 Select a query type


**Query**
 : Regular SQL query without parameters.


**Query Parameter**
 : SQL query with parameters.
  |
|
 Query
  |
 Enter the SQL query to use in selecting the data you want. For example,
 `SELECT * FROM Employee`  |
|
 Fetch Size
  |
 Enter the fetch size for memory performance. If it is blank, the default value will be 1000. If it throws out of memory for a value, decrease fetch size.
  |
|
 Query Parameter
  |
 Enter the query parameter value. It is the initial value for query parameter. The last run date is optional and by default is '02/01/1700' if it is not provided. For example,
 `!{lastvalue:_id}!=1,!{lastrundate:start_date}!=02/01/1944`  |
|
 Validate Type
  |
 Select the validation type


**No Validation**
 : It will not do any validation.


**Validate Schema**
 : It will validate the previous schema with current schema, and it will fail the job run if the schema is not the same.
  |
|
 Validate By
  |
 Select the validation cases


**Column Case Sensitive**
 : If previous and current column names are the same but it is different by case sensitivity, it will not consider them as the same column name.


**Column by Order**
 : If previous columns and current columns are not in the same order, it will not consider them as the same column name.
  |
|
 Boolean Format
  |
 Select the boolean format for the data to return


**1 = true, 0 = false**
 : It will return 1 for true, otherwise 0 for all the boolean data column.


**t = true, f = false**
 : It will return t for true, otherwise f for all the boolean data column.


**T = true, F = false**
 : It will return T for true, otherwise F for all the boolean data column.


**true = true, false = false**
 : It will return true for true, otherwise false for the boolean data column.
  |
|
 Timeout Query (Optional)
  |
 Enter the desired query timeout value.
  |


###
 Scheduling

The unique scheduling feature of this connector is the ability to merge (upsert) your data. This method will replace all updated rows, while any new rows will be appended.

To be able to Merge your updated data correctly, you must identify a Merge Key in your data. A Merge Key can be your primary key or a combination of columns that is unique in the DataSet and will be used to compare rows between different versions of your DataSet. You can use a

CONCAT()

function in the

SELECT

statement to establish a complex Merge Key. If you are unsure where the Merge Key is for this DataSet, please consult the DBA who owns the database or your Domo Administrator.

##
 Other Panes

For information about the remaining sections of the connector interface, including how to configure standard scheduling options, retry, and update options, see

Adding a DataSet Using a Data Connector

.

