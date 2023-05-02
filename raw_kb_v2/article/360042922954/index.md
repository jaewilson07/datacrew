

Intro
-------

*Easy Indexing**
 allows you to create indexes in your existing DataFlow transform rather than creating multiple new transforms just dedicated to indexing, which can clutter your DataFlow. This allows for a clearer and more concise view of all your transforms. For more information on what an index is and why you should use them, see

Optimizing an SQL DataFlow

.


 When creating a new
 ****Transform****
 , you can choose to create either a
 ****Table****
 or an
 ****SQL****
 type transform.

 A
 ****Table Transform****
 creates a new table using a SELECT statement and will always generate an output table. Due to an output table being generated, you can create

easy indexes

based on these tables.
* An
 ****SQL Transform****
 creates a table that typically doesn't include a SELECT statement such as a stored procedure. This type of transform does not generate an output table.

Adding an Index
-----------------

An index is a data structure that improves the speed of operations in a table. With
 ****Easy Indexing****
 , you can quickly add an index on one or more columns right in your
 ****Table Transform****
 .


****Create an index by,****

. Adding a new transform in your DataFlow.
2. Select
 ****Table****
 as the type of transform.
3. Then, select the
 ****Indexing****
 tab.
4. Choose your Index Type.
5. Select which column to apply the index.
6. Click
 ****Done****
 .

See

Understanding Transforms

for more information on DataFlow transform basics.

