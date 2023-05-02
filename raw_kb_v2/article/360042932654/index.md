

Intro
-------

In the Workbench application, you can connect to your Domo server; configure settings for creating DataSet Jobs; import and export job files; preview, schedule, validate, and run jobs; etc.


 This topic discusses the user interface components of Workbench.


 Interface Overview
--------------------

The user interface in Workbench 5 is quite simple. A vertical bar on the left side of the screen contains a number of different icons. Each icon provides access to a different tab for creating jobs, seeing job status, configuring security options, etc.

Some of these tabs consist of only one pane, while others (such as the
 **More**
 tab shown in the preceding screenshot) contain an additional pane that allows you to navigate between subtabs. You can hide this additional pane for a tab by clicking the

icon at the top of the icon bar.


 You can use the following table to find out more about the icons in the icon bar and their associated tabs:


 Icon
  |
 Name
  |
 Description
  |
| --- | --- | --- |
|

|
 Toggle Menu
  |
 Hides/shows the additional navigation pane that appears for certain tabs (such as the
 **Accounts**
 and
 **More**
 tabs).
  |
|

|
 Home
  |
 Opens the
 **Home**
 tab, which shows you the status and success rates for executed jobs.
  |
|

|
 Accounts
  |
 Opens the
 **Accounts**
 tab, in which you can add new accounts, reauthorize or delete accounts, and specify additional account configuration options.
  |
|

|
 Jobs
  |
 Opens the
 **Jobs**
 tab, in which you can add and configure DataSet jobs as well as see information for jobs you have added.
  |
|

|
 More
  |
 Opens the
 **More**
 tab, which provides access to many additional options, such as security settings, a list of registered plugins, import and export options, a log viewer, etc.
  |
|

|
 Preview Window
  |
 Opens the
 **Preview Window**
 tab, which allows you to open previews for any job which you have already previewed from the
 **Jobs**
 tab. A numeral next to the icon indicates that this number of jobs have previews available.
  |
|

|
 Help
  |
 Opens the
 **Help**
 tab, from which you can access various Domo help resources, such as videos, Knowledge Base articles, etc.
  |

Each of these panes is described in greater detail in continuation.

##
 Home Tab

You can access the
 **Home**
 tab by clicking

in the icon bar. In this tab, you can view the status for all DataSet jobs you have executed. The tab shows the number of total executions, the number of total rows of data uploaded to Domo, the amount of data uploaded, and the average success rate.


###
 Accounts Tab

You can access the
 **Accounts**
 tab by clicking

in the icon bar.

In this tab, you can do all of the following:

 Add accounts for Domo instances to which you have access by clicking the + button above the accounts list and filling in the requested information.
* View details for different accounts by clicking the desired account name in the list on the left-side pane.
* Change the Job Check Interval for the account (i.e. the time in minutes in which Workbench checks to see if jobs are running).
* Specify whether certificate errors for the account are ignored.
* Reauthorize accounts for which your credentials may have changed.
* Revert back to the previous account settings after you have reauthorized an account (by clicking the

icon at the top of the screen—only available before you save changes).
* Delete accounts you no longer need (by clicking the

icon at the top of the screen).
* View the agent ID. This is the ID of the Domo user and machine name combination stored in Domo. This is not changeable but may be required by support or engineering teams for troubleshooting.

For more information, see

Adding an Account in Workbench 5

.

##
 Jobs Tab

You can access the
 **Jobs**
 tab by clicking

in the icon bar.

###
 Jobs List

When you open the
 **Jobs**
 tab, a list of all DataSet jobs you have added appears in the pane on the left side of the window, whether they have been executed or not. Each job in the list has an icon that shows you the status of that job. Icons are as follows:


 Icon
  |
 Description
  |
| --- | --- |
|

|
 Changes have been made to the job configuration that have not been saved.
  |
|

|
 The job is saved, but no preview has been opened.
  |
|

|
 The job is saved and a preview has been run.
  |

Details for the currently selected job in the list appear in the right-side pane.

For any job, you can view all of the following information:

 The status of the job ("Ready," "Running," "Disabled," or "Error").
* The Domo domain (account) the job is associated with. When the job is executed, the resulting DataSet is sent to this Domo domain.
* The name of the job. You can rename a job by double-clicking the row for the job then giving the job a new name in the
 **Overview**
 subtab.
* The DataSet type. The type of DataSet that will be pushed to Domo when this job is executed (Excel, JIRA, etc.). You specify the DataSet type for a job when you create that job. Once you create the job, you
 *cannot*
 go back to change the DataSet type.
* The date and time of the last execution of this job.
* The successful/unsuccessful message from when you last executed the job.
* The next scheduled run for the job (which appears blank if you have not set up scheduling for this job; for more information, see

Scheduling a Job in Workbench 5

).


####
 New Jobs Pane

When you click the "+" button in the
 **DataSet Jobs**
 pane, a
 **New Jobs**
 pane appears.

Here you can specify the details for your job, including the following:


 Field/Menu
  |
 Description
  |
| --- | --- |
|
 Domo Domain
  |
 The Domo instance you want the job to be associated with. When you execute the job, the resulting DataSet will appear in this domain. This menu is populated from accounts you add in the
 **Accounts**
 tab.
  |
|
 Job Name
  |
 The name of this job as it appears in Workbench. (You specify the name of the resulting DataSet in Domo in the
 **DataSet Name**
 field.)
  |
|
 Transport Type
  |
 The type of transport, which determines how this data source is brought into Workbench. Options are different for each transport type. Note that you do not specify additional options (e.g. local files, JIRA queries, etc.) until after you have created the job. Transport types are as follows:


|
 Transport Type
  |
 Description
  |
 Applicable Data Sources
  |
| --- | --- | --- |
|
 External Process File Provider
  |
 Used when you are using a third-party application to pull data into Domo using a script. When you use this method, you select the executable file for your application, specify arguments, and enter a file path for the output. For CSV files, you can also set a
 **Direct Upload**
 option.
  |
 Virtually any kind of executable file can be converted into an

Excel

,

CSV

,

QuickBooks

,

JSON

, or

XML

data source in Workbench. For example, you could use this method to convert a MySQL database file to an Excel file. You could then specify options for the Excel file and send it to Domo.
  |
