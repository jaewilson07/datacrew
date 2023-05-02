

Intro
-------

There are multiple ways to bring data into Domo and process or transform that data once it has been brought in. There are three stages in which you can choose to process your data:

. *Pre-Domo Processing Options:*


 You’ll generally use Workbench and Domo connectors to bring data into Domo, and you can perform some minimal transformations within Workbench and certain connectors before you upload the data into Domo.
2. *In-Domo Processing Options:*


 After you’ve brought your data into Domo, you’ll generally use Magic Transforms (ETL, MySQL, Redshift, or DataFusion) to create and transform new DataSets within Domo.
3. *In-Card Processing Options:*


 After you’ve created DataSets and started to build cards with them, you can use Beast Mode within Analyzer to add any additional dimensions or calculations that you need.

Each tool has its own unique affordances as well as potential advantages or disadvantages depending on the type and size of data that you need to process and how quickly you want that data to be able to refresh or update. Review the following sections to identify which tool will work best for your current or future data processing needs.

Pre-Domo Processing Options
--------------------------------


###
 Connectors


####


 When to Use Connectors

Domo has developed hundreds of proprietary public-facing connectors that make it easy for you to bring in data from a host of popular applications. With Domo’s developer kit, you’re also able to build connectors of your own.


 Depending on the specific connector, you may have different options in terms of tailoring the reports or DataSets you would like to bring into Domo. Visit the documentation for each individual connector in the

Help Center

to learn more about what each connector offers you in terms of processing and transformation capability.

###


 Pro Tips


* To the extent possible, preprocess your data before you bring your data into Domo using connectors, which will help minimize the need for creating DataFlows later and ultimately reduce processing time.
* If possible, it is better to remove or filter out columns or categories of data that don’t need to be included in the DataSet to minimize load times and simplify later use of that DataSet


 .


###
 Workbench

Workbench is a secure, client-side solution for routinely uploading your on-premise data to Domo. To learn more about Workbench, visit

http://knowledge.domo.com?cid=workbench

.

###


 When to Use Workbench


* You are trying to automate data import into Domo from local files or internally managed databases or servers (CSV, Excel, Jira, ODBC, OLAP, Quickbooks, XML).
* You are trying to do basic data manipulations (lookup tables, simple calculations, change data formats, change data types, search/replace, rename column headers) before importing transformations into Domo


 .
* You want to utilize existing SQL queries to grab data from a database (uses an ODBC connection).
* You are trying to get data from a data warehouse cube (can only grab one slice at a time).
* You have pre-existing scripts (ex:

Powershell

, etc.) that are outside the default list of connections.
* You are willing to build custom plugins into Workbench if you cannot convert your data or systems into a generic database (ODBC, OLAP) or generic file type ( Excel, CSV, JSON, XML) or find matching connectors for your data systems/type


 .


####


 When NOT to Use Workbench


* You are trying to do complex formulas (unless contained within a SQL query).
* You are not willing to build custom plugins in Workbench if you cannot convert your data or systems into a generic database (ODBC, OLAP) or generic file type (Excel, CSV, JSON, XML) or find matching connectors for your data systems/type.


####


 Pro Tips


* To the extent possible, preprocess your data before bringing it into Workbench or use Workbench to process data, which will help minimize the need for creating DataFlows later and ultimately reduce processing time.
* If possible, it is better to remove or filter out columns or categories of data that don’t need to be included in the DataSet to minimize load times and simplify later use of that DataSet


 .


 In-Domo Processing Options
-------------------------------


###
 ETL

You can create ETL DataFlows using an intuitive drag-and-drop interface available in the Data Center of Domo. To learn more about ETL, visit

http://knowledge.domo.com?cid=createmagic

.

###


 When to Use ETL


* If you aren’t familiar with SQL-based languages and are more of a business user vs. technical/power user.
* If you want the DataSet to be added to or managed by someone who is unfamiliar with SQL-based languages.
* You need to combine dissimilar DataSets or normalize your data easily.
* You prefer to see a visual of how you want to make the DataFlow


 .
* If your inputs total less than 100 million rows.


####


 When NOT to Use ETL


* Your inputs total over 100 million rows.
* You need to utilize things such as current date or custom functions, statistical functions, windowing functions (ex: row numbers), and current date.


####


 Pro Tip


* It is better to remove or filter out columns or categories of data that don’t need to be included in the DataFlow at the beginning of the process instead of at the end. For example, if you know that you will only need data for year 2016, filter the 2016 data out from the very beginning.


###
 DataFusion

DataFusion lets you select and merge data sources so you can begin visualizing your data. DataFusion makes joining data simple, and there’s no need for SQL or ETL expertise. To learn more about using DataFusion, visit

http://knowledge.domo.com?cid=usingdatafusion

.

###


 When to Use DataFusion


* You have DataSets that you need to be instantaneously joined or unioned and updated often, and you need to rename columns or drop columns; it is the quickest method for joining inputs of 100+ million rows or larger


 .
* Because a Data Fusion is not processing or indexing the data, it renders more quickly inside of Domo.
* You want to be able to leverage creative Beast Mode calculations within Analyzer to specify which data you want to display and how.
* You don’t need to manipulate data while joining.
* You are not familiar with writing SQL.
* Your DataSets are larger than 100 million rows.


####


 When NOT to Use DataFusion


* Your joins aren’t straight-forward (ex: functions on join clauses, where clauses needed, order by needed, calculations needed).
* You need to use the DataFusion as an input to a DataFlow.
* You need a lot of back-end control over renaming or editing column names after the initial creation of the DataFusion.


