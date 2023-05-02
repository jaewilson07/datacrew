


**Important:**
 Support for Workbench 4 ended on
 **April 15, 2021**
 . Workbench may continue to run on installed machines, but it will no longer receive feature enhancements and security updates. When issues are encountered in Workbench 4, the recommended course of action from the Domo Support team will be to upgrade to the latest version of Workbench 5. To see this article for Workbench 5, click

*here**

.

Intro
-------

In the Workbench application, you can connect to your Domo server; configure settings for creating DataSet Jobs; import and export job files; preview, schedule, validate, and run jobs; etc.


 This topic discusses the user interface components of Workbench.


 Workbench Interface
---------------------

The following screenshot points out the main sections of the Workbench user interface. These sections are discussed in more detail throughout the remainder of this topic.

The following table describes the sections pointed out in the preceding screenshot:


 Section
  |
 Description
  |
| --- | --- |
|
 Accounts pane
  |
 Lists all connected accounts. For each account, you can access
 **Logs**
 and
 **Settings**
 options, along with all of the DataSet Jobs associated with the account. For each DataSet Job, you can access options such as
 **Settings**
 ,
 **Schedule**
 ,
 **Transforms**
 , etc. Clicking an item in the
 **Accounts**
 pane opens information or options for that item in the Dynamic Options pane in the center of the application. For example, selecting
 **Settings > Account**
 for a particular account would open options for configuring this account in the Options pane.


 You can move the
 **Accounts**
 pane anywhere on the screen by clicking on the pushpin icon in the top corner of the pane and dragging the pane.


 For more information about adding accounts, see

Adding an Account in Workbench 4

.
  |
|
 Buttons toolbar
  |
 Provide access to various Workbench options. Buttons are divided across two tabs—
 **Home**
 and
 **More**
 . The
 **Home**
 tab provides options for working with accounts, DataSet jobs, and transforms. The
 **More**
 tab provides options for getting help with Workbench, such as accessing online help, opening help videos, viewing log files, etc., and also provides access to the Plugin Manager.
  |
|
 Job status pane
  |
 Provides you with insights around when jobs are being run and allows you to make changes, pause, cancel and run jobs.
  |
|
 Dynamic Options pane
  |
 Provides information and/or options depending on the item currently selected in the
 **Accounts**
 pane.
  |
|
 Preview/output panes
  |
 Show preview and output information for a DataSet job. These panes are not populated until you click
 **Preview**
 for a DataSet job in the buttons toolbar at the top of the screen. A tab for the DataSet job is then added to both the
 **Preview**
 and
 **Output**
 panes. If you click
 **Preview**
 for another DataSet job, separate tabs for that job are added to the
 **Preview**
 and
 **Output**
 panes.
  |

Buttons toolbar
-----------------

The options in the Buttons toolbar provide various functions within Workbench. These are organized into two tabs,
 **Home**
 and
 **More**
 . You can switch between these by clicking
 **Home**
 or
 **More**
 at the top of the window.

##
 Home buttons

The buttons in the
 **Home**
 tab provide options for working with accounts, DataSet Jobs, and transforms.


 Button
  |
 Description
  |
| --- | --- |
|
 Add New (Account)
  |
 Opens the account creation wizard so you can add a new server account to your Workbench. For more information, see

Adding an Account in Workbench 4

.
  |
|
 Delete (Account)
  |
 Lets you delete a server account from Workbench.
  |
|
 Save (Account)
  |
 Lets you save changes made to the account in the
 **Settings**
 options.
  |
|
 Add New (DataSet Job)
  |
 Opens the DataSet Job Creation Wizard so you can add a new DataSet Job to Workbench. For more information, see

Creating a Job for Uploading Data Using Workbench 4

.
  |
|
 Delete (DataSet Job)
  |
 Lets you delete one or more DataSet Jobs from Workbench. You can also delete a DataSet Job by right-clicking on the job name in the
 **Accounts**
 pane and selecting
 **Delete DataSet Job**
 .
  |
|
 Save (DataSet Job)
  |
 Lets you save changes made to the DataSet Job currently selected in the
 **Accounts**
 pane.
  |
|
 Revert
  |
 Cancels all changes made to the currently selected DataSet Job since you last saved.
  |
|
 Preview
  |
 Opens a preview of the currently open job in the
 **Preview**
 field and an output log in the
 **Output**
 field. You can also open the preview and output log for a DataSet Job by right-clicking on the job name in the
 **Accounts**
 pane and selecting
 **Preview DataSet Job**
 .
  |
|
 Run
  |
 Runs the currently selected DataSet Job, i.e. builds or updates the specified DataSet in Domo. You can also execute a job by right-clicking on the job name in the
 **Accounts**
 pane and selecting
 **Execute DataSet Job**
 .
  |
|
 Cancel
  |
 Cancels a currently running DataSet Job.
  |
|
 Tools
  |
 Provides access to a number of options, including the following:


|  |  |
| --- | --- |
|
 Import
  |
 Lets you import a DataSet Job file in JSON format into Workbench.
  |