|
 FTP/SFTP File Provider
  |
 Lets you retrieve files via FTP, SFTP (SSH-FTP) or FTPS (FTP-SSL).
  |
 This method is used for transporting

Excel

,

CSV

,

QuickBooks

,

JSON

, or

XML

data sources into Domo.
  |
|
 JIRA Connection Provider
  |
 Used to send JIRA or JSON data to Domo.
  |
 This method is used for transporting

JSON

data into Domo.
  |
|
 Local File Provider
  |
 Lets you select a file from your machine or a network.
  |
 This method is used for transporting

Excel

,

CSV

,

QuickBooks

,

JSON

, or

XML

data sources into Domo.
  |
|
 ODBC Connection Provider
  |
 Used to send data to Domo using an ODBC connection.
  |
 Any data from a database
  |
|
 OLEDB Connection Provider
  |
 Used to send data to Domo using an OLEDB (OLAP) connection.
  |
 Any data from a database
  |

|
|
 Reader Type
  |
 Determines the reader (data source) type for the data you want to bring into Domo. Different configuration options are available depending on the reader type you select. Available reader types include the following:


|
 Reader Type
  |
 Description
  |
 Available For...
  |
| --- | --- | --- |
|
 CSV
  |
 When CSV is the selected reader type, you can specify the delimiter and escape sequence characters and configure advanced settings.
  |
 External Process File Provider, FTP/SFTP File Provider, Local File Provider
  |
|
 Excel
  |
 When Excel is the selected reader type, you can specify the range of data you want to send to Domo. This can be a specific range of cells, a named range, or a dynamic range.
  |
 External Process File Provider, FTP/SFTP File Provider, Local File Provider
  |
|
 QuickBooks
  |
 When QuickBooks is the selected reader type, you can choose from any of a variety of different reports. You can also instruct Workbench to stop QuickBooks if connection errors are encountered.
  |
 External Process File Provider, FTP/SFTP File Provider, Local File Provider
  |
|
 XML
  |
 When XML is the selected reader type, you can specify the desired data node and also indicate nodes that should be ignored.
  |
 External Process File Provider, FTP/SFTP File Provider, Local File Provider
  |
|
 JSON
  |
 When JSON is the selected reader type, you can specify the desired data node, the delimiter, and flattening options.
  |
 External Process File Provider, FTP/SFTP File Provider, Local File Provider, JIRA Connection Provider
  |
|
 JIRA
  |
 When JIRA is the selected Data Source type, you can unselect attributes from the data source that you do not want to be included in the DataSet. You can also add new attributes.
  |
 JIRA Connection Provider
  |
|
 Database Query
  |
 When Database Query is the selected Data Source type, you can configure queries and replacement variables.
  |
 ODBC Connection Provider, OLEDB Connection Provider
  |

|
|
 DataSet Name
  |
 The name of the DataSet after it is imported into Domo.
  |
|
 DataSet Type
  |
 The connector that represents this data after it is imported into Domo.
  |
|
 DataSet Description (optional)
  |
 The description that accompanies this DataSet after it is imported into Domo.
  |


####
 Job Configuration Pane

If you double-click a job in the Jobs List pane, a configuration appears with six subtabs:
 **Overview**
 ,
 **Configure**
 ,
 **Schedule**
 ,
 **Schema**
 ,
 **Notifications**
 , and
 **History**
 . These subtabs provider various options for configuring your data before sending it to Domo.


 In all subtabs, the following icons appear in the top right corner:

 opens a preview of the currently selected job. After you have opened a preview for a job, you can quickly see that preview again by clicking

in the icon bar on left side of Workbench then selecting the desired job in the list in the left-hand pane.
* saves the current configuration for the selected job.
* reverts back to the previous configuration for the currently selected job.
* executes the currently selected job (i.e. pushes the data to Domo).
* deletes the currently selected job.


#####
 Overview Subtab

In the
 **Overview**
 subtab for a DataSet job, you can see all of the following data:

 Statistics related to the last job execution, such as date and time, status, number of rows updated, etc.
* Details specified for the job when it was initially created, such as the associated domain, job name, transport and reader type, DataSet description, etc. Of these specifications, the only ones you can change in this screen are the name of the job, the DataSet description, and the DataSet to which you are pushing data (as described in the next paragraph). If you want to change the domain, transport/reader type, or DataSet type, you must create a new job with these changes.


 Under "DataSet Name," you can change the Domo DataSet to which data is being pushed. By default, Workbench pushes your data to a new DataSet with the name you specified when you created this job. However, if you want to push data to an existing DataSet, you can click
 **Browse**
 and then pick the desired DataSet from the
 **Select DataSet**
 dialog. This dialog lists all DataSets you have access to that have been pushed from Workbench. You can filter the DataSets in this list by type or owner and/or search for a given DataSet by name.


#####
 Configuration Subtab

In the
 **Configuration**
 subtab for a DataSet job, you can configure various options for your job.

You can use the following table to learn more about each option:


 Option
  |
 Description
  |
| --- | --- |
|
 Source
  |
 Lets you configure the data source for the job. Options differ depending on the transport and reader type you selected when you created the job. For example, if you had specified a locally situated Excel file as your data source, you would select the desired file from your machine here. For more information about options for all transport and reader types, see

Source and Processing Options

.
  |
|
 Processing
  |
 Lets you configure processing options for the job. Options differ depending on the transport and reader type you selected when you created the job. For example, for a CSV file, you can configure delimiters, specify how missing fields are handled, and so on. For more information about options for all transport and reader types, see

Source and Processing Options

.
  |
|
 Update Method
  |
 Determines whether new data replaces the existing data in the DataSet or is appended to (added onto) the existing data when updating.
  |
|
 Add a Transform
  |
 Lets you add transforms to your data source. Transforms allow you to modify your data locally before uploading it to Domo. A variety of transforms is available. You can add calculated fields to your data, join columns, set up encryption, and so on. For more information about transform types, see

Transforms

.
  |
|
 Requires Impersonation
  |
 Lets you run this job as a specific Active Directory user. When this box is checked, Workbench requests non-default credentials for all DataSet Jobs (that is, the
 **Requires Impersonation**
 toggle for all Jobs is turned off and cannot be switched back on). This option is only available if you have administrator privileges.
  |
