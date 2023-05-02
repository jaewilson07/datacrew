

Intro
-------

When configuring a DataSet, you have the option to update your data based on a replace or append method. Some but not all connectors also provide upsert or partition functionality, which is discussed further in this article.


 By default, all DataFlows update on a replace method, however, through some technical SQL transformations, you can create a recursive DataFlow that appends on to itself. Using the replace method, every time a DataSet runs, the table is replaced with the new data. However, using the append method, all of the new data pulled in is appended to the bottom of the existing DataSet.


 For many DataSets where the data is not large and the load is small, replacing data is preferable because there is less propensity for error.


 Appending data is useful when:

 Load and processing time is long
* You want to snapshot data
* The API restricts how much data can be returned in one query

For more information on how to configure your DataSet with a replace or append update method, see

DataSet Scheduling

.


 When to replace your data
---------------------------

If you consider processing time, and you have the time and resources to pull a large amount of data on a regular basis, then a replace data structure will be an easy way to maintain your data and have it updated for the time period you specify. This data is a final state DataSet, and you're not interested in the process it went through to get to the final state. For example, you want to see actual deals made, bookings, and other transactions that are finalized. The data will show you when those transactions occur and you can visualize that transactional data.


 Despite the processing load that it creates to do the transactional database where the data is being replaced, it's often easier to do a full replace, pull your specific time period's history, and replace it so you have the constant historical DataSet.

####
 Use Cases


* You are pulling two years of historical sales data and replacing your DataSet every month so that you always have the historical two months' data to reference and create visualizations from. With this type of transactional data, which doesn't change state, you could do a full replace every month and have the constant two-year historical DataSet. So, if you were pulling your January 2018 data, at the beginning of February, you would have a replaced DataSet that would show you all the January 2018 data back through January of 2016. The next month you have it scheduled to replace, the DataSet would give you the February 2018 through February 2016 DataSet. You have a rolling two-year time period but aren't keeping that previous January 2016 data. It is replaced by the next months' data. This type of transactional replace DataSet allows you to see how much business you've done in week 1 of the quarter, in week 2 of the quarter, and so on, as you can see it in the full DataSet.

When to append your data
--------------------------

You primarily use the append data process when you are looking to snapshot your data, you want to see the progression over time, and to be able to show progression in visualizations. Another primary reason to append data is if you want to avoid the processing load of a full replace of data.

#####
 What to be aware of and avoid when choosing to append data:


* Possible missed data if an update fails for some reason
* Possible duplicated data or data that could be double counted if not properly interpreted.

In addition, if you're appending data based upon a time selector, or whatever time period you've scheduled, you want to make sure that none of your data is lost as you go from week to week or month to month. You want to also make sure you aren't getting any duplicate records. In a scenario where you are pulling weekly data that is set to append weekly from Saturday to Sunday, somehow with different time zones your end of Friday data bleeds into your beginning of day Saturday data. This could possibly bring in duplicate records and then your data wouldn't be correct. There is a potential for duplicate records, and you want to make sure data is clean and accurate.


 To set up an append DataFlow that would look specifically for those duplicate records and remove them from the final DataSet, see

Recursive ETL

. If you were doing a weekly replacement of your data, you could then have it set for intentional overlap when pulling the data. Then, by doing a recursive DataFlow, you can pull those duplicates and produce a master DataSet after it's gone through this process.


 You can use the append data process when looking for progression in your visualizations. You set up your data so that you take the snapshot period of the data and append it to your schedule, whether it's weekly, monthly, or any time frame, and then the append DataSet has the snapshot data for you to build your visualizations tracking the specific progress of specific identifiers over time.

####
 Use Cases


* If you have data that changes state with an identifier, for example, Opportunity ID, this is when you want to use a snapshot and append your data. An example use case might be that you are looking at SalesForce or opportunity migration data, and you want to know how the opportunity stage progresses through different time periods. You would take a snapshot, for example, of all your SalesForce opportunities on Monday of every week so you can see the migration of the opportunity over time. If you use the snapshot, then you could track opportunity X, and see two months ago that it was in stage 1, then it took 2 weeks to get to stage 2, and then 3 weeks to enter stage 4, and so on. Using this method, you can understand and follow how the sales cycle went as that opportunity progressed.
* If you have marketing customer profile data, and you want to see where customers are in the marketing funnel and all relevant stages that the customer progresses through in your visualizations. You would want to use the snapshot data and append process in order to see all the stages of progression the customers go through over time.

Upsert and partition
----------------------

Some Connectors allow you to update DataSets with restated data (or "upsert") to ensure you have the most up-to-date information. This functionality is currently available for the following Connectors:

 Shopify
* HubSpot Upsert
* Amazon S3


**Note:**
 Regarding the Upsert update method, only the numeric and text columns can be part of the "Merge Key." The "Merge Key" can be selected from the "Merge Key Location" dropdown, which is populated with only the columns that qualify based on the data type.

Other Connectors let you select a rolling window of data to keep when updating, making it easier to focus on the relevant data. Connectors with partitioning include the following:

 PostgreSQL
* MySQL Database
* MariaDB Database
* Oracle Database
* Amazon Redshift
* Amazon Aurora
* Amazon Athena
* IBM DB2
* IBM Informix
* Snowflake
* Vertica
* Sybase/SAP ASE
* NetSuite SuiteAnalytics


