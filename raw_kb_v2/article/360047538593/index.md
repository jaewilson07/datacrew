


**Important:**
 Support for Workbench 4 ended on
 **April 15, 2021**
 . Workbench may continue to run on installed machines, but it will no longer receive feature enhancements and security updates. When issues are encountered in Workbench 4, the recommended course of action from the Domo Support team will be to upgrade to the latest version of Workbench 5. To see this article for Workbench 5, click

*here**

.


 Direct upload is designed to limit load and increase upload speeds for Workbench users. It is available only when using the "External Process File Provider" transport method for CSV data. Follow the steps in this section to set up direct upload of data in Workbench. Remember to save the job and validate the data types throughout the process to not lose your work.

The CSV file must be in the correct format and the steps outlined below must be followed in the correct order for direct upload to work.

*Important:**

Following the direct upload setup process as shown below. is essential for successful uploads. Be sure not to turn on direct upload until the end of the process.


**To set up direct upload in Workbench,**

. Add a new CSV DataSet job to Workbench, making sure to do the following:


	1. Set the
	 **Transport Method**
	 to
	 **External process provider**
	 .
	2. In the
	 **Data Source**
	 menu, select CSV.

 For more information about configuring CSV jobs in Workbench, see

 Connecting to CSV Data in Workbench 4


	 .
2. In the
 **Source**
 tab, under
 **Transport Method**
 , do the following:


	1. Configure the
	 **Program executable**
	 field with the connection needed.
	2. In the
	 **Arguments**
	 field, set arguments as needed.
	3. In
	 **Output File Path**
	 , select the file path for the CSV file.


	 The file type can be CSV or GZIP. GZIP files will have the fastest upload times.
	4. Click
	 **Validate**
	**Configuration**
	 .

*Do not enable Direct Upload yet!*
3. At the bottom of the Source tab, deselect the box for
 **First row contains column headers**
 .
4. Click
 **Preview**
 in the task bar at the top of the screen.
5. After the preview has appeared, click
 **Schema**
 for this job in the
 **Accounts**
 pane.
6. Set/rename
 **Destination**
**C**
**olumn**
 names (as column names do not appear for CSV files by default) and validate the data types for the columns.
7. Return to the
 **Source**
 tab.
8. Under
 **Settings**
 , set
 **Direct Upload**
 to
 **On**
 .
9. Run the job.