|
 Error Handling
  |
 Determines what happens when errors are encountered in a DataSet Job. Options include the following:
 * **Replace invalid cells with NULL value**
 . When invalid cells are encountered, the values are replaced with a "NULL" value.
* **Skip entire row if it contains invalid data.**
 When invalid cells are encountered, the rows in which they are found are skipped.
* **Abort job on invalid data error**
 . When invalid cells are encountered, the entire DataSet job is aborted.
 |
|
 When to Terminate Long-Running Jobs
  |
 Lets you specify a time frame (in hours) in which a long-running job is to be terminated. Options include the following:
 * **Upload even if data hasn't changed**
 . Lets you upload data to Domo even though the data has not changed. Useful when you want the DataSet freshness in Domo to be updated.
* **Clear DataSet in Domo Job returns zero rows**
 . Lets you clear the DataSet in Domo if zero rows are returned when a job runs. If disabled, Workbench does not send a command to Domo to clear out data in the DataSet. If you have a process where you want to upload data in a table after data in another table has been updated, you could disable this option and add some script in your query that looks at the "status" table, running the query if the data is ready.
* **Allow schema changes**
 . Allows schema changes to be pushed to Domo when the job is left unattended.
* **Wait for data preparation**
 . Determines whether a DataSet must finish indexing before the job is completed.
* **Disable job**
 . Disables the job if the specified time limit is exceeded.
 |


#####
 Scheduling Subtab

In the
 **Scheduling**
 subtab for a DataSet job, you can choose how frequently to run a job.

Available options include the following:

 **Update manually**
 . The job does not execute on a schedule; you must run the job yourself from Workbench.
* **Update when file is changed**
 . The DataSet job runs every time the file is updated. Not available for database data sources.
* **Update on a schedule**
 . The job runs on a schedule you configure. Options range from
 **Every 15 Minutes**
 to
 **Every Month**
 .
* **Only run during a specified window**
 . The job runs on your specified schedule but only during a certain timeframe within that schedule. For example, you could instruct the DataSet to run once an hour but only between the hours of 9:00 a.m. and 5:00 p.m.

For more information about updating a DataSet, see

Updating or Refreshing the DataSet for a KPI Card

.


 For more information about setting a schedule, see

Scheduling a Job in Workbench 5

.

####
 Schema Subtab

In the
 **Schema**
 subtab for a DataSet job, you can make changes to your schema configuration before uploading your data to Domo, such as changing column names and data types, including or excluding certain columns, etc.

You can use the following table to learn more about the components of the
 **Schema**
 interface:


 Option
  |
 Description
  |
| --- | --- |
|
 Source Column
  |
 The name of this column in the original data source. You cannot interact with a source column; any changes you make are applied to the
 *destination*
 column (i.e. the column in the Domo DataSet after you execute this DataSet job).
  |
|
 Destination Column
  |
 The name of this column in the Domo DataSet. Any changes you make to a column are applied to this column, not the column from the original data source. You can rename a destination column by clicking in the name field and typing in the desired name.
  |
|
 Data Type
  |
 Indicates the data type for the given column. You can change a data type by clicking in the field and selecting the new data type from the menu. The following data types are available:
 * LONG

stores numbers as numeric values, including fractional and whole numbers.
* DOUBLE

stores double-precision floating point number values.
* DECIMAL

stores numbers as decimal values.
* STRING

stores alphanumeric characters as text.
* DATETIME

stores year, month, day, hour, minute, and second values.
* DATE

stores year, month, and day values.
* TIME

stores hour, minute, and second values.
 |
|
 Include
  |
 Determines whether data for this column appears in the DataSet in Domo. You can choose which columns of data are uploaded by checking or unchecking
 **Include**
 for each column heading.
  |
|
 Lock Data Type
  |
 When this box is checked for a column, users cannot change the data type for that column in Domo.
  |


#####
 Notifications Subtab

In the
 **Notifications**
 subtab for a DataSet job, you can specify who in your Domo instance is notified when jobs are completed successfully and/or fail. For any user in your instance, you can specify whether he/she is notified upon job success, failure, or both. For more information about notifications, see

Setting Notifications in Workbench 5

.


#####
 History Subtab

In the
 **History**
 subtab for a DataSet job, you can click
 **Open on the web**
 to view the
 **History**
 tab for the DataSet in the Domo instance associated with the job. For more information about this tab in Domo, see

Viewing DataFlow Details

. You can also view local logs for this job by clicking
 **Open log viewer**
 .

###
 More Tab

You can access the
 **More**
 tab by clicking

in the icon bar. This tab is broken down into a number of subtabs, as follows:


 Subtab Name
  |
 Description
  |
| --- | --- |
|
 Proxy
  |
 Lets you specify settings for more securely connecting to Domo using a proxy server.
  |
|
 Settings
  |
 Lets you configure settings for managing who can run and edit jobs on this machine, optimizing system performance, and installing automatic updates.
  |
|
 Plugins
  |
 Provides a list of registered plugins and also lets you register new plugins.
  |
|
 Import
  |
 Lets you import DataSet jobs you previously exported.
  |
|
 Export
  |
 Lets you back up and export DataSet jobs.
  |
|
 Log viewer
  |
 Lets you open the Log Viewer so you can get more information about your job runs.
  |
|
 Legacy schedules
  |
 Provides information about managing job schedules you created using older versions of Workbench.
  |

All of these subtabs are described in more detail in continuation.

####
 Proxy Subtab

In the
 **Proxy**
 subtab, you can specify settings for more securely connecting to Domo using a proxy server.

*Note:**
 When you initially connect to Domo via Workbench, Workbench leverages your Windows system proxy settings; you cannot enter your proxy settings manually at this time. However, after you connect to Domo for the first time, you can manually configure the proxy settings in the
 **Proxy**
 tab.


 You can refer to the following table to find out more about the components in this tab:


 Option
  |
 Description
  |
| --- | --- |
|
 No Proxy Server
  |
 Does
 *not*
 use a proxy server to connect.
  |
|
 Automatically Detect Proxy Settings
  |
 Determines your proxy settings automatically.
  |
|
 Use System Proxy Settings
  |
 Determines your proxy settings based on your system proxy settings.
  |
