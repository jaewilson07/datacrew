


**Important:**
 Support for Workbench 4 ended on
 **April 15, 2021**
 . Workbench may continue to run on installed machines, but it will no longer receive feature enhancements and security updates. When issues are encountered in Workbench 4, the recommended course of action from the Domo Support team will be to upgrade to the latest version of Workbench 5. To see this article for Workbench 5, click

*here**

.

You can schedule a DataSet job to routinely upload data from external DataSets to Domo. You can select a basic update frequency (once per day, once per week, etc.). In Workbench 4.5+, you can also choose a
 **Watch File**
 option in which the job runs anytime the file is updated.


 For more information about the schedule job settings, see

Understanding the Workbench 4 User Interface

.

*Important:**
 When running on a schedule, Workbench uses the local system account to access the file. If the local system does not have access to the file, an error appears saying the file could not be accessed. You can get around this by changing the settings for Domo in Windows Services so you can run the DataSet Job with your own account, which has access to the file. For more information, see

How do I run a scheduled job when my local system does not have access to network files?


**Notes:**

 The
 **Watch File**
 option works only when the file being watched is on the same PC as Workbench.
* The job scheduler in Workbench 4
 *only*
 allows you to choose from a list of basic frequencies (such as once per day, once per week, etc.). You cannot choose specific times in a day, specific days in a week, etc. However, you can set advanced scheduling options for groups of DataSet Jobs in Windows Task Scheduler. For more information, see

Creating a Schedule Group in Workbench 4

.
* A scheduled DataSet job sends data from the specified DataSet to Domo.


 You can view the DataSet information in Domo by clicking

*> Data Center**
 . For more information, see

Data Center Layout

.


 If there are any errors in the data, the DataSet is not sent to Domo. You can review logged information in the log files.
* A scheduled DataSet job uses the same update setting used when uploading data manually.
* You can receive an email report when a scheduled DataSet job runs. For more information, see

Setting Notifications in Workbench 4

.
* You can set a scheduled DataSet job to run only if the source file has changed.
* You can disable a scheduled DataSet job by changing the schedule to update manually.

*To set an update schedule for a DataSet job,**

. In the
 **Accounts**
 pane, locate and click on the DataSet job you want to set an update schedule for.
2. Click
 **Schedule**
 in the options list under the job name.
3. In the Dynamic Options panel, select the desired update frequency in the
 **Update**
 menu.


 Different options appear depending on the selected update frequency. For example, if you selected an update frequency of less than a day, you have the option to specify a range of hours when updating is active. If you select
 **Every Mont**
**h**
 as the update frequency, you are prompted to enter the time of day as well as the days of the month when updating will occur. If you select
 **Watch File**
 (Workbench 4.5 only), the DataSet Job will run anytime the file is updated.
4. Configure options as necessary for the selected update frequency.
5. Click
 **Save**
 in the
 **DataSet Jobs**
 grouping

in the Buttons toolbar at the top of the Workbench window.

*To disable a scheduled job,**

. In the
 **Accounts**
 pane, locate and click on the DataSet job you want to disable scheduling for.
2. Click
 **Schedule**
 in the options list under the job name.
3. In the
 **Update**
 menu, select
 **Manually**
 .
4. Click
 **Save**
 in the
 **DataSet**
**Jobs**
 grouping

in the Buttons toolbar at the top of the Workbench window.

*Tips:**
 If a scheduled job does not run when you expect,

 Check the log files for errors.
* Ensure that the machine is properly connected to the network and the Internet.

For information about configuring update schedules for groups of jobs in Windows Task Scheduler, see

Creating a Schedule Group in Workbench 4

.

