

You can combine DataSets in Workbench 5.1 by writing SQL queries (ODBC and OLAP DataSets only) or using Lookup Tables to create joins (all DataSet types). This topic focuses on using Lookup Tables. For more information about writing SQL queries for ODBC and OLAP DataSets, see

Connecting to an OLAP cube

.


 In Workbench 5.1, a "Lookup Table" is a DataSet you combine with a primary DataSet. The Lookup Table
 *must*
 be saved as a DataSet job in Workbench or the join will not work. The Lookup Table DataSet and primary DataSet must both contain one column with unique matching values ("key columns"); that is, the values in both columns must be the same, but there cannot be duplicate values in either column. In addition, the names of the matching columns must be different. (You can change column names in Workbench if need be.) Once you match key columns, a new DataSet is created by joining all columns from both DataSets. Combining DataSets in this way is equivalent to using a LEFT JOIN in SQL.


**To combine DataSets using Lookup Tables,**

. In Workbench, click

in the left-hand icon bar.
2. In the Jobs listing, double-click the job with your primary data source (i.e. the data source you intend to combine with another data source).
3. Click
 **Transforms**
 to expand that section of the pane.
4. In the
 **Add a transform**
 menu, select
 **Lookup Table Transform**
 .
5. Click the

button.


 The
 **Lookup Table Transform Editor**
 appears.
6. In the
 **Lookup Source DataSet**
 menu, select the DataSet you intend to combine with your primary DataSet.


 The DataSet you select
 *must*
 be saved as a DataSet job in Workbench.


 If you have not yet uploaded the selected job to Domo, you are now asked if you want to do so.
7. In the
 **Lookup Source Key**
 menu, select the column from the Lookup Source you intend to match with a column in your primary DataSet.
8. In the
 **Primary Key**
 menu, select the matching column.
9. (Optional) If you want Workbench to generate an error if your Lookup Source is found to be missing, turn on
 **Error on Missing Lookup**
 .


**Note:**
 If any columns in your Lookup Table have the same name as columns in your primary table, you must change those names. You can do this by opening the
 **Schema**
 subtab for the DataSet job then making changes as necessary under
 **Destination Column**
 . If necessary, you can also remove columns by clearing the checkboxes for those columns under
 **Include**
 .
10. Click
 **Apply**
 .
11. Click

at the top of the pane to save your transform.

The next time you run the job, the lookup source DataSet will be added to the primary DataSet in Domo.


 For information about joining DataSets in Domo, see

Data Transformation

.

