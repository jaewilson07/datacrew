


**Important:**
 Support for Workbench 4 ended on
 **April 15, 2021**
 . Workbench may continue to run on installed machines, but it will no longer receive feature enhancements and security updates. When issues are encountered in Workbench 4, the recommended course of action from the Domo Support team will be to upgrade to the latest version of Workbench 5. To see this article for Workbench 5, click

*here**

.

Intro
-------

You can create an ODBC DataSet Job in Workbench 4. When you select ODBC as your Data Source type, you can provide the details of your connection and configure your query.


**Note:**
 Workbench 4 determines at runtime whether you are using a 32- or 64-bit version of Windows; thus you are not asked to specify a version.

*Training Video - Creating an ODBC Connection**

Learn how to set up an ODBC connection in Workbench 4.

*Training Video - Creating a System DSN**

Learn how to create a system DSN for your ODBC connection in Workbench 4.


 Connecting to ODBC Data
-------------------------

*To create an ODBC DataSet Job in Workbench 4,**

. Click
 **Add New**
 in the
 **DataSet Jobs**
 grouping in the Buttons toolbar at the top of the Workbench window.


 This opens the
 **Workbench DataSet Job Creation Wizard**
 .
2. (Conditional) If requested, select the desired Domo server. (This screen only appears if you have more than one server set up in Workbench.)
3. In the
 **DataSet Job Name**
 field, enter a name for the DataSet Job. This is the name of the job as it appears in Workbench,
 *not*
 the name of the uploaded DataSet in Domo.
4. In the
 **DataSet Name**
 field, enter the name of the DataSet. This is the name of the uploaded DataSet in Domo.
5. Select the desired update method in the
 **Update Method**
 menu:

* Select
	 **Replace DataSet**
	 if you want the DataSet to be replaced entirely upon updating.
	* Select
	 **Append to DataSet**
	 if you want new data to be added to the existing data set upon updating.
6. In the
 **Transport Method**
 menu, select
 **ODBC Connection Provider**
 .
7. Click
 **Next**
 .
8. In the
 **DataSet Type**
 field, select the type of DataSet in the dropdown or enter a custom name.


 The DataSet type you select or enter here is reflected as the connector type in Domo after you execute the job.

*Tip:**
 It is recommended that you select or enter the DataSet type that tells users what data is being represented,
 *not*
 the data reader you are using to present the data. For example, you might be connecting to an ODBC database that contains Twitter data. In this case, the best option would be to enter "Twitter" rather than selecting
 **ODBC**
 because the data you are representing in Domo is from Twitter.
9. (Optional) Enter a description in the
 **DataSet Description**
 field.

*Note:**
 You can change any of the settings you made in the above steps in the
 **Source**
 panel for the DataSet Job after you complete all of the steps in the Wizard
 *except*
 the transport method.
10. Click
 **Next**
 .


 A new ODBC DataSet Job is added to the list of jobs for the currently authenticated server in the
 **Accounts**
 pane.
11. Under the ODBC DataSet Job that was just added to the jobs list, select
 **Source**
 .


 A panel opens with options for configuring your ODBC connection and defining your query.
12. In the
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

* When uploading data from an ODBC DataSet, you must specify an existing Data Source Name (DSN). You can create a DSN using the Windows ODBC Data Source Administrator. (You can access the the Windows ODBC Data Source Administrator by entering "ODBC" in the Start Menu search, then selecting "Data Sources (ODBC)".) For more information about creating a DSN, refer to the Windows ODBC Help (by searching for "ODBC" in Windows Help and Support) or view the training video in

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


13. (Conditional) Do one of the following:

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
14. Click
 **Validate Configuration**
**.**
15. In the
 **Data Source Properties**
 pane, enter a query for the data you want to retrieve. For example:


`SELECT


 order_audit_id,


 user_name,


 customer_name,


 order_source,


 order_total,


 created


 FROM order_audit`
16. (Optional) Define replacement variables for columns in the DataSet in the
 **Replacement Variables**
 tab. For each replacement variable...

1. Select the applicable column in the
	 **Column Dropdown**
	 .

**Note:**
	 The
	 **Column**
	 dropdown does not populate until you create a successful ODBC connection in the
	 **Transport Method**
	 pane.
	2. Define replacement variables for the selected column in the
	 **Value**
	 dropdown.


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

You are now ready to execute the DataSet Job, thereby creating an ODBC DataSet in Domo. However, there are many other actions you can take on the DataSet Job before you send it to Domo. These include the following:

 Setting an update schedule for the job
* Adding the job to a group of jobs with an advanced schedule set in Windows Task Scheduler
* Configuring notifications to be sent when the job update succeeds or fails
* Encrypting and decrypting Workbench data
* Creating new columns using calculations
* Setting a custom date format on a column
* Replacing a value in a column
* Combining DataSets
* Applying filters to columns


