

Intro​
--------

Partitioning is the database process where very large tables are divided into multiple smaller parts. By splitting a large table into smaller and individual tables, queries that access only a fraction of the data can run faster because there is less data to scan.


 Use Domo's Partition connectors to retrieve your data faster as Domo supports date partitioning and reduces the number of API calls. The main goal of partitioning is to aid in the maintenance of large tables and to reduce the overall response time to read and load the data for specific operations. Partitioning enables faster query execution and distribution of files over multiple storage devices.


 Domo supports Partitioning feature for the database connectors like MariaDB, Amazon Redshift, MySQL, IBM Informix, Amazon Aurora, IBM DB2, Oracle Database, Snowflake, Vertica, Amazon Athena, PostgreSQL, Google Analytics, and more.

##
 Frequently Asked Questions

Why should I prefer using a Partition connector over a regular connector?


 Partition connector supports data partitioning, thus optimizes your database performance while maintaining data integrity. A Partition connector will always fetch your data faster using the date partitioning and will reduce the number of API calls. In some partition connectors, you can specify the partition column name if you want partitioning to be done on a specific column.

###
 What are the benefits of partitioning data?

Data partitioning has the following advantages:

 Improves query performance and manageability
* Simplifies common administration tasks
* Acts as a key tool for building systems with extremely high availability requirements
* Allows accessing a large part of a single partition


####
 How the data is partitioned in Domo?

Domo supports Date partitioning.

