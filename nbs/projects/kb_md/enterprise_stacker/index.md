---
title: Enterprise Stacker
url: https://domo-support.domo.com/s/article/360042923754
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamzGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamzGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaniGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZaniGAC)', '[https://domo-support.domo.com/s/article/360042923754](https://domo-support.domo.com/s/article/360042923754)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaniGAC/enterprise-stacker](https://domo-support.domo.com/s/topic/0TO5w000000ZaniGAC/enterprise-stacker)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004570
views: 2,244
created_date: 2022-10-24 22:15:00
last updated: 2022-10-24 22:41:00
---



Intro
-----


Enterprise Stacker is a highly configurable alternative data structure that transforms large amounts of data quickly and easily. It allows you to combine data from multiple platforms in such a way that multiple inputs can be defined as one single metric without the use of SQL or custom programming. Stacker also provides change records to administrators through the Domo activity log, ensuring security and optimizing governance possibilities. You can access the activity log from the navigation header by selecting **More**> **Admin**. Under **Governance**, select **Activity log**.


Using Enterprise Stacker, you can combine the following two tables that come from two different channels into one impressions table.


![Enterprise_Stacker_-_Views_Table.png](Enterprise_Stacker_-_Views_Table.png)


 


Using `Views` as the metric we are stacking, here is our output impressions table:


 


![Enterprise_Stacker_-_Impressions_Table.png](Enterprise_Stacker_-_Impressions_Table.png)




### When to use Enterprise Stacker


Enterprise Stacker works well in the following situations:




| Use Case | Benefits of Stacker |
| --- | --- |
| Data exists in multiple platforms or DataSets | * Combines and standardizes metrics across platforms and visualizations
* Supports inconsistent granularities
* Doesn't require technical skill sets
 |
| One Master DataSet is required or preferred | * Brings data into one DataSet for visualization
* Simplifies Domo Page Analyzer
* Simplifies PDP policy application
* Provides one source of truth
 |
| Data size is more than 50-100M rows | * Leverages Domo Query Performance
* Allow for aggregation or filtering down data
* Billions of rows quickly aggregated to millions of rows in minutes
 |


Other benefits include:


* Output is dynamic based on configured dimensions and metrics
* Wildcard inputs — thousands of DataSets combined quickly
* Thousands of input data sources
* Hundreds of possible metrics/dimensions
 

 

**Tip:**We recommend fewer than 50 metrics to optimize speed.


### This article describes Enterprise Stacker setup and how to complete various tasks within it in the following topics:


* [Getting Enterprise Stacker](#getting_stacker)
* [Prerequisite](#prereqs)[s](#prereqs)
* [Creating a job](#creating_job)
* [Adding multiple metrics to a job](#multiple_metrics)
* [Activity logs](#activity_logs)


Getting Enterprise Stacker
--------------------------


Contact your Account Executive (AE) or Technical Consultant (TC) to begin the deployment process.


Domo will access your instance to deploy Enterprise Stacker and align it with the provided system user account's email.


Prerequisites
-------------


There are a few things to prepare and consider before using Enterprise Stacker:


* Ensure the cleanliness of the data before stacking. Check the numerical and data values to ensure the columns include only numerical values.
* Ensure you're applying the data type consistently (string, double, date, and so on).
* If you are using a wildcard metric, ensure that at least 99% of the DataSets that match the wildcard rule have the columns you wish to query in their schema.




 

**Important:** If even one of the columns you specify in the metric is *not* in the schema, the data from that DataSet is not included in the output.


Creating a Job
--------------


1. In Enterprise Stacker, ​s​​​​​elect **+ New Configuration**.
2. Choose which DataSet to use for the metric:


**Select a DataSet** **—** Allows you to search by name and select one DataSet  
 **Select all DataSets that match a rule** **—** Allows you to select all DataSets where the name contains whatever string you specify.




 

**Tip:** When using **Select all DataSets that match a rule**, you must use all matching DataSets. For example, in the following image, all 43 DataSets are used in the setup of that metric.



  
 ![EnterpriseStacker_-_Select_DataSet.png](EnterpriseStacker_-_Select_DataSet.png)
3. Name your metric and you can, optionally, set a metric alias. This is an alternative name you could use to search for this metric in your output DataSet.
4. Select **Next**.
5. Choose the value column that corresponds to the metric. 




 

**Note:** If you must, you can choose a string. The Enterprise Stacker engine attempts to cast the string as a numeric value. However, if there are true string values in your column and it cannot be cast as a number, then you receive an error after you run the job.
6. (Optional) Create an aggregation on the value column. Select **Next**.  




 

**Note:** When you choose to aggregate a value, Stacker will automatically group by all other non-aggregated columns that are included in the table.
7. Choose a date column. This should be the date that lines up with the numeric metric you chose. You can select **I don't have a date column** if you don't want to specify one. Select **Next**. 




 

**Note:** You can select a string type column here if needed. Stacker will attempt to cast the string as a date type. However, if there are values that aren't true dates in your column and cannot be cast as a date, then you will receive an error after you run the job.
8. (Optional) Apply any necessary filters by selecting **+ add a filter**. Select the column, operand, and value you would like to filter on. Filters provide the option for rolling windows of data, reducing data size, targeting specific numbers, targeting specific date ranges, etc. You can add as many filters as you would like. Select **Next**. 




 

**Note:** Filters are applied with an `and` method. You cannot apply one filter or the other.
9. (Optional) Add additional columns. You can create custom constant columns, select which columns are included, rename columns, and select data types


	* **Custom constant column —** Select ![Enterprise_Stacker_-_Plus.png](Enterprise_Stacker_-_Plus.png) and type in the column name and choose a value you would like to be populated on every row for this DataSet.
	* **Select DataSet columns —** Choose which columns to include in the output DataSet.
	* **Rename columns —** You can rename any column you choose to include from the DataSet.
	* **Select data type —**  
	  Choose the data type you want the column to be in the output.  
	   
	 ![Enterprise_Stacker_-_Additional_Columns.png](Enterprise_Stacker_-_Additional_Columns.png)
10. Select **Next**.
11. Name the output DataSet. This is also the name of this Enterprise Stacker job. 




 

**Note:** Since Stacker uses the job name as the name for the output DataSet, there must be one, and only one, DataSet at any time that has the same name as the Stacker job tied to it. Otherwise the job fails and the data does not update.
12. Select an **Update Schedule** for the job.
13. Select **Finish**.


Adding Multiple Metrics to a Job
--------------------------------


1. Select the job you want to add additional metrics to.
2. Select **+ Add Metric** and follow the steps to [create a job](#creating_job).


![Enterprise_Stacker_-_Add_Metric.png](Enterprise_Stacker_-_Add_Metric.png)


### Metric Actions


In the **Configuration**tab for the job, you can ![Enterprise_Stacker_-_Copy_Metric.png](Enterprise_Stacker_-_Copy_Metric.png) **Copy**, ![Enterprise_Stacker_-_Edit_Metric.png](Enterprise_Stacker_-_Edit_Metric.png)**Edit**, or ![Enterprise_Stacker_-_Delete_Metric.png](Enterprise_Stacker_-_Delete_Metric.png)**Delete** a metric. 


![metric actions.png](metric actions.png)




 

**Note:** After you delete a configuration, it cannot be recovered, and the DataSet is orphaned and stops updating.



### Edit Job Configuration


To change the DataSet name or the job run schedule, select ![Screen Shot 2023-01-05 at 6.11.06 PM.png](Screen Shot 2023-01-05 at 6.11.06 PM.png)**Edit Configuration**.


![edit job config.png](edit job config.png)


Activity Logs
-------------


Any changes to jobs, or executions of jobs, are logged in the **Activity Logs**. For more information, see our article on [Viewing Activity Logs](http://domo-support.domo.com/s/article/360042934574?language=en_US).

