

Intro
-------

There are two available tiles in the Filter tab of Magic ETL DataFlows. These include:

 Filter Rows
* Remove Duplicates

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

Filter Rows Tile
------------------


 The Filter Rows tile lets you include or exclude rows based on specified rules.


**Example**


 For example, the Filter Rows tile transforms this data...

... to this...

... using this configuration:

*To configure the Filter Rows tile,**

. Click the
 **Filter Rows**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Select either
 **Add Filter Rule**
 or
 **Add Formula Rule**
 .
4. (Conditional) For each
 **Filter Rule**
 , do the following:

1. Select a column to filter on.
	2. Select the operation to use.


	 Operation items appear in the list, depending on the type of data in the column to filter on.
	3. Select whether to compare against values in a specific column or a specific value, then do one of the following:

	* (Conditional) If comparing against a column, select the column to use.
		* (Conditional) If comparing against a specific value, enter the value to use.
	4. (Conditional) If you want to add another rule, select either
	 **Add Filter Rule**
	 or
	 **Add Formula Rule**
	 .
5. (Conditional) For each
 **Formula Rule**
 , do the following:
	1. (Optional) Open the Formula Editor.
	2. Enter the formula you wish to use.
	3. Validate the formula.
	4. (Conditional) If you want to add another rule, select either
	 **Add Filter Rule**
	 or
	 **Add Formula Rule**
	 .


	**Note:**
	 For more information on creating a successful filter using the Formula Rule, see

 Writing a Filter Formula in Magic ETL

 .
6. Select whether to include rows that meet all or any of the rules you define.


**Tip:**
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.

Remove Duplicates Tile
------------------------


 The Remove Duplicates tile lets you remove duplicate rows, based on specific columns.

*Video - Removing Duplicates in Magic ETL**

*Example**


 For example, the Remove Duplicates tile transforms this data...

... to this...

... using this configuration:


**Note:**
 Duplicate rows with the same base margin were removed.

*To configure the Remove Duplicates tile,**

. Ensure that the column with values you want exists in the DataSet.
2. Click the
 **Remove Duplicates**
 tile in the canvas.
3. (Optional) Rename the tile by clicking

, then entering the name you want.
4. For each column with duplicate values you want to remove, do the following:

1. Select the column you want.


	 For example, "Product Base Margin".
	2. Mark whether the comparison is case sensitive.
	3. (Conditional) If you want to add another column, then click
	 **Add Column Comparison**
	 .


**Note:**
 For a row to be removed, all of the columns selected in the Remove Duplicates tile
 *must*
 be duplicates.


**Tip:**
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then click the
 **Preview**
 tab.


