


###
 DataFlows


#####
 Row size is wider than MySQL supports

This most commonly happens when you have one or more text columns that have too many characters in them. For example, description columns can have hundreds of words, which take up most of the space on your MYSQL table causing this error.


 To solve this issue, remove columns that you do not need, especially large string columns, or remove column widths.


 For more detailed information on limits and how data size is calculated, see the

MySQL documentation

.

####
 Could not convert/parse X data type to Y data type

This happens when characters exist in a value that cannot be converted to a data type. For example, you would receive this error if you were trying to convert the string value 'z84084' to a number. Every character in the value must be able to be converted to the new datatype.


 This error typically happens when an input DataSet is running using the Append method. It occurs because Domo doesn't do data validation when appending data. So if the data provider adds extra columns to the same report or sends data with a data type that does not match the original schema, this DataSet will likely break when put into a DataFlow. To fix this, clean up your data before attempting to convert it from one data type to another, or change the run method to Replace.

####
 10,000 duplicate row error in Magic ETL

Magic ETL does not allow for a join to occur when the column on the left contains over 10,000 of the same values. For example, if the column on the left of your join is order number and the order number '12345' existed on more than 10,000 different rows, then an error will occur because these are considered duplicate values.

To solve this issue, just change the positions of the tables in the join. Instead of 'Sample Data' on the left side, move it to the right. Keep in mind you'll want to make sure you change your join accordingly. In the example above, the join should change from a left to a right join to ensure 'HH - Pages' is still being joined onto 'Sample Data'.


#####
 Why is there a variance in my DataFlow run times?

The way Domo runs DataFlows is very complex but efficient. Due to the complexity of Domo's infrastructure, DataFlows have variance in run times; this is expected and normal. As a principle, the larger the input of the DataFlow, the larger the variance can be.


 The fastest run time of a DataFlow should not be considered the expected run time of a DataFlow. Even the average run-time for that version cannot always be expected every time the DataFlow runs. It is an average after all.


 Domo is constantly making changes to this part of the infrastructure to improve consistency. To decrease overall run-time look to how you can optimize the DataFlow query by following the principles described in

Optimizing an SQL DataFlow

. Dive even deeper into DataFlow optimization with the following document:

 https://dev.mysql.com/doc/refman/5.5/en/select-optimization.html


#####
 Why is my DataFlow in a draft state?

When DataFlows are in a draft state, this typically means that it has been caught in a trigger loop. This means that the inputs that you use to trigger the current DataFlow is causing a never-ending loop of input triggers upstream from the DataFlow.


 For example, DataSet A triggers DataFlow 1. DataFlow 1 creates DataSet B. DataSet B triggers DataFlow 2. DataFlow 2 outputs DataSet A. This results in the following endlessly triggered DataFlow.

To solve this issue, you will need to break the loop. Remove the input(s) from triggering the DataFlow that is causing the loop and save the settings. If the draft flag is gone, you have broken the trigger loop.


 Edit the inputs that trigger a DataFlow by,

. Finding and selecting the DataFlow in the Data Center.
2. Select
 **Settings**
 .
3. Check/uncheck the box next to any input that you want or don't want to trigger this DataFlow to run.
4. Click
 **Apply**
 .


#####
 Why did all of my individual transforms run successfully in the preview, but the DataFlow failed its overall run?

When running and previewing the data in a transform sometimes not all rows from the input DataSet are being processed. You may notice that by default, an input only has its first 10,000 rows loaded. If a DataFlow ran into an error but each individual transform ran successfully in the preview window, the value that caused the DataFlow to throw the error probably exists outside of the first 10,000 rows that were processed during the preview.

Increase the number of rows being processed in the preview by selecting more than 10k rows in the DataFlow edit view.

####
 Why is the Redshift preview data not in the order I specified in my ORDER BY clause?

When Redshift processes a query that contains an ORDER BY clause, it does honor the specified order while processing the logic of that query. However, when it has finished running the query, it reorders the data to optimize the actual storage of the data. (Redshift stores data tables distributed across many nodes, and splits the data up according to its own storage optimization methods.) When Domo pulls up a preview of the data, it is loaded out of the table after being reordered and stored by Redshift. When working with Redshift, it's important to include an ORDER BY clause in every individual query that relies on that specific ordering of the data,
 *not*
 to rely on the order persisting from a prior transform.

##
 Blend (DataFusion)


#####
 Cannot load required dependency

This most likely means that the schema of one of the inputs was changed or deleted, causing an error in the DataFusion. Datafusions are not designed to compensate automatically for schema changes which is part of what allows them to join large DataSets so quickly.


 To solve this issue, simply edit the DataFusion and change the join to a different join type and save. For example, if you had it set to a left join, change it to an inner join and save. Then, edit the DataFusion again, changing it back to the original left join. This resets the schema, fixing the issue.

####
 Slow DataFusion run-time

Slow DataFusions are typically caused by 3 things.

. Joins on non-numeric columns
2. Joining on too many columns
3. Nested DataFusions. i.e. Using a DataFusion as an input to another DataFusion.

To solve this issue, we recommend changing the join to include only one numeric column of type Long for each join. If the DataFusion is nested 3 deep or more, move those inputs into the same DataFusion, if possible.

