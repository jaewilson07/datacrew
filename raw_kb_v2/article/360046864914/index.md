


**Important:**
 Support for Workbench 4 ended on
 **April 15, 2021**
 . Workbench may continue to run on installed machines, but it will no longer receive feature enhancements and security updates. When issues are encountered in Workbench 4, the recommended course of action from the Domo Support team will be to upgrade to the latest version of Workbench 5.

Intro
-------

If you find that your Workbench jobs are failing, the steps you should take depend on whether the jobs are failing a) on an automated schedule while successfully running manually, or b) on a fixed interval, i.e. jobs run for a specific number of minutes and then fail. This article describes in detail what you should do in both scenarios.

##
 Scenario #1: Jobs Are Failing on an Automated Schedule


 If you encounter the issue of Workbench Jobs failing on an automated schedule while successfully running manually, you may consider checking permissions and rights for the Windows Workbench Service.


 When running a Job manually in Workbench, Windows recognizes this as a user-requested action and treats it accordingly. Any local permissions granted to this user is passed down through this user-requested action. If you’re a local Admin, the Job is run with “Admin” rights. Conversely, a Workbench Job running on an automated schedule is initiated by the Workbench service itself. Depending on the credentials used to authorize the Workbench service, it may or may not have elevated permissions sufficient to execute that same Job. The schedule kicks off the job, but fails in lacking proper permissions.


 By default, the Workbench service starts with “Local System” permissions. Depending on your IT security policies, this user may be denied the rights necessary to execute tasks or access data sources within your network.


 A few possible solutions:


* As it is considered best practice to run the Workbench service as “Local System,” your IT group may be able to modify the local security policies of your PC to 1) allow the service to access the internet, incoming and outgoing on ports 80 and 443, and 2) allow the service to execute tasks as an Administrator.
* If the above option is not feasible, your IT group can create a service account with full Admin rights at either the local or domain level. This service account will be used in lieu of “Local System.” To switch the Workbench service to the new service account, do the following:

1. Click the Start button, then type “services.”
	2. In Services, locate and right-click on
	 **Domo Workbench**
	 , then select
	 **Properties**
	 .
	3. Click the
	 **Log On**
	 tab.
	4. Change the selected radio button to
	 **This account**
	 .
	5. Enter the credentials supplied by your IT group.
	6. Restart the service when prompted.


	 If the service starts successfully, the credentials were accepted.
* If your IT group is unable to modify the permissions for
 **Local System**
 or create a service account, you can use your own credentials, either local or domain.


**Note:**
 T

his is
 *not*
 a recommended configuration. If a user’s password changes, or they leave the company, the service will fail to start and Workbench jobs will fail.


###


 Scenario #2: Jobs Are Failing at a Fixed Interval

You may find that a Job runs for a specific number of minutes and then fails each time.


**To fix this problem,**

. Check the logs for the Job.
2. Find the point in the logs at which the query starts (look for the query string), and make note of the time stamp.
3. Go down the log to the point of the error and find the time stamp there.
4. Compare the difference.

If it’s five minutes, then there is a good chance that the execution query time needs to be increased in your Workbench Job because it is taking longer than five minutes to be passed. (Workbench has a default query execution timeout of 300 seconds/5 minutes.)

*Note:**

There may be additional points of configuration for query timeout in your ODBC driver settings.


