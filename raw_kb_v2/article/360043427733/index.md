

Intro
-------


**Note:**
 This article is for the old Magic ETL. For information on the new Magic ETL, see

Magic ETL

.

This topic discusses two methods for combing data in a Magic ETL transformation flow: the Append Rows tile, which lets you append rows from multiple DataSets into one DataSet; and the Join Data tile, which lets you combine columns from two DataSets.


 For information about creating a Magic ETL DataFlow, see

Creating a Magic ETL DataFlow

.


 For information about the Data Center, see

Data Center Layout

.


 Append Rows
-------------

The Append Rows tile lets you append rows from multiple DataSets (with similar columns and data structure) into one DataSet, returning occurrences of all matches, including duplicate rows.

*Note:**
 You can only append data rows from input DataSets having the same data structure and data type.

If the data structures do not match, the Append Rows tile creates extra columns to accommodate the non-matching data.

For example, if you tried to append text to a whole numbers column, two columns would be created—one for the whole numbers column and one for the text column.


**Video - Appending Rows in Magic ETL**


**Example**


 For example, using this transform flow...

... the Append Rows tile transforms this data...

and this data...

... to this...

... using this configuration:


**Note:**
 When previewing, the transformed data might not sort rows in the order you expect. You can control the row order when displaying data in table cards.

*To configure the Append Rows tile,**

. Click the
 **Append Rows**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Select the option for including columns.


|
 Option
  |
 Description
  |
| --- | --- |
|
 Include columns from DataSet
  |
 Includes the columns from the DataSet you select.
  |
|
 Include all columns
  |
 Includes unique columns from all of the input DataSets.
  |
|
 Only include shared columns
  |
 Includes only columns that are used in every input DataSet.
  |
4. Review changes to be made to each DataSet.


**Tip:**
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.

Join Data
-----------

The Join Data tile lets you combine columns from two DataSets or data "streams" into one DataSet using common values in a specific column (or set of columns). The columns
 *must*
 exist in both input DataSets and have the same data structure.


**Note:**
 JOINs in Magic ETL for matching the lookup and matching columns are case-sensitive.

*Video - Comparing Types of Joins in Magic ETL**


**Video - Multiple Joins in Magic ETL**


 ​

*Example**


 For example, using this transform flow...

... the Join Data tile transforms this data...

and this data...

... to this...

... using this configuration:

*Notes:**

 In the transformed data, Domo adds "\_1" to the name of specified matching columns.
* When previewing, the transformed data might not sort rows in the order you expect. You can control the row order when displaying data in table cards.

*To configure the Join Data tile,**

. Click the
 **Join Data**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Determine the column to use in combining data.

*Notes:**
 1) The specific column used to combine rows
 *must*
 exist in both DataSets and have the same data structure. 2) Domo refers to the column in the first input DataSet as the
 *identifying column*
 and refers to the column in the second input DataSet as the
 *matching column.*
 3) For Inner, Left Outer, and Full Outer joins, specify the primary or "lookup table" with the unique values as the first input DataSet (on the left). (The identifying column
 *cannot*
 have more than 10,000 duplicates of any value.)
4. Select the first input DataSet (on the left), then select the identifying column you want.


 The identifying column must be paired with a matching column in the second input DataSet.
5. Select the second input DataSet (on the right), then select the matching column you want.


 The matching column must be paired with a matching identifying column in the first input DataSet.
6. Click the join type icon, then select the type of join to perform.


|
 Join Type
  |
 Description
  |
| --- | --- |
|


 Inner
  |
 Includes only matching rows in both input DataSets.
  |
|


 Left Outer
  |
 Includes all rows from the first input DataSet (on the left) and matching rows from the second input DataSet (on the right).
  |
|


 Right Outer
  |
 Includes all rows from the second input DataSet (on the right) and matching rows from the first input DataSet (on the left).
  |
|


 Full Outer
  |
 Includes all rows from both input DataSets.
  |
7. (Conditional) If you want to define another pair of columns, click
 **Match Another Column**
 , then configure the paired columns.


**Tip:**
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.