|
 Export
  |
 Lets you export DataSet Job files from Workbench in JSON format.


 New with Workbench 4.5.1, you can bulk-export Jobs. If you choose this option while
 **DataSet Jobs**
 or anything higher is selected in your hierarchy, Workbench returns all Jobs in your account. You can then export as many Jobs as you want just by clicking their checkboxes then choosing the directory you want to export them to.


 If you choose the
 **Export**
 option while a Job is selected in the hierarchy, your File Explorer opens, allowing you to select a single Job for export.


 You can also export a DataSet Job by right-clicking on the job name in the
 **Accounts**
 pane and selecting
 **Export DataSet Job**
 .
  |
|
 Schedule
  |
 Lets you set up and manage groups of DataSet Jobs with the same update schedule. For more information, see

Creating a Schedule Group in Workbench 4

.
  |
|
 Fetch Jobs
  |
 Checks to see if there are DataSet Jobs that need to be run.
  |
|
 Migrate
  |
 Searches for Workbench 2 DataSet Jobs and allows you to migrate them into Workbench 4.
  |

|
|
 Add New (Transform)
  |
 Lets you add a transform to the currently selected DataSet Job. Transforms let you transform the data in a DataSet in a number of ways, including changing the date format, encrypting sensitive data, creating calculated fields, etc.


 For more information, see all of the following:
 * Creating Columns in Workbench 4 Using Calculations
* Setting the Time Zone for a Workbench 4 Job
* Encrypting and Decrypting Workbench 4 Data
* Setting a Custom Date Format on a Column in Workbench 4
* Filtering Columns in Workbench 4
* Replacing a Column Value in Workbench 4
* Combining DataSets in Workbench 4
 |
|
 Delete (Transform)
  |
 Deletes the currently selected transform.
  |
|
 Authorize Company File (QuickBooks only)
  |
 Lets you authorize Workbench to connect to the selected QuickBooks file. For more information, see

Connecting to QuickBooks data

.
  |


###
 More buttons

The buttons in the
 **More**
 tab provide options for getting help with Workbench and accessing the Plugin Manager.


 Button
  |
 Description
  |
| --- | --- |
|
 Send Logs
  |
 Copies your log files to your Windows Clipboard so you can email them to Domo as a

.zip

file.
  |
|
 View Logs
  |
 Opens the log file folder in Windows Explorer. Typically, log files are located in

C:\ProgramData\DomoWorkbench

. You can open log (

.txt

) files in a text editor.


 Log files for manual or scheduled jobs are named based on the job (

.xml

) filename and the date:

myjob\_yyyy-mm-dd

.


 Log entries for jobs run at the command line are named based on the application name and the date:

DomoWorkbench\_yyyy-mm-dd

. For more information about running Workbench from the command line, see

Running Workbench 4 from the command line

.
  |
|
 Wiki
  |
 Opens Domo's Workbench help documentation.
  |
|
 Community
  |
 Opens the Workbench help forum.
  |
|
 Videos
  |
 Opens training videos for Workbench.
  |
|
 Plugins
  |
 Opens the Plugin Manager. Here you can see existing plugins by category and add new plugins for use in Workbench. For more information, see

Managing Plugins in Workbench 4

.
  |

Accounts pane
---------------

In the
 **Accounts**
 pane, you can view logs, edit settings, and access DataSet Job options for individual accounts. Clicking any item in this list (except for top-level accounts) opens information and/or options in the Dynamic Options panel in the center of Workbench.


 Items in this pane are laid out in a tree structure with five levels of navigation, with accounts on the topmost level. Each account includes the following branches, which make up the second level of navigation:
 **Logs**
 ,
 **Settings**
 , and
 **DataSet Jobs**
 .
 **Settings**
 includes three sub-branches—
 **Account**
 ,
 **Proxy**
 , and
 **Updates,**
 and
 **DataSet Jobs**
 includes a sub-branch for each DataSet job associated with this account; these make up the third level of navigation. For each job sub-branch, these options are available:
 **Settings**
 ,
 **Schedule**
 ,
 **Source**
 ,
 **Schema**
 ,
 **Transforms**
 ,
 **Notifications**
 , and
 **Logs**
 (fourth level). In addition,
 **Transforms**
 may include one or more sub-branches of its own (fifth level).


 The following screenshot shows an example of this tree structure:

A

to the left of a list item indicates that there are items hidden beneath it; click the icon to expand those items. Click

to the left of an item to collapse the items beneath that item.


 You can drag the
 **Accounts**
 pane anywhere you want it in the Workbench interface. When you drag the pane, arrow buttons appear, indicating the top, bottom, left side, and right side of the interface. If you drag the pane onto one of these buttons, the corresponding area of the interface is highlighted. Dropping the pane onto a button causes it to be "docked" in the corresponding area. For example, if you dropped the pane onto either up arrow, it would dock in the upper portion of the Workbench window.

*Note:**
 A pane must be in Dock mode to be draggable. To put a pane in Dock mode, click the sideways pushpin icon

. This allows you to drag it and dock it.


###
 Jobs List

