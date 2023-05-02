


**Important:**
 Support for Workbench 4 ended on
 **April 15, 2021**
 . Workbench may continue to run on installed machines, but it will no longer receive feature enhancements and security updates. When issues are encountered in Workbench 4, the recommended course of action from the Domo Support team will be to upgrade to the latest version of Workbench 5. To see this article for Workbench 5, click

*here**

.

Intro
-------

This article discusses a number of training topics specific to Workbench.

##

Topic #1: Migrating from an older version of Workbench to a newer version and installing updates

There are many reasons to migrate to the newest version of Workbench—bug fixes, performance enhancements and added features, to name a few. Please consider regularly checking and upgrading to the latest version wherever possible. This will help you receive the best possible experience with Domo Workbench.

###
 What version am I using right now?

You m


 ay be wondering whic


 h version you’re using now. You may also be asked by Domo Support to identify the version to provide customized support. There should be a blue icon in the system tray. If you hover over that icon, the version will be displayed.

If you don’t see the blue icon, try clicking this up arrow first

. Alternatively, the version number will also be contained within the Workbench log files. (The default location for Workbench 4 log files is


 %PROGRAMDATA%\Domo\Workbench\Logs


 ).

*Note:**
 You may see multiple Workbench monitors in the system tray. You only need one monitor running and can close out all others.


####
 Automatic updates

By default, automatic updates are enabled and applicable to the latest major version. We recommend leaving automatic updates turned on to ensure the best performance from your Workbench application.


 A


 utomatic updates include a restart of the Workbench service. If you want change control and planned maintenance, you may be interested in turning the off the automatic update feature, as shown in the following screenshot:


####

Upgrading to Workbench 4.6

The latest version of Workbench is available in Domo.


**Workbench 2 Users**
 . You’ll be given the option to import your jobs from v2 into v4 upon launching Workbench 4.6.


**Workbench 3 Users**
 . The latest version will install over the top of version 3. Once you install the latest version, your jobs will automatically migrate for you.


**Workbench 4 Users**
 . Watch this video to see how to upgrade to the latest version of Workbench. Once you install the latest version, your jobs will automatically migrate for you.

###
 Check out the new interface

Check out

Understanding the Workbench 4 User Interface

to learn more about Workbench 4.6.

##
 Topic #2: Managing the Workbench job queue

To optimize the usage of your Workbench computer, you may want to put restrictions on how Workbench jobs are run. The following tips will help you manage your computer.

###
 Limiting the number of jobs that can run at the same time

Choosing this option limits how many jobs are running at a time. In this instance, jobs will wait in a queue until a slot is opened for them to run.

. Under
 **Settings**
 , turn on
 **Limit Concurrent Jobs**
 .
2. Select the limit for Workbench jobs.


####
 Running Workbench jobs below normal priority execution


 If you find that your Workbench Machine is using a lot of CPU, you can free up CPU for other applications by running the Workbench jobs at Below Normal Priority. This will limit the resources Workbench uses to execute your jobs and allow other applications to run normally. Typically, job execution will slow slightly.


1. Under
 **Settings**
 ,

turn on
 **Set data collector process to Below Normal Priority**
 .


####
 Canceling a currently running job

There are a number of reasons you may want to stop a Workbench job. It may be that you encounter a long running query, or a job may be stuck in an error state. In this case, you can cancel the job.

. Select the job you want to stop.
2. Click the purple
 **Cancel**
 button at the top.


####
 Manually running a job

If you want to update your data outside of the normal schedule, you can run the job manually.

. Select the job you would like to run.
2. Click the purple
 **Run**
 button at the top.


###


 Topic #3: When and how to use impersonation

*What is impersonation?**
 Impersonation allows Workbench to run jobs as a specified user to allow access to restricted resources.


**When should I use impersonation?**
 When running a job on a schedule, if the file is not located on the local machine Workbench is running on, you must set up impersonation for access rights.


**Connecting to a network file.**
 When you connect to a file that is stored on a network location, the file is usually only accessible to a few users. When you turn on on impersonation, the Workbench job will run as the user specified, allowing access to the file.


**Connecting to an ODBC/OLAP connection that requires NT Authentication.**
 When you connect to a database that uses NT Authentication, the database tables are usually only accessible to a limited number of users. By turning on impersonation, the Workbench job will run as the specified user, allowing access to the database.


**QuickBooks jobs.**
 QuickBooks requires an interactive user session for Workbench to connect. Workbench will use the impersonation credentials to find the correct user session. This will allow your QuickBooks jobs to run consistently.


**Connecting through a proxy.**
 Some proxies restrict access to the Internet by user. When you turn on impersonation, the Workbench job will run as the specified user, allowing access to the Internet through the proxy server.

###
 Turning on impersonation


1. Under
 **Job Name > Settings > Impersonation**
 , turn on
 **Requires Impersonation**
 .
2. Enter the
 **Domain**
 and
 **Username**
 information.
3. Click
 **Validate**
 .


###


 Topic #4: What to do when Workbench Jobs are failing at a fixed interval

You may find that a Job runs for a specific number of minutes and then fails each time.


**To fix this problem,**

. Check the logs for the Job.
2. Find the point in the logs at which the query starts (look for the query string), and make note of the time stamp.
3. Go down the log to the point of the error and find the time stamp there.
4. Compare the difference.

If it’s five minutes, then there is a good chance that the execution query time needs to be increased in your Workbench Job because it is taking longer than five minutes to be passed. (Workbench has a default query execution timeout of 300 seconds/5 minutes.)

*Note:**

There may be additional points of configuration for query timeout in your ODBC driver settings.


