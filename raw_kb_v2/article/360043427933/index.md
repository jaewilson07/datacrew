

There are times when you want to join DataSets together, however, there is no unique key column to join on. By using the

Understanding Joins

.


**To create a unique key column,**

. Go into the

edit view

or

create a new

Magic ETL DataFlow.
2. Add the

Rank and Window

tile to the canvas and connect it to your Input DataSet.
3. In the configuration pane, click
 **Add Function**
 .
4. Under step 1, name the new column.
5. Select
 **Row Number**
 from the
 **Select the function to apply**
 dropdown.
6. Click
 **Apply**
 .
7. Under section 2, choose a column to sort your data on to determine how the rows numbers will be applied.
8. Next, choose to order your column by either ascending or descending values.
9. With the goal of having a unique key value for every row of your data, you will want to leave the
 **What columns make up the partition**
 option blank.
10. Once your ETL has been completed and ran, the output will have the new column with a unique value for each row.