|
 Manual Proxy Configuration
  |
 Lets you manually specify the proxy server information to use in connecting. You can do this only after initially connecting to Domo via Workbench. (The first time you connect, your system proxy settings are used.)


 You will need to enter the server address and port.


 If the proxy server requires credentials, set
 **Requires Authentication**
 to
 **On**
 , then specify the username and password.
  |

After you enter proxy credentials, you can test your connection by entering a test Domo URL and clicking
 **Test Proxy**
 . The color of the icon next to this button indicates whether the proxy settings have been validated.

####
 Settings Subtab

In the
 **Settings**
 subtab, you can  configure settings for managing who can run and edit jobs on this machine, optimizing system performance, and installing automatic updates.

You can refer to the following table to find out more about the components in this tab:


 Option
  |
 Description
  |
| --- | --- |
|
 Only run locally managed jobs
  |
 If checked, Workbench runs only DataSet Jobs managed locally,
 *not*
 those on networks.
  |
|
 Require impersonation credentials for all jobs
  |
 If checked, Workbench requests non-default credentials for all DataSet Jobs (that is, the
 **Requires Impersonation**
 toggle for all Jobs is turned off and cannot be switched back on). This option is only available if you have administrator privileges.
  |
|
 Run job process as Below Normal priority
  |
 Sets this job to "Below Normal" priority in your Windows Task Manager, which may be helpful in improving your processing speed when many different processes are running at once.
  |
|
 Limit concurrent jobs
  |
 Lets you limit the number of DataSet Jobs that may run at the same time.
  |
|
 Install updates automatically
  |
 If checked, Workbench installs all updates automatically.
  |


#####
 Plugins Subtab

In the
 **Plugins**
 tab, you can view all of the plugins in Workbench 5, with their names, publishers, version numbers, descriptions, and assembly names. You can also add a plugin to your registered plugins list by entering a search path.

For more information about adding plugins to Workbench, see

Managing Plugins in Workbench 5

.

####
 Import Subtab

In the
 **Import**
 tab, you can import jobs you previously exported from Workbench (in the
 **Export**
 tab). In the top menu, you select the Workbench account you want the imported jobs to be associated with. You can then locate the files on your machine that you want to import by clicking
 **Browse**
 and navigating to the files. Files that you select appear in the
 **Jobs to import**
 list at the bottom of the pane. Once your list is ready, click
 **Import**
 to pull the files into Workbench.

For more information about importing jobs, see

Backing Up Workbench 5 Jobs

.

####
 Export Subtab

In the
 **Export**
 tab, you can export jobs in JSON format. You first choose the folder you want to save your jobs too. If you want a different save folder to be created for each account (Domo instance), you can indicate that here. You then check the boxes for all the jobs you want to export, then click
 **Export Jobs**
 .

For more information about exporting jobs, see

Backing Up Workbench 5 Jobs

.

####
 Log Viewer Subtab

In the
 **Log Viewer**
 tab, you can open the logs for your DataSet jobs by clicking
 **Open log viewer**
 . Once in the log viewer, you can filter the logs by Domo domain, job ID, and start/end date. You can choose whether or not to include service logs by checking or unchecking the
 **Include Service Logs**
 box. You can also package logs as a zip file by clicking
 **Zip Logs**
 .


#####
 Legacy Schedules Subtab

Because legacy schedules are not supported in Workbench 5, you'll need to manage scripts and schedules if you want to use them. You can do this using the Workbench CLI tool. The
 **Legacy Schedules**
 tab provides access to information about this tool.

###
 Preview Window Tab

You can open the
 **Preview Window**
 tab by clicking

in the icon bar. This tab allows you to open previews for any job which you have already previewed from the
 **Jobs**
 tab. A numeral next to the icon indicates that this number of jobs have previews available (for example, if the icon appeared as

, this would indicate that previews had been opened for two different jobs in the
 **Jobs**
 tab).


 When you click on the

icon, two panes appear. The listing pane on the left lets you choose the job you want to preview. The pane on the right is divided into two sections—an
 **Output**
 section that provides log data for the preview, and a
 **Data Preview**
 section that shows the columns for your data source.


####
 Help Tab

You can open the
 **Help**
 tab by clicking

in the icon bar. This opens the
 **Help**
 tab, from which you can access various Domo help resources, such as videos, Knowledge Base articles, etc.

Source and Processing Options
-------------------------------

In the
 **Configure**
 subtab for a DataSet job (which you access by double-clicking on a job in the listing in the
 **Jobs**
 tab), you configure the data source (i.e. where the file is coming from) and the processing options (i.e. properties for the selected data source).

##
 Source Options

Configure the
 **Source**
 for a DataSet job to specify where the data for that job is coming from.

Although you configure the source
 *type*
 for a job when you create that job (by selecting a
 **Transport Type**
 ), you indicate the actual data source in the
 **Configure**
 subtab for the job, as shown above. Options are different for each source/transport type.

###
 Local File Provider

Use the
 **Local File Provider**
 transport type to pull

Excel

,

CSV

,

QuickBooks

,

JSON

, and

XML

data sources into Domo from a local or network location. When you select this option when creating a DataSet job, the
 **Source**
 dialog in the
 **Configure**
 subtab lets you choose the file path for the local file.


 The following screenshot shows the options available when this method is selected:

You can use the following table to learn more about these options:


 Option
  |
 Description
  |
| --- | --- |
|
 File Path
  |
 Specifies the file path for the local file you want to pull into Workbench.
  |
|
 File on an External Network
  |
 Specifies whether the file is located on a network path (either a mapped drive or fully qualified path).
  |
|
 Network Username/Password (not shown in screenshot)
  |
 Specifies the username and password for the network the file is located on, if any.
  |


####
 SFTP File Provider

Use the
 **SFTP**
 transport type to pull

Excel

,

CSV

,

QuickBooks

,

JSON

, and

XML

data sources into Domo via FTP, SFTP (SSH-SFTP), or FTPS (FTP-SSL). When you select this option as your transport type when creating a DataSet job, the
 **Source**
 dialog in the
 **Configure**
 subtab provides options for configuring the server and SSL Certificate settings.


 The following screenshot shows the options available when this method is selected:

