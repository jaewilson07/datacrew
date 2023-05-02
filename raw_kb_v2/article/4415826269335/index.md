

Intro
-------

The Virtual DataSet Sharing Toolkit allows for a user to share a DataSet from one Domo instance to another. The DataSet created on the second instance is a virtual DataSet. Virtual DataSets are DataSets linked to the original DataSets, receiving new data and schema changes in real-time as the primary DataSet receives them.


 Alongside Domo Sandbox, this will allow for DataSets to be shared from the Prod instance down into the Dev or Testing instance.


 Accessing the toolkit
-----------------------

The
 **Governance Toolkit**
 can be found in the
 **Admin**
 section of Domo, under
 **Governance**
 then
 **Toolkit**
 .

https://{INSTANCE}.domo.com/admin/governance-toolkit/virtual-dataset-sharing


**Note:**
 If the tool you wish to use is not enabled, please reach out to your Account Executive.

If you are unable to find the Toolkit, ensure your user role has the

required grants

.

The default view of the Virtual DataSet Sharing tool will be a list of existing DataSet sharing jobs.

Required Grants
-----------------

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


 Creating a job
----------------

A job is a configuration of one destination instance and any number of DataSets to be shared.

. Click the
 **+ New Job**
 button in the top right-hand side of the tool.
2. Name your job.
3. (Optional) Add a description of your job.
4. (Optional) Enter the url for the destination Domo instance.
	* This option may not be available in all customer instances and is therefore not required.
	* I.E.

 instance.domo.com
5. Select the DataSet Copy account that contains the developer token and instance url for your destination instance.
	* An account must be set up prior to creating a job.
	* To create an account:
		+ Navigate to:
		 **https://{

	 source instance}.

	 domo.com/datacenter/accounts**
		+ At the top right click
		 **Add New**
		 then
		 **Account**
		 .
		+ Search for the account type
		 **DataSet Copy**
		 .


		**Note:**
		 Use the second DataSet Copy Account.
		+ Enter URL to the destination Domo instance.


		**Note:**
		 The account asks for the domain, but we need the entire URL to the instance. I.E.

	 instance.domo.com
		+ Create an Access Token for an Admin user in the destination instance. (Where you will be sending the data.)
		+ Enter the Access Token into the account.
			- For information on creating/managing access tokens, see

		 Managing Access Tokens

		 .


			**Note:**
			 Virtual DataSets will be created by the user that the token was generated for.
		+ (Optional) Rename the account.
		+ **Save**
		 the account.
6. Click
 **Next**
 .
7. Select the

DataSets you wish to share with the destination instance.
8. Click
 **Next**
 .
9. Map the PDP accounts you wish to use to restrict data access in the destination instance.


**Note:**
 This process requires PDP to be enabled on the source DataSet and the PDP policy in place. The
 **All rows**
 policy is created by default and can be used in this tool. However, you still MUST enable PDP for this to work.


	* The destination DataSet will use the PDP policy selected to restrict data access in the destination instance.
10. Click
 **Submit Changes**
 .

This will save your job and create the DataSets in the destination instance.

*Note:**
 Once the job is created there is nothing you need to do to keep the DataSet in the destination up to date. Any changes to the parent instance will be immediately seen in the destination DataSet.

Deleting a job
----------------

When you delete a job, it will also delete the DataSets in the destination DataSet.


 Common Issues
---------------


* No data in the DataSet.
	+ Check to ensure PDP is enabled on the parent instance.

FAQ
-----


####
**Can I have multiple jobs?**

Yes, you can have any number of jobs with one or many DataSets.


**Do Virtual DataSets inherit tags and descriptions from the source DataSet?**


 No, the Virtual DataSets do not inherit tags and descriptions from the source DataSet.

###
**Will these virtual DataSets be available in ETL jobs?**

Yes, if the Beta feature allowing virtual DataSets to be used in ETL jobs is enabled. You can request this through the Domo Beta process.

###
**How do I get support for this tool?**

Email

sandbox@domo.com

.

###
**Is there a fee for this tool?**

This tool is available to Sandbox Customers and Sandbox Trial Customers. If the customer’s trial ends and they haven’t purchased Sandbox, their use of this tool will be removed (no existing virtual DataSets will be deleted.)

