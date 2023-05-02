

Intro
-------

You can create an ODBC DataSet Job in Workbench 5.1. When you select ODBC as your Data Source type, you can provide the details of your connection and configure your query.


**Note:**
 Workbench 5.1 determines at runtime whether you are using a 32- or 64-bit version of Windows; thus you are not asked to specify a version.


 Connecting to ODBC Data
-------------------------

*To create an ODBC DataSet job in Workbench 5.1,**

. Click the

icon in the left-hand icon bar.
2. Click the "+" button in the top right corner of the jobs listing pane.
3. Select the desired account (Domo instance) in the
 **Domo Domain**
 dropdown menu.


 If you have only one account set up, that account is already chosen for you and the menu is unavailable.
4. In the
 **Name**
 field, enter a name for the DataSet Job.


 This is the name of the job as it appears in Workbench,
 *not*
 the name of the uploaded DataSet in Domo.
5. In the
 **Transport Type**
 menu, select
 **ODBC Connection Provider**
 .
6. In the
 **Reader Type**
 menu, select
 **Database Query**
 .
7. In the
 **DataSet Name**
 field, enter the name of the DataSet. This is the name of the uploaded DataSet in Domo.


 This is the
 *only*
 setting you can change after saving the new job.
8. In the
 **DataSet Type**
 field, select the type of DataSet in the dropdown.


 The DataSet type you select or enter here is reflected as the connector type in Domo after you execute the job.
9. Enter a description for the DataSet if desired.


 This is the description of the DataSet as it appears in Domo.
10. Click
 **Create**
 .


 A new ODBC DataSet Job is added to the list of jobs for the currently authenticated account. Note that after creating the job, you cannot edit any of the settings you just configured except for the DataSet name. If you want to change any of the other settings, you must create a new job.
11. Click the
 **Configure**
 subtab.
12. Click the
 **Edit**
 button under "Source."


 A panel opens with options for configuring your ODBC connection and defining your query.

*Note:**
 Workbench only executes one query. If you need to execute more than one query can handle, please create a stored procedure and use Workbench to execute the store procedure.
13. In the
 **Connection Type**
 field, select a connection option.


 The following table describes the available options:


|
 Option
  |
 Description
  |
| --- | --- |
|
 System DSN
  |
 You select the DSN to use for the desired DataSet from all of the DSNs available in your system. You can indicate whether credentials are required.

*Notes:**

* When uploading data from an ODBC DataSet, you must specify an existing Data Source Name (DSN). You can create a DSN using the Windows ODBC Data Source Administrator. (You can access the the Windows ODBC Data Source Administrator by entering "ODBC" in the Start Menu search, then selecting "Data Sources (ODBC)".) For more information about creating a DSN, refer to the Windows ODBC Help (by searching for "ODBC" in Windows Help and Support) or view the training video in above. For information about configuring a MySQL driver, see

 How can I improve the performance of a MySQL driver?
	* For information about defining DataSet names (DSNs) and using Open Database Connectivity (ODBC) to access data, refer to documentation for ODBC.
	* By default, the ODBC connection uses the settings defined in the DSN. This means that queries that could potentially be detrimental to databases that are allowed to be sent through the ODBC connection when previewing and executing jobs. This includes statements such as

 alter

 ,

 delete

 ,

 create table

 ,

 insert into

 , etc. If you want to prevent Workbench from being able to execute such commands, you must make these changes in the DSN.

|
|
 Connection Builder
  |
 You enter details for your ODBC connection, such as login credentials, driver, server URL, database name, port, timeout value, and connection parameters.
  |
|
 Connection String
  |
 You enter a single string for your connection.
  |
14. (Conditional) Do one of the following:

