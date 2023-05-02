

You can create a QuickBooks DataSet Job in Workbench 5.1. When you select QuickBooks as your Data Source type, you can choose a QuickBooks report type and specify options such as fiscal year, date granularity, and so on.

*Important:**
 If you're intending to use Workbench to connect to Quickbooks on premise, Workbench should not be installed on the same server as Quickbooks.

*To create a QuickBooks DataSet Job in Workbench 5.1,**

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
 **QuickBooks**
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


 A new QuickBooks DataSet Job is added to the list of jobs for the currently authenticated account. Note that after creating the job, you cannot edit any of the settings you just configured except for the DataSet name. If you want to change any of the other settings, you must create a new job.
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
15. Under the QuickBooks DataSet Job that was just added to the jobs list, select
 **Source**
 .


 A panel opens with options for configuring your file transport and setting options for your QuickBooks data source.
16. Do one of the following:

* If you selected
	 **Local File Provider**
	 as your transport type...

	1. Click the ellipsis (...) in the
		 **File Path**
		 field.
		2. Select the desired QuickBooks file from your machine or network.
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
		 be QuickBooks.
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
17. Click the
 **Edit**
 button under "Processing."
18. Click the
 **Authorize**
 button in the top right corner of the dialog.
19. Locate the QuickBooks company file you want to authorize, then click
 **Next**
 .


 QuickBooks is launched, and the file you selected opens.
20. Ensure that you are logged into QuickBooks as an administrator and that the file is in multi-user mode.
21. Click
 **Next**
 in Workbench.


 The QuickBooks file is authorized in Domo.
22. (Optional) Check the box reading
 **Allow Workbench to stop QuickBooks on connection errors**
 if you want QuickBooks to shut down if Workbench encounters errors.
23. Select the radio button for the desired report type.


 Primary report types are as follows:


|
 Report
  |
 Description
  |
| --- | --- |
|
 General Detail Report
  |
 Shows detailed information for any of a number of different report types, such as "Income by Customer Detail," "Check Detail," "Pending Sales," etc. You can select the desired date range for your report by selecting the start and end dates using the
 **From**
 and
 **To**
 date pickers, respectively. If you want, you can manually select which columns appear in the report by selecting them in the
 **Columns**
 menu.
  |
|
 General Summary Report
  |
 Shows summary information for any of a number of different report types, such as "CustomerBalanceSummary," "IncomeTaxSummary," "PhysicalInventoryWorksheet," etc. You can select the desired date range for your report by selecting the start and end dates using the
 **From**
 and
 **To**
 date pickers, respectively. You can also select a date granularity for your report data (for example, you could summarize data by day, by month, etc.).
  |
|
 Budget Summary Report
  |
 Shows balance sheet and profit and loss reports. You can select the desired fiscal year for your report.
  |
|
 List
  |
 Shows any of a number of reports in list format, such as "Employee" (a list of company employees), "Vendors" (a list of your vendors), and so on. Because this information is not arranged by date, there are no options for setting a date range or choosing a fiscal year.
  |
24. (Conditional) Do one of the following:

* If you selected
	 **General Detail Report**
	 ...

	1. Select a sub-report in the
		 **General Detail Report**
		 menu.
		2. In the
		 **From**
		 menu, select the start date for your report.
		3. (Conditional) If you want your report to pull data up until the current date each time it updates, leave the
		 **Current Day**
		 option selected in the
		 **To**
		 menu. Otherwise select the end date for the report in the menu.
		4. In the
		 **Maximum days to return in single result**
		 menu, enter the maximum number of days you want to return. The value cannot exceed 30.
		5. In the
		 **Columns**
		 menu, select the columns you want to pull data for.
	* If you selected
	 **General Summary Report**
	 ...

	1. Select a sub-report in the
		 **General Summary Report**
		 menu.
		2. In the
		 **From**
		 menu, select the start date for your report.
		3. (Conditional) If you want your report to pull data up until the current date each time it updates, leave the
		 **Current Day**
		 option selected in the
		 **To**
		 menu. Otherwise select the end date for the report in the menu.
		4. In the
		 **Summarize Report Columns By**
		 menu, select the date granularity for your report data. This determines how data in the report is broken down. For example, if you choose
		 **Quarter**
		 , data is broken down by quarter instead of month, week, etc.
	* If you selected
	 **Budget Summary Report**
	 ...

	1. Select a sub-report in the
		 **Budget Summary Report**
		 menu.
		2. Select the desired fiscal year in the
		 **Fiscal Year**
		 menu.
	* If you selected
	 **List**
	 ...

	1. Select a sub-report in the
		 **List**
		 menu.
25. Select the desired update method in the
 **Update Method**
 menu:

* Select
	 **Replace DataSet**
	 if you want the DataSet to be replaced entirely upon updating.
	* Select
	 **Append to DataSet**
	 if you want new data to be added to the existing data set upon updating.

You are now ready to execute the DataSet Job, thereby creating a QuickBooks DataSet in Domo. However, there are many other actions you can take on the DataSet job before you send it to Domo. These include the following:

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


