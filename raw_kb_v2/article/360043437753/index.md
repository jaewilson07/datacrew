

Intro
-------

There are six key criteria for any Data Assembler job. If the job does not meet these criteria, the stability of the job and the validity of the data may be compromised.


 Usage Guidelines
------------------


####
 Average Partition Size


* Calculate this by dividing the total row count by the number of partitions.
* Choose a partition key that makes the average partition size as large as possible.
* An ideal average partition size is over 100k rows, but we recommend a minimum of 50k rows per partition.


####
 Input Ratio


* This is the ratio of the input DataSets to the output DataSets. It represents the amount of data that is updated during execution and should be as small as possible.
* We recommend targeting 1% or less, but this percentage should not be greater than 10%.
* When using the Upsert option, limit yourself to one input.


####
 Update Frequency


* The Data Assembler is intended to be used to update data once a day.
* We strongly recommend that you do not exceed four executions a day.
* You should not use the Data Assembler to update data more frequently than once an hour.


####
 Number of Partitions Updating on Each Execution


* You should not use the Data Assembler if you need to update a large number of partitions on each execution.
* Jobs that execute daily should not exceed 100 partitions.
* Jobs that execute more frequently than daily should not exceed 10 partitions.


####
 Schema Changes


* The schemas of the input and output DataSets should not change. The Data Assembler can handle certain schema changes, but we do not recommend using the tool to make these changes because the data may become corrupted.


####
 Overall Data Size


* For data sizes less than 10 million rows, we generally recommend using the standard DataFlow options due to the additional flexibility provided by these Domo features.


####
 Other Tips


* When you create a new job, start with a manual schedule. When the job is confirmed as ready for production, change the schedule as needed.
* Do not use triggers unless necessary. We recommend that you use the scheduling options first.
* Review jobs periodically. Deactivate or delete jobs that are no longer needed.
* When processing large historical fill jobs (over 100 million rows), consider breaking the history into smaller DataSets. If an error occurs, you can restart the job on the portion of the data that failed.