* If you selected
	 **System DSN**
	 as your
	 **Connection Type**
	 ...

	1. In the
		 **System DSN**
		 menu, select the desired system DSN from those available in your system.
		2. (Conditional) If this DSN connection requires credentials to connect, set
		 **Required Credentials**
		 to "On," then enter your username and password in the appropriate fields. Otherwise set
		 **Required Credentials**
		 to "Off."
	* If you selected
	 **Connection Builder**
	 as your
	 **Connection Type**
	 ...

	1. Enter the appropriate information in the fields.


		 Some parameters may or may not be required, depending on your connection.


		 You can use the following table for reference:


		|
		 Field
		  |
		 Description
		  |
		| --- | --- |
		|
		 Driver
		  |
		 Specify the name of the driver used to access the database.

	**Note:**
		 By default, Windows machines come with drivers for MSSQL and other Microsoft products. If you want to connect to a non-Microsoft database (e.g. Oracle, MySQL, PostgreSQL, Mongo, DB2, SAP HANA, etc.), you will need to obtain and install the appropriate driver.


		 |
		|
		 Server
		  |
		 Specify the server name or URL for the database.
		  |
		|
		 Database
		  |
		 Specify the name of the database to access.
		  |
		|
		 Port
		  |
		 Enter the port number where the database is found. The default port is the MySQL port.
		  |
		|
		 Timeout
		  |
		 Enter the desired timeout value in seconds that the connection is kept alive before it is refreshed from the DataSet.
		  |
		|
		 Username
		  |
		 Specify the username you use to connect to the database.
		  |
		|
		 Password
		  |
		 Specify the password you use to connect to the database.
		  |
		|
		 Connection Parameters
		  |
		 Specify parameters for connecting to the DataSet.
		  |
	* If you selected
	 **Connection String**
	 as your
	 **Connection Type**
	 ...

	1. Enter a connection string to connect to the data source.
15. Click
 **Apply**
**.**
16. Click the
 **Edit**
 button under "Processing."
17. Set a timeout value in the
 **Query Execution Timeout**
 menu.


 This is the amount of time in seconds before a long-running job times out.
18. In the
 **Query**

pane, enter a query for the data you want to retrieve. For example:


`SELECT


 order_audit_id,


 user_name,


 customer_name,


 order_source,


 order_total,


 created


 FROM order_audit`
19. (Optional) Define replacement variables for columns in the DataSet in the
 **Replacement Variables**
 and
 **Global Replacement Variables**
 tabs. For each replacement variable...

1. Select the applicable column in the
	 **Column Section**
	 .

**Note:**
	 The
	 **Column**
	 name is case sensitive and must match the column name found in the

**Schema Subtab**

 .
	2. Define replacement variables for the selected column in the
	 **Value**
	 section.


	|
	 Variable Type
	  |
	 Description
	  |
	| --- | --- |
	|

 lastvalue

 |

 lastvalue

 variables keep track of relevant fields for the last row of data that was sent with the most recent upload for the associated job. The syntax is


	`!{lastvalue:_name_}!`

 lastvalue

 variables values are updated by Workbench after an upload finishes.

 lastvalue

 variables are stored in the job (

 .xml

 ) file. This variable lets you construct a query that gets only the "new" rows each time it runs. For example, if your data has a column with a row "id" that increments with each new row, you can construct a query containing


	`!{lastvalue:id}!`


	 similar to the following:


	`select id, name, type, sales from tablename where id > !{lastvalue:id}! order by id`


	 In this example, the column "id"
	 *must*
	 be in the

 SELECT

 ,

 WHERE

 , and

 ORDER BY

 clauses for the variable to be used and updated.


	 When uploading this job, Workbench replaces the


	`!{lastvalue:id}!`


	 variable with the current value of "id". After finishing the upload, Workbench stores the last uploaded value of "id" in the job (

 .xml

 ) file.

**Note:**
	 You
	 *must*
	 include any column you reference with a

 lastvalue

 variable in your

 SELECT

 ,

 WHERE

 , and

 ORDER BY

 clauses in order for the variable to be used and updated after the data upload.

 |
	|

 previewonly

 |
	 Used to indicate that certain actions should take place when loading a preview in Workbench. For example, you could request that your preview return only 100 rows of data instead of the 1,000,000 present in the data source. The syntax is


	`!{previewonly:Statement}!`
	 |
20. Click
 **Apply**
 .
21. Select the desired update method in the
 **Update Method**
 menu:

* Select
	 **Replace DataSet**
	 if you want the DataSet to be replaced entirely upon updating.
	* Select
	 **Append to DataSet**
	 if you want new data to be added to the existing data set upon updating.

You are now ready to execute the DataSet Job, thereby creating an ODBC DataSet in Domo. However, there are many other actions you can take on the DataSet Job before you send it to Domo. These include the following:

 Scheduling a Job in Workbench 5.1
* Configuring notifications to be sent when the job update succeeds or fails
* Encrypting and decrypting Workbench data
* Creating new columns using calculations
* Setting a custom date format on a column
* Replacing a value in a column
* Combining DataSets
* Applying filters to columns
* Setting impersonation

(which causes Workbench to run the job as an Active Directory user).


