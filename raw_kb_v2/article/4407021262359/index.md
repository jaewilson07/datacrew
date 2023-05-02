

Intro
-------

The Domo SAP HANA Plugin allows you to create jobs in Workbench 5.1 to get the Data from your SAP HANA database in Domo. The SAP HANA plugin uses SAP HANA ODBC driver for connecting to your database. Thus, you will need to install the SAP HANA ODBC driver for using this plugin.


 The SAP HANA plugin also supports end-to-end trace. For more info please see

End-to-end tracing

section.


 This tutorial teaches you how to use the Domo SAP HANA ODBC Plugin to connect to your SAP HANA data.


 Prerequisites
---------------


* Windows 10 64-bit operating system
* Domo Workbench
* SAP HANA ODBC Driver
* SAP HANA Plugin

Installing the SAP HANA ODBC Driver
-------------------------------------

You can download the SAP HANA ODBC driver from SAP Support Package Stack.


 1. Launch hdbsetup.exe in HDB\_CLIENT\_WINDOWS\_X86\_64. The
 **Install new SAP HANA Database Client**
 option is automatically selected.

2. Click
 **Install**
 and wait for the installation to finish.

3. Click
 **Finish**
 .


 Installing the SAP HANA Data Provider Plugin in Domo Workbench
----------------------------------------------------------------

All Workbench plugins are contained within Dynamic Link Libraries (DLLs). You can add plugins to Workbench by selecting the desired DLL on your machine or network.

##
 Adding SAP HANA plugin to Workbench

*Note:**
 Your SAP HANA plugin must be located in a subdirectory of the chosen directory.

. Click

in the left-hand icon bar.
2. Click
 **Plugins**
 in the
 **More**
 pane. (If you do not see this pane, click

to expand it.) The
 **Plugin Manager**
 opens.
3. Under
 **Register new plugins**
 click the ellipsis (
 **...**
 ) next to the
 **Search path**
 field.
4. On your machine or network, locate and open the folder that contains a folder with all DLLs of SAP HANA Plugin.
5. Click
 **Add**
 after you have chosen your directory.

Connecting to the SAP HANA Data
---------------------------------


###
 Creating a SAP HANA DataSet job in Workbench 5.1

1. Click the

icon in the left-hand icon bar.


 2. Click the
 **+**
 button in the top right corner of the jobs listing pane.


 3. Select the desired account (Domo instance) in the
 **Domo Domain**
 dropdown menu. If you have only one account set up, that account is already chosen for you and the menu is unavailable.


 4. In the
 **Name**
 field, enter a name for the DataSet Job.


 This is the name of the job as it appears in Workbench,
 *not*
 the name of the uploaded DataSet in Domo.


 5. In the
 **Transport Type**
 menu, select
 **SAP HANA Data Provider**
 .


 6. In the
 **Reader Type**
 menu, select
 **Database Query**
 .


 7. In the
 **DataSet Name**
 field, enter the name of the DataSet. This is the name of the uploaded DataSet in Domo. This is the
 *only*
 setting you can change after saving the new job.


 8. In the
 **DataSet Type**
 field, select the type of DataSet in the dropdown.


 The DataSet type you select or enter here is reflected as the connector type in Domo after you execute the job.


 9. Enter a description for the DataSet if desired.


 This is the description of the DataSet as it appears in Domo.


 10. Click
 **Create**
 .


 A new SAP HANA DataSet Job is added to the list of jobs for the currently authenticated account. Note that after creating the job, you cannot edit any of the settings you just configured except for the DataSet name. If you want to change any of the other settings, you must create a new job.


 11. Click the
 **Configure**
 subtab.


 12. Click the
 **Edit**
 button under "Source." A panel opens with options for configuring your SAP HANA connection and defining your query.


 13. In the
 **Connection Type**
 field, select a connection option.


 The following table describes the available options:

  |  |
| --- | --- |
| **Option**  | **Description**  |
|
 System DSN
  |
 Select your SAP HANA DSN.
  |
|
 Connection Builder
  |
 Enter details for your SAP HANA connection, such as login credentials, server URL, database name, and port.
  |
|
 Connection String
  |
 Enter a single string for your connection.
  |

