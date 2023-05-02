

Intro
-------


**Note:**
 This feature is in beta. Visit this link to

join the beta

.

Subset Processing in Magic ETL provides a precise and efficient solution to data processing. With Subset Processing, you can choose to load only the batches updated since the last successful execution or you can specify the batches to be loaded based on their creation date or partition name. You can customize your approach to your organization's specific needs. To learn more about partitions, data architecture, and how to optimize your data pipeline, visit our

Data Center Overview

topic in the knowledge base.


 This article provides information about using Subset Processing in the following topics:

 Partition basics
* Partition best practices
* Configure initial data processing
* Use case
* Configure update method

Partition Basics
--------------------

Partitions are a way of organizing your data into groups to make data updates faster and more efficient. The graphic below illustrates


 replacing and appending data with partitions.

A common way to understand partitions is to think of an encyclopedia—a collection of books that are part of the same set, but individually different. If an update is made to one book and it is republished, you can buy a new copy of that book without replacing the entire set of books. Partitions divide your data into separate collections, or subsets, so that when you replace some data, you do not need to replace all of it. Appending data when using partitions is like buying a new volume of the encyclopedia and adding it to the end of your collection on the shelf.


 The following notes further define using the partitions:

 Partition key tags divide data into subsets.
* Ingestion of new data only affects the specified partitions.
* Accessing and updating only the necessary data partitions makes the process faster and more efficient.

Partition Best Practices
----------------------------

A good partition needs to be large enough to take advantage of the enhanced processing speed that partitioning offers, but also


 granular enough to meet your specific needs.


 For most situations, a date-based, day-level partition strikes a good balance between these alternatives. However, if you need to keep more than five year's worth of day-based partitions in a single DataSet, you may want to consider using a week-level or month-level partition instead.


 Some organizations need partitions that are more granular than day level. If that is the case for your organization, you can create a custom partition by combining two or more columns in your DataFlow. For example, if you have eight store locations, you might want to create a partition that combines the store ID and the date.

*Important:**
 There is a 1500-partition limit for each DataSet. If you create too many partitions, you may reach this limit and experience problems. In the example from the previous paragraph, if you create a partition key using store ID + date, you can only store 187 day's worth of data. (1500 partitions divided by 8 stores.)

Configure Initial Data Processing
-------------------------------------

Magic ETL provides three data selection methods when configuring your input DataSet for a DataFlow: All, New, and Filter by batch. These methods are described in the process below.

Follow the steps below to set up initial data processing in Magic ETL.

. Access Magic ETL by locating your DataSet in Domo and going to the
 **Data**
 tab for the DataSet.
2. In the
 **Data**
 tab, select
 **Open With**
 >
 **Magic ETL**
 .


 The Magic ETL interface opens with your DataSet on the canvas as the input DataSet.
3. Select the DataSet on the canvas to expand the editor at the bottom of the screen and display four tabs:
 **Configuration**
 ,
 **Details**
 ,
 **Data**
 , and
 **Notes**
 .
4. In the
 **Configuration**
 tab, expand the
 **Data Selection**
 menu and choose the data selection method that meets your needs. These methods are described below:
	* **All —**
	 This is the default option. Selecting this option loads all rows from the selected input DataSet. Some DataFlow options may be automatically optimized.

 To learn more about automatic optimization, see our

 Magic ETL DataFlow Auto Append Processing

 article.
	* **New —**
	 Select this option if you want to load to the DataSet batches updated since the last successful execution, including restated partitions.

 If you select this option and your DataSet has a replace operation, the next DataFlow execution loads all batches from the replace and any batches appended since the replace. Your outputs continue to perform the action that you have saved for the DataFlow (such as append or replace).

