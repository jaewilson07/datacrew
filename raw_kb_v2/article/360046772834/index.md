


**Important:**
 Support for Workbench 4 ended on
 **April 15, 2021**
 . Workbench may continue to run on installed machines, but it will no longer receive feature enhancements and security updates. When issues are encountered in Workbench 4, the recommended course of action from the Domo Support team will be to upgrade to the latest version of Workbench 5. To see this article for Workbench 5, click

*here**

.

Intro
-------


 Workbench consists of a service and an application.

The Workbench service runs as a Windows service, starting up automatically after the machine starts Windows. You can start, stop, or restart the service manually.


 For information about running the Workbench service, see

Starting, Stopping, and Restarting the Workbench 4 Service

.


 The Workbench application runs as a Windows program. You can run the application from the Windows Start menu.


 Running Workbench from the Start menu
---------------------------------------

Follow the steps in this section to run Workbench from the Windows Start menu.


**To run the Workbench application,**

 Click
 **Start > Domo > Domo Workbench**
 .


 You can also start the Workbench application by running the executable, which is typically installed to

C:\Program Files\Domo\Workbench

.


 For information about the controls and field settings in Workbench, see

Understanding the Workbench 4 User Interface

.


 Running Workbench from the command line
-----------------------------------------


 You can queue Workbench jobs from the command line using


`wb queue-job --server <url> --jobid <id>`


 where

url

is the server of your Domo instance (
 *mycompany.domo.com*
 ) and

jobid

is the ID of the job.


 For example:


`"C:\Program Files\Domo\Workbench\wb.exe" queue-job --server

acme.domo.com

--jobid 505`

*Notes:**


* You can determine the ID of a job by selecting
 **File > Open Job**
 .
* In the server parameter, specify only the server not the http or https protocol.
* Workbench jobs run from the command line use the job and notification settings as specified per job in
 **Jobs > Job Settings**
 and
 **Job > Notifications**
 .
* Log entries for jobs processed at the command line are logged to a

Workbench.DataCollector\_\_yyyy-mm-dd

file in the job log folder.


 Typically, log files are located in

C:\ProgramData\DomoWorkbench

.
* You cannot create a DataSet from the command line.


 Use Workbench to initially upload data when creating a DataSet.
* To successfully run a Workbench job from the command line, ensure the upload DataSetting is set to replace or append to an existing DataSet.
* In
 **File > Settings > Logging**
 , you can specify logging settings.


 For example, you can specify using local time in logs and cleaning up log files.


