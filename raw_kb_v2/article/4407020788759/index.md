

You can create a JSON DataSet Job in Workbench 5.1. When you select JSON as your Data Source type, you can specify the data node with data you want to retrieve, the delimiter, and how you want the data to be flattened.


**To create a JSON DataSet Job in Workbench 5.1,**

. Click the

icon in the left-hand icon bar.
2. Click the "+" button in the top right corner of the jobs listing pane.
3. Select the desired account (Domo instance) in the
 **Domo Domain**
 dropdown menu.


 If you have only one account set up, that account is already chosen for you and the menu is unavailable.
4. In the
 **Name**
 field, enter a name for the DataSet Job.


 This is the name of the job as it appears in Workbench,
 *not*
 the name of the uploaded DataSet in Domo.
5. In the
 **Transport Type**
 menu,

select
 **Local File Provider,**
**External Process File Provider**
 ,
 **FTP/SFTP File Provider**
 , or
 **JIRA Connection Provider**
 .


 Descriptions for these transport methods are as follows:

Transport Method

|

Description

|
| --- | --- |
|

Local File Provider

|

Lets you select a file from your machine or a network.

|
|

External Process File Provider

|

Lets you use a third-party application to pull data into Domo using a script.

|
|

FTP/SFTP File Provider

|

Lets you retrieve a file via FTP, SFTP (SSH-FTP), or FTPS (FTP-SSL)

|
|
 JIRA Connection Provider
  |
 Lets you retrieve a file from a JIRA server using a JQL query.
  |
6. In the
 **Reader Type**
 menu, select
 **JSON**
 .
7. In the
 **DataSet Name**
 field, enter the name of the DataSet. This is the name of the uploaded DataSet in Domo.


 This is the
 *only*
 setting you can change after saving the new job.
8. In the
 **DataSet Type**
 field, select the type of DataSet in the dropdown.


 The DataSet type you select or enter here is reflected as the connector type in Domo after you execute the job.
9. Enter a description for the DataSet if desired.


 This is the description of the DataSet as it appears in Domo.
10. Click
 **Create**
 .


 A new JSON DataSet Job is added to the list of jobs for the currently authenticated account. Note that after creating the job, you cannot edit any of the settings you just configured except for the DataSet name. If you want to change any of the other settings, you must create a new job.
11. Click the
 **Configure**
 subtab.
12. Click the
 **Edit**
 button under "Source."


 A panel opens with options for configuring your file transport and setting options for your JSON data source.
13. (Conditional) Do one of the following:

* If you selected
	 **Local File Provider**
	 as your transport type...

	1. Click the ellipsis (...) in the
		 **File Path**
		 field.
		2. Select the desired JSON file from your machine or network.
		3. Click
		 **Apply**
		 .
	* If you selected
	 **External Process File Provider**
	 as your transport type...

	1. Click the ellipsis (...) in the
		 **Program Executable**
		 field.
		2. Select the desired executable file from your machine or network.
		3. (Optional) Enter arguments in the
		 **Arguments**
		 field, if any.
		4. Click the ellipsis (...) in the
		 **Output File Path**
		 field.
		5. Select the desired output file path on your machine or network.


		 The file type for the output path
		 *must*
		 be JSON.
		6. Click
		 **Apply**
		 .
	* If you selected
	 **FTP/**
	**SFTP File Provider**
	 as your transport type...

	1. Enter the server name in the
		 **Server**
		 field.
		2. Enter the port number in the
		 **Port**
		 field.
		3. Enter your server credentials in the
		 **Username**
		 and
		 **Password**
		 fields.
		4. Select the desired protocol (
		 **FTP**
		 ,
		 **SFTP**
		 , or
		 **FTPS**
		 ).
		5. (Optional) If you have an SSL certificate (SFTP and FTPS only), configure the settings as necessary.


		 For more information about these settings, see

	 SFTP File Provider

	 .
		6. In the
		 **Remote File**
		 field, enter the filename for the field you want to import.
		7. Click
		 **Apply**
		 .
	* If you selected
	 **JIRA Connection Provider**
	 as your transport type...

	1. In the appropriate fields, enter the username and password you use to connect to your company JIRA instance.

	**Note:**
		 If you try to execute a JIRA job with incorrect credentials, the JIRA account locks. You cannot fix this just by entering correct credentials—you must manually log into JIRA and pass a CAPTCHA validation

	 .
		2. In the
		 **Server URL**
		 field, enter the URL where your company JIRA server is located.
		3. In the
		 **JIRA Query**
		 field, enter the query for the JIRA data you want to pull into your DataSet.


		**Tip:**

	 You can create a JQL query in JIRA, then copy and paste it in Workbench.


		**Example JQL query**

	`project not in (ARCHIVE, CPD, DC, DCV, DP, QA, ODD) AND issuetype in (Epic) AND fixVersion in (2015-02-17) ORDER BY status DESC, resolved DESC, issuetype DESC, key ASC`


		**Important:**
		 If your JIRA query is set up without specific ordering, an error may be caused during the upload to Domo. In most cases you can get around this problem by ordering your results by

	 created ASC

	 in your query.


		 For example:


		`Reporter is not null order by created ASC`
		4. Click
		 **Apply**
		 .
14. Click the
 **Edit**
 button under "Processing."
15. In the
 **Data Source**
 field, enter the data node where you want to begin pulling JSON data.


 This should be an array of objects.
16. In the
 **Delimiter**
 field, enter the delimiter that should be inserted into the column name in flattened results.
17. In the
 **Flattening Options**
 menu, select the desired flattening option. Options are as follows:


|
 Option
  |
 Description
  |
| --- | --- |
|
 None
  |
 Returns  the unflattened JSON string.
  |
|
 Deep
  |
 Adds new rows for all nested objects.
  |
|
 Wide
  |
 Adds new columns for all nested objects. Only one row is returned.
  |
18. Select the desired update method in the
 **Update Method**
 menu:
	* Select
	 **Replace DataSet**
	 if you want the DataSet to be replaced entirely upon updating.
	* Select
	 **Append to DataSet**
	 if you want new data to be added to the existing data set upon updating.

You are now ready to execute the DataSet Job, thereby creating a JSON DataSet in Domo. However, there are many other actions you can take on the DataSet job before you send it to Domo. These include the following:

 Scheduling a Job in Workbench 5.1
* Configuring notifications to be sent when the job update succeeds or fails
* Encrypting and decrypting Workbench data
* Creating new columns using calculations
* Setting a custom date format on a column
* Replacing a value in a column
* Combining DataSets
* Applying filters to columns
* Setting impersonation

(which causes Workbench to run the job as an Active Directory user).