You can use the following table to learn more about these options:


 Option
  |
 Description
  |
| --- | --- |
|
 Server
  |
 Specifies the server URL for your FTP server.
  |
|
 Port
  |
 Species the port number for your FTP server.
  |
|
 Username
  |
 Specifies your username for connecting to the server.
  |
|
 Password
  |
 Specifies your password for connecting to the server.
  |
|
 Protocol
  |
 Determines whether you are retrieving data via FTP, SFTP, or FTPS.
  |
|
 Host Key Fingerprint (SSL Certificate Settings)
  |
 Specifies the host key fingerprint for your SSL certificate, if one is required. Host fingerprints are used to ensure that the SFTP server is the same one you are expecting.
  |
|
 Allow untrusted server certificates
  |
 Lets you upload SSL certificates that don't meet trust requirements. If you are using a self-signed certificate, you must check this box.
  |
|
 PKCS#8 File (SSL Certificate Settings)
  |
 Specifies the PKCS#8 file for your SSL certificate. This is used alongside username and password credentials for more secure authentication.
  |
|
 Password (SSL Certificate Settings)
  |
 Specifies the password for your SSL certificate.
  |
|
 Remote File
  |
 Specifies the file path for the file you want to connect to.
  |


####
 External Process File Provider

Use the
 **External Process File Provider**
 transport method when you are using a third-party application to pull

Excel

,

CSV

,

QuickBooks

,

JSON

, and

XML

data into Domo using a script. When you select this option as your transport type when creating a DataSet job, the
 **Source**
 dialog in the
 **Configure**
 subtab lets you select the executable file for your application, specify arguments, and enter a file path for the output. For CSV files, you can also set a
 **Direct Upload**
 option. Virtually any kind of executable file can be converted into a data source in Workbench. For example, you could use this method to convert a MySQL database file to an Excel file. You could then specify options for the Excel file and send it to Domo.


 The following screenshot shows the options available when this method is selected:

You can use the following table to learn more about these options:


 Option
  |
 Description
  |
| --- | --- |
|
 Program Executable
  |
 Lets you select the executable application file to use to pull data into Domo.
  |
|
 Arguments
  |
 Specifies arguments for your script.
  |
|
 Output File Path
  |
 Specifies the file path for the output. The file type should be the same as the data source type you selected in the
 **Workbench DataSet Job Creation Wizard**
 .
  |
|
 Direct Upload (CSV only) (not shown in screenshot)
  |
 Lets you turn on Direct Upload for this job. For more information, see

Setting Up Direct Upload in Workbench

.
  |


####
 OLEDB Connection Provider

Use the
 **OLEDB**
**Connection Provider**
 transport method when you want to send data to Domo using an OLEDB (OLAP) connection. When you select this option as your transport type when creating a DataSet job, the
 **Source**
 dialog in the
 **Configure**
 subtab provides options to help you connect to an OLAP data source.


 The following screenshot shows the options available when this method is selected:

You can use the following table to learn more about these options:


 Option
  |
 Description
  |
| --- | --- |
|
 OLAP Connection
  |
 Opens the
 **Connection Builder**
 , where you specify all of the details of your OLAP connection.
  |
|
 Requires 32b Execution (not shown in screenshot)
  |
 Determines whether this file transport requires 32b execution.
  |
|
 Data Source
  |
 Specifies the server where the database is located.
  |
|
 Provider
  |
 Select a provider, either MSOLAP or Essbase.
  |
|
 Catalog
  |
 Specifies the Initial Catalog for your OLAP connection.
  |
|
 Username
  |
 Specifies the username for this OLAP connection.
  |
|
 Password
  |
 Specifies the password for this OLAP connection.
  |

For more information about connecting to OLAP data, see

Connecting to an OLAP Cube

.

###
 ODBC Connection Provider

Use the
 **ODBC**
**Connection Provider**
 transport method when you want to send data to Domo using an ODBC connection. When you select this option as your transport type when creating a DataSet job, the
 **Source**
 dialog in the
 **Configure**
 subtab provides options to help you connect to an ODBC data source.


 There are three different ways to connect to ODBC data. You can select a system DSN, enter details for your connection, or enter a single connection string. You choose the desired connection option in the
 **Connection Type**
 menu.

####
 System DSN

With the
 **System DSN**
 option, you select the DSN to use for the desired DataSet from all of the DSNs available in your system. You can indicate whether credentials are required.


**Note:**
 When uploading data from an ODBC DataSet, you must specify an existing Data Source Name (DSN). You can create a DSN using the Windows ODBC Data Source Administrator. (You can access the the Windows ODBC Data Source Administrator by entering "ODBC" in the Start Menu search, then selecting "Data Sources (ODBC)".) For more information about creating a DSN, refer to the Windows ODBC Help (by searching for "ODBC" in Windows Help and Support) or view the training video in

Workbench 5

. For information about configuring a MySQL driver, see

Workbench 5 FAQs

.


 For information about defining DataSet names (DSNs) and using Open Database Connectivity (ODBC) to access data, refer to documentation for ODBC.


 The following screenshot shows the options available when
 **System DSN**
 is selected as the
 **Connection Type**
 :

You can use the following table to learn more about these options:


 Option
  |
 Description
  |
| --- | --- |
|
 System DSN
  |
 Lets you select the DSN to use for the desired DataSet from all of the DSNs available in your system.
  |
|
 Requires Credentials
  |
 Determines whether credentials are required for the specified DSN.
  |
|
 Username
  |
 Specifies the username you use to connect to the database.
  |
|
 Password
  |
 Specifies the password you use to connect to the database.
  |

For more information, see

Connecting to ODBC data

.

####
 Connection Builder

With the
 **Connection Builder**
 option, you enter the details for your ODBC connection, such as login credentials, driver, server URL, etc.


 The following screenshot shows the options available when
 **Connection Builder**
 is selected as the
 **Connection Type**
 :

You can use the following table to learn more about these options:


 Option
  |
 Description
  |
| --- | --- |
|
 Driver
  |
 Specifies the name of the driver used to access the database.
  |
|
 Server
  |
 Specifies the server name or URL for the database.
  |
|
 Port
  |
 Specifies the port number where the database is found. The default port is the MySQL port.
  |
