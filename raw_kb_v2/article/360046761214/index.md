


**Important:**
 Support for Workbench 4 ended on
 **April 15, 2021**
 . Workbench may continue to run on installed machines, but it will no longer receive feature enhancements and security updates. When issues are encountered in Workbench 4, the recommended course of action from the Domo Support team will be to upgrade to the latest version of Workbench 5. To see this article for Workbench 5, click
 **here**
 .


####
 Intro

Get answers to frequently asked questions about Workbench.

--


####
 What is Workbench?

Workbench is a Windows-based application that lets you upload DataSets to Domo.

 You can upload data from databases via data queries in ODBC System DSNs, CSV and delimited text files, Microsoft Excel spreadsheets, Jira, QuickBooks, and XML namespaces.
* You can upload data manually or through scheduled jobs.
* Workbench validates data and securely transfers data to Domo.

###
 Can Workbench update or make any changes to our original data?

No, it does not modify your original data. Workbench is designed to read and transmit data to Domo. Workbench does let you modify the data going in to Domo through transforms, calculations, and joins.


**Note:**

For database connections only, if your ODBC driver supports read/write, any queries you pass into your database can be considered a “write.” For example, temp tables, inserts, or deletes are entirely possible with Workbench and database connections. Consider using read-only credentials for your database connections if there is cause for concern.


####
 What type of encryption does Workbench use to transmit data?

All data transferred from Workbench into Domo’s production systems is sent using encrypted HTTPS sessions, the same technology you typically use to conduct online banking and online purchases. No data is sent from Workbench to Domo in an unencrypted manner.

###
 If access credentials cannot be stored as part of the Windows DSN, how are those credentials stored?

Workbench stores access credentials for ODBC DataSets. To properly protect these credentials, Workbench uses industry standard AES-256 bit encryption. Workbench enforces encryption automatically so users do not have the opportunity of mistakenly storing their passwords or other credentials inappropriately.

###
 How are access controls configured for Workbench?

Workbench is configured by the client from an access control perspective. Workbench allows users to upload DataSets into Domo to enable KPI card creation and automated updates. Users select DataSets (System DSNs, flat files, Microsoft Excel spreadsheets, JIRA, QuickBooks, XML namespaces) to which they already have access. Workbench can connect to DataSets only if the Microsoft Windows system running the software can reach the DataSet, and if the machine has access to read the DataSet files or databases.

###
 Is any of the data transmitted by Workbench cached on the local machine?

Workbench uses a temp directory (C:\Windows\Temp\DomoCache) to stage incoming data. If you have many DataSet Jobs with a large number of rows, this temp directory can fill up with a large amount of data. Make sure the C:\ drive has a reasonable amount of free space for these files. These files are cleared when the job is complete and are not permanently stored.

###
 Do you support Windows 32 and 64-bit versions?

Yes, both 32 and 64-bit Windows versions are supported. For more system requirements information, see

Installing Workbench 4

.

###
 Are 32-bit ODBC connections supported?

Yes. Workbench concurrently supports both 32- and 64-bit ODBC drivers.

###
 What is the maximum size of a DataSet that Workbench supports?

Workbench limits uploading to 50 million rows for a single upload job. You can use a

lastvalue

variable to upload rows incrementally. For more information about query parameters, see

Understanding the Workbench 4 User Interface

.


 You can check the size of your data by clicking
 **Validate Data**
 .

###
 Can Workbench run from a command line?

Yes, Workbench can be executed directly from a command line and/or added as a task in an ETL package.


 For more information about running Workbench from the command line, see

Running Workbench 4 from the command line

.

###
 How can I improve the performance of a MySQL driver?

When using a MySQL driver, you can decrease its memory usage and improve its performance by configuring parameters for the DSN.


**To configure your MySQL DSN,**

. Open the the Windows ODBC Data Source Administrator by entering "ODBC" in the Start Menu search, then selecting "Data Sources (ODBC)".
2. Select your DSN, then click
 **Configure**
 .
3. Click
 **Details**
 to display additional settings.

1. In the
	 **Connection**
	 tab, mark the
	 **Allow big result sets**
	 box.


	 When selected, the driver does not set packet limits for results.
	2. In the
	 **Cursors/Results**
	 tab, mark the
	 **Don’t cache results of forward-only cursors**
	 box and the
	 **Force use of forward-only cursors**
	 box.


	 When selected, the driver does not cache results and uses forward-only cursors.