You can open the jobs list view by clicking
 **View Jobs List**
 just above the status panel. This list view allows you to search and sort DataSet jobs, see upcoming schedules, and organize jobs by status, giving better visibility into jobs to facilitate job management in an instance.


###
 Logs

When you click
 **Logs**
 for a given account, the logs for that account are shown in the Dynamic Options panel.

Log information is shown chronologically in reverse. You can show the logs for any day by clicking in the
 **Log Date**
 menu and selecting the desired date from the date picker. You can sort the logs in chronological or reverse chronological order. You can also filter logs by error level (

ERROR

,

INFO

, or

WARN

).

##
 Settings

In
 **Settings**
 , you can see a connection summary, change your account information, configure proxy settings, and set your update URL and frequency. You can access settings options by clicking
 **Settings**
 or any of its subtabs in the pane on the left side of Workbench. (Note that there are two
 **Settings**
 items available in the
 **Accounts**
 pane. The version of
 **Settings**
 discussed here refers to the one on the 2nd level of navigation, located under
 **Logs**
 . These settings are used to configure account and connection details in your Workbench, while the settings discussed later on are specific to DataSet Jobs.)

###
 Connection summary

Click
 **Settings**
 to see a summary of your connection information, including your agent ID, Domo server, job check frequency, proxy, and software update settings.


####
 Account tab

Lets you edit your connection information for Domo.

You can refer to the following table to find out more about the components in this tab:


 Option
  |
 Description
  |
| --- | --- |
|
 Domo Server
  |
 The URL for the connected server, which you specify when you set up your Workbench account.
  |
|
 API Key
  |
 The API key for the account to use in connecting to Domo. You can generate a new API key by clicking the arrow on the right side of the field, entering your email address and password, and clicking
 **Create Token**
 .
  |
|
 Ignore Certificate Errors
  |
 If turned on, certificate errors are ignored when connecting to this server.


 |
|
 Test Connection
  |
 Lets you test the provided connection credentials.
  |
|
 Check for new DataSet Job every
  |
 Specifies the frequency at which Workbench checks to see if DataSet Jobs need to be processed. Units range from
 **Seconds**
 to
 **Years**
 . Set
 **Never**
 if you don't want Workbench to check for unprocessed jobs.
  |
|
 Limit Concurrent Jobs
  |
 Lets you limit the number of DataSet Jobs that may run at the same time.
  |
|
 Only run locally managed jobs
  |
 If checked, Workbench runs only DataSet Jobs managed locally,
 *not*
 those on networks.
  |
|
 Require impersonation credentials for all jobs (Workbench 4.5 only)
  |
 If checked, Workbench requests non-default credentials for all DataSet Jobs (that is, the
 **Requires Impersonation**
 toggle for all Jobs is turned off and cannot be switched back on). This option is only available if you have administrator privileges.
  |


####
 Proxy tab

Lets you specify settings for more securely connecting to Domo using a proxy server.

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
 Manual Proxy Configuration
  |
 Lets you manually specify the proxy server information to use in connecting. You can do this only after initially connecting to Domo via Workbench. (The first time you connect, your system proxy settings are used.)


 Enter the server address and port.


 If the proxy server requires credentials, set
 **Requires Authentication**
 to
 **On**
 , then specify the username and password.
  |
|
 Use System Proxy Settings (Workbench 4.5 only)
  |
 Determines your proxy settings based on your system proxy settings.
  |

After you enter proxy credentials, you can test your connection by clicking
 **Test Proxy**
 . The color of the icon next to this button indicates whether the proxy settings have been validated.

###
 Updates tab

Lets you specify how Workbench software updates are handled.

You can refer to the following table to find out more about the components in this tab:


 Option
  |
 Description
  |
| --- | --- |
|
 Workbench Update URL
  |
 Specifies the URL that is to be used for Workbench software updates.
  |
|
 When to Check for Software Updates
  |
 Specifies how frequently Workbench should check for software updates. Units range from minutes to years.


 Select
 **Never**
 if you don't want Workbench to check for software updates.
  |
|
 Install updates automatically
  |
 When turned on, Workbench software is updated automatically.
  |


###
 DataSet Jobs

In the
 **DataSet Jobs**
 section of the
 **Accounts**
 pane, you can access information and options for all DataSet Jobs that have been created in your Workbench instance.


 When you click
 **DataSet Jobs**
 , a summary of all your created jobs appears in the Dynamic Options pane. Each summary shows the job ID, DataSet name, creation date, dates of the last run and the next scheduled run, and a message. Jobs in a healthy state are shown with green circles; jobs in an unhealthy state are shown with orange circles.

When you click a job (i.e. the job name, not any of the options beneath it in the hierarchy), details about the job and its execution history open in the
 **Dynamic Options**
 pane. The following screenshot shows the job details for a DataSet Job named "Europe Sales":

Right-clicking the name of a DataSet Job provides quick access to a number of options also available in the Buttons toolbar at the top of the Workbench window, namely
 **Preview DataSet Job**
 (which also sends an output log to the
 **Output**
 pane, like the
 **Preview**
 button),
 **Execute DataSet Job**
 ,
 **Delete DataSet Job**
 , and
 **Export DataSet Job**
 .

