

Intro
-------

PDP Automation allows a user to configure a DataSet that outlines what PDP should look like for DataSet(s). Each job can run on a schedule and when the configuration DataSet updates.


 This article provides information about configuring PDP Automation in the following topics:

 Access the Toolkit
* Required grants
* Configuration DataSet
* Create a job
* Run a job
* Example job run
* Use dynamic policies
* Use multiple Filters on a single policy
* Remote instance configuration

Access the Toolkit
----------------------

To access the Governance Toolkit, do the following:

. Go to
 **More**
 >
 **Admin.**
2. In the
 **Governance**
 menu, select
 **Toolkit.**


**Note:**
 If the
 **Toolkit**
 option does not display in the
 **Governance**
 menu, make sure your user role has the required grants. You may need to enable the Toolkit by reaching out to your Account Executive.

Required Grants
-------------------

To access the Governance Toolkit a user will need 1 of 2 grants enabled for a user. Grants can be added to a custom user role. By default the Administer Custom Pipeline Process grant is enabled for Admin users.

 Create Custom Pipeline Processes
	+ This grant will allow a user to create, update, share and delete jobs.
	+ This grant will only allow a user to see jobs that they created or jobs that have been shared with them.
* Administer Custom Pipeline Processes
	+ This Grant will allow a user to create, update, share and delete jobs.
	+ this grant will allow a user to see all jobs

To learn more about custom roles and grants see

Managing Custom Roles

.


 Configuration DataSet
-------------------------


**Note:**
 The max limit for input rows with the PDP tool is one million rows. If you need a larger allowance, split any jobs larger than one million rows into smaller jobs.


* target\_ds
	+ This is the DataSet id that the PDP policy should be applied to
	+ In a configuration DataSet you can have multiple DataSet ids
* policy\_name
	+ The name of what the policy is called on the target\_ds
	+ If a policy with that name does not exist a new policy will be created with this name
	+ policy\_column
	+ The column name that contains the values you wish to filter by
* user\_group
	+ User id or emails
	+ Group id or name
	+ These are the users or groups you wish to have access to the PDP policy
	+ This supports multiple values. Different values should be separated by a pipe ‘|’
* value
	+ Values to filter the policy by
	+ This supports multiple values. Different values should be separated by a pipe ‘|’


 Create a Job
----------------


1. Navigate to the Governance Toolkit and select PDP Automation.
	* https://example.domo.com/admin/governance-toolkit/pdp-automation
2. Click
 **+ New Job**
 at the top right.
3. Fill out the following information:
	* Job Name (required)
	* Job Description (optional)
	* Configuration DataSet (required)
		+ This is the DataSet that defines what policies you wish to update or create.
	* Orphaned policy management (required)
		+ Orphaned policies refer to existing PDP policies on your DataSet defined in your configuration DataSet, but policies that are not being updated in your configuration DataSet.
		+ Keep
			- Will leave those existing policies in place with no changes.
		+ Delete
			- Will delete those policies that exist on the DataSet but not in the configuration file.
	* Run Logs (required)
		+ Each job will keep track of executions of the job and information surrounding that.
		+ New DataSet
			- Will create a new DataSet in your Domo instance and all runs of the job will write logging to the new DataSet.
		+ Existing DataSet
			- Existing DataSet will allow you to combine multiple PDP Automation jobs into a single logging DataSet.
			- The DataSet must be a DataSet created by the PDP Automation tool.
				* DataSet must also already contain rows of data.
		+ Email notifications (optional)
			- You can add user emails to this field.
			- Each email will receive an email notification from Domo each time the job runs.
			- The notification will outline what the job did during the run and any failures that occurred.

Run a Job
-------------

Each job has an Enabled Toggle. This will control how a job is run.

 Preview Only
	+ The job will only execute when the job is manually run.
	+ When the job is run it will not update the actual target DataSet(s) from your configuration file. It will update the log DataSet with all the changes it would have made to the DataSet.
		- This allows you to validate the job before it updates your DataSets.
* Active
	+ This will update the PDP policies on your DataSet(s).
	+ The job will execute every six hours.
	+ The job will execute every time the configuration DataSet is updated.


 Example Job Run
-------------------


* PDP Before run:
* Configuration DataSet:
* PDP after run:
* Logging DataSet:

Use Dynamic Policies
------------------------

Dynamic policies can be configured in your configuration file.


 To add a dynamic policy, set the ‘policy\_column’ & set the ‘value’ column to the appropriate “Trusted Attribute”.

###

List of Trusted Attributes


|
 Trusted Attribute
  |
 Value
  |
| --- | --- |
|
 Name
  |
 domo.policy.managed\_display\_name
  |
|
 Email
  |
 domo.policy.managed\_email\_address
  |
|
 Secondary email
  |
 domo.policy.managed\_alternate\_email\_address
  |
|
 Employee number
  |
 domo.policy.managed\_employee\_number
  |
|
 Hire date
  |
 domo.policy.managed\_hire\_date
  |
|
 Title
  |
 domo.policy.managed\_user\_title
  |
|
 Department
  |
 domo.policy.managed\_user\_department
  |
|
 Location
  |
 domo.policy.managed\_employee\_location
  |
|
 Phone
  |
 domo.policy.managed\_phone\_number
  |
|
 Desk phone
  |
 domo.policy.managed\_desk\_phone\_number
  |
|
 Locale
  |
 domo.policy.managed\_user\_locale
  |
|
 Time zone
  |
 domo.policy.managed\_user\_time\_zone
  |
|
 Employee ID
  |
 domo.policy.managed\_employee\_id
  |

If you would like to ignore the case on a dynamic policy you can add “:ignore\_case” to the end of the trusted attribute in your value column.

Use Multiple Filters on a Single Policy
-------------------------------------------

To add multiple filters, set the ‘policy\_name’ & ‘user\_group’ to the same values.

*Important:**
 You need to order this DataSet by the `target\_ds` column and then the `policy\_name` column. This ensures that all the actions happen on the same DataSet and the same policy.


 Remote Instance Configuration
---------------------------------

Remote instance configuration allows you to be in one Domo instance and configure PDP for other instances to which you have access. To configure PDP remotely, you need a

configuration DataSet

, which is described previously in this article. You also need a

Domo Access Token account

configured with either a

Domo Access token

or with a username and password for the remote instance.

##
 Configure PDP Automation for Remote Instance


1. While creating or editing a job for PDP Automation, in the
 **Configuration**
 section, select a configuration DataSet populated with valid values for the remote instance according to PDP Automation guidelines given in this article. See

Configuration DataSet

.
2. Still in the
 **Configuration**
 section, choose
 **Remote Instance**
 for where to run the job.


 The
 **Instance Settings**
 display.
3. In the
 **Instance:**
 field, enter the domain for the remote instance you want to manage PDP for.
4. From the
 **Select the account for your instance:**
 list, select a valid

Domo Access Token account

. To learn how to configure a Domo Access Token account, see the next section.
5. Fill in the details for the
 **Reporting**
 section.


**Note:**
 The notification emails and metric logs are written to the instance the policy is running from, not to the remote instance.
6. Select
 **Submit**
 to save your changes to the job.


###


 Configure Domo Access Token Account

Follow these steps to configure a Domo Access Token account:

. In the Domo navigation header, select
 **Data**
 .


 The
 **Data Center**
 opens.
2. In the sidebar, select

*Accounts**
 .
3. Select
 **Add New**
 >
 **Account**
 .


 The
 **Add Account**
 modal displays.
4. In the modal, complete one of the following options:
	* **Access Token —**
	 Enter an access token in the
	 **Remote Instance Access Token**
	 field. To learn how to generate a token, see

 Generate Access Token

 .
	* **Username and password —**
	 Enter your credentials in the
	 **Remote Instance Username**
	 and
	 **Remote Instance Password**
	 fields.
5. Select
 **Connect**
 .


###


 Generate Access Token

Follow these steps to generate an access token:

. In the Domo navigation header, select
 **More**
 >
 **Admin**
 .


 The Admin Settings display.
2. In the
 **Authentication**
 menu of the Admin Settings, select
 **Access tokens**
 .
3. On the
 **Access tokens**
 page, select
 **+ Generate access token**
 .
4. Enter a description in the
 **Access token description**
 field.
5. Search for and select a user for whom you are generating the access token.
6. Select an expiration interval in the
 **Expire after**
 list.
7. Select
 **Generate**
 .
8. Copy the code to use.


