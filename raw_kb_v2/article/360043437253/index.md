

Intro
-------

You can create an Excel DataSet Job in Workbench 5. When you select Excel as your Data Source type, you can specify the location of the Excel sheet you want to connect to and configure the cell range for the desired data.

*Video - Creating a Job in Worbench 5**

*To create an Excel DataSet Job in Workbench 5,**

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
 **Excel**
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


 A new Excel DataSet Job is added to the list of jobs for the currently authenticated account. Note that after creating the job, you cannot edit any of the settings you just configured except for the DataSet name. If you want to change any of the other settings, you must create a new job.
11. Click the
 **Configure**
 subtab.
12. Click the
 **Edit**
 button under "Source."

A panel opens with options for specifying the source for your Excel file. The options here differ depending on the transport type you selected earlier.
13. (Conditional) Do one of the following:


	* If you selected
	 **Local File Provider**
	 as your transport type..


		1. Click the ellipsis (...) in the
		 **File Path**
		 field.
		2. Select the desired Excel file from your machine or network.
		3. If the file is on a network, check the
		 **File on an external network**
		 box, then enter the requested credentials.
		4. Click
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
		 be Excel.


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

	 Source Processing Options

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
15. (Conditional) If your Excel file is password-protected, enter the password in the
 **Excel File Password**
 field.
16. Using the
 **Selection Range**
 menu, select the desired range type.


 The following table provides descriptions of the range types:


|
 Range Type
  |
 Description
  |
| --- | --- |
|
 Cell Range
  |
 Lets you specify the Excel sheet from which you want to pull data, along with the starting cell, ending row, and ending column.
  |
|
 Named Range
  |
 Lets you select a named range from a list. If you have not created any named ranges for this file in Excel, no options appear in this menu.
  |
|
 Dynamic Range
  |
 Lets you skip a specified number of lines at the end of the Excel sheet.
  |
17. Do one of the following:

* If you selected
	 **Cell Range**
	 as your selection range...

	1. Select the sheet you want to connect to in the
		 **Sheet Name**
		 menu.
		2. In
		 **Starting Cell**
		 , specify the first cell in the range you want to pull data from.
		3. (Conditional) If you want Workbench to pull data from your sheet until it encounters an empty row and/or column, leave the
		 **Continue until empty row**
		 and/or
		 **Continue until empty column**
		 boxes checked. Otherwise clear the checkboxes and specify the ending row and column in the
		 **Ending Row**
		 and
		 **Ending Column**
		 fields, respectively.
		4. If the first row in your cell range contains column headers, leave the box checked; otherwise clear this box.
	* If you selected
	 **Named Range**
	 as your selection range...

	1. Select the range in the
		 **Named Range**
		 menu.
		2. (Conditional) If you want Workbench to pull data from your sheet until it encounters an empty row and/or column, leave the
		 **Continue until empty row box checked**
		 .
		3. If the first row in your cell range contains column headers, leave the box checked; otherwise clear this box. This is important when building cards in Domo because column headers are used to reference the data in those columns. For more information, see

	 Applying DataSet Columns to Your Chart

	 .
	* If you selected
	 **Dynamic Range**
	 as your selection range...

	1. Select the sheet you want to connect to in the
		 **Sheet Name**
		 menu.
		2. In
		 **Starting Cell**
		 , specify the first cell in the range you want to pull data from.
		3. (Conditional) If you want Workbench to ignore rows at the end of your sheet, specify the number of rows in
		 **Ignore Ending Rows**
		 .
18. Select the desired update method in the
 **Update Method**
 menu:

* Select
	 **Replace DataSet**
	 if you want the DataSet to be replaced entirely upon updating.
	* Select
	 **Append to DataSet**
	 if you want new data to be added to the existing data set upon updating.

You are now ready to execute the DataSet Job, thereby creating an Excel DataSet in Domo. However, there are many other actions you can take on the DataSet job before you send it to Domo. These include the following:

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


