

Intro
-------

A "recursive" or "snapshot" DataFlow is a DataFlow that uses itself as an input.


 DataFlows (both SQL and Magic ETL) cannot append data natively like Connectors. However, if you need to create a DataFlow that appends data, you can do so by running it once and then using the output as part of the input for the next run. By doing this, every time the DataFlow runs, it includes the data from before and also appends the new data onto itself.

*Important:**
 There are significant behavioral differences in Magic ETL. Read the


 Behavior Changes and Feature Updates in Magic ETL


 article before converting mission-critical Magic ETL DataFlows.
 **Failure to do so may cause an unintended change to your DataFlow’s behavior.**

*Video - What is a Recursive DataFlow?**

*Important:**
 If a recursive DataFlow is edited incorrectly, you could lose ALL historical data. To avoid this any time you are editing, create an additional DataSet that is a copy of your historical DataSet. This DataSet will remain static. If anything happens to your historical DataSet, you will have a backup from before you began editing.

##
 To create a recursive DataFlow in Magic ETL:


1. Create and run a Magic ETL DataFlow.
2. Once the DataFlow has finished running, load the output DataSet as an input DataSet.


 The Output tile will show the output DataSet name followed by "1."

You should now have two DataSets in the DataFlow—the updating original DataSet and the historical DataSet.


 You now need to find a column to use as a constraint. This helps determine when to replace data in your historical DataSet with new data. Constraint columns are normally ID columns or date columns or have other unique identifiers. In this example, we use the `Date` column as a constraint.
3. Use
 **Select Columns**
 to select only the constraint column.
4. Use
 **Remove Duplicates**
 to return a unique list of constraints.
5. Use an Outer Join to combine your new data to the historical DataSet. If you selected the historical DataSet on the left side of the join, as shown below, use a
 **Left Outer**
 Join. If you select the historical DataSet on the right side of the join, use a
 **Right Outer**
 Join. (Do not select
 **Inner Join**
 , as this could result in a loss of data.) If the date columns are named the same you will notice a warning in Step 3. If you are doing a Left Outer Join then you can auto-fix the right table, and if you are doing a Right Outer Join you can auto-fix the left table. This will add the conflicting column to the Alterations section and will allow you to rename the column if you would like to keep it or drop it altogether. In this situation, we will rename it to “Delete if not null” for our next step.
6. Filter any rows from your DataSet where the new date column is not null.


 This returns only rows from the historical DataSet that do not exist in the new updating DataSet. You can do this by adding a Filter Rule or by adding a Formula Rule as shown in the examples below.

*Add Filter Rule:**

*Add Formula Rule:**
7. Use
 **Select Columns**
 to remove the extra date column.
8. Use
 **Append**
 to join the historical DataSet and new updating DataSet. If all steps have been done correctly, both DataSets will show "No changes."


 Make sure not to forget to choose how you would like the data to be handled if the data types don't match between columns that should be combined. For more information about this option you can find it here under the "Append Rows (Union)" section:

Behavior Changes and Feature Updates in Magic ETL

.
9. Connect the
 **Append**
 tile to your output. Once complete, your ETL should look like the following:


###
 Troubleshooting/FAQ

See

Top 5 issues Users Experience with DataFlows

to see common issues and errors seen when building DataFlows.