|
 Database
  |
 Specifies the name of the database to access.
  |
|
 Timeout
  |
 Lets you select the desired timeout value in seconds (60=1 minute) that the connection is kept alive before it is refreshed from the DataSet.
  |
|
 Username
  |
 Specifies the username you use to connect to the database.
  |
|
 Password
  |
 Specifies the password you use to connect to the database.
  |
|
 Connection Parameters
  |
 Lets you specify additional parameters for connecting to the DataSet.
  |

For more information, see

Connecting to ODBC data

.

####
 Connection String

With the
 **Connection String**
 option, you enter a single string for your ODBC connection.


 The following screenshot shows the options available when
 **Connection String**
 is selected as the
 **Connection Type**
 :

You can use the following table to learn more about these options:


 Option
  |
 Description
  |
| --- | --- |
|
 Connection String
  |
 Lets you enter a connection string to connect to the DataSet.
  |
|
 Requires 32-bit Execution
  |
 Specifies whether this connection requires 32-bit execution.
  |

For more information, see

Connecting to ODBC data

.

###
 JIRA Connection Provider

Use the
 **JIRA**
**Connection Provider**
 transport method when you want to send JIRA or JSON data to Domo. When you select this option as your transport type when creating a DataSet job, the
 **Source**
 dialog in the
 **Configure**
 subtab provides options for entering your JIRA credentials as well as a JQL query.


 The following screenshot shows the options available when this method is selected:

You can use the following table to learn more about these options:


 Option
  |
 Description
  |
| --- | --- |
|
 Username
  |
 Specifies the username used to connect to your JIRA instance.
  |
|
 Password
  |
 Specifies the password used to connect to your JIRA instance.
  |
|
 Server URL
  |
 Specifies the URL of your company's JIRA server.
  |
|
 JIRA Query
  |
 Specifies the query for the JIRA data you want to send to Domo.
  |

For more information, see

Connecting to JSON Data in Workbench 5

.

##
 Processing Options

Configure the
 **Processing**
 options for a DataSet job to specify properties for your data source before it is sent to Domo.

The options that appear when you click
 **Edit**
 are dependent on the reader type you selected when you added the DataSet job. For example, if you selected
 **CSV**
 as the reader type, you are given options for configuring delimiters, specifying start and end rows, etc., whereas if you selected
 **OLAP**
 , options center around writing queries.

###
 CSV

When you select
 **CSV**
 as your reader type when creating a DataSet job, the
 **Processing**
 dialog in the
 **Configure**
 subtab provides options for specifying the delimiter and escape sequence characters and configuring advanced settings.

*Notes:**


* The name and description for a DataSet in Domo can be different than the name and description in Workbench if someone edits the name and description in Domo. (DataSets do not depend on the names and descriptions matching for data uploads to occur properly.)
* A CSV file
 *must*

+ be a text file
	+ have data delimited by a single character

The following screenshot shows the options available when this reader type has been selected:

You can use the following table to find out more about all of these components:


 Option
  |
 Description
  |
| --- | --- |
|
 Field Delimiters
  |
 Specifies the delimiter character to use in the specified CSV file.
  |
|
 Encapsulate Fields With
  |
 Specifies the character to use for encapsulating fields.
  |
|
 Escape Sequence Character
  |
 Specifies the character to use for escaping.
  |
|
 Comment Character
  |
 Specifies the character to use for commenting.
  |
|
 Missing Fields Handling
  |
 Determines whether to generate an error for missing field values or replace the fields with empty values.
  |
|
 First row contains column headers
  |
 Indicates whether file defines column headers in the first row.


 If the file has column headers, they should be defined in the first row.
  |
|
 Ignore starting rows
  |
 Specifies the number of rows to skip at the beginning of the data so you can start importing a specific row.


 The
 **Ignore starting rows**
 field does
 *not*
 include the header row containing the column names.
  |
|
 Ignore ending rows
  |
 Specifies the number of rows to skip at the end of the data.
  |
|
 Text encoding
  |
 Specifies the character encoding used in the CSV file.
  |

For more information about connecting to CSV files, see

Connecting to CSV data

.

###
 Excel

When you select
 **Excel**
 as your reader type when creating a DataSet job, the
 **Processing**
 dialog in the
 **Configure**
 subtab provides options for specifying the range of data you want to send to Domo.

*Note:**
 A Microsoft Excel spreadsheet file
 *must*
 be in a supported file format:

.xlsx

,

.xls

,

.xlsm


 There are three different ways to indicate the desired data range from your chosen Excel file. You can choose a specific range of cells, a named range, or a dynamic range. You choose the desired connection option in the
 **Selection Range**
 menu.

####
 Cell Range

When
 **Cell Range**
 is selected in the
 **Selection Range**
 menu, you can specify the Excel sheet from which you want to pull data, along with the starting cell, ending row, and ending column.


 The following screenshot shows the options available when this has been selected:

You can use the following table to find out more about these components:


 Option
  |
 Description
  |
| --- | --- |
|
 Excel File Password
  |
 Lets you enter the password for this Excel file (if one has been specified).
  |
|
 Sheet Name
  |
 Lets you select the Excel sheet from which you want to pull data.
  |
|
 Starting Cell
  |
 Specifies the first cell in the Excel sheet from which data will be pulled.
  |
|
 Read to Row
  |
 Specifies the ending row for the cell range you want to pull data for.
  |
|
 Read to Column
  |
 Specifies the ending column for the cell range you want to pull data for.
  |
|
 First Row Contains Column Headers
  |
 Determines whether the first row contains column headers. This is important when building cards in Domo because column headers are used to reference the data in those columns. For more information, see

Applying DataSet Columns to Your Chart

.
  |
|
 Add Filenames Column at the End
  |
 Inserts a "File Name" column as the last column in your data source.
  |


#####
 Named Range

When
 **Named Range**
 is selected in the
 **Selection Range**
 menu, you can select a named range from a list. If you have not created any named ranges for this file in Excel, no options appear in this menu.


 The following screenshot shows the options available when this has been selected:

You can use the following table to find out more about these components:


 Option
  |
 Description
  |
| --- | --- |
|
 Excel File Password
  |
 Lets you enter the password for this Excel file (if one has been specified).
  |
