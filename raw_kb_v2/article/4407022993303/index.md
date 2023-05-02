


 Direct upload is designed to limit load and increase upload speeds for Workbench users. It is available only when using the "External Process File Provider" transport method for CSV data. Follow the steps in this section to set up direct upload of data in Workbench. Remember to save the job and validate the data types throughout the process to not lose your work.

The CSV file must be in the correct format and the steps outlined below must be followed in the correct order for direct upload to work.

*Important:**

Following the direct upload setup process as shown below. is essential for successful uploads. Be sure not to turn on direct upload until the end of the process.


**To set up direct upload in Workbench,**

. Add a new CSV DataSet job to Workbench, making sure to do the following:


	1. Set the
	 **Transport Type**
	 to
	 **External process provider**
	 .
	2. In the
	 **Reader Type**
	 menu, select CSV.

 For more information about configuring CSV jobs in Workbench, see

 Connecting to CSV Data in Workbench 5.1


	 .
2. In the
 **Configure**
 tab, under
 **Data**
 , click the
 **Edit**
 button under "Source" then do the following:


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
	4. Check the
	 **Direct Upload**
	 box.
	5. Click
	 **Apply**
	 .

*Do not enable Direct Upload yet!*
3. Click the
 **Edit**
 button under "Processing," deselect the box for
 **First row contains column headers**
 , then click
 **Apply**
 .
4. Click the
 **Schema**
 tab.
5. Set/rename
 **Destination**
**C**
**olumn**
 names (as column names do not appear for CSV files by default) and validate the data types for the columns.
6. Run the job.