**Note:**
 Workbench does not need anything other than "forward only" cursors and the MySQL ODBC driver performs better using the "forward only" cursors option.


####
 How do I get access to network files to run a scheduled job?

When running a job on a schedule, if the file is not located on the local machine Workbench is running on, you must set up impersonation for access rights.


**To set up impersonation,**

. Open
 **Settings**
 for the intended job.
2. Under
 **Settings > Impersonation,**
 turn on
 **Requires Impersonation**
 .
3. Enter the
 **Domain**
 and
 **Username**
 information.
4. Click
 **Validate**
 .

If you are connecting to a file on a domain file share that the Workbench computer is not on, the domain impersonation will not work if you are not on the domain computer. You will have to give domain access to it.


**To give domain access,**

. Open
 **DataSet Jobs**
 in the
 **Accounts**
 pane in Workbench and locate the desired job.
2. Click
 **Source**
 .
3. Under
 **Transport Method**
 , enter the network file path in the
 **Network File Path**
 field.
4. Enter your credentials.
5. Click
 **Apply Changes**
 .


####
 How do I clear the queue in Workbench?

Say you have a dataset set up to update every hour, and you keep getting an error when you’re trying to run the job in Workbench. More specifically, you’re not able to add that job to the queue because it is either already queued or currently executing.


 There are a few reasons why this error can occur and ways to avoid it:

 Check to ensure your jobs are not being scheduled too close to each other. If a job is currently running and another job is scheduled to start while the current job is running, you will see this error. This is normal, as the queue is busy processing the running job. If a job is already in the queue, the queue will not allow it to be queued again until the running job completes or the Domo Workbench service is restarted.
* The current job could be in a non-responsive state. If a job is running longer than expected, open a case with Domo Support to investigate the issue further. For information on how to contact Support, please see:

Getting Help

.
* Recreating a job with a different name and deleting the previous job that is stuck in the queue is one way to reset the queue. You can also restart the Workbench service, which will flush the queue.  Normal workflow of Workbench jobs should return after restarting.  If restarting the service does not return your Workbench to normal operation, please open a case with Domo Support. For information on how to contact Support, please see:

Getting Help

.


####
 How do I change data capture using Workbench?


 You can create a new

job that will append the data that has changes in the RDBMS (Relational database management system) since the last load.


**Job setup steps**

. Perform the initial load of the data using
 **Create New Data Source**
 .
2. The two key setup lines in the SQL that are very important are as follows:


* Where "ReportDate" >

'!{lastvalue:ReportDate}!'

Ensure the Where clause contains the field that holds the value that indicate the changes since last load. The

'!{lastvalue:ReportDate}!'

contains the last value for the
 **Query Variable**
 as shown (see the Query Variable Setup section below). Call the
 **Query Variable**
 the same name as the field in the query that indicates the changes since the last Load.
* Order by


 Ensure you have an
 **Order By**
 clause in the SQL statement, since it will be the value from the last row that will be saved in the Lastvalue variable. If you don’t order by the column that contains the change data capture field, then you might not get the changed rows in the query.


3. After the initial load change, the job will start appending data to the existing dataset, as shown in the example below:

*Query Variable Setup Steps**

. Perform the Query Variable setup on the separate ‘Edit Query Variables’ screen. Note that you have the option of setting a Job Variable or a Global Variable.
2. Create a Job Variable that matches the ‘Name’ of the field that contains the data that controls the Changed data.

. The 'Current Value’ will indicate the last value the job loaded. The initial value must be less than the first record you want to import.


####
 What proxy settings does Workbench use?

When you first connect to Domo via Workbench, Workbench leverages your Windows system proxy settings. You
 *cannot*
 enter your proxy settings manually at this time. However, after your initial connection, you can then enter proxy settings manually in the
 **Settings > Proxy**
 tab.

###
 Can I save Workbench jobs to a shared folder? I want multiple users to be able to access and edit the jobs, but I can't figure out where jobs are saved on the drive.

All Workbench jobs are saved in the cloud and tied to a specific login,
 *not*
 saved locally. Therefore, the recommended solution to this problem is to install Workbench on a common server then create an admin user to be used by all users who need to modify jobs. Thus, all these users will be able to access the jobs, and you will not need to worry about saving copies of the job on a physical drive. A benefit specific to Workbench 4 is that users with access to the server can use Workbench simultaneously.

