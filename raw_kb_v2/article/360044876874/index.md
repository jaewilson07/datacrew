

Intro
-------

There are six available tiles in the Utility tab of Magic ETL DataFlows. These include:

 Add Constants
* Add Formula
* Select Columns
* Set Column Type
* Set Column Value
* Value Mapper

For information about creating a Magic ETL DataFlow, see

Creating a Magic ETL DataFlow

.


 For information about the Data Center, see

Data Center Layout

.


**Important:**
 There are significant behavioral differences in the new Magic ETL. Read the


 Behavior Changes and Feature Updates in Magic ETL


 article before converting mission-critical Magic ETL DataFlows.
 **Failure to do so may risk an unintended change to your DataFlow’s behavior.**

Add Constants Tile
--------------------


 The Add Constants tile lets you add a column with constant values.


 Do the following to configure the Add Constraints tile:

. Click the
 **Add Constants**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

*Edit**
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
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.

Add Formula Tile
------------------


 The Add Formula tile lets you add a column with constant values.


**To configure the Add Formula tile,**

. Click the
 **Add Formula**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Enter the name of the new column.
4. Enter the formula you would like to perform.

For more information on how to write functions for the Add Formula tile, see

Writing Formulas in Magic ETL

.


 Alter Columns
---------------


 The Alter Columns tile lets you change the data type of a column (for example, from number to text). For more information about data types, see

Understanding Chart Data

.

*Example**

For example, the Alter Columns tile transforms this data...


**Note:**
 Before the transformation, the values were actually date-time values but did not display as such because they were set to a Text data type. After the transformation, the actual values display properly as date-time values.

... to this...

... using this configuration:

*To configure the Alter Columns tile,**

. Click the Alter Columns tile in the canvas.
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
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.

Select Columns Tile
---------------------


 The Select Columns tile lets you select columns to include, reorder columns, and rename column headings.


**Example**


 For example, the Select Columns tile transforms these columns in this data...

... to this...

... using this configuration:


**Video - Renaming Fields with the Select Columns Tile in the new Magic ETL**

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
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.

Set Column Value
------------------


 The Set Column Value tile lets you replace the value of a column with the values in another column.


**Notes:**

 You can only replace values in one column with values from another column that have the same data type. For example, you can copy from a column with string values to another column with string values.
* Both columns
 *must*
 already exist in the DataSet.

For information about replacing text values using other tiles, see

Replace Text

in "Magic ETL Tiles: Text" and the

Value Mapper

heading in this article.

*Example**

For example, the Set Column Value tile transforms this data...

... to this...

... using this configuration:

*To configure the Set Column Value tile,**

. Ensure that the column with values you want exists in the DataSet.
2. Click the
 **Set Column Value**
 tile in the canvas.
3. (Optional) Rename the tile by clicking

, then entering the name you want.
4. For each column with values you want to replace, do the following:

1. Select the column with values you want to replace.


	 For example, "Product Base Margin".
	2. Select the column with the values you want.


	 For example, "Net Margin".
	3. (Conditional) If you want to add a column, then click
	 **Add Column**
	 .


**Tip:**
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.

Value Mapper Tile
-------------------


 The Value Mapper tile lets you search and replace string values in a specific column, according to pairs of string values you enter. (You might use the Value Mapper action for replacing abbreviations or converting language codes.) You can either have replacement values overwrite an existing column or be in a new column.


 For information about replacing text values using other actions, see

Replace Text

in "Magic ETL Tiles: Text" and the

Set Column Value

heading in this article.

*Example**

For example, the Value Mapper tile transforms this data...

... to this...

... using this configuration:


**Note:**
 This example shows values written to a new column. If configured, the values could overwrite values in the original column instead.

*To configure the Value Mapper tile,**

. Click the
 **Value Mapper**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Select the column you want to search.
4. Select whether the values overwrite the values in the specified column or appear in a new column.

1. (Conditional) If writing values to a new column, enter the name of the column.
5. Select whether to write the original value or a default value when a match is not found in a row.

1. (Conditional) If writing a default value, enter the value.
6. For each value mapping you want, enter the value to search for and the value to replace with.
7. (Conditional) If you want to add a mapping, then click
 **Add Mapping**
 .


**Tip:**
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.