When a DataSet Job name appears in italics with an asterisk, this indicates that unsaved changes have been made to the job settings.


 Each DataSet Job includes a number of parameters that are shown beneath the job name in the hierarchy in the
 **Accounts**
 pane. Clicking a parameter opens information and/or options for that parameter in the Dynamic Options pane. For example, clicking the
 **Schedule**
 parameter for the "Europe Sales" DataSet job would open an interface with options for setting the run schedule for that job.


 The following table lists and describes the parameters available for each job in the
 **Accounts**
 pane. These are all described in greater detail in continuation.


 Parameter
  |
 Description
  |
| --- | --- |
|
 Settings
  |
 Lets you configure the DataSet Job name, the DataSet type, the destination DataSet, update method, error handling, and additional settings.
  |
|
 Schedule
  |
 Lets you configure how often this DataSet is updated.
  |
|
 Source
  |
 Lets you configure settings for your source DataSet—transport method, credentials, data source properties, etc.
  |
|
 Schema
  |
 Shows the schema for your DataSet (but only appears after you click
 **Preview**
 for the job). Here you can rename destination columns, change the data type, and include or exclude columns.
  |
|
 Transforms
  |
 Lets you edit all transforms that have been added to this DataSet Job.
  |
|
 Notifications
  |
 Lets you configure notifications for individual users in Domo.
  |
|
 Logs
  |
 Shows all of the logs for this DataSet Job.
  |


####
 Settings

When you select
 **Settings**
 for a DataSet job in the
 **Accounts**
 pane, options for configuring settings for the job appear in the Dynamic Options pane. (Note that there are two
 **Settings**
 items available in the
 **Accounts**
 pane. The version of
 **Settings**
 discussed here refers to the one found under the DataSet Jobs heading and is specific to the selected DataSet Job.)

The following table describes the options available in the
 **Settings**
 for a DataSet job:


 Option
  |
 Description
  |
| --- | --- |
|
 Name
  |
 The name of this job. You initially name a job when you create it in the
 **Workbench DataSet Job Creation Wizard**
 , but you can rename it here.
  |
|
 Domo DataSet
  |
 The DataSet generated by Workbench in Domo, i.e. the destination data source. A blue "i" next to the DataSet name indicates that the DataSet has not yet been created in Domo.
  |
|
 Update Method
  |
 Determines whether new data replaces or is appended to the DataSet when updating.
  |
|
 DataSet Type
  |
 The type of DataSet as shown in Domo. You can select a type from the menu or enter a custom name.


 The DataSet type you select or enter here is for informational purposes in Domo only. For example, you might be connecting to an ODBC database that contains Twitter data. In this case the best option would be to enter "Twitter" rather than selecting
 **ODBC**
 because the data you are representing in Domo is from Twitter.
  |
|
 DataSet Description
  |
 The description for this DataSet you entered when you went through the
 **Workbench DataSet Job Creation Wizard**
 . You can edit the description here.
  |
|
 Disable Job
  |
 Prevents this job from executing.
  |
|
 Error Handling
  |
 Determines what happens when errors are encountered in a DataSet Job. Options include the following:
 * Replace invalid cells with NULL value

When invalid cells are encountered, the values are replaced with a "NULL" value.
* Skip entire row if it contains invalid cell(s)

When invalid cells are encountered, the rows in which they are found are skipped.
* Abort Job on invalid data error

When invalid cells are encountered, the entire DataSet Job is aborted.
 |
|
 Requires Impersonation
  |
 Used when you need to authenticate using non-default credentials. New to 4.5, if an admin user checked the box for
 **Require impersonation credentials for all jobs**
 under
 **Settings > Account**
 , this option is turned on by default and cannot be turned off.
  |
|
 Domain
  |
 Specifies the domain when you are authenticating using non-default credentials (impersonation).
  |
|
 Username
  |
 Specifies your username when you are authenticating using non-default credentials (impersonation).
  |
|
 Password
  |
 Specifies your password when you are authenticating using non-default credentials (impersonation).
  |
|
 Terminate job if it runs longer than
  |
 Lets you specify a time frame (in hours) in which a long-running job is to be terminated.
  |
|
 Upload even if data hasn't changed
  |
 Lets you upload data to Domo even though the data has not changed. Useful when you want the DataSet freshness in Domo to be updated.
  |
|
 Clear Domo DataSet if DataSet Job returns zero rows
  |
 Lets you clear the DataSet in Domo if zero rows are returned when a job runs. If disabled, Workbench does
 *not*
 send a command to Domo to clear out data in the DataSet. If you have a process where you want to upload data in a table after data in another table has been updated, you could disable this option and add some script in your query that looks at the "status" table, running the query if the data is ready.
  |
|
 Allow schema changes
  |
 Allows schema changes to be pushed to Domo when the job is left unattended.
  |
|
 Wait for Adrenaline Indexing (Workbench 4.5 only)
  |
 Tells Workbench to wait for Adrenaline indexing (Domo indexing data in the cloud) after a DataSet Job uploads. If this option is turned off, Workbench marks the job as successful immediately after an upload.
  |


####
 Schedule

