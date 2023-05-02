

Intro
-------


**Note:**
 This article is for the old Magic ETL. For information on the new Magic ETL, see

Magic ETL

.

This article describes in detail most of the
 **Edit Columns**
 tiles in Magic ETL, including the following:

 Add Constants
* Calculator
* Collapse Columns
* Combine Columns
* Date Operations
* Group By
* Select Columns
* Set Column Type
* Split Column
* Uncollapse Columns


 This topic does not discuss the Rank & Window tiles. For information about these tiles, see

Magic ETL Tiles: Rank and Window

.

For information about creating a Magic ETL DataFlow, see

Creating a Magic ETL DataFlow

.


 For information about the Data Center, see

Data Center Layout

.


 Add Constants
---------------

The Add Constants tile lets you add a column with constant values.


**To configure the Add Constants tile,**

. Click the
 **Add Constants**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Enter the name of the new column.
4. Select the column type.


|
 Column Type
  |
 Description
  |
| --- | --- |
|
 Text
  |
 Contains text and numbers (which are treated as text).
  |
|
 Decimal
  |
 Contains numbers in decimal notation.
  |
|
 Decimal (Fixed)
  |
 Contains decimal numbers with a fixed number of digits after the decimal point.
  |
|
 Whole Number
  |
 Contains numbers without a decimal part.
  |
|
 Date
  |
 Contains date values.
  |
|
 Date and Time
  |
 Contains date and time values.
  |
5. Enter the constant value, date, date and time, or leave it blank.


**Tip:**
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.

Calculator
------------

The Calculator tile lets you add a column with values from a simple calculation.


**To configure the Calculator tile,**

. Click the
 **Calculator**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Enter the name of the new column.
4. Select the operation you want.


|
 Operation
  |
 Description
  |
| --- | --- |
|
 Addition
  |
 Adds values from two columns.
  |
|
 Subtrtile
  |
 Subtracts values from two columns.
  |
|
 Multiplication
  |
 Multiplies values from two columns.
  |
|
 Division
  |
 Divides values from two columns.
  |
|
 Ceiling
  |
 Returns the highest value for each series in a numeric column.
  |
|
 Floor
  |
 Returns the lowest value for each series in a numeric column.
  |
5. Select the columns to use or specify the values you want.


**Tip:**
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.

Collapse Columns
------------------

The Collapse Columns tile lets you "unpivot" or "normalize" data in tables, transforming multiple columns in a single row into a single column with multiple rows. This tile is useful only for unpivoting data in which the number of columns stays the same. If you add another column of data to the original file, this tile does not collapse or unpivot the new column.

*Example**

For example, the Collapse Columns tile converts data in this pivoted format...

... to data in this format...

... using this configuration:

*To configure the Collapse Columns tile,**

. Click the
 **Collapse Columns**
 tile in the canvas.
2. (Optional) Rename the tile by clicking the edit icon, then entering the name you want.
3. Enter the name of the column you want to create to contain the column headings from the columns to collapse.


 For example, "Product".
4. Enter the name of the column you want to create to contain the row values from the columns to be collapsed.


 For example, "Sales".
5. For each column you want to collapse, do the following:

1. Select a column to normalize.


	 For example, "Product A".
	2. Enter a value representing the column header to be normalized.


	 The value appears in the row of the new column. For example, "A".
	3. (Conditional) If you want to collapse another column, then click
	 **Add Column**
	 .


**Tip:**
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.

Combine Columns
-----------------

The Combine Columns tile lets you combine values from multiple columns into one column. For example, you could combine first name and last name from two columns into a new, full name column.

*Video - Combining Columns in Magic ETL**

*To configure the Combine Columns tile,**

. Click the
 **Combine Columns**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Enter the name of the new column.
4. Specify the character to use to separate the combined values.
5. (Optional) Remove the original columns after they are combined.
6. Select the columns to combine.


**Tip:**
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.

Date Operations
-----------------

The Date Operations tile lets you add a column with values from a date-based calculation.


**To configure the Date Operations tile,**

. Click the
 **Date Operations**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Enter the name of the new column.