14. (Conditional) Do one of the following:

 If you selected
 **System DSN**
 as your
 **Connection Type**
 ...
	1. In the
	 **System DSN**
	 menu, select the desired system DSN from those available in your system. Please note that only the DSNs created for SAP HANA ODBC driver will be listed in the options.
	2. (Conditional) If this DSN connection requires credentials to connect, set
	 **Required Credentials**
	 to
	 **On**
	 , then enter your username and password in the appropriate fields. Otherwise set
	 **Required Credentials**
	 to
	 **Off**
	 .
* If you selected
 **Connection Builder**
 as your
 **Connection Type**
 ...

i. Enter the appropriate information in the fields. Some parameters may or may not be required, depending on your connection.


 You can use the following table for reference:

  |  |
| --- | --- |
| **Field**  | **Description**  |
|
 Server
  |
 Specify the server name or URL for your database.
  |
|
 Database
  |
 Specify the name of your database to access.
  |
|
 Port
  |
 Enter the port number where your database is found. The default port in the SAP HANA plugin is 30015
  |
|
 Username
  |
 Specify the username you use to connect to your database.
  |
|
 Password
  |
 Specify the password you use to connect to your database.
  |
|
 Requires 32-bit Execution
  |
 Select this check box if you want to use 32-bit SAP HANA Driver for connection. Please note that you will need a 32-bit SAP HANA Driver already installed on the system.
  |


* If you selected
 **Connection String**
 as your
 **Connection Type...**

i. Enter a connection string to connect to the data source.


 ii. Select this check box
 **Requires 32-bit Execution**
 if you want to use the 32-bit SAP HANA Driver.


 15.   Click
 **Apply**
 .


 End-to-end tracing
--------------------

The SAP HANA plugin support end-to-end trace functionality of SAP HANA database. Every connection made using the plugin with the SAP HANA Database has 2 session variables: APPLICATION and APPLICATIONUSER. By default, SAP HANA plugin sets the
 **APPLICATION**
 session variable as
 **DOMO**
 and
 **APPLICATIONUSER**
 session variable as-


 a.
 **Windows user**
 , if the workbench Job is set to use impersonation


 b.
 **Domo user**
 otherwise


 If you want to explicitly specify the values for the session variables (APPLICATION and APPLICATIONUSER session variables), you can use any of the following approaches:

 ###
 Adding the session variables to the connection string

You can select the connection type as Connection String, and add the required session variables to the connection string. More information on setting a session variable in HANA connection strings can be found at the SAP Help Portal as

Setting Session-Specific Client Information

.


 Example connection string:


 DSN=HANADataSource;UID=myUser;PWD=myPassword;sessionVariable:APPLICATION=myapp;sessionVariable:APPLICATIONUSER=user1

 ###
 Setting up the DSNs with the session variable

DOMO Workbench relies on an ODBC Data Source Name (DSN) when connecting to a database. The data source is defined by the end user in the ODBC Administrator, which in turn calls the SAP HANA ODBC driver.


 1. From your Windows 10 desktop, click the
 **Start**
 Button and search for ODBC Data Sources. Click ODBC Data Sources (64-bit).


**Note:**

An ODBC Data Source is NOT the same thing as a Domo DataSet.

2. From the
 **ODBC Source Administrator**
 window, select
 **HANA Service**
 and click
 **Add….**

3. Select the SAP HANA ODBC driver
 **(HDODBC)**
 and click
 **Finish**
 .

4. Enter a name for the data source, host IP, instance number or port number for your SAP HANA database.

5. Click the
 **Test Connection**
 button to check if the configurations are correct. You will see a success message as below if the DSN is configured correctly.

6. Once it is configured, Click on
 **Advanced**
 .


 7. Click
 **Add**
 .


 8. In the
 **Add/Modify Connection**
 window, enter the
 **SessionVariable:APPLICATION**
 connection property.


**Note:**

SessionVariable is case insensitive.


 9. Similarly, add
 **SessionVariable:APPLICATIONUSER**
 connection property.


**Note:**

The APPLICATIONUSER can be the Domo user you are logged in as. It is not necessary to be the database user.

10. Your session variables will appear like this.