When you select
 **Schedule**
 for a DataSet Job in the
 **Accounts**
 pane, options for scheduling updates for the job appear in the Dynamic Options pane.

In the
 **Schedule Type**
 menu you select the type of schedule you want.


 In the
 **Update**
 menu you select the update frequency for this DataSet Job. Options range from
 **Every 30 Minutes**
 to
 **Every Month**
 . If you select
 **Manually**
 , the DataSet does
 *not*
 update on a schedule; you must run the DataSet Job yourself from within Workbench. If you select
 **Watch File**
 , this DataSet Job will run every time the file is updated.


 For more information about updating a DataSet, see

Updating or Refreshing the DataSet for a Visualization Card

.


 When you select a frequency in the menu, the next four upcoming update times are shown at the bottom of the Options pane.


 For more information about setting a schedule, see

Scheduling a Job in Workbench 4

.


 You can also create a group of DataSet Jobs that share the same update schedule. For more information, see

Creating a Schedule Group in Workbench 4

.

###
 Source

When you select
 **Source**
 for a DataSet Job in the
 **Accounts**
 pane, options for configuring the transport method and data source for the job appear in the Dynamic Options pane.

####
 Transport Method

Transport methods determine how data sources are brought into Workbench. You select a transport method in the
 **Workbench DataSet Job Creation Wizard**
 and configure options for the selected method in the
 **Source**
 pane for the DataSet Job. Options are different for each transport method.

#####
 Local File Provider

The
 **Local File Provider**
 transport method lets you select a file from your machine or a network. This method is used for transporting

XML

data sources into Domo.


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
 Network Username/Password
  |
 Specifies the username and password for the network the file is located on, if any.
  |
|
 Validate Configuration
  |
 Lets you validate the transport settings you have configured.
  |


######
 SFTP File Provider

Use the SFTP File Provider transport method when you want to retrieve a file via FTP, SFTP (SSH-FTP) or FTPS (FTP-SSL). This method is used for transporting

XML

data sources into Domo.


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
|
 Validate Configuration
  |
 Lets you validate the transport settings you have configured.
  |


######
 External Process File Provider

Use the External Process File Provider transport method when you are using a third-party application to pull data into Domo using a script. When you use this method, you select the executable file for your application, specify arguments, and enter a file path for the output. For CSV files, you can also set a
 **Direct Upload**
 option. Virtually any kind of executable file can be converted into an

XML

data source in Workbench. For example, you could use this method to convert a MySQL database file to an Excel file. You could then specify options for the Excel file and send it to Domo.


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
 Direct Upload (CSV only)
  |
 Lets you turn on Direct Upload for this job. For more information, see

Setting Up Direct Upload in Workbench 4

.
  |
|
 Validate Configuration
  |
 Lets you validate the transport settings you have configured.
  |


######
 OLEDB Connection Provider

Use the OLEDB Connection Provider when you want to send data to Domo using an OLEDB (OLAP) connection. The following screenshot shows the options available when this method is selected:

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
 Requires 32b Execution
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
|
 Validate Configuration
  |
 Lets you validate the transport settings you have configured.
  |

For more information about connecting to OLAP data, see

Connecting to an OLAP cube

.

#####
 ODBC Connection Provider

Use the ODBC Connection Provider when you want to send data to Domo using an ODBC connection. The following screenshot shows many of the options available when this method is selected. (In this example,
 **System DSN**
 is selected as the
 **Connection Type**
 . Other options appear if you select a different
 **Connection Type**
 .)

You can use the following table to learn more about these options:


 Option
  |
 Description
  |
| --- | --- |
|
 Connection Type
  |
 Lets you select a method for connecting to ODBC data.


|
 Connection Type
  |
 Description
  |
| --- | --- |
|
 System DSN
  |
 You select the DSN to use for the desired DataSet from all of the DSNs available in your system. You can indicate whether credentials are required.


**Note:**
 When uploading data from an ODBC DataSet, you must specify an existing Data Source Name (DSN). You can create a DSN using the Windows ODBC Data Source Administrator. (You can access the the Windows ODBC Data Source Administrator by entering "ODBC" in the Start Menu search, then selecting "Data Sources (ODBC)".) For more information about creating a DSN, refer to the Windows ODBC Help (by searching for "ODBC" in Windows Help and Support) or view the training video in

Workbench 4 FAQs

.


 For information about defining DataSet names (DSNs) and using Open Database Connectivity (ODBC) to access data, refer to documentation for ODBC.


 |
|
 User DSN
  |
 You select the DSN to use for the desired DataSet from those DSNS for which you have access. You can indicate whether database credentials are required. The selection menu does not populate with your DSNs until you configure the
 **Impersonation**
 settings in the
 **Settings**
 tab for the DataSet Job.


**Note:**
 When uploading data from an ODBC DataSet, you must specify an existing Data Source Name (DSN). You can create a DSN using the Windows ODBC Data Source Administrator. (You can access the the Windows ODBC Data Source Administrator by entering "ODBC" in the Start Menu search, then selecting "Data Sources (ODBC)".) For more information about creating a DSN, refer to the Windows ODBC Help (by searching for "ODBC" in Windows Help and Support) or view the training video in