###
 MySQL

MySQL DataFlows allow for the use of common SQL commands so that data can be accessed, joined, cleansed, and transformed within Domo. To learn more about adding a SQL DataFlow in Domo, visit

http://knowledge.domo.com?cid=createsqldf

.

###


 When to Use MySQL


* If you are familiar with SQL-based languages or it is your current preference.
* You are familiar with optimization techniques and know how to create tailored indexes; for example, using indexes can reduce an 8-hour processing time to about 30 minutes.
* If you want to optimize processing; MySQL can often exceed the processing efficiency of Redshift if the calculation is optimized properly.
* You need to use custom functions, stored procedures, or want to have full control over indexing.
* When you can’t get the desired result using Magic ETL, Beast Mode, or Fusion.


####


 When NOT to Use MySQL


* Your input DataSets are over 100 million rows.
* If you are dealing with DataSets that hold mass amounts of columns and/or rows that are being combined into a DataFlow (that also aren’t going to be grouped down), it will take significantly longer to update these DataSets and cards built on those DataSets in Domo. It can sometimes take hours for these assets to update.
* If you plan to have multiple nested queries (performance is poor on these
 *unless*
 you pull the nested queries into their own transform, then index and reference them).
* You don’t know how to optimize or index data.
* If others who will be maintaining, modifying, or needing to understand the DataFlow in the future don’t prefer to use MySQL.


####


 Pro Tip


* Documentation on MySQL is readily available online, so if you run into issues, you’ll be able to find the resources you need there.


###
 Amazon Redshift

Amazon Redshift is a hosted data warehouse project that is part of the larger cloud computing platform Amazon Web Services. Redshift handles analytics workloads on large scale DataSets stored by a column-oriented DBMS principle. To learn more about using Redshift, visit

http://knowledge.domo.com?cid=amazonredshift

.

###


 When to Use Redshift


* *Most*


 of your DataSets are 10 million rows or more.
* You have a DataSet of 100 million or more rows as an input.
* You need windowed functions (windowing functionality is available through MySQL as well, but is not built in natively).
* Customer is a heavy Redshift shop who wants to work with technology they’re already familiar with so they can leverage existing expertise and easily copy/paste queries from their other systems into Domo without having to translate to MySQL, Magic, etc.
* In order to leverage Multiple Parallel Processing when intentionally creating massive Cartesians or working with any other joins between extremely large DataSets.


####


 When NOT to Use Redshift


* The majority of your input DataSets are under 1 million rows.
* You need custom functions, indexes or stored procedures.
* Using sub-selects in your SQL (different than sub-queries). Performance is greatly reduced. See reference below:

+ SUBSELECT (AVOID): select \*, (select a from table) as content from table
	+ SUBQUERY (OK TO USE): select \* from (select a from table)
* When any other methods appropriately and adequately provide the solution.
* If others who will be maintaining, modifying, or needing to understand the DataFlow in the future don’t prefer to use Redshift.


####


 Pro Tip


* Documentation on Redshift is readily available online, so if you run into issues, you’ll be able to find the resources you need there.


 In-Card Processing Options
-------------------------------


###
 Beast Mode

In the Analyzer, you can add a calculation, or create column transforms, by defining calculations that reference other columns in your DataSet. To learn more about Beast Mode, visit

http://knowledge.domo.com?cid=beastmodecalculation

.

###


 When to Use Beast Mode


* Anytime you need to create an instantaneous calculation or calculated column or you want your calculations to be dynamic (recalculates on the fly when using filters and analyzer), which is especially the case when you want to do a SUM, MIN, MAX, or AVG calculation.
* You want to split up your data into different groupings (ex: split age column into multiple series like 0-10, 11-30, 31+; set “below goal” and “above goal," etc.).
* You want to create comparison calculationss (ex:

Year over Year, Period over Period

) or create ratios between groups of data.
* You want to create

multiple summaries

or manipulate table cards using basic HTML.
* You want to optimize the time it takes for a query to complete. Beast Modes offer this advantage because these are not saved in the DataSet itself.


####


 When NOT to Use Beast Mode


* You are trying to compare data from one row to another (other than using SUM, MIN, MAX, AVG).
* You need advanced statistical functions (some statistical functions exist through Beast Mode, so check the

Functions list

to see if the one you need is available).
* You want variables.
* You need a calculated date that can be recognized/used in a card’s dynamic date filtering (use a DataFlow instead).


####


 Pro Tip


* If you need to apply a calculation to a DataSet, it is generally best to use Beast Mode, as it adds dynamic filtering capabilities to your calculation.
* Fusion can be used to quickly join large, historical pre-processed DataSets with the latest versions and make turnaround processing time much faster because you won’t need to perform additional processing and indexing on the pre-processed DataSet each time.


 Help Option — Domo ETL Team
--------------------------------

This is a special team of data specialists that develop solutions when Domo tools may not offer the most efficient route.

###


 When to Contact Domo ETL Team (

extra fee may apply

)


* Your data sources are hundreds of millions or even billions of rows.
* You are needing an "outside of the box" solution to receive/prep data for Domo.


####


 When NOT to Contact the ETL Team


* When any of the other methods listed above work efficiently

Tips for Processing Big Data
--------------------------------


* When uploading data to Domo, break up the large data file by row so the file part is between 100 and 200 Mb.
* Upload your data using our multi-part streaming API. For more information, visit

https://developer.domo.com/docs/streams-api-reference/streams

.
* If an data part upload fails unexpectedly, you can re-upload that data part using the same part ID before closing the multi-part stream upload.