|
 Named Range
  |
 Lets you pick a named range from a list.
  |
|
 Continue Until Empty Row
  |
 When checked, Workbench processes the data in the Excel sheet until an empty row is encountered.
  |
|
 First Row Contains Column Headers
  |
 Determines whether the first row contains column headers. This is important when building cards in Domo because column headers are used to reference the data in those columns. For more information, see

Applying DataSet Columns to Your Chart

.
  |
|
 Add Filenames Column at the End
  |
 Inserts a "File Name" column as the last column in your data source.
  |


#####
 Dynamic Range

When
 **Dynamic Range**
 is selected in the
 **Selection Range**
 menu, you can skip a specified number of lines at the end of the Excel sheet.


 The following screenshot shows the options available when this has been selected:

You can use the following table to find out more about these components:


 Option
  |
 Description
  |
| --- | --- |
|
 Excel File Password
  |
 Lets you enter the password for this Excel file (if one has been specified).
  |
|
 Sheet Name
  |
 Lets you select the Excel sheet from which you want to pull data.
  |
|
 Starting Cell
  |
 Specifies the first cell in the Excel sheet from which data will be pulled.
  |
|
 Ignore Ending Rows
  |
 Specifies how many rows at the end of the sheet you want to ignore.
  |
|
 First Row Contains Column Headers
  |
 Determines whether the first row contains column headers. This is important when building cards in Domo because column headers are used to reference the data in those columns. For more information, see

Applying DataSet Columns to Your Chart

.
  |
|
 Add Filenames Column at the End
  |
 Inserts a "File Name" column as the last column in your data source.
  |

For more information about connecting to Excel data, see

Connecting to Excel data

.

###
 XML

When you select
 **XML**
 as your reader type when creating a DataSet job, the
 **Processing**
 dialog in the
 **Configure**
 subtab provides options for specifying the desired data node and also indicate nodes that should be ignored.


 The following screenshot shows the options available when this has been selected:

You can use the following table to find out more about these components:


 Option
  |
 Description
  |
| --- | --- |
|
 Data Node
  |
 Specifies the data node you want to retrieve.
  |
|
 Schema Change Options
  |
 Lets you specify how you want to handle schema changes in your XML. The following options are available:
 * **Only Add Columns**
 . This allows new columns to be added. It does not remove columns that already exist but were not found.
* **Add and Remove Column**
 . The schema will always match the data in the file. Columns will be added and removed as necessary.
* **Lock Schema**
 . No columns will be added or removed.
 |
|
 Ignored Nodes
  |
 Enter the nodes you want to ignore when the job is executed.
  |

For more information about connecting to XML data, see

Connecting to XML Data

.

###
 JSON

When you select
 **JSON**
 as your reader type when creating a DataSet job, you can specify the desired data node, the delimiter, and flattening options.


 The following screenshot shows the options available when this has been selected:

For more information about connecting to JSON data, see

Connecting to JSON Data in Workbench 5

.

###
 Database Query (OLAP and ODBC)

When you select
 **Database Query**

as your reader type when creating a DataSet job, the
 **Processing**
 dialog in the
 **Configure**
 subtab provides options for configuring queries and replacement variables.


 The following screenshot shows the options available when this has been selected:

You can use the following table to learn more about these options:


 Option
  |
 Description
  |
| --- | --- |
|
 Query Execution Timeout
  |
 Lets you specify the desired timeout value in seconds that the connection is kept alive before it is refreshed from the DataSet.
  |
|
 Query
  |
 Lets you enter the query you want to get data.


 |
|
 Replacement Variables/Global Replacement Variables
  |
 Lets you define replacement and global replacement variables for use in your query.


 |

For more information about connecting to databases, see

Connecting to ODBC Data

.

###
 QuickBooks

When you select
 **QuickBooks**
 as your reader type when creating a DataSet job, the
 **Processing**
 dialog in the
 **Configure**
 subtab allows you to choose from any of a variety of different QuickBooks reports. You can also instruct Workbench to stop QuickBooks if connection errors are encountered.

*Note:**
 In order to run QuickBooks jobs, you must authorize Workbench to connect to QuickBooks by clicking the
 **Authorize**
 button in the top right corner of the
 **Processing**
 dialog then selecting your company file.


 You can use the following table to find out more about all of these components.


 Option
  |
 Description
  |
| --- | --- |
|
 Authorize
  |
 Authorizes Workbench to connect to QuickBooks. You will need to select the company file you want to grant access to.
  |
|
 Allow Workbench to stop QuickBooks on connection errors
  |
 If checked, QuickBooks shuts down if Workbench encounters errors while executing a DataSet job.
  |
|
 Report Type
  |
 Lets you select a primary report type. All report types have a number of sub-reports you can choose from.


 Primary report types are as follows:


|
 Report
  |
 Description
  |
| --- | --- |
|
 General Detail Report
  |
 Shows detailed information for any of a number of different report types, such as "Income by Customer Detail," "Check Detail," "Pending Sales," etc. You can select the desired date range for your report by selecting the start and end dates using the
 **From**
 and
 **To**
 date pickers, respectively. If you want, you can manually select which columns appear in the report by selecting them in the
 **Columns**
 menu.
  |
|
 General Summary Report
  |
 Shows summary information for any of a number of different report types, such as "CustomerBalanceSummary," "IncomeTaxSummary," "PhysicalInventoryWorksheet," etc. You can select the desired date range for your report by selecting the start and end dates using the
 **From**
 and
 **To**
 date pickers, respectively. You can also select a date granularity for your report data (for example, you could summarize data by day, by month, etc.).
  |
|
 Budget Summary Report
  |
 Shows balance sheet and profit and loss reports. You can select the desired fiscal year for your report.
  |
|
 List
  |
 Shows any of a number of reports in list format, such as "Employee" (a list of company employees), "Vendors" (a list of your vendors), and so on. Because this information is not arranged by date, there are no options for setting a date range or choosing a fiscal year.
  |


 |
|
 Report Date Range (General Detail Report and General Summary Report)
  |
 Lets you select the start and end date for this report from a date picker.
  |
|
 Maximum days to return in single result (General Detail Report only)
  |
 Specifies the maximum number of days to return in your QuickBooks report.
  |