Workbench 4 FAQs

.


 For information about defining DataSet names (DSNs) and using Open Database Connectivity (ODBC) to access data, refer to documentation for ODBC.


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

|
|
 System DSN (System DSN only)
  |
 Lets you select the DSN to use for the desired DataSet from all of the DSNs available in your system.
  |
|
 Requires Credentials (System DSN and User DSN)
  |
 Determines whether credentials are required for the specified DSN.
  |
|
 Username (System DSN and Connection Builder)
  |
 Specifies the username you use to connect to the database.
  |
|
 User DSN (User DSN only)
  |
 Lets you select the DSN to use for the desired DataSet from the DSNs available to you. This menu does
 *not*
 populate until you turn on
 **Requires Impersonation**
 in the DataSet Job
 **Settings**
 tab and fill in the parameters.
  |
|
 Connection Username (User DSN only)
  |
 Specifies the username to connect to the database.
  |
|
 Connection Password (User DSN only)
  |
 Specifies the password to connect to the database.
  |
|
 Password (System DSN and Connection Builder)
  |
 Specifies the password you use to connect to the database.
  |
|
 Driver (Connection Builder only)
  |
 Specifies the name of the driver used to access the database.
  |
|
 Server (Connection Builder only)
  |
 Specifies the server name or URL for the database.
  |
|
 Port (Connection Builder only)
  |
 Specifies the port number where the database is found. The default port is the MySQL port.
  |
|
 Database (Connection Builder only)
  |
 Specifies the name of the database to access.
  |
|
 Timeout (Connection Builder only)
  |
 Lets you select the desired timeout value in seconds (60=1 minute) that the connection is kept alive before it is refreshed from the DataSet.
  |
|
 Connection Parameters (Connection Builder only)
  |
 Lets you specify additional parameters for connecting to the DataSet.
  |
|
 Connection String (Connection String only)
  |
 Enter a connection string to connect to the DataSet.
  |
|
 Validate Configuration
  |
 Lets you validate the transport settings you have configured.
  |

For more information, see

Connecting to ODBC data

.

#####
 JIRA Connection

Use the JIRA Connection transport method when you want to send JIRA or JSO Ndata to Domo. The following screenshot shows the options available when this method is selected:

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
|
 Validate Configuration
  |
 Lets you validate the transport settings you have configured.
  |

For more information, see

Connecting to JIRA data

.

####
 Data Source Properties

You can use the options in
 **Data Source Properties**
 to configure properties for your data source before it is sent to Domo.
 **Data Source Properties**
 are dependent on the Data Source you have selected in the Workbench DataSet Job Creation Wizard. For example, if you selected
 **CSV**
 as the Data Source, you are given options for configuring delimiters, specifying start and end rows, etc., whereas if you selected
 **OLAP**
 , options center around writing queries.

#####
 CSV

When CSV is the selected Data Source type, you can specify the delimiter and escape sequence characters and configure advanced settings.

*Notes:**


* The name and description for a DataSet in Domo can be different than the name and description in Workbench if someone edits the name and description in Domo. (DataSets do not depend on the names and descriptions matching for data uploads to occur properly.)
* A CSV file
 *must*

+ be a text file
	+ have data delimited by a single character

The following screenshot shows all of the components of
 **Data Source Properties**
 for a CSV data source.

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

#####
 Excel

When Excel is the selected Data Source type, you can specify the range of data you want to send to Domo. This can be a specific range of cells, a named range, or a dynamic range.

*Note:**
 A Microsoft Excel spreadsheet file
 *must*
 be in a supported file format:

.xlsx

,

.xls

,

.xlsm


 The following screenshot shows many of the components of
 **Data Source Properties**
 for an Excel data source. (In this example,
 **Cell Range**
 is selected as the
 **Selection Range**
 . Other options appear if you select a different
 **Selection Range**
 .)

You can use the following table to find out more about these components:


 Option
  |
 Description
  |
| --- | --- |
|
 Selection Range
  |
 Lets you select a method for pulling ranged data from the specified Excel file. Methods are as follows:


|
 Method
  |
 Description
  |
| --- | --- |
|
 Cell Range
  |
 Lets you specify the Excel sheet from which you want to pull data, along with the starting cell, ending row, and ending column.
  |
|
 Named Range
  |
 Lets you select a named range from a list. If you have not created any named ranges for this file in Excel, no options appear in this menu.
  |
|
 Dynamic Range
  |
 Lets you skip a specified number of lines at the end of the Excel sheet.
  |

|
|
 Sheet Name (Cell Range and Dynamic Range)
  |
 Lets you select the Excel sheet from which you want to pull data.
  |
|
 Starting Cell (Cell Range and Dynamic Range)
  |
 Specifies the first cell in the Excel sheet from which data will be pulled.
  |
|
 Ending Row (Cell Range only)
  |
 Specifies the ending row for the cell range you want to pull data for. This option is available only when
 **Continue until empty row**
 is unchecked.
  |
|
 Ending Column (Cell Range only)
  |
 Specifies the ending column for the cell range you want to pull data for. This option is available only when
 **Continue until empty column**
 is unchecked.
  |