###
 Can I share Workbench jobs?

Jobs are tied to the Workbench installation in which they were created. If you wanted to share a job, you would need to export that job on the Workbench installation in which it was created then import it into the second installation of Workbench.


**Note:**

It is not recommended to have the same job running on two different instances of Workbench at the same time. If you do export a job from one and import it into another, be sure to remove it from its original Workbench instance after successfully importing it into another.


####
 Is multi-factor authentication available for Workbench?

Not at this time.

###
 Can I do a mass export of all my job files?

Yes. Workbench 4.5.1 allows the mass import/export of job files. Right-click
 **DataSet Jobs**
 then select
 **Tools > Export**
 . You are then given the option to check a box for each job you want to export.


####
 What are the recommended specifications to run Workbench?


* Operating system: Any version of Windows still supported by Microsoft
* CPU: A modern 4- or 8-core processor
* Memory: 8-16 GB
* Hard drive: 250 MB of space minimum, 2 GB recommended (though more may be required depending on the amount of data in your jobs)


####
 What firewall rules or ports need to be open for Workbench?

Ports 80 and 443 bi-directional

###
 I’ve put my database connection information in correctly, but the light does not turn green. What do I do?

Some databases, like ACCESS, SAGE, ORACLE, DB-2, and TERADATA, will not validate the transport with a green LED. The validation criteria is a true/false response to the query “SELECT 1.” A positive response will validate and turn the LED green. If there is no response, the LED stays red. Input your query and run a “Preview” to run a true connection validation.

###
 Does Workbench throttle CPU usage?

Not by default, but Workbench 4.51 does have this as a configurable option.

###
 Where does Workbench store staging data by default? And can I move this staging data?

The data is stored in C:\Window\Temp\DomoCache. Currently you cannot move the staging folder.

###
 The schedule group “existing schedule” radio button is grayed out---what do I do?

Close Workbench and open it as an Administrator.

###
 How do I get the list of table names or stored procedures on my database?

The query builder is in the
 **Source**
 pane. This may give you a list of tables, views, and procedures. Be aware this is not compatible with all database types.

###
 I am unable to add a user to the Domo Workbench users group in Workbench 4.5+. Why is this?

Ensure your Windows username is not the same as the PC name. Windows 10 appears to enforce this. Older versions of Windows may also be impacted.

###
 My QuickBooks Workbench jobs will not run on schedule. What do I do?

You must be logged into Windows with an active session for QuickBooks integrated applications to run unattended.

###


 What do I do if the Unsafe Save dialog appears?

The "Unsafe Save" dialog is displayed when your local job configuration and the remote job configuration stored in Domo do not match up or the job is currently running. To prevent the loss of data, you must first wait for the job to finish if it’s running, then re-sync your local configuration with Domo. This can be done by either clicking
 **Revert**
 or pressing F5 on your keyboard to refresh your entire job list. Unfortunately you will lose any changes that you have made when you take either of these actions. If your job runs long enough or frequently enough that you constantly see this dialog when attempting to make changes, you likely need to temporarily turn off the Workbench service, make your changes, then re-enable the service to start running your newly modified job.

###
 My IT department requires a whitelist for all outgoing internet traffic from our network. Does Domo have an IP whitelist for purposes of running Workbench?

Domo Support can provide you with an IP to whitelist. Note that although unlikely, the IP can change at any moment and without notice, resulting in Workbench job failures. It is advised that you whitelist by DNS name if possible. (e.g.


 instance.domo.com


 ).

###
 Is there a way to move my DomoCache directory to a different disk drive?

The current version of Workbench doesn't allow you to separate the operating system from the application data, but you can work around this issue using hard-coded symbolic links. The following example shows how a user moved his DomoCache directory to the E: drive:


`mklink /J "C:\ProgramData\Domo\Workbench\DomoCache" "E:\Domo\Workbench\DomoCache"`

###
 What limitations exist for self-serve accounts?

Self-serve users have a limitation of one auto-run per day and one manual run per hour. If the auto-run fails on the server, this does
 *not*
 count as your one auto-run. Auto-runs only count as runs if an execution is created (i.e. it shows up in the job history in Domo).

*Note:**
 Be sure to set notifications for failures to alert you if a job is unsuccessful. For more information, see

Setting Notifications in Workbench 4

.


