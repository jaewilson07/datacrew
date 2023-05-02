

You can create an XML DataSet Job in Workbench 5.1. When you select XML as your Data Source type, you can specify the data node with data you want to retrieve as well as any nodes you want to ignore.


**To create an XML DataSet Job in Workbench 5.1,**

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
 , or
 **FTP/SFTP File Provider**
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
6. In the
 **Reader Type**
 menu, select
 **XML**
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


 A new XML DataSet Job is added to the list of jobs for the currently authenticated account. Note that after creating the job, you cannot edit any of the settings you just configured except for the DataSet name. If you want to change any of the other settings, you must create a new job.
11. Click the
 **Configure**
 subtab.
12. Click the
 **Edit**
 button under "Source."

A panel opens with options for configuring the source for your XML file. The options here differ depending on the transport type you selected earlier.
13. (Conditional) Do one of the following:


	* If you selected
	 **Local File Provider**
	 as your transport type...


		1. Click the ellipsis (...) in the
		 **File Path**
		 field.
		2. Select the desired XML file from your machine or network.
		3. Click
		 **Apply**
		 .
	* If you selected
	 **External Process File Provider**
	 as your transport type...


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
		 be XML.


		**Important:**
		 If you are planning to use the Direct Upload option, do not turn on this option until you first rename your destination columns. For more information, see

	 .
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
14. Click the
 **Edit**
 button under "Processing."
15. (Optional) In the
 **Data Node**
 field, enter the data node that contains the XML data you want to retrieve.
16. Under "Schema Change Options," specify how you want to handle schema changes in your XML. The following options are available:


|
 Schema Change Option
  |
 Description
  |
| --- | --- |
|
 Only Add Columns
  |
 Allows new columns to be added. It does not remove columns that already exist but were not found.
  |
|
 Add and Remove Column
  |
 The schema will always match the data in the file. Columns will be added and removed as necessary.
  |
|
 Lock Schema
  |
 No column will be added or removed.
  |
17. (Optional) In the
 **Ignored Nodes**
 panel, enter nodes you want to ignore when your DataSet Job is executed.
18. To enter a node, click in the empty field and type the node you want to be ignored.


 To edit an existing node, click in the row with that node and type the new node.
19. Click
 **Apply**
 .
20. Select the desired update method in the
 ****Update Method****
 menu:

* Select
	 ****Replace DataSet****
	 if you want the DataSet to be replaced entirely upon updating.
	* Select
	 ****Append to DataSet****
	 if you want new data to be added to the existing data set upon updating.

You are now ready to execute the DataSet Job, thereby creating an XML DataSet in Domo. However, there are many other actions you can take on the DataSet Job before you send it to Domo. These include the following:

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