|
 First row contains column headers
  |
 Determines whether the first row contains column headers. This is important when building cards in Domo because column headers are used to reference the data in those columns. For more information, see

Applying DataSet Columns to Your Chart

.
  |
|
 Named Ranges (Named Range only)
  |
 Lets you pick a named range from a list.
  |
|
 Ignore Ending Rows (Dynamic Range only)
  |
 Specifies how many rows at the end of the sheet you want to ignore.
  |

For more information about connecting to Excel data, see

Connecting to Excel data

.

#####
 JSON

When JSON is the selected Data Source type, you can specify the desired data node, the delimiter, and flattening options.

For more information about connecting to JSON data, see

Connecting to JSON data

.

#####
 XML

When XML is the selected Data Source type, you can specify the desired data node and also indicate nodes that should be ignored.

For more information about connecting to XML data, see

Connecting to XML data

.

#####
 OLAP and ODBC

When OLAP or ODBC is the selected Data Source type, you can configure queries and replacement variables.

You can use the following table to learn more about these options:


 Option
  |
 Description
  |
| --- | --- |
|
 Query
  |
 Lets you enter the query you want to get data.


 |
|
 Replacement Variables
  |
 Lets you define replacement variables for use in your query.


 |

For more information about connecting to databases, see

Connecting to ODBC data

.

#####
 QuickBooks

When QuickBooks is the selected Data Source type, you can choose from any of a variety of different reports. You can also instruct Workbench to stop QuickBooks if connection errors are encountered.

*Note:**
 In order to run QuickBooks jobs, you must authorize Workbench to connect to QuickBooks by clicking
 **Authorize Company File**
 in the Buttons toolbar at the top of Workbench.


**Important:**
 You
 *must*
 be running the 32-bit version of Workbench to use the QuickBooks DataSet type. For information about running Workbench, see

Running Workbench 4

.

The following screenshot shows many of the components of
 **Data Source Properties**
 for a QuickBooks data source. (In this example,
 **General Summary Report**
 is selected as the report type. Other options appear if you select a different report type.)

You can use the following table to find out more about all of these components.


 Option
  |
 Description
  |
| --- | --- |
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

Connecting to QuickBooks data

.

#####
 JIRA

When JIRA is the selected Data Source type, you can unselect attributes from the data source that you do not want to be included in the DataSet. You can also add new attributes.

For more information about connecting to JIRA, see

Connecting to JIRA data

.

###
 Schema

When you select
 **Schema**
 for a DataSet job in the
 **Accounts**
 pane, options for configuring properties for columns in your data source appear in the Dynamic Options pane. (You must click
 **Preview**
 in the Buttons toolbar for schema information to appear here.) Here you can change column names and data types and include or exclude certain columns.


 The following screenshot shows an example of the
 **Schema**
 tab for a DataSet job.

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


####
 Transforms

When you select
 **Transforms**
 for a DataSet job in the
 **Accounts**
 pane, a list of transforms you have added to this DataSet job appear in the Dynamic Options pane. If you have not added any transforms by clicking
 **Add**
**New Transform**
 in the Buttons toolbar (or right-clicking
 **Transforms**
 in the navigation tree) then selecting the desired transform type, nothing appears here.


 You can interact with your transforms individually by selecting the desired transform in the
 **Accounts**
 pane. All transforms you have added to a DataSet are arranged in a numbered list under the
 **Transforms**
 heading.

Selecting a transform opens options for configuring that transform in the Dynamic Options pane. All transforms have different options. You can have as many transforms for a DataSet as you want.


 Transforms are applied in the same order in which they appear in the navigation tree. You can rearrange transforms in the list by right-clicking the transform you want to move then selecting
 **Move Up**
 or
 **Move Down**
 as necessary.


 For information about all available transforms, see the following topics:

 Creating Columns in Workbench 4 Using Calculations
* Setting the Time Zone for a Workbench 4 Job
* Encrypting and Decrypting Workbench 4 Data
* Setting a Custom Date Format on a Column in Workbench 4
* Filtering Columns in Workbench 4
* Replacing a Column Value in Workbench 4
* Combining DataSets in Workbench 4


#####
 Calculation

With the
 **Calculations**
 transform, you can you specify a calculation to use to derive a value in a new column based on a value in another column. Clicking
 **Calculations**
 in the
 **Accounts**
 pane opens the Calculation Builder in the Dynamic Options pane. Here you can specify a name for the calculation then build your calculation by applying functions to columns in your data source as necessary.

For more information about building calculations, see

Creating Columns in Workbench 4 Using Calculations

.

####
 Custom Date Format

You can use the
 **Custom Date Format**
 transform to change the date format for a given column.

For more information, see

Setting a Custom Date Format on a Column in Workbench 4

.

####
 Filter

You can use the
 **Filter**
 transform to apply filters to a selected column. You can choose to have Workbench return matches or non-matches for the specified filter query. You can also include or exclude blank cells in your filtered data.

For more information, see

Filtering Columns in Workbench 4

.

####
 Lookup Table

