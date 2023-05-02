


**Important:**
 Support for Workbench 4 ended on
 **April 15, 2021**
 . Workbench may continue to run on installed machines, but it will no longer receive feature enhancements and security updates. When issues are encountered in Workbench 4, the recommended course of action from the Domo Support team will be to upgrade to the latest version of Workbench 5. To see this article for Workbench 5, click

*here**

.

Intro
-------

This is a troubleshooting guide for the most common errors that users encounter when using Workbench to import data into Domo.


 "Job Cannot Change Schema Dynamically"
----------------------------------------


####
 Cause


* Occurs when a file that was previously uploaded has new columns added to it, one or more of the columns have been renamed, or the columns have been reordered in the original source. Jobs will also fail when the data type of a column is changed (e.g. from "Date" to "Text").
* There is a setting called
 **Allow schema changes**
 in the
 **DataSet Jobs > Settings**
 in Workbench. It is disabled by default, but when enabled, it allows dynamic schema changes to occur.


####
 Notes and Recommendations


* Adding new columns and reordering columns is generally safe, but Domo does not recommend deleting columns.
* To ensure that cards and DataFlows based on the DataSet do not break, leave the schema the same.


####
 Solution(s)


* **Revert the changes.**
 If possible, revert any changes that were made to the original data source that caused the schema to change.
* Manually running the job once via the Workbench UI updates the schema, regardless of the setting for
 **Allow schema changes**
 in the
 **DataSet Jobs > Settings**
 in Workbench.
* If you change the setting, Workbench updates the schema automatically. If you are confident that the changes will not affect existing cards or DataFlows, you can change the
 **Job Settings**
 to allow the schema to be set dynamically. This allows future changes to happen dynamically. If you decide to enable it, Domo recommends disabling it once you fix the DataSet.

"Source File Doesn't Exist"/"File Not Found"
----------------------------------------------


####
 Cause

The file does not exist in the location specified in
 **DataSet Jobs > Source > File Path**
 in Workbench.

###
 Solution


* Update the File Path in
 **DataSet Jobs > Source > File**
**Path**
 in Workbench with the correct file name and location.
* Make sure the file is in the right location and has the name specified in Workbench.

"504 Gateway Timeout"
-----------------------


####
 Cause

This error occurs when there is a communication error between Workbench and your Domo instance.

###
 Solution


* If this is the first time you are attempting to use Workbench, you will need to make sure that the proxy settings in Workbench are configured properly. Proxy settings can be configured in Workbench in
 **Settings > Proxy**
 .
* Make sure your network is configured to allow access to Domo.
* If your Domo Workbench jobs have worked previously, you may be able to resolve this by re-running the job.

"File Is In Use"
------------------


####
 Cause

The file that Workbench is trying to import to Domo is in use by another application and/or the file is locked. This can happen if the file is in use, such as when the file is being copied when the Workbench job runs.

###
 Solution


* Ensure that the file is not in use when the Workbench job runs.
* Change the schedule of the job so that the file won’t be in use when Workbench runs.

"Deadlock Victim"
-------------------


####
 Cause

This is a SQL error that occurs when you are attempting to import data from a database. It often happens when different queries attempt to access a record at the same time. The database software decides which query is allowed to run and will block other queries.

###
 Solution


* Update the Workbench schedule for the job to run when other queries are not running against the database.
* Review other queries that may be running at the same time and change when the queries run.

"Connection Login Timeout" when using ODBC plugin
---------------------------------------------------


####
 Cause

This often occurs when the database is under a heavy load.

###
 Solution

Retry the Workbench job at a different time when the load on the database is lower.

