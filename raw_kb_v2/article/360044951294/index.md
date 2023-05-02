

Intro
-------

There are two available tiles in the Pivot tab of Magic ETL DataFlows. These include:

 Pivot
* Unpivot

For information about creating a Magic ETL DataFlow, see

Creating a Magic ETL DataFlow

.


 For information about the Data Center, see

Data Center Layout

.

*Important:**
 There are significant behavioral differences in the new Magic ETL. Read the


 Behavior Changes and Feature Updates in Magic ETL


 article before converting mission-critical Magic ETL DataFlows.
 **Failure to do so may risk an unintended change to your DataFlow’s behavior.**


**Video - What it Means to Pivot a Table**


 Pivot Tile
------------


 The Pivot tile lets you "pivot" or de-normalize data in tables using key-value pairs, transforming a single column with multiple rows into multiple columns in a single row.


**Note:**
 If you create a table that reaches the 1500 column limit, you will receive an error. You must reduce the number of columns to continue running your Magic ETL DataFlow.


**Example**


 For example, the Pivot tile converts data in this format...

... to data in this format...

... using this configuration:

*To configure the Pivot tile,**

. Click the
 **Pivot**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Enter the name of the key column you want to pivot into new column headers.


 For example, "Product".
4. Select the column to use to group the row values of the new columns.


 For example, "Month".
5. For each new column you want to create from the key column, do the following:

1. Enter the name of the new column header.


	 For example, "Product A".
	2. Enter a value from the key column that represents the column header to be pivoted.


	 For example, "A".
	3. Select the value column to use to fill the row value of the new column.
	4. For example, "Sales".

**Note:**
	 For each column you add to be pivoted, select the same value column.
	5. (Conditional) If you want to add another column, then click
	 **Add Column**
	 .


**Tip:**
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.

Unpivot Tile
--------------


 The Unpivot tile lets you "unpivot" or "normalize" data in tables, transforming multiple columns in a single row into a single column with multiple rows. This action is useful only for unpivoting data in which the number of columns stays the same. If you add another column of data to the original file, this action does not unpivot the new column.

*Example**

For example, the Unpivot tile converts data in this pivoted format...

... to data in this format...

... using this configuration:

*To configure the Unpivot tile,**

. Click the
 **Unpivot**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Enter the name of the column you want to create to contain the column headings from the columns to unpivot.


 For example, "Product".
4. Enter the name of the column you want to create to contain the row values from the columns to be unpivoted.


 For example, "Sales".
5. For each column you want to unpivot, do the following:

1. Select a column to normalize.


	 For example, "Product A".
	2. Enter a value representing the column header to be normalized.


	 The value appears in the row of the new column. For example, "A".
	3. (Conditional) If you want to unpivot another column, then click
	 **Add Column**
	 .


**Tip:**
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.

Dynamic Unpivot Tile
----------------------


 The Dynamic Unpivot tile lets you "unpivot" or "normalize" data in tables, transforming multiple columns in a single row into a single column with multiple rows. This tile is good for situations where the number of columns could potentially change. As columns are added, the dynamic unpivot tile will automatically unpivot them.

*Example**

For example, the Dynamic Unpivot tile converts data in this pivoted format...

... to data in this format on the initial run...

...and then like this after the new column was added...

... using this configuration:

*To configure the Dynamic Unpivot tile,**

. Click the
 **Dynamic**
**Unpivot**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Enter the name of the column that you DO NOT want to be pivoted. This will duplicate the value in this row per column that is being pivoted.
4. Enter the name of the column you want to create to contain the column headings from the columns to unpivot.


 For example, "Product".
5. Enter the name of the column you want to create to contain the row values from the columns to be unpivoted.


 For example, "Sales".
6. Once this is set up, each new column that is added to this dataset will go through and automatically be pivoted unless you add it to Step 1 where you clarify which columns shouldn't be adjusted.


**Tip:**
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.


