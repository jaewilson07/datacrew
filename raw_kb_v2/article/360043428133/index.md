

A "recursive" or "snapshot" DataFlow is a DataFlow that uses itself as an input.


 DataFlows (neither SQL nor ETL types) cannot append data natively like connectors. However, if you need to create a DataFlow that appends data, you can do so by running it once and then using the output as part of the input for the next run. This way, every time the DataFlow runs, it includes the data from before and also appends the new data onto itself.


**Important:**
 If a recursive DataFlow is edited incorrectly, you could lose ALL historical data. To avoid this any time you are editing, create an additional DataSet that is a copy of your historical DataSet. This DataSet will remain static. If anything happens to your historical DataSet, you will have a backup from before you began editing.

*Video - What is a Recursive DataFlow?**

*To create a recursive SQL DataFlow,**

. Create and run an SQL DataFlow.


 The query for the output DataSet will be

SELECT \* FROM
 *your-input-DataSet*
2. Once the DataFlow has finished running, load the output DataSet as an input DataSet.


 The DataSet name will show the output DataSet name followed by "1."

You should now have two DataSets in the DataFlow—the updating original DataSet and the historical DataSet.
3. Locate a column to use as a constraint. This helps determine when to replace data in your historical DataSet with new data. Constraint columns are normally ID columns or date columns or have other unique identifiers. In this example we use the `Date` column as a constraint.


 Your query should look similar to the following:
4. Filter your data so you are pulling historical data where it does not exist in the original DataSet.
5. Combine your new and historical DataSets.
6. Append the new data with the historical DataSet.
7. Output the data using the same output you created back in Step 1. You don't need to create a brand new output.