4. Select the date operation you want.


|
 Operation
  |
 Description
  |
| --- | --- |
|
 Add to date
  |
 Returns the result of adding a unit of measurement to values in a date column. Units of measurement include months, weeks, days, hours, minutes, seconds, or milliseconds.
  |
|
 Subtract from date
  |
 Returns the result of subtracting a unit of measurement from values in a date column. Units of measurement include months, weeks, days, hours, minutes, seconds, or milliseconds.
  |
|
 Difference between dates
  |
 Returns the difference in a unit of measurement between two dates. Units of measurement include days, working days, hours, minutes, seconds, milliseconds.
  |
|
 Year of date
  |
 Returns the year for values in a date column.
  |
|
 Quarter of date
  |
 Returns the quarter for values in a date column.
  |
|
 Month of date
  |
 Returns the month for values in a date column.
  |
|
 Day of year
  |
 Returns the numerical day of the year for values in a date column.
  |
|
 Day of month
  |
 Returns the numerical day of the month for values in a date column.
  |
|
 Day of week
  |
 Returns the numerical day of the week for values in a date column.
  |
|
 Week of year
  |
 Returns the numerical week for values in a date column. Weeks are Sun-Sat. Week 1 is the first week with a Saturday in this year.
  |
5. Select the columns to use or specify the values you want.


**Tip:**
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.

Group By
----------

The Group By tile lets you aggregate values from multiple columns into one column. For example, you could calculate the average sales per product or get the number of yellow shirts in stock.

*Video - Using Group By in Magic ETL**

*To configure the Group By tile,**

. Click the
 **Group By**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Select the columns in the grouping.
4. For each column you want to add, do the following:

1. Enter the name of the new column.
	2. Select the columns to aggregate and fill the new column.
	3. Select the aggregation type to use.


	|
	 Type
	  |
	 Description
	  |
	 Data Types Available For
	  |
	| --- | --- | --- |
	|
	 Count
	  |
	 Returns the number of non-null values in the column.
	  |
	 Decimal, Whole Number, Text, Date
	  |
	|
	 Count including nulls
	  |
	 Returns the number of all values in the column, including nulls.
	  |
	 Decimal, Whole Number, Text, Date
	  |
	|
	 Count distinct
	  |
	 Returns the number of unique values in the column.
	  |
	 Decimal, Whole Number, Text, Date
	  |
	|
	 First non-null value
	  |
	 Returns the first non-null value.
	  |
	 Decimal, Whole Number, Text, Date
	  |
	|
	 Last non-null value
	  |
	 Returns the last non-null value.
	  |
	 Decimal, Whole Number, Text, Date
	  |
	|
	 First value
	  |
	 Returns the first value (including null).
	  |
	 Decimal, Whole Number, Text, Date
	  |
	|
	 Last value
	  |
	 Returns the last value (including null).
	  |
	 Decimal, Whole Number, Text, Date
	  |
	|
	 Sum
	  |
	 Sums all of the values in the column.
	  |
	 Decimal, Whole Number
	  |
	|
	 Average
	  |
	 Returns the average of all of the values in the column.
	  |
	 Decimal, Whole Number
	  |
	|
	 Median
	  |
	 Returns the median of all of the values in the column.
	  |
	 Decimal, Whole Number
	  |
	|
	 Minimum
	  |
	 Returns the minimum value in the column.
	  |
	 Decimal, Whole Number, Date
	  |
	|
	 Maximum
	  |
	 Returns the maximum value in the column.
	  |
	 Decimal, Whole Number, Date
	  |
	|
	 Standard deviation
	  |
	 Returns the standard deviation for the values in the column.
	  |
	 Decimal, Whole Number
	  |
	|
	 Combine strings separated by ,
	  |
	 Combines all of the text values in the column, separating them with commas.
	  |
	 Text
	  |
	4. (Conditional) If you want to add a column, then click
	 **Add Column**
	 .


**Tip:**
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.

Select Columns
----------------

The Select Columns tile lets you select columns to include, reorder columns, and rename column headings.


