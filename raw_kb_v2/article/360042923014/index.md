

Intro
-------

You can optimize your DataFlows by creating indices in the DataFlows and limiting your data. Doing so will help eliminate "Timed Out" errors by allowing your DataFlows to run more efficiently.


 Optimizing Using Indexes
--------------------------

Indexes are used to find rows with specific column values quickly. Without an index, MySQL begins with the first row and reads sequentially to find the relevant data. See

How MySQL Uses Indexes

for more detailed information on the best use cases to optimize using indexes.


 Joining data and using a WHERE statement in MySQL are the most common reasons for using indexes. When you are performing a join or using a WHERE clause, you should index the columns on which you are joining or filtering.


 For example, here is a SELECT statement where we are joining two tables together:


`Select`


`a.`column1`,`


`a.`column2`,`


`b.`column3`,`


`b.`column4``


`FROM input_dataset_1 a`


`LEFT JOIN input_dataset_2 b`


`ON a.`column1` = b.`column3``


 You should index the two columns in the

ON

statement. There are two ways you can accomplish this.

. Adding a new SQL type transform BEFORE the transform where the join is happening.
2. Using
 **Easy
 **Indexing****
 you can quickly add an index on one or more columns right in your Table Transform without the use of SQL.

See

Understanding Transforms

for more information on the different transform types.


****Create an Easy Index by****
 ,

. Adding a new transform.
2. Select Table as the transform type.
3. Then, select the
 ****Indexing****
 tab.
4. Choose your
 ****Index Type****
 .
5. Select which column to apply the index.
6. Click
 ****Done****
 .

See

Understanding Transforms

for more information on the different transform types.


 Other Optimizations
---------------------

Indexing in MySQL does not always optimize the DataFlow to the full extent needed. Here are additional things you can do to optimize your DataFlow:

 Filter the columns being brought into the DataFlow. Some larger DataSets have a large number of columns, not all of which are needed. You can click on the Dataset in the
 **Input Datasets**
 section to limit what columns are being brought into the DataFlow.
* Filter your data. The most common way to do this is by using a data filter. For example:


`SELECT `date`, `value`, `series`


 FROM input_dataset_1


*WHERE YEAR(`date`) = YEAR(CURRENT\_DATE())*`
* Take advantage of the

GROUP BY

function. When filtering data, you sometimes end up with duplicate rows because they were broken out by another column in the original data. If you aggregate value columns then apply a

GROUP BY

to the remaining columns, you can condense the number of rows. The most common aggregation is

SUM.

Here is an example:


`SELECT `Date`, `Series`, SUM(`value`) AS ‘value’


 FROM input_dataset_1


 GROUP BY `Date`, `Series``
* If you have a transform with multiple

JOIN

s, you can break them up into multiple transforms. For example:


`SELECT a.`column`,a.`column4`, b.`column2`,b.`column5`,c.`column6`, c.`column3`


 FROM input_dataset_1


 LEFT JOIN input_dataset_2 b


 ON a.`column4` = b.`column2`


 LEFT JOIN input_dataset_3 c


 ON b.`column5` = c.`column3``
* You can also split a transform into two transforms. For example:


 Transform 1


`SELECT a.`column`,a.`column4`, b.`column2`,b.`column5`


 FROM input_dataset_1


 LEFT JOIN input_dataset_2 b


 ON a.`column4` = b.`column2``


 Transform 2


`SELECT a.`column`,a.`column4`, a.`column2`,a.`column5`,c.`column6`, c.`column3`


 FROM transform_data_1 a


 LEFT JOIN input_dataset_3 c


 ON a.`column5` = c.`column3``

Make sure that if you are using MySQL, you index the columns from transform\_data\_1 before doing the join, as well as any additional indexing you didn't create.


 If none of these methods helps optimize your data, please reach out to

Domo Support

.

