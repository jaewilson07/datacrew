


**Important:**
 Support for Workbench 4 ended on
 **April 15, 2021**
 . Workbench may continue to run on installed machines, but it will no longer receive feature enhancements and security updates. When issues are encountered in Workbench 4, the recommended course of action from the Domo Support team will be to upgrade to the latest version of Workbench 5. To see this article for Workbench 5, click

*here**

.

Intro
-------

You can create a CSV DataSet Job in Workbench 4. When you select CSV as your Data Source type, you can specify the file path of the CSV data source and configure options such as delimiters, missing field handling, etc.

*Note:**
 The CSV file
 *must*


* be a text file
* have data delimited by a single character You can specify the delimiter in
 **Advanced Settings**
 .

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

*Training Videos - Upload Files with Workbench 4**

Learn how to upload both CSV and Excel files with Workbench 4.

*Part 1 of 4**

*Part 2 of 4**

*Part 3 of 4**


**Part 4 of 4**


 Connecting to CSV Data
-------------------------


**To create a CSV DataSet Job in Workbench 4,**


1. Click
 **Add New**
 in the
 **DataSet Jobs**
 grouping in the Buttons toolbar at the top of the Workbench window.


 This opens the
 **Workbench DataSet Job Creation Wizard**
 .
2. (Conditional) If requested, select the desired Domo server. (This screen only appears if you have more than one server set up in Workbench.)
3. In the
 **DataSet Job Name**
 field, enter a name for the DataSet Job. This is the name of the job as it appears in Workbench, not the name of the uploaded DataSet in Domo.
4. In the
 **DataSet Name**
 field, enter the name of the DataSet. This is the name of the uploaded DataSet in Domo.
5. Select the desired update method in the
 **Update Method**
 menu:


	* Select
	 **Replace DataSet**
	 if you want the DataSet to be replaced entirely upon updating.
	* Select
	 **Append to DataSet**
	 if you want new data to be added to the existing data set upon updating.
6. In the
 **Transport Method**
 menu, select
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
7. Click
 **Next**
 .
8. In the
 **Data Source**
 menu, select
 **CSV**
 .
9. In the
 **DataSet Type**
 field, select the type of DataSet in the dropdown or enter a custom name.


 The DataSet type you select or enter here is reflected as the connector type in Domo after you execute the job.

*Tip:**
 It is recommended that you select or enter the DataSet type that tells users what data is being represented,
 *not*
 the data reader you are using to present the data. For example, you might be connecting to a CSV file that contains Twitter data. In this case the best option would be to enter "Twitter" rather than selecting
 **CSV**
 because the data you are representing in Domo is from Twitter, not CSV.
10. (Optional) Enter a description in the
 **DataSet Description**
 field.

*Note:**
 You can change any of the settings you made in the above steps in the
 **Source**
 panel for the DataSet Job after you complete all of the steps in the Wizard
 *except*
 the transport method.
11. Click
 **Next**
 .


 A new CSV DataSet Job is added to the list of jobs for the currently authenticated server in the
 **Accounts**
 pane.
12. Under the CSV DataSet Job that was just added to the jobs list, select
 **Source**
 .


 A panel opens with options for configuring your file transport and setting options for your CSV data source.
13. (Conditional) Do one of the following:


	* If you selected
	 **Local File Provider**
	 as your Transport Method...


		1. Click the ellipsis (...) in the
		 **File Path**
		 field.
		2. Select the desired CSV file from your machine or network.
	* If you selected
	 **External Process File Provider**
	 as your Transport Method...


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

	 Setting Up Direct Upload in Workbench


		 .
	* If you selected
	 **FTP/**
	**SFTP File Provider**
	 as your Transport Method...


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
14. Click
 **Apply Changes**
 .
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
20. If the first row in your cell range contains column headers, leave the box checked; otherwise clear this box. This is important when building cards in Domo because column headers are used to reference the data in those columns. For more information, see

Applying DataSet Columns to Your Chart

.
21. If you want Workbench to skip empty lines in your CSV file when sending the data to Domo, check the box for
 **Sanitize data before processing**
 ; otherwise leave it unchecked.
22. (Optional) In the
 **Ignore starting rows**
 field, specify the number of rows to skip at the beginning of the data so you can start importing a specific row.


 This does
 *not*
 include the header row containing the column names.
23. (Optional) In the
 **Ignore ending rows**
 field, specify the number of rows to skip at the end of the data.
24. In the
 **Text Encoding**
 menu, select the character encoding used in the CSV file.


 You are now ready to execute the DataSet Job, thereby creating a CSV DataSet in Domo. However, there are many other actions you can take on the DataSet job before you send it to Domo. These include the following:


* Setting an update schedule for the job
* Adding the job to a group of jobs with an advanced schedule set in Windows Task Scheduler
* Configuring notifications to be sent when the job update succeeds or fails
* Encrypting and decrypting Workbench data
* Creating new columns using calculations
* Setting a custom date format on a column
* Replacing a value in a column
* Combining DataSets
* Applying filters to columns


