

Intro
-------

Domo includes two different methods of combining data using DataFusions—"Add Columns" and "Add Rows." "Add Columns" combines two or more DataSets by matching similar columns. With this method, only the matching columns have to have the same header or data type. "Add Rows" combines DataSets by combining the rows from those DataSets. With this method, all columns must have the same header.


**Note:**
 If any DataSets in a DataFusion are out of date, the DataFusion itself will show as being out of date. When DataSets with PDP policies are used as input (parent) DataSets in a DataFusion, those policies are incorporated in the output DataSets as well. You cannot apply policies to output DataSets from DataFusions; you must apply them to the input (parent) DataSets. For more information, see

PDP and DataFusions/


 DataFlows

.

*Video - Combining DataSets Using DataFusion**

Combining DataSets using the Combine Columns method
-----------------------------------------------------

In this method, you select two or more DataSets, each of which contains at least one column that matches a column or data type in one of the others. You then combine all of the DataSets into a single DataSet by matching similar columns. This method is equivalent to using a JOIN in SQL.


 In the following example, a user uploads and combines two DataSets using this method. The user matches the "Order #" and "Order Number" columns, and the second DataSet appears to the right of the first.

The user could go a step further and add a third DataSet that provides company information.

The user then excludes the duplicate "Order Number" and "Company" columns. The final fused DataSet appears as follows:

*To combine DataSets using the Add Columns method,**

. In Domo, click
 ****Data****
 in the toolbar at the top of the screen.
2. Click
 **Blend**
 in the
 **Magic Transform**
 toolbar at the top of the window.

*Tip:**
 You can also open the DataFusion editor from anywhere in Domo by selecting

in the app toolbar and selecting
 **Data > Blend**
 .
3. (Optional) Change the default title for the DataSet.


 The title is used to find or select the DataSet when powering up a card.
4. Add the "master" or first DataSet you want by doing the following:

1. Click
	 **Select DataSet**
	 .
	2. Select the DataSet from the list.


	 You can filter the DataSets that appear in the list by selecting the DataSet in the
	 **All Types**
	 menu and/or entering the name of the DataSet in the
	 **Search**
	 field.


	 A list of the column names in your DataSet appears.
5. Add a secondary DataSet by doing the following:

1. Click
	 **Select DataSet**
	 .
	2. Select the DataSet from the list.


	 You can filter the DataSets that appear in the list by selecting the DataSet in the
	 **All Types**
	 menu or the owner in the
	 **All Users**
	 menu and/or entering the name of the DataSet in the
	 **Search**
	 field.


	 A list of the column names in your DataSet appears.
6. (Optional) Add additional DataSets to combine.
7. (Optional) Remove selected DataSets by clicking the
 **X**
 icon.
8. Specify settings to combine DataSets.

1. Determine which columns from your DataSets contain the same values and/or data types.


	 You can refer to the lists of column names for each DataSet for help.
	2. For each DataSet combination you want, select the columns you want to match.

	1. Click the first
		 **Select a Field**
		 menu, select the master DataSet, then select a column.
		2. Click the second
		 **Select a Field**
		 menu, select the secondary DataSet, then select the column with values or data type matching those/that of the first column you selected.
		3. Select the include option you want from the

	 menu.


		|
		 Option
		  |
		 Description
		  |
		| --- | --- |
		|


		 Left Outer Join
		  |
		 Includes all the rows in the first selected DataSet and adds rows with the specified matching value field from the second selected DataSet.
		  |
		|


		 Inner Join
		  |
		 Includes rows from both DataSets with the specified matching value field.
		  |
	3. (Conditional) If you added more than one secondary DataSet, repeat steps for matching columns for each additional pair of
	 **Select a Field**
	 menus that appear.
9. Click
 **Click to load preview**
 to see a preview of the DataSet.


 The option is available when matching columns are selected correctly for all of the selected DataSets.
10. (Optional) Set options for columns by clicking the arrow to the right of any column in the preview.


|
 Option
  |
 Description
  |
| --- | --- |
|
 Rename Column
  |
 Lets you rename this column. You can only rename columns before saving the DataFusion. After you save, this option is no longer available.
  |
|
 Ignore Column
  |
 Excludes this column from the combined DataSet.
  |
11. Click
 **Save**
 to save the combined DataSet.

The new DataSet is added to the
 **DataSets**
 tab in the Data Center. For more information about this tab, see

Data Center Layout

.


 Combining DataSets using the Add Rows method
----------------------------------------------

In this method, you select two or more DataSets in which all of the column headings are the same. Domo then combines the rows from each DataSet into a single DataSet. This method is equivalent to using a UNION ALL in SQL.


 In the following example, a user uploads and combines two DataSets using this method. The second DataSet is appended directly below the first.


**Important:**
 All DataSets you combine using this method
 *must*
 have the same column headings and column order. Also, data types must match between matching columns. For example, if a column from one DataSet is formatted as

DATE

, then that same column in all other DataSets must also be formatted as

DATE

. Possible data types are as follows:


* LONG stores numbers as numeric values, including decimal, fractional, and whole numbers.
* DOUBLE stores double-precision floating point number values.
* STRING stores alphanumeric characters as text.
* DATETIME stores year, month, day, hour, minute, and second values.
* DATE stores year, month, and day values.
* TIME stores hour, minute, and second values.

*To combine DataSets using the Combine Rows method,**

. Click

*> Data Center**
 .
2. Click
 **Blend**
 in the
 **Magic Transform**
 toolbar at the top of the window.
3. (Optional) Change the default title for the DataSet.


 The title is used to find or select the DataSet when powering up a card.
4. Add the first DataSet by doing the following:

1. Click
	 **Select DataSet**
	 .
	2. Select the DataSet from the list.


	 You can filter the DataSets that appear in the list by selecting the DataSet in the
	 **All Types**
	 menu or the owner in the
	 **All Users**
	 menu and/or entering the name of the DataSet in the
	 **Search**
	 field.


	 A list of the column names in your DataSet appears.
5. Add a second DataSet by clicking
 **Select**
**DataSet**
 and selecting your DataSet from the list, as before.

*Note:**
 All DataSets you add using this method
 *must*
 have the same column headings or you will be unable to preview and save the fusion.
6. (Optional) Add additional DataSets to combine.
7. Click
 **Combine Rows**
 .


 If you successfully selected two DataSets with the same column headings, a link reading
 **Click to load preview**
 appears below.
8. Click
 **Click to load preview**
 to see a preview of the DataSet.
9. (Optional) Set options for columns by clicking the arrow to the right of any column in the preview.


|
 Option
  |
 Description
  |
| --- | --- |
|
 Ignore Column
  |
 Excludes this column from the combined DataSet.
  |
10. Click
 **Save**
 to save the combined DataSet.

The new DataSet is added to the
 **DataSets**
 tab in the Data Center. For more information about this tab, see

Data Center Layout

.