You can combine data sources in Workbench by using Lookup Tables. A "Lookup Table" is a DataSet you combine with a primary DataSet. The Lookup Table DataSet and primary DataSet must both contain one column with unique matching values ("key columns"). Once you match key columns, a new DataSet is created by joining all columns from both DataSets. Combining DataSets in this way is equivalent to using a LEFT JOIN in SQL.

For more information, see

Combining DataSets in Workbench 4

.

####
 Shift Date Timezone

With the
 **Shift Date Timezone**
 transform, you can set the time zone for the data in a data source by selecting your desired time zone from a menu.

For more information, see

Setting the Time Zone for a Workbench 4 Job

.

####
 Encrypt

You can use the
 **Encrypt**
 transform to encrypt one or more columns of data in your data source. After the DataSet has been pulled into Domo, it can only be decrypted in a Sumo table, by users who have been given special access in the
 **User Access**
 listing for the DataSet job in Workbench. For more information about Sumo, see

Understanding Sumo cards

.

For more information about encryption and decryption, see

Encrypting and Decrypting Workbench 4 Data

.

####
 Search & Replace

You can use the
 **Search & Replace**
 transform to replace a specified value in a column with another value. You can also specify a default value to appear in cells in which your search value does not appear. For search and replace values you can open a regular expression builder that includes a number of categories of regular expression constructs.

For more information, see

Replacing a Column Value in Workbench 4

.

###
 Notifications

When you select
 **Notifications**
 for a DataSet job in the
 **Accounts**
 pane, options for configuring notifications for the job appear in the Dynamic Options pane. Here you can specify who in your Domo instance is notified when jobs are completed successfully and/or fail. For any user in your instance, you can specify whether he/she is notified upon job success, failure, or both. You can also filter the rows in any column as well as set up custom filters. For more information about notifications, see

Setting Notifications in Workbench 4

.


####
 Logs

When you select
 **Logs**
 for a DataSet job in the
 **Accounts**
 pane (as opposed to selecting the
 **Logs**
 option at the top of the
 **Accounts**
 pane, which opens the logs for the account), you can view the logs for that DataSet job in the Dynamic Options pane. For each log item, you can see the process ID, the thread ID, the error level (either "Info" or "Error"), the timestamp, and the log message. You can select logs for any day you want using a date picker. You can also sort logs in ascending or descending timestamp order of filter by error level (

ERROR

,

INFO

, or

WARN

).

Dynamic Options pane
----------------------

In the Dynamic Options pane, you can configure options for DataSet jobs. The options available in this pane update according to what you select in the
 **Accounts**
 pane. Unlike the other panes in Workbench, this pane cannot be moved.


 Preview and Output panes
--------------------------

The
 **Preview**
 and
 **Output**
 panes provide information about a selected DataSet job. The
 **Preview**
 pane shows a preview of what the DataSet looks like with all of the settings you have applied, and the
 **Output**
 pane provides a log of actions taken as the preview is loaded. Nothing appears in either pane until you click
 **Preview**
 in the Buttons toolbar at the top of the Workbench window. If you click
 **Preview**
 for more than one DataSet job, tabs for each job appear in the
 **Preview**
 and
 **Output**
 panes. The following screenshot shows an example of this, where the user has enabled previews for the DataSet jobs "Monthly Sales Data" and "Revenue2012":

Preview and output data is lost when you close Workbench.


 By default, the
 **Preview**
 and
 **Output**
 panes are located side by side in the bottom left corner of the Workbench window. Mousing over a pane causes it to pop open for viewing; if you move the cursor away from a pane, it closes, but you can force it to stay open by clicking anywhere on it.


 You can drag the
 **Preview**
 and
 **Output**
 panes anywhere you want it in the Workbench interface. When you drag a pane, arrow buttons appear, indicating the top, bottom, left side, and right side of the interface. If you drag the pane onto one of these buttons, the corresponding area of the interface is highlighted. Dropping the pane onto a button causes it to be "docked" in the corresponding area. For example, if you dropped the pane onto either up arrow, it would dock in the upper portion of the Workbench window.

*Note:**
 A pane must be in Dock mode to be draggable. To put a pane in Dock mode, click the sideways pushpin icon

. This allows you to drag it and dock it.

DataSet Job Groups Wizard
---------------------------

In the
 **DataSet Job Groups Wizard**
 , you can select any number of DataSet jobs to run on the same schedule. After selecting DataSet jobs for a schedule group, Windows Task Scheduler opens and you can set up scheduling for the jobs in the group there. You can also use the
 **DataSet Job Groups Wizard**
 to edit your existing groups. For more information about managing groups, see

Creating a Schedule Group in Workbench 4

.


 Plugin Manager
----------------

In the
 **Plugin Manager**
 , you can view all of the plugins in Workbench 4, with their names, publishers, version numbers, descriptions, and assembly names. You can add a plugin to your registered plugins list by entering a search path.

To access the
 **Plugin Manager**
 , click
 **Plugin Manager**
 in the
 **More**
 tab at the top of the Workbench window.


 For more information about managing plugins, see

Managing Plugins in Workbench 4

.

