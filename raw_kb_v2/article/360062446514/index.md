

Intro
-------

Partitioning is the database process where very large tables are divided into multiple smaller parts. By splitting a large table into smaller and individual tables, queries that access only a fraction of the data can run faster because there is less data to scan.


 The main goal of partitioning is to aid in the maintenance of large tables and to reduce the overall response time to read and load the data for specific operations. Partitioning enables faster query execution and distribution of files over multiple storage devices.


 This version of Workbench 5.1 Partition Support divides your DataSet into sections based on day, month, or year, and then anytime you add new data from one of those sections, Workbench 5.1 replaces that section with new data.


 Setting up partition support in Domo
--------------------------------------

As you create a new job in Domo Workbench 5.1, you need to specify the Update method as
 **Partition**
 while configuring the job to set up the partition support for that job.

##
 Creating a job with partition support in Workbench 5.1

You can upload data from external data sources to Domo after specifying connection and data information as a job, which you can save and use again.


**Creating a DataSet job in Workbench 5.1:**

. In the
 **DataSet Jobs**
 pane, click the
 **+**
 icon to create a new job.
2. Specify the basic settings for the job, such as the DataSet job name, the method of data transport (such as Local File Provider, ODBC Connection Provider, etc.), the data reader (data source) type (such as JIRA, Excel, etc.), the DataSet name and type, and an optional DataSet description.


**Note:**
 The DataSet name is the only setting you can change after creating the job. If you want to change any other settings, you will need to create a new job.
3. After providing the details, click
 **Create**
 . A newly added job entry will appear in your jobs listing. However, at this stage the DataSet job is still not ready for execution.


###
 Configuring partitioning for your job

In the
 **Configure**
 subtab for the job:

. Provide the source of the data in the
 **Source**
 menu. For example, if the data source was a local file, you would select the file path here.
2. Now, in the
 **Update method**
 menu, select
 **Partition**
 . Partitioning uses a grain (like day or week) to create groups in your data. Data can then be processed as a group, and added or replaced as it changes.
3. Select the
 **Partition column**
 and
 **Date grain**
 in the respective dropdowns for your data. Columns with Date or DateTime data types will be selectable in Partition column.
4. Applying
 **Transforms**
 to your data: Transforms modify your data locally before uploading it to Domo. They are faster, and process on your computer or server without a queue. Choose from a variety of options to transform your data so it’s ready when it hits Domo.

1. Select the desired transform from the drop-down and click the
	 **+**
	 button next to it.
	2. Mention the transform properties for the selected transform and click
	 **Apply**
	 .
	3. You can add multiple transforms to your data.
	4. Click

 to update the transform properties for a specific transform.
	5. Click

 to remove a specific transform.
	6. Click the

 (up and down arrows) to interchange the positions of the transforms.
5. **Impersonating your job**
 : Use of impersonation allows Domo Workbench 5.1 to run your job as a specific Active Directory user.

1. Select the
	 **Requires impersonations**
	 check box.
	2. Your Active Directory domain name and username will appear.
	3. Enter your Active Directory password and click
	 **Validate**
	 .
6. Set the advanced options for how your job uploads data in Domo in the
 **Additional Settings**
 . You can specify the error handling method and the job run duration and conditions here.


###
 Scheduling your job

You can schedule a DataSet job to routinely upload data from external DataSets to Domo. You mention this frequency in the Schedule tab.

###
 Basic Schedule


1. The
 **Basic Schedule**
 section allows you to update the data manually, update when file is changed, or update on a schedule.
2. If you chose to update on a schedule, you can select the time interval and a specific time window to run the job.


####
 Advanced Schedule

In the
 **Advanced Scheduling**
 section, you can opt to run the job once a day, more than once a day, every day, specific days of the week/month, every month, or specific months.


 Click the

(Save) button to save your changes.


 Schema Protection for your job
--------------------------------

Domo Workbench 5.1 offers three different schema protection types. You can control the schema changes by allowing the schema changes safely or permitting the unprotected schema changes, or completely blocking all schema changes. Domo Workbench 5.1 supports a Protect feature that enables you to control these schema changes in a way. It is available for the
 **Allow safe schema changes**
 and
 **Allow unprotected schema changes**
 views.

##
 Protect column

The Protect column indicates whether your column (data field) is protected while you apply the schema changes to your job.

 If the
 **Protect**
 checkbox is selected for a column, it means that column is protected, and no schema changes can be made. If you try to remove the protection for any column (by unchecking it) while allowing either the
 **safe schema changes**
 or
 **unprotected schema changes**
 , Domo Workbench 5.1 will give you a warning.


**Important:**
 Unprotected columns can be changed and deleted, which may break content in Domo.
* The Protect column provides you a control to protect or unprotect all columns with a single click. Select the checkbox next to the column header (Protect) to protect all your columns at once. Similarly, you can unprotect your columns at the same time by deselecting this checkbox.
* The column header also provides the control to get a filtered view of protected, unprotected, or both type of entries with a single click.

+ When you click to select the regular select view

 , the Protect column will display all protected entries.
	+ When you click to select the unchecked view

 , the Protect column will display the unprotected entries.
	+ When you click to select the mixed view

 , the Protect column displays both protected and unprotected entries together.
* You cannot change the name of a protected source column. Domo Workbench 5.1 does not allow the edit operation on a protected source column name. However, you can change the names or properties for other columns.
* Similarly, you cannot delete a protected column.
* If you want to allow the schema change, uncheck the column and re-run the job.


###
 Schema changes

Select the desired schema from the drop-down to apply schema changes for your job.

*Allow safe schema changes**


 If you select this option, the unprotected columns will accept the changes during the next execution, and will automatically be protected after. New columns will be added, and will automatically be protected in future runs. The
 **Allow safe schema changes**
 option is the default setting for new jobs.


**Allow unprotected schema changes**


 If you choose to allow unprotected schema changes, you will be able to change and delete the unprotected columns, and they will remain unprotected. New columns are added and left unprotected.


**Block all schema changes**


 If you choose to block all schema changes, you will not see the Protect option for your columns. If you attempt to make changes to any column and run the job, you will receive an error stating about your forceful change. Also, new columns cannot be added.


###
 How to Prevent Data Corruption when using Partitions:

Any change to the data type of the partition key could result in corrupted data. Please avoid making any changes to the partition key after the DataSet has been created.

##
 How to Troubleshoot when Data has been Corrupted:

If incorrect data is added to your DataSet, you will need to re-run the job with the correct data in the partition that has been affected. Once the job has been re-run with the correct data in the partition you wish to correct, the DataSet will be updated and correct data will be available.


 Doing a repair of a full partitioned DataSet is not available with this version of Workbench 5.1 partitions.


 FAQ’s
-------


#####
 Why is my job failing while executing?

If Domo Workbench 5.1 detects any invalid data in the partition column, it throws an error while executing the job. Also, if your partition columns contain any null values, the job execution fails. Please check for any invalid or null values in your partition columns if you get an error.

####
 Why am I not able to apply partitioning to my previously created jobs?

Domo Workbench 5.1 allows you to apply partitioning to a newly created job. You probably have already specified the update method for your job and run it accordingly. To apply partitioning, you need to create a new job for that DataSet again and select the update method as Partition.

####
 How are nulls handled with Partitions?

If a null appears in the partition key of your partitioned job, the job will error. This happens because Workbench 5.1 cannot create a partition from a null value

####
 Can I do a full repair replace of my partitioned DataSet?

Doing full repair replace of partitioned DataSets is not yet available in this version of Workbench 5.1.

