

Intro
-------

The Domo SharePoint Plugin allows you to create jobs in Workbench 5 to get the data from SharePoint into Domo. Domo Workbench provides a secure, client-side solution for uploading your on-premise data to Domo. The Domo SharePoint Data Provider links Domo Workbench to operational SharePoint data. You can build datasets from SharePoint data in Workbench and then create real-time visualizations of SharePoint data in the Domo service. This tutorial teaches you how to use the Domo SharePoint Plugin to connect to your SharePoint data.


 What you need to get started
------------------------------


* Windows 10 64-bit operating system
* Domo Workbench
* SharePoint Plugin

Installing the SharePoint Plugin in Domo Workbench
----------------------------------------------------

All Workbench plugins are contained within Dynamic Link Libraries (DLLs). You can add plugins to Workbench by selecting the desired DLL on your machine or network.

##
 Adding SharePoint Plugin to Workbench:

*Note:**
 Your SharePoint Plugin must be located in a subdirectory of the chosen directory.

. In Domo Workbench, click

in the left-hand icon bar.
2. Click
 **Plugins**
 in the
 **More**
 pane. (If you do not see this pane, click

to expand it.)


 The
 **Plugin Manager**
 opens.
3. Under
 **Register new plugins**
 click the ellipsis (
 **...**
 ) next to the
 **Search path**
 field.
4. On your machine or network, locate and open the folder that contains a folder with all DLLs of SharePoint Plugin.
5. Click
 **Add**
 after you have chosen your DLL.

Connecting to the SharePoint Data
-----------------------------------


###
 Creating a SharePoint DataSet job in Workbench 5


1. Click the

icon in the left-hand icon bar.
2. Click the
 **+**
 button in the top right corner of the jobs listing pane.
3. An
 **Overview**
 tab for a new job will appear.
4. Enter the following details in
 **Job Details**
 section.


| **Field**  | **Description**  |
| --- | --- |
|
 Domo Domain
  |
 Select the desired account (Domo instance) in the
 **Domo Domain**
 dropdown menu.


 If you have only one account set up, that account is already chosen for you and the menu is unavailable.
  |
|
 Job Name
  |
 Enter a name for the DataSet Job.


 This is the job name that appears in Workbench, not the name of the uploaded DataSet in Domo.
  |
|
 Transport Type
  |
 Select
 **Domo SharePoint Data Provider**
 .
  |
|
 Reader Type
  |
 Select the file type that you want to read from SharePoint in Workbench.
  |
5. In the
 **Domo Details**
 section, provide the information for your DataSet.


| **Field**  | **Description**  |
| --- | --- |
|
 DataSet Name
  |
 Enter the name of the DataSet. This is the name of the uploaded DataSet in Domo.
  |
|
 DataSet Type
  |
 Select the type of DataSet from the dropdown. The DataSet type you select or enter here is reflected as the Connector type in Domo after you execute the job.
  |
|
 DataSet Description
  |
 Enter a description for the DataSet, if desired.


 This is the description of the DataSet as it appears in Domo.
  |
6. Click
 **Create**
 .


 A new SharePoint DataSet Job is created and added to the list of jobs for the currently authenticated account.

*Note:**
 After creating a job, you cannot edit any of the settings you just configured except for the DataSet name. If you want to change any of the other settings, you must create another new job.

##
 Configuring Your Job

Once a job is created, you need to provide the configuration details for the job.

###
 Configure the Source


1. Provide the details for the SharePoint data in the
 **Source**
 menu.
2. Click
 **Edit**
 .
3. A
 **Domo SharePoint Data Provider Editor**
 window will appear. Here, you need to provide the Credentials and Report details required to connect to your SharePoint data.


|
**Field**
 | **Description**  |
| --- | --- |
|
 Connection Type
  |
 Select the connection type as
 **SharePoint On-Premise**
 .
  |
|
 SharePoint URL
  |
 Enter URL for the SharePoint site.
  |
|
 Username
  |
 Enter your SharePoint username.
  |
|
 Password
  |
 Enter your SharePoint password.
  |
|
 Domain
  |
 Enter your SharePoint Windows domain name.


 Example: If your SharePoint site was located at

https://sample.sharepoint.com

, your domain name would be “sample”.
  |
|
 Report
  |
 Select the report from the dropdown.
  |
|
 Server Relative URL
  |
 Enter the name of the data file you want to connect with this DataSet in SharePoint.
  |
4. Click
 **Apply**
 .


####
 Configure Data Processing


1. Provide the details about data processing for the SharePoint data in the
 **Processing**
 menu.
2. Click
 **Edit**
 .