|
 Columns (General Detail Report only)
  |
 Lets you select the columns that appear in your QuickBooks report.
  |
|
 Summarize Report Columns By (General Summary Report only)
  |
 Lets you choose the date granularity for your QuickBooks report. For example, if you
 **Month**
 , report data is broken down by month.
  |
|
 Fiscal Year (Budget Summary Report only)
  |
 Lets you select the fiscal year for the report.
  |

For more information about connecting to QuickBooks data, see

Connecting to QuickBooks Data

.

###
 JIRA

When you select
 **QuickBooks**
 as your reader type when creating a DataSet job, the
 **Processing**
 dialog in the
 **Configure**
 subtab lets you unselect attributes from the data source that you do not want to be included in the DataSet. You can also add new attributes.


 The following screenshot shows the options available when this has been selected:

For more information about connecting to JIRA, see

Connecting to JIRA Data

.


 Transforms
------------

You can add any of a number of transforms to a DataSet job in Workbench. Transforms let you modify your data locally in Workbench before you upload it to Domo. There are many different transforms available, including transforms for creating new columns based on calculations, joining columns, encrypting data, and more. You add transforms by clicking
 **Add a transform**
 in the
 **Configure**
 subtab for a DataSet job (which you access by double-clicking on a job in the listing in the
 **Jobs**
 tab) then specifying the necessary information.

When you add transforms, they appear in the
 **Transforms**
 area of the
 **Configure**
 subtab in the order in which you add them. Also, once you have added at least one transform, several icons appear above the transform list. All of this is shown in the following screenshot:

The icons and their functions are as follows:

 lets you edit a selected transform.
* moves the selected transform down in the list.
* moves the selected transform up in the list.
* deletes the selected transform.

Transforms are applied in the same order in which they appear in the list. You can have as many transforms for a DataSet as you want.


 The remainder of this section discusses the basic components for each transform. For more detailed information about adding transforms, see the following topics:

 Creating Columns in Workbench 5 Using Calculations
* Setting the Time Zone for a Workbench 5 Job
* Encrypting and Decrypting Workbench 5 Data
* Setting a Custom Date Format on a Column in Workbench 5
* Filtering Columns in Workbench 5
* Replacing a Column Value in Workbench 5
* Combining DataSets in Workbench 5


###
 Calculated Field Transform

With the
 **Calculated Field**
 transform, you can you specify a calculation to use to derive a value in a new column based on a value in another column. Open the Calculation Builder for a DataSet by clicking
 **Add a transform**
 in the
 **Configuration**
 subtab and selecting
 **Calculated Field Transform**
 .  In the Calculation Builder, you can specify a name for the calculation then build your calculation by applying functions to columns in your data source as necessary. Two tabs appear in the Calculation Builder—
 **Available columns**
 , which lets you choose any column in your data source to base a calculation off of, and
 **Available functions**
 , which lets you choose functions from any of five different categories.

For more information about building calculations, see

Creating Columns in Workbench 5 Using Calculations

.

##
 Custom Date Format

You can use the
 **Custom Date Format**
 transform to change the date format for a given column. Open the options dialog for this transform for a DataSet by clicking
 **Add a transform**
 in the
 **Configuration**
 subtab and selecting
 **Custom Date Format Transform**
 .

For more information, see

Setting a Custom Date Format on a Column in Workbench 5

.

##
 Filter

You can use the
 **Filter**
 transform to apply filters to a selected column. You can choose to have Workbench return matches or non-matches for the specified filter query. You can also include or exclude blank cells in your filtered data.


 Open the options dialog for this transform for a DataSet by clicking
 **Add a transform**
 in the
 **Configuration**
 subtab and selecting
 **Filter Transform**
 .

For more information, see

Filtering Columns in Workbench 5

.

##
 Lookup Table

You can combine data sources in Workbench by using Lookup Tables. A "Lookup Table" is a DataSet you combine with a primary DataSet. The Lookup Table DataSet and primary DataSet must both contain one column with unique matching values ("key columns"). Once you match key columns, a new DataSet is created by joining all columns from both DataSets. Combining DataSets in this way is equivalent to using a LEFT JOIN in SQL.


 Open the options dialog for this transform for a DataSet by clicking
 **Add a transform**
 in the
 **Configuration**
 subtab and selecting
 **Lookup Table Transform**
 .

For more information, see

Combining DataSets in Workbench 5

.

##
 Shift Date Timezone

With the
 **Shift Date Timezone**
 transform, you can set the time zone for the data in a data source by selecting your desired time zone from a menu. Open the options dialog for this transform for a DataSet by clicking
 **Add a transform**
 in the
 **Configuration**
 subtab and selecting
 **Shift Date Timezone Transform**
 .

For more information, see

Setting the Time Zone for a Workbench 5 Job

.

##
 Encrypt

You can use the
 **Encrypt**
 transform to encrypt one or more columns of data in your data source. After the DataSet has been pulled into Domo, it can only be decrypted in a Sumo table, by users who have been given special access in the
 **User Access**
 listing for the DataSet job in Workbench. For more information about Sumo, see

Understanding Sumo cards

.


 Open the options dialog for this transform for a DataSet by clicking
 **Add a transform**
 in the
 **Configuration**
 subtab and selecting
 **Encrypt Transform**
 .

For more information about encryption and decryption, see

Encrypting, Decrypting, and Hashing Workbench 5 Data

.

##
 Search & Replace

You can use the
 **Search & Replace**
 transform to replace a specified value in a column with another value. You can also specify a default value to appear in cells in which your search value does not appear. For search and replace values you can open a regular expression builder that includes a number of categories of regular expression constructs.


 Open the options dialog for this transform for a DataSet by clicking
 **Add a transform**
 in the
 **Configuration**
 subtab and selecting
 **Search/Replace Transform**
 .

For more information, see

Replacing a Column Value in Workbench 5

.

##
 Hash Value

You can use the
 **Hash Value**
 transform to encrypt data in a column using hash values. You can choose from any of four different hash algorithms. Open the options dialog for this transform for a DataSet by clicking
 **Add a transform**
 in the
 **Configuration**
 subtab and selecting
 **Hash Value Transform**
 .

For more information, see

Encrypting, Decrypting, and Hashing Workbench 5 Data

.