**Example**


 For example, the Select Columns tile transforms these columns in this data...

... to this...

... using this configuration:


**Video - Renaming Fields in Magic ETL**

*To configure the Select Columns tile,**

. Click the
 **Select Columns**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Select the columns you want to include (or exclude) by doing any of the following:

1. Click
	 **Add Column**
	 , select a column you want. Repeat to add other columns.
	2. Click
	 **Add All Columns**
	 , then exclude columns by clicking the X associated with the column.


	 For example, remove "Order Quarter".
4. Reorder columns by clicking

and dragging a column to the order position you want.


 For example, moving "Order Date" after "Product Container".
5. For each column heading you want to rename, enter the new name of the column heading.


 For example, renaming "Product Base Margin" to "Base Margin".


**Tip:**
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.

Set Column Type
-----------------

The Set Column Type tile lets you change the data type of a column (for example, from number to text). For more information about data types, see

Understanding Chart Data

.

*Example**

For example, the Set Column Type tile transforms this data...


**Note:**
 Before the transformation, the values were actually date-time values but did not display as such because they were set to a Text data type. After the transformation, the actual values display properly as date-time values.

... to this...

... using this configuration:

*To configure the Set Column Type tile,**

. Click the
 **Set Column Type**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. For each column where you want to set the data type, do the following:

1. Select the column you want to set.


	 For example, "Order Date String".
	2. Select the data type you want for the column.


	|
	 Data Type
	  |
	 Description
	  |
	| --- | --- |
	|
	 Text
	  |
	 Contains string values.
	  |
	|
	 Decimal
	  |
	 Contains numbers in decimal notation.
	  |
	|
	 Decimal (Fixed)
	  |
	 Contains decimal numbers with a fixed number of digits after the decimal point.
	  |
	|
	 Whole Number
	  |
	 Contains numbers without a decimal part.
	  |
	|
	 Date
	  |
	 Contains date values.
	  |
	|
	 Date and Time
	  |
	 Contains date and time values.
	  |
	3. (Conditional) If you want to add another column, then click
	 **Add Column**
	 .


**Tip:**
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.

Split Column
--------------

The Split Column tile lets you split a single string column into multiple columns by a specific delimiter.


**Example**


 For example, the Split Column tile converts data in this format...

...to data in this format...

...using this configuration:

*To configure the Split Column tile,**

. Click the
 **Split Column**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Select the column you want to split.
4. Choose the delimiter on which the string should be separated.
5. Next, decide whether to keep the extra splits in the last column specified in step 4.


 For example, in row 1 in the table above, the extra split Ben exists in the last column Watcher Split 1.
6. Lastly, add and name as many columns as needed.


 In the example above, you can see there are some rows that did not have 3 values to split, so those values remain blank in those columns.


**Note:**
 If you have more values to split than columns created and choose to not keep the extra splits, the values are not placed in any column.

Uncollapse Columns
--------------------

The Uncollapse Columns tile lets you "pivot" or de-normalize data in tables using key-value pairs, transforming a single column with multiple rows into multiple columns in a single row.


**Note:**
 If you create a table that reaches the 1500 column limit, you will receive an error. You must reduce the number of columns to continue running your Magic ETL DataFlow.


**Example**


 For example, the Uncollapse Columns tile converts data in this format...

... to data in this format...

... using this configuration:

*To configure the Uncollapse Columns tile,**

. Click the
 **Uncollapse Columns**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Enter the name of the key column you want to uncollapse into new column headers.


 For example, "Product".
4. Select the column to use to group the row values of the new columns.


 For example, "Month".
5. For each new column you want to create from the key column, do the following:

1. Enter the name of the new column header.


	 For example, "Product A".
	2. Enter a value from the key column that represents the column header to be uncollapsed.


	 For example, "A".
	3. Select the value column to use to fill the row value of the new column.
	4. For example, "Sales".

**Note:**
	 For each column you add to be uncollapsed, select the same value column.
	5. (Conditional) If you want to add another column, then click
	 **Add Column**
	 .


**Tip:**
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.