**Note:**
	 If you occasionally replace all batches in your input DataSet and always append to your output DataSet within the DataFlow, there may be duplicate data in your output DataSet.
	* **Filter by batch —**
	 Select this option if you want to specify which batches to load based on their creation date or, in the case of partitions, their name. If you choose this option, you must also complete the section of the editor labeled
	 **Filter by Batch**
	 .

 In the
	 **Import data when**
	 field, there are two options:


		+ If you want to load data using a specific processing date, select
		 **Data processed**
		 . Then select the logic you want from the list options in the
		 **Date is in**
		 fields.
		+ If you want to load data using a custom expression, select
		 **Custom expression**
		 . Use the formula field to create a custom expression. The table below contains information about what values you can use to write a custom expression.

	 When it comes to partitioning a DataSet, the process is based on the metadata about the DataSet rather than the values within the data itself. This means that when you define a subset of the DataSet, you are not selecting specific values within the data, but rather are selecting a subset of the metadata that defines the data.


		|  |  |
		| --- | --- |
		|
		```

	batch.id
		```
		 |
		 The numerical identifier for a data part. (This is system generated.)
		  |
		|
		```

	batch.name
		```
		 |
		 The symbolic name for a data part.
		  |
		|
		```

	batch.created
		```
		 |
		 The timestamp indicating when the upload of the data part corresponding to part

	 .

	 id began.
		  |
		|
		```

	batch.completed
		```
		 |
		 The timestamp indicating when the upload of the data part corresponding to part

	 .

	 id was completed.
		  |
		|
		```

	batch.recorded
		```
		 |
		 The timestamp indicating when the data part corresponding to part

	 .

	 id was added to the DataSet.
		  |
		|
		```

	cursor\_batch.id
		```
		 |
		 The identifier of the most recent batch successfully processed by this DataFlow. Compare with batch.id.
		  |
		|
		```
		partition.name
		```
		 |
		 The name of the partition with which the batch is associated. Identical to batch

	 .

	 name in this context. The value is null if the batch is not associated with a partition.
		  |

Use Case
------------

The formula displayed in this image (there is a code sample below) takes advantage of the fact that the input DataSet is partitioned by date. This means that the data is split into different partitions based on the date, which allows the formula to use date-related functions to filter the data.

The formula creates a filter that compares the partition name (which is a date) to the current date. If the current date is the first day of the month, the filter allows all partitions from the past year to pass through. If the current date is any other day of the month, the filter only allows the last 30 day's worth of partitions to pass through.


 This filtering strategy enables you to process less data every day while still maintaining a full year's worth of data one time per month. You can use this approach in various scenarios, and we recommend that you experiment


 with it.


```
DATE(batch.name) >= CURRENT_DATE() – (CASE WHEN DAYOFMONTH(CURRENT_DATE()) = 1 THEN 365 ELSE 30 END)

``


 Configure Update Method
---------------------------

The following data update methods are available in Magic ETL:


 Update Method
  |
 Description
  |
| --- | --- |
|
 Replace
  |
 Each execution replaces the output DataSet's contents with its latest results.
  |
|
 Append
  |
 Each execution appends its results to the output DataSet as a new batch.
  |
|
 Partition
  |
 Each execution groups rows into batches according to a name, which is the value of a specific column. Each unique batch name in a DataSet is called a partition. These partitions are all appended to the DataSet, and any pre-existing partitions with matching names are replaced. Finally, if a partition filter expression is specified, all partitions are evaluated against it and any that do not pass are deleted.


**Important:**
* Data partitions are limited to 1500 data versions on any output DataSet that uses data partitions.
* Column Value must be non-null and not exceed 128 bytes.

|

To learn more about update methods, see our

DataSet Update Methods

and

Data Fundamentals

articles.


 Follow the steps below to configure the update method for your DataSet in Magic ETL.

. After you have an output DataSet on your canvas for the DataFlow, select the output DataSet to expand the editor at the bottom of the screen.
2. In the
 **Configuration**
 tab of the editor, choose the update method that meets your needs from the
 **Update Method**
 list (Replace, Append, or Partition).
3. (Conditional) If you select Partition as the update method, you must then select the column you want to use to divide the data from the
 **Partition name column**
 list.


 After you select a column, enable
 **Specify which partitions to keep**
 unless you want to delete all partitions.
4. (Optional) If you enable
 **Specify which partitions to keep**
 , a field displays in which you can enter an expression. This expression keeps any specified partitions; all other partitions are deleted. Note that this field only validates the

partition.name

expression.


