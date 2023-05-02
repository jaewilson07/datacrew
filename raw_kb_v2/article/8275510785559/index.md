

Intro
-------

The Observability Metrics tool in the Governance Toolkit allows you to pull DomoStats-style reports from target instances and bring them into your primary instance

. This article provides information on adding a Domo Token Access account, and creating, scheduling, running, and cloning jobs with Observability Metrics.

Access Observability Metrics
------------------------------


**Important:**
 You must enable Observability Metrics for the instance where the job lives AND whichever instances you want to pull data from.


1. In the navigation header, go to


**More**


 >


**Admin.**
 The Admin Settings display.
2. In the


**Governance**


 menu, select


**Toolkit.**
 The Toolkit opens.
3. Under either
 **Your Tools**
 or
 **Available Tools**
 , select
 **Observability Metrics**
 .


**Note:**
 If the
 **Toolkit**
 option does not display in the
 **Governance**
 menu, ensure your user role has the required grants. You may need to enable the Toolkit by reaching out to your Account Executive (AE).

Required Grants
-----------------


 To access the Governance Toolkit, you will need one of two grants enabled: Create Custom Pipeline Processes or Administer Custom Pipeline Processes. Grants can be added to a custom user role. By default, the Administer Custom Pipeline Process grant is enabled for Admin users.


####

Create Custom Pipeline Processes


* Allows the user to create, update, share, and delete jobs.
* Only allows the user to view jobs that they created or jobs that have been shared with them.


####

Administer Custom Pipeline Processes


* Allows the user to create, update, share, and delete jobs.
* Allows the user to see all jobs within the pipeline.


 To learn more about custom roles and grants, see

Managing Custom Roles.

Adding a Domo Access Token Account
-------------------------------------

You need to create a Domo Access Token account to connect to another instance and pull a report. There are two options for creating this account: an access token or a username and password. Only one option is required.


 1. In the navigation header, go to
 **Data.**


 2. From the left side rail, select

*Accounts.**


 3. Select
 **+ Add Account**
 .


 The Add Account modal displays.


 4. From the
 **Connector**
 menu, search and select
 **Domo Access Token**
 .


 Two options display for creating an account. Only one option is required.

 Option 1: With an access token. To generate an access token, follow the steps in the section below (see Generating Access Tokens). Then, return to this task and paste the token into the
 **Option 1: Remote Instance Access Token**

field in the Add Account modal.
* Option 2: With a username and password. This is the same username and password used in the target Domo instance.

6. Select
 **Connect**
 .

Your Domo Access Token account is created.

##

Generating Access Tokens


 1. In the navigation header on your target instance, go to
 **More > Admin**
 .


 2. Under
 **Authentication**
 , select
 **Access tokens**
 .

3. Select
 **+ Generate access token**
 and search for the Domo user requesting the access token.


 Choose an expiration date and select
 **Generate**
 .


 An access token displays.


 4. Copy the access token. The token is no longer available when you navigate away from the page.

Create a Job
--------------

1. In the navigation header, go to
 **More > Admin.**


 2. In the
 **Governance**
 menu, select
 **Toolkit.**


 3. From the
 **Your Tools**
 menu, select
 **Observability Metrics.**


 4. Select the
 **+ New Job**
 button.


 5. In the
 **Job Details**
 , fill out the following information:

 Job Name (required)
* Job Description (optional)

6. In the
 **Configuration**
 section of the
 **Job Details**
 tab, specify the following:

 Select the account for your instance (this account must be created prior to creating a job).
* Enter the URL of the instance (
 *domain*
 .

domo.com

). Remember to include "

domo.com

" at the end of your URL.
* Select an option for where you'd like to save run logs:

- Option 1: New DataSet

 Creates a new DataSet in your Domo instance. All runs of the job will write logging to the new DataSet.

- Option 2: Existing DataSet

 Existing DataSet allows you to combine multiple Domo Observability Metric jobs into a single logging DataSet.
* Must be a DataSet created by the Domo Observability Metrics tool.
* Existing DataSet must already contain rows of data.

7. In the
 **Report and DataSet Mapping**
 section of the
 **Job Details**
 tab, specify the following:

 Select a report type from the menu.
* Adjust toggle to either New DataSet or Existing Dataset
	+ If you choose New DataSet, enter a name in the
	 **New DataSet Name**
	 field.
	+ If you choose Existing Dataset, select a DataSet from the menu.


**Important:**


* Using an existing dataset will overwrite the data that exists on that DataSet.
* Each report should have a different DataSet. Different report types cannot use the same DataSet.

8. Select
 **Submit**
 .

The new job now appears in the job list on the main Observability Metrics page.

9. (Optional) To add multiple reports, select
 **+ Add Another Report**
 . Repeat the previous steps.

Schedule a Job
----------------

1. In the navigation header, go to
 **More > Admin.**


 2. In the
 **Governance**
 menu, select
 **Toolkit.**


 3. From the
 **Your Tools**
 menu, select
 **Observability Metrics.**


 4. In the
 **Scheduling**
 tab, complete the following:

 Select the frequency the job should run.


**Note:**

Some inputs are disabled depending on the chosen reports. Reports for “People” and “Group Membership” are the only reports that can be triggered more frequently than daily. They must be in a job with no other reports to run more frequently.

 Switch the toggle to
 **Active**
 .


 The job runs according to your specified frequency.


 Run a Job
-----------


 A job will execute according to the schedule set in the
 **Scheduling**
 tab when the toggle is switched to
 **Active**
 . When the toggle is
 **Disabled**
 , the job only executes when it is manually run.

You can manually


 run a job by selecting

*Job Options**
 in the job's details and selecting
 **Run Job.**


 After a job runs, the
 **Report and DataSet Mapping**
 section shows the output DataSets next to each row that has been run. This information can be found in the
 **Job Details**
 view.

In the
 **Report and DataSet Mapping**
 section in
 **Job Details**
 , you can change the DataSet where run logs are saved.


 1. Select
 **Edit**
 in the job's details.


 2. Select the current DataSet.


 A search menu displays containing all available DataSets in your instance.


 3. Search for the replacement DataSet. Select
 **Choose DataSet**
 .


 The job saves run logs in the updated DataSet.


 Clone a Job
-------------

To create jobs for more instances with the same reports and run logs DataSet, you can clone an existing job.


 1. In the navigation header, go to
 **More > Admin.**


 2. In the
 **Governance**
 menu, select
 **Toolkit.**


 3. From the
 **Your Tools**
 menu, select
 **Observability Metrics.**


 A list of jobs in your instance displays.


 4. Hover over a job in the list. Select

*Job Options**
 and choose
 **Clone.**


 The
 **Clone Job**
 modal displays.


 5. Enter a name, optional description, instance, and select the instance's

Access Token

account.

6. Select
 **Clone Job.**


 The cloned job appears in the job list on the main Observability Metrics page.

