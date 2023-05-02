

Intro
-------

*Note:**
 The Databricks Connector is currently still in development and is not yet available for use.


 Databricks is a cloud-based collaborative data science, data engineering, and data analytics platform that combines the best of data warehouses and data lakes into a lakehouse architecture.


 With Databricks you can access all your data, analytics, and AI on one lake house platform. The simple, open, and collaborative environment helps reduce the infrastructure complexity, keeps control of your data, and makes it easy for your teams to partner across the entire data and workflow. For more information about the Databricks API, visit their website. (

https://docs.databricks.com/dev-tools/api/index.html

)


 The Databricks connector is a "Database" connector, meaning it retrieves data from a database using a query. In the Data Center, you can access the connector page for this and other Database connectors by clicking
 **Database**
 in the toolbar at the top of the window.


 You connect to your Databricks database in the Data Center. This topic discusses the fields and menus that are specific to the Databricks connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to a Databricks database and create a DataSet, you must have the following:

 The username and password you use to log into your Databricks host
* The host name for the database
* The port number for the database
* The database name or schema name
* The HTTP Path

Connecting to Your Databricks Database
----------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Databricks Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


**Note:**
 When using the copy/paste function for your credentials, ensure there is no whitespace at the beginning or end of the string. By accidentally pasting whitespace, it will cause the connector to error when trying to connect.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your database. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Host
  |
 Enter the host name for the Databricks database.


 Example:


 db.company.com


 |
|
 Port
  |
 Enter the port number for the Databricks database.
  |
|
 Database Name
  |
 Enter the name of the Databricks database.
  |
|
 Username
  |
 Enter your Databricks username.
  |
|
 Password
  |
 Enter your Databricks password.
  |
|
 HTTP Path
  |
 Enter the HTTP path.
  |

Once you have entered valid Databricks credentials, you can use the same account any time you go to create a new Databricks DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

In this pane you create an SQL query to pull data from your database, with or without a parameter.


 Menu
  |
 Description
  |
| --- | --- |
|
 How would you like to import data into Domo?


 |

Select whether you want to import your data by using the standard


 update method (replace/append), by using the partition, or upsert mode.

|
|
 Query Type
  |
 Select the desired query type.


|
 Query Type
  |
 Description
  |
| --- | --- |
|
 Custom Query
  |
 Enter the query to execute.
  |
|
 Query Builder
  |
 Select a table and fields to autogenerate your query.
  |

|
|
 Standard update
  |

  |  |
| --- | --- |
|
 Replace
  |
 Replaces the current dataset with a new dataset
  |
|
 Append
  |
 Add the current dataset with a new dataset
  |

|
|
 Use Partition
  |

  |  |
| --- | --- |
|
 Partition Criteria Selection
  |
 Select whether you want to partition your data using the date keys or meta query
  |
|
 Partition Column Selection
  |
 Select the partition column name. Only date fields will be shown in this discovery
  |
|
 Partition Support Format
  |
 Select the partition format
  |
|
 Past Days
  |
 Enter the number of past days that you want to get data for. Value can be X, where X is a positive integer. For example 30.
  |
|
 Past Days Months
  |
 Enter the number of past months that you want to get data for. Value can be X, where X is a positive integer. For example 30.
  |
|
 Past Days Years
  |
 Enter the number of past years that you want to get data for. Value can be X, where X is a positive integer. For example 30.
  |
|
 Future Months
  |
 Enter the number of future months that you want to get data for. Value can be X, where X is a positive integer. For example 30.


 "
  |
|
 Future Years
  |
 Enter the number of future years that you want to get data for. Value can be X, where X is a positive integer. For example 30.
  |
|
 Partition Query
  |
 Enter the partition meta query to determine the distinct partition tags(or keys). The column containing the <b>Date</b> data is your partition column. Example: SELECT DISTINCT(COLUMN\_NAME) FROM TABLENAME
  |

|
|
 Upsert
  |

  |  |
| --- | --- |
|
 Upsert Keys text field
  |
 Please enter upsert key column name or a comma separated list of upsert key column names
  |

|
|
 Query
  |
 Enter the Structured Query Language (SQL) query to use in selecting the data you want.


 Example:

select \* from Employee

You can use the
 ****Query Helper****
 parameter to help you write a usable SQL query. To use the
 ****Query Helper****
 , do the following:
 1. Select your database table and table columns in the appropriate menus.
2. Copy the SQL statement that appears in the
 ****Query Helper****
 field.
3. Paste the copied SQL statement into the
 ****Query****
 field.
 |
|
 Database Tables
  |
 Select the database table you want to import into Domo.
  |
|
 Table Columns
  |
 Select the table columns you want to import into Domo.
  |
|
 Query Helper
  |
 Copy and paste the SQL statement in this field into the
 ****Query****
 field. For more information, see
 ****Query****
 , above.
  |
|
 Fetch Size
  |

Enter the fetch size for memory performance. The default value will be used if no fetch size specified. If an


 "


 out of memory


 "


 error occurs, retry decreasing the fetch size.

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

##
 FAQs


####
 What kind of credentials do I need to power up this connector?

You need the username, password, host name, port number, and database name of your Databricks database. You also need to provide the HTTP path.

###
 Where can I find the values that I need to enter for my credentials?

You can find the hostname, database, port number, and HTTP path by going to your cluster in Databricks and viewing the JDBC/ODBC tab in the Advanced section of the cluster details.

###
 How frequently will my data update?

As often as needed.

###
 Are there any API limits that I need to be aware of?

Limits depend on your server configuration.

###
 What do I need to be aware of while writing a query?

Make sure that all the words, table names and field names are correctly spelled. Refer to the Query Helper field for query help.

###
 What's the Fetch Size?

The fetch size is for memory performance. The default value will be used if no fetch size is specified. If an "out of memory" error occurs, retry decreasing the fetch size.

##
 Selecting the Update Mode

Once you decide how you want to import your data into Domo

(by using the standard


 update method (replace/append), by using partition, or upsert mode), you need to select the relevant update mode in the
 **Scheduling section in**
 the Connector.


* If you select 'Partition' in the Details section, then you need to select the 'Append' update mode in the Scheduling section.

 If you select 'Upsert' in the Details section, then you need to select 'Merge' update mode in the Scheduling section.

