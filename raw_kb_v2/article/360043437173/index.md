

This article discusses a number of training topics specific to Workbench.

Topic #1: Migrating from an older version of Workbench to a newer version and installing updates
---------------------------------------------------------------------------------------------------

There are many reasons to migrate to the newest version of Workbench—bug fixes, performance enhancements and added features, to name a few. Please consider regularly checking and upgrading to the latest version wherever possible. This will help you receive the best possible experience with Domo Workbench.

##
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


 utomatic updates include a restart of the Workbench service. If you want change control and planned maintenance, you may be interested in turning off the automatic update feature, as shown in the following screenshot:


###

Upgrading to Workbench 5

The latest version of Workbench is available in Domo.


**Workbench 4 Users**
 . The latest version will install over the top of version 4. Once you install the latest version, your jobs will automatically migrate for you.

###
 Check out the new interface

Check out

Understanding the Workbench 5 User Interface

to learn more about Workbench 5.


 Topic #2: Managing the Workbench job queue
--------------------------------------------

To optimize the usage of your Workbench computer, you may want to put restrictions on how Workbench jobs are run. The following tips will help you manage your computer.

###
 Limiting the Number of Jobs that Can Run at the Same Time

Choosing this option limits how many jobs are running at a time. In this instance, jobs will wait in a queue until a slot is opened for them to run.

. Under
 **Settings**
 , turn on
 **Limit Concurrent Jobs**
 .
2. Select the limit for Workbench jobs.


####
 Running Workbench Jobs Below Normal Priority Execution


 If you find that your Workbench Machine is using a lot of CPU, you can free up CPU for other applications by running the Workbench jobs at Below Normal Priority. This will limit the resources Workbench uses to execute your jobs and allow other applications to run normally. Typically, job execution will slow slightly.


1. Under
 **Settings**
 ,

turn on
 **Run job process as**
**Below Normal priority**
 .


####
 Canceling a Currently Running Job

There are a number of reasons you may want to stop a Workbench job. It may be that you encounter a long running query, or a job may be stuck in an error state. In this case, you can cancel the job.

. Open the preview pane for the job you want to stop.
2. Click the

button at the top.


####
 Manually Running a Job

If you want to update your data outside of the normal schedule, you can run the job manually.

. In the
 **Jobs**
 list, open the job you would like to run.
2. Click the

button at the top.

Topic #3: When and How to Use Impersonation
-----------------------------------------------

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
 Turning On Impersonation


1. In the
 **Configure**
 subtab for the job, expand the
 **Impersonation**
 section, then turn on
 **Requires Impersonation**
 .
2. Enter the
 **Domain**
 and
 **Username**
 and
 **Password**
 information.
3. Click
 **Validate**
 .

Topic #4: What To Do When Workbench Jobs Are Failing at a Fixed Interval
----------------------------------------------------------------------------

You may find that a Job runs for a specific number of minutes and then fails each time.


**To fix this problem,**

. Check the logs for the Job.
2. Find the point in the logs at which the query starts (look for the query string), and make note of the time stamp.
3. Go down the log to the point of the error and find the time stamp there.
4. Compare the difference.

If it’s five minutes, then there is a good chance that the execution query time needs to be increased in your Workbench Job because it is taking longer than five minutes to be passed. (Workbench has a default query execution timeout of 300 seconds/5 minutes.) You can change the timeout value by opening the
 **Configuration**
 subtab for your ODBC/OLEDB job, clicking the
 **Edit**
 button under "Processing," then configuring the value in the
 **Query Execution Timeout**
 menu.


**Note:**

There may be additional points of configuration for query timeout in your ODBC driver settings.


