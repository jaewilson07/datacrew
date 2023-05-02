

You can create a CSV DataSet Job in Workbench 5. When you select CSV as your reader type, you can specify the file path of the CSV data source and configure options such as delimiters, missing field handling, etc.

*Note:**
 The CSV file
 *must*


* be a text file
* have data delimited by a single character You can specify the delimiter in the
 **Processing**
 menu in the
 **Configure**
 subtab after you have created the job.

*Sample CSV**


`Salesperson,ID,March Sales,Quota Reached?


 "MacGregor, Sam",1156724,"$10,909",Y


 "Orton, Jason",1156738,"$6,008",N


 "Butler, Heidi",1156742,"$4,321",N


 "Hope, Frank",1156749,"$13,888",Y


 "Perez, Katrina",1156768,"$11,472",Y


 "Wood, Howard",1156777,"$7,446",N


 "Yager, Dorothy",1156787,"$3,825",N


 "Jeepers, Adam",1156796,"$9,942",Y


 "Pendlesmythe, Ellen",1156803,"$14,578",Y


 "Ferrera, Luigi",1156809,"$11,239",Y


 "Coulsey, Mason",1156819,"$5,213",N


 "Michelsen, Bruce",1212121,"$20,250",Y`

*Video - Creating a Job in Workbench 5**

*To create an CSV DataSet Job in Workbench 5,**

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
 **CSV**
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


 A new CSV DataSet Job is added to the list of jobs for the currently authenticated account. Note that after creating the job, you cannot edit any of the settings you just configured except for the DataSet name. If you want to change any of the other settings, you must create a new job.
11. Click the
 **Configure**
 subtab.
12. Click the
 **Edit**
 button under "Source."

A panel opens with options for configuring your file transport and setting options for your CSV data source. The options here differ depending on the transport type you selected earlier.
13. (Conditional) Do one of the following:


	* If you selected
	 **Local File Provider**
	 as your transport type..


		1. Click the ellipsis (...) in the
		 **File Path**
		 field.
		2. Select the desired CSV file from your machine or network.
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
		 be CSV.


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
15. In the
 **Field Delimiters**
 menu, select the radio button for the delimiter used in your CSV file. To set a custom delimiter, click the
 **Other**
 radio button then enter the desired delimiter in the field.
16. In the
 **Encapsulate Fields With**
 field, specify the character used for encapsulating fields.
17. (Optional) In the
 **Escape Sequence Character**
 field, specify the character used for escaping.
18. (Optional) In the
 **Comment Character**
 field, select the character used for commenting.
19. In the
 **Missing Fields Handling**
 section, select the radio button for the desired behavior when missing fields are encountered in your CSV file.

Option

|

Description

|
| --- | --- |
|

Generate error

|

Workbench throws an error when missing fields are encountered in the CSV file.

|
|

Replace with empty values

|

Missing fields in the CSV file are replaced with empty values in your Domo DataSet.

|
20. If the first row in your cell range contains column headers, leave the
 **First row contains column headers**
 box checked; otherwise clear this box. This is important when building cards in Domo because column headers are used to reference the data in those columns. For more information, see

Applying DataSet Columns to Your Chart

.
21. (Optional) In the
 **Ignore starting rows**
 field, specify the number of rows to skip at the beginning of the data so you can start importing a specific row.

This does
 *not*
 include the header row containing the column names.
22. (Optional) In the
 **Ignore ending rows**
 field, specify the number of rows to skip at the end of the data.
23. In the
 **Text Encoding**
 menu, select the character encoding used in the CSV file.
24. Select the desired update method in the
 **Update Method**
 menu:

* Select
	 **Replace DataSet**
	 if you want the DataSet to be replaced entirely upon updating.
	* Select
	 **Append to DataSet**
	 if you want new data to be added to the existing data set upon updating.

You are now ready to execute the DataSet Job, thereby creating an CSV DataSet in Domo. However, there are many other actions you can take on the DataSet Job before you send it to Domo. These include the following:

 Scheduling a Job in Workbench 5
* Configuring notifications to be sent when the job update succeeds or fails
* Encrypting and decrypting Workbench data
* Creating new columns using calculations
* Setting a custom date format on a column
* Replacing a value in a column
* Combining DataSets
* Applying filters to columns
* Setting impersonation

(which causes Workbench to run the job as an Active Directory user).


