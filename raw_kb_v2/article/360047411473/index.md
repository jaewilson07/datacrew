


**Important:**
 Support for Workbench 4 ended on
 **April 15, 2021**
 . Workbench may continue to run on installed machines, but it will no longer receive feature enhancements and security updates. When issues are encountered in Workbench 4, the recommended course of action from the Domo Support team will be to upgrade to the latest version of Workbench 5. To see this article for Workbench 5, click

*here**

.

Intro
---------

There are many reasons to migrate to the newest version of Workbench—bug fixes, performance enhancements and added features, to name a few. Domo Support will always be willing to troubleshoot issues with legacy versions, but we provide our best support when you’re running the latest version. Please consider regularly checking and upgrading to the latest version wherever possible. This will help you receive the best possible experience with Domo Workbench.


 Please note, before proceeding with any update or migration, that you must back up your jobs. Workbench 2 users can copy the locally-stored XML files. Workbench 3+ users must export each job individually. If there are any issues or errors, you may need backups. If possible, ask your IT department to take a full snapshot or backup of your VM, Server, or PC before doing any upgrade.

Finding Your Current Version
-------------------------------

You m


 ay be wondering whic


 h version you’re using now. You may also be asked by Domo Support to identify the version in order to provide customized support. There should be a blue icon in the system tray. If you hover over that icon, the version will be displayed.

If you don’t see the blue icon, try clicking this up arrow first

. Alternatively, the version number will also be contained within the Workbench log files. (The default location for Workbench 4 log files is C:\ProgramData\Domo\Workbench\Logs.)

*Note:**
 You may see multiple Workbench monitors in the system tray. You only need one monitor running and can close out all others.


 Turning Off Automatic Updates
--------------------------------

By default, automatic updates are enabled and applicable to the latest major version, currently 4.x. If you are on Workbench 3, you will not automatically receive updates to Workbench 4. Likewise, if using v4.x, you will not be automatically upgraded to Workbench 5 when it becomes available.


 A


 utomatic updates include a restart of the Workbench service. Users who want change control and planned maintenance may be interested in turning the off the automatic update feature, as shown in the following screenshot:

Please plan for regular manual maintenance and updates to ensure the best performance from your Workbench application.


 Importing a Workbench 2 or 3 Job into Workbench 4
---------------------------------------------------

You can install and simultaneously run Workbench 2.x and Workbench 4 on the same Windows machine. You cannot run Workbench 3 and 4 on the same machine.


 Upgrading from an older major version to a new one must be done manually. The latest version of Workbench, as well as some legacy versions, are available in Domo. For more information about downloading Workbench, please visit

Installing Workbench 4

.
 **Please back up your jobs before proceeding with any upgrade.**


**Workbench 2 Users**
 – You will be given the option to import your jobs from v2 into v4 upon running the installer. When moving from v2 to v3, all jobs must be moved manually because they are stored locally in v2.


**Workbench 3 Users**
 – Workbench 4 will install over the top over version 3. Your jobs will automatically migrate for you.


**Workbench 4 Users**


 – You will receive the latest release of Workbench through the automatic update system, if so enabled.


 In migrating from Workbench 2 or 3 to Workbench 4.x, note the following:

 You must now upload job files using a computer account, rather than a personal user or administrator account. Typically, a network administrator must grant you access rights to the computer so you can upload files.
* Because Workbench runs as a service and cannot access the user space, only system DSNs work with Workbench, not user DSNs.
* Job files are now imported into a central repository in Domo. If the file is not located on the local machine Workbench is running on, the user may need to set up impersonation for access rights.
* Basic scheduling is no longer done using Windows Task Scheduler.  You now schedule basic jobs in Workbench by selecting a frequency (such as once per day, once per week, etc.). You cannot choose specific times in a day, specific days in a week, etc. However, advanced scheduling is available for groups of jobs using Windows Task Scheduler.
* When Workbench 4 is first launched, an attempt is made to detect Workbench 2 jobs and perform an automatic migration. If the migration is successful, Workbench 2 jobs are disabled and backed up/archived if necessary. After this initial launch, if you import a Workbench 2 job into Workbench 4, you must manually disable the job in Workbench 2 so data is not updated from both versions.


**Important:**


 Because Workbench jobs get encrypted at the time of job creation, it is best practice to keep an exported and unencrypted backup stored locally or on a network.  If the computer used to create the jobs becomes unavailable, you will always have a backup of the jobs that will easily import (re-encrypt) into a new Workbench on a different computer.


**To import a Workbench 2 or 3 job into Workbench 4,**

. In Workbench 4, click
 **Tools > Import**
 , then select the Workbench 2 or 3 job configuration file (XML) you want then click
 **Next**
 .
2. (Conditional) If asked whether you want to overwrite an existing job, select
 **Yes**
 to overwrite or
 **No**
 and enter a new name if you do not want to overwrite the existing file.
3. Click
 **Next**
 .
4. Click
 **Next**
 again to confirm.