3. An
 **Editor**
 window will appear for the selected Reader type. Here, you can provide the properties and details for your data to define how your data will be handled in the DataSet.
4. Click
 **Apply**
 .


####
 Configuring Data Update Method


1. Select
 **Replace**
 if you want newly uploaded data to replace the existing data in the DataSet.
2. Select
 **Append**
 if you want the newly added data to be appended (added) to the existing data
3. Select
 **Partition**
 if you want to apply partitioning on your data. Partitioning uses a grain (like day or week) to create groups in your data. Data can then be processed as a group, and added or replaced as it changes.
4. Select the
 **Partition column**
 and
 **Date grain**
 in the respective drop downs for your data.


####
 Applying Transforms to Your Data

Transforms modify your data locally before uploading it to Domo. They are faster, and process on your computer or server without a queue. Choose from a variety of options to transform your data so it’s ready when it hits Domo.

. Select the desired transform from the drop down and click the
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


####
 Impersonating Your Job

Use of impersonation allows the Domo Workbench to run your job as a specific Active Directory user.

*Note:**
 The user profile in job impersonation needs to be a role that has access to the source data needed to run the job.


1. Select the
 **Requires impersonations**
 check box.
2. Your Active Directory domain name and username will appear.
3. Enter your Active Directory password and click
 **Validate**
 .


####
 Additional Settings for Your Job

Set the advanced options for how your job uploads data in Domo in the
 **Additional Settings**
 . You can specify the Error handling method, and the job run duration and conditions here.

##
 Scheduling Your Job

You can schedule a DataSet job to routinely upload data from external DataSets to Domo. You mention this frequency in the Schedule tab.

###
 Basic Schedule

The
 **Basic Schedule**
 section allows you to update the data manually, update when file is changed, or update on a schedule.


 If you chose to update on a schedule, you can select the time interval and a specific time window to run the job.

###
 Advanced Schedule

In the
 **Advanced Scheduling**
 section, you can opt to run the job once a day, more than once a day, every day, specific days of the week/month, every month, or specific months.


 Click the

(
 **Save**
 ) button to save your changes.

##
 Schema Protection for Your Job

Domo Workbench 5 offers three different schema protection types. You can control the schema changes by allowing the schema changes safely or permitting the unprotected schema changes, or completely blocking all schema changes. Domo Workbench supports a Protect feature that enables you to control these schema changes in a way. It is available for the “Allow safe schema changes” and “Allow unprotected schema changes” views.

###
 Protect Column

The Protect column indicates whether your column (data field) is protected while you apply the schema changes to your job.

 If the
 **Protect**
 checkbox is selected for a column, it means that column is protected, and no schema changes can be made. If you try to remove the protection for any column (by unchecking it) while allowing either the safe schema changes or unprotected schema changes, the Domo Workbench will give you the following warning:


**Warning:**
 Unprotected columns can be changed and deleted, which may break content in Domo.
* The Protect column provides you a control to protect or unprotect all columns with a single click. Select the checkbox next to the column header (Protect) to protect all your columns at once. Similarly, you can unprotect your columns at the same time by deselecting this checkbox.
* The column header also provides the control to get a filtered view of protected, unprotected, or both type of entries with a single click.

+ When you click to select the regular select view

 , the Protect column will display all protected entries.
	+ When you click to select the unchecked view

 , the Protect column will display the unprotected entries.
	+ When you click to select the mixed view

 , the Protect column displays both protected and unprotected entries together.
* You cannot change the name of a protected source column. Domo Workbench does not allow the edit operation on a protected source column name. However, you can change the names or properties for other columns.
* Similarly, you cannot delete a protected column.
* If you want to allow the schema change, uncheck the column and re-run the job.


####
 Allow Safe Schema Changes

If you select this option, the unprotected columns will accept the changes during the next execution, and will automatically be protected after. New columns will be added, and will automatically be protected in future runs. The
 **Allow safe schema changes**
 option is the default setting for new jobs.

###
 Allow Unprotected Schema Changes

If you choose to allow unprotected schema changes, you will be able to change and delete the unprotected columns, and they will remain unprotected.

###
 Block All Schema Changes

If you choose to block all schema changes, you will not see the Protect option for your columns. If you attempt to make changes to any column and run the job, you will receive an error stating about your forceful change.

##
 Setting Notifications for Your Job

You can set notify other users upon your job success or failure by simply selecting the respective checkbox in front of their names under the respective columns.

. Once you are done with the job specifications, click the

(
 **Save**
 ) button to save your changes.
2. Click the

(
 **Execute**
 ) button to run your job.


