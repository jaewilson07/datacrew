

Intro
-------

In a Sumo Card, users can view table data in either of two different formats: a standard column-based format or a more powerful pivot table format. In the Sumo builder view, you can lay out this table data in either or both of these formats. In the builder view, you have access to two sub-views:
 **Column View**
 , in which you can build a column-based table, and
 **Pivot View**
 , in which you can build a pivot table similar to that found in Microsoft Excel. Both sub-views contain various options for hiding and showing columns; aggregating and filtering data; and so on. You can manipulate tables in each view independently. The view that is selected when you save your table is the view that appears in this Sumo Card in the Page view.


 This topic lays out the overall steps for creating a Sumo Card in both views and discusses many of the options in more detail (such as sorting, filtering, etc.).


 For information about the interface components of the edit view for a Sumo Card, including a discussion of both the column and pivot views, see

Sumo Editor Layout

.


 Creating a Sumo Card
----------------------

You can create a Sumo Card in the standard Column view or the more complex Pivot view.

*Video - How to Create a Sumo Card**

*Video - Building a Sumo Pivot Table**

##
 Creating a Sumo Card in Column View

The most straightforward way to create a Sumo Card is building a column-based version in
 **Column View**
 .


**To create a Sumo Card in Column View,**

. Navigate to the Page where you want the Sumo Card to appear.
2. Click

in the upper right corner of the Page.
3. Select
 **Create new Card**
 .

*Tip:**
 You can also open this dialog from anywhere in Domo by selecting

in the app toolbar and selecting
 **Card**
 .
4. Select
 **Sumo**
 .


 The edit view appears, with
 **Column View**
 selected by default.
5. (Optional) Enter a name for this Sumo Card by clicking in the title text field and typing in the name you want.
6. (Optional) Enter a description for this Sumo Card by clicking in the "Add Card Description" text and typing in the description you want.
7. Select the DataSet that will power up this Sumo Card by doing the following:

1. Click
	 **Select DataSet**
	 .
	2. Select the connector type for this DataSet.
	3. Select the DataSet.


	**Column View**
	 for this DataSet appears, with a number of columns from the DataSet applied to your table by default (including

 Beast Mode

 columns that have been attached to this DataSet).
8. (Optional) Add or remove columns to/from your table by clicking the names in the panel on the left side of the screen.


 Columns that have been applied appear in green in the panel on the left side of the screen; columns that have not been applied appear in gray.
9. (Optional) Rearrange columns by clicking and dragging them into the desired order in the panel on the left side of the screen.
10. (Optional) Apply sorts, filters, and formatting to a column by mousing over the column header, clicking

, then selecting the desired option from the list that pops up.


 These options are described in greater detail in

Applying sorts, filters, and aggregrations

.
11. (Conditional/Optional) In aggregated columns, an indicator for the aggregation type (such as "Sum," "Unique," etc.) appears under the column headers. You can change the aggregation type for a column by clicking its aggregation indicator and selecting the desired aggregation type from the list that pops up.
12. (Optional) Change the aggregation types in the "Total" cells at the bottom of the table if you want. By default, the "Total" cell for a column displays either "Sum" (for value columns) or "Unique" (for string and date columns). You can change the total aggregation type for a column by clicking its aggregation indicator and selecting the desired aggregation type from the list that pops up. If the column itself has already been aggregated (because of a grouping or date grain being applied to the table), changing the total aggregation type changes the aggregation type for the entire column.
13. (Optional) Hide the "Total" row if desired by clicking

in the vertical bar on the left side of the screen.
14. Click
 **Save**
 .

The Sumo Card is added to the current Page, and the image representing your Sumo data in the Card appears as a standard column-based table. If you want the image in the Card view to appear as a pivot table instead, you need to click
 **Save**
 when
 **Pivot View**
 is the active view.

##
 Creating a Sumo Card in Pivot View

In
 **Pivot View**
 , you are not limited to having a standard column-based view; you can allocate your data columns wherever you want in your table.


**To create a Sumo Card in Pivot View,**

. Navigate to the Page where you want the Sumo Card to appear.
2. Click

in the upper right corner of the Page.
3. Select
 **Create new Card**
 .

*Tip:**
 You can also open this dialog from anywhere in Domo by selecting

in the app toolbar and selecting
 **Card**
 .
4. Select
 **Sumo**
 .


 The edit view appears, with
 **Column View**
 selected by default.
5. (Optional) Enter a name for this Sumo Card by clicking in the title text field and typing in the name you want.
6. (Optional) Enter a description for this Sumo Card by clicking in the "Add Card Description" text and typing in the description you want.
7. Select the DataSet that will power up this Sumo Card by doing the following:

1. Click
	 **Select DataSet**
	 .
	2. Select the connector type for this DataSet.
	3. Select the DataSet.


	**Column View**
	 for this DataSet appears, with a number of columns from the DataSet applied to your table by default (including

 Beast Mode

 columns that have been attached to this DataSet).
8. Click

.


**Pivot View**
 for this table appears. This view contains the names of all columns in your DataSet (including any

Beast Mode

columns that have been attached to this DataSet) and an empty template table with regions where you can drag and drop column names. No pivot table appears at this point.
9. Drag and drop column names from the
 **Categories**
 and
 **Values**
 listings into the desired regions in the empty template table on the left side of the screen.


 As you drop column names into the table, the pivot table on the right side of the screen fills in with the data from those columns.


 For a more detailed discussion of moving columns to create a pivot table in this view, see

Adding and removing columns in a Sumo pivot table

.
10. (Optional) Apply aggregations, filters, sorts, and formatting to a column by clicking the column heading in the pivot table and selecting the desired options.


 The options available for any given column depend on the column type. A value column contains more options than a category column. These options are described in greater detail in the next section.


 You can also filter a column by clicking the column name in the table on the left side of the screen and choosing the desired options from the dialog.
11. (Optional) Remove any unwanted columns from the pivot table by clicking the column and selecting

in the pop-up menu.
12. (Optional) If you want to make additional changes to your data in
 **Column View**
 , click

to open
 **Column View**
 then make your changes.
13. Click
 **Save**
 .

The Sumo Card is added to the current Page, and the image representing your Sumo data in the Card appears as a pivot table. If you want the image in the Card to appear as a column table, you need to click
 **Save**
 when
 **Column View**
 is the active view.


 Applying sorts, filters, and aggregations
-------------------------------------------

In
 **Column View**
 and
 **Pivot View**
 , you can select various options for changing how the data in a column appears. The specific options available depend on both the view and the data type of the particular column. For example, the
 **Date Grain**
 option is available only for columns with a "date" data type, while the
 **Group**
 option can be applied only to a column in
 **Column View**
 .


 All of these options are also available when you use the Analyzer option in the Details view for a Sumo Card. For more information about the Details view, see Sumo Card Details layout and Analyzing Data.

*Note:**
 The information provided in this section is pertinent for creating a Sumo Card, making permanent edits to an existing Sumo Card in the Edit view or making temporary edits to an existing Sumo Card using the Analyzer functionality in the Details view. For more information about the Sumo Edit view, see

Sumo Card Details layout

.


###
 Adding and removing columns in a Sumo pivot table

In Sumo
 **Pivot View**
 , you create a pivot table by dragging names of source columns from a pool of column name listings into the desired locations in a template table, or by double-clicking a column name to add it to the table automatically. The following screenshot shows you how both of these elements might appear in a typical Sumo
 **Pivot View**
 .

When you first enter
 **Pivot View**
 while creating a Sumo table, no pivot table appears yet—the right side of the screen is initially blank. As you add column names to the template table, data from those columns appears in the pivot table area in the appropriate location (for example, when you drag the name of a values column into the
 **Drag Values Here**
 region of the template table, all of the values from that column appear in the values region of the pivot table). Likewise, when you remove column names from the template table, the data for those columns is removed from the pivot table area. For more information about these and other components of this view, see

Sumo Editor Layout

.


 After you have added a column name to any region of the template table, you can drag it to any other position you want. This updates the pivot table accordingly. You can also remove a column name from the template table by clicking the "x" to the right of the name. You can also remove columns from the pivot table by clicking the column and selecting

in the pop-up menu.


 In most circumstances, you will move values columns into the
 **Drag Values Here**
 region of the template table and category columns into the
 **Drag Categories Here**
 regions. However, you are not obligated to do so. If you want, you can move values columns into the category regions and vice versa.


 If you double-click a column name, it is added automatically to the most appropriate region of the template table. For example, if your template table contained two column names in the "Rows" region but only one column name in the "Columns" region, any category column name you double-clicked would be added to the "Columns" region.


 You can drag multiple column names into any of the three positions in the template table, and the pivot table populates with the data from all of those columns.


 There is no limit to the number of columns you can apply to a Sumo Card. However, because each new column makes your table bigger and more difficult to read, you might want to set a limit of four or five columns in a table.


**Example**


 The following example shows how a user might build a typical pivot table showing profits gained from customers. The user wants to show customer names in the rows, so he drags the "Cust" column name from the
 **Categories**
 listing into the left-side
 **Drag Categories Here**
 region of the template table, as shown below:

The rows region of the pivot table then fills in with the names of all of the customers found in this column.

The user then drags the "Amount" column into the values region of the template table. The pivot table shows the profits gained from each customer:

The user now drops the "Region" column name into the upper categories region of the template table, which expands the pivot table as follows:

You are not limited, however, to having only one column name per region. By dropping a second column (that is, "Type") into the upper categories region of the template table, the user expands the pivot table even further to divide purchases by type:


###
 Changing the aggregation type in a Sumo table

After you have aggregated Sumo data in
 **Column View**
 or
 **Pivot View**
 , you can change the aggregation type. Changing the aggregation type for a column in
 **Column View**
 affects just that column; changing the aggregation type in
 **Pivot View**
 affects the entire table. For more information about these and other components of this view, see

Sumo Editor Layout

.

###
 Aggregating data in a column or pivot table

You can aggregate Sumo data by doing any of the following:

 Selecting
 **Group**
 for a column in
 **Column View**
 .


 All columns except the grouped column are aggregated (using either "Unique" or "Sum").
* Applying a value column to a pivot table in
 **Pivot View**
 .


 The value data is aggregated automatically in this case. If you switch back to
 **Column View**
 after applying a value column in
 **Pivot View**
 , the aggregated value data persists.


####
 Changing how data in a column or pivot table is aggregated

In
 **Column View**
 , when a column has been aggregated, an indicator for the aggregation appears under the column heading. You can click the indicator to pop up a list of available aggregation types.

In
 **Pivot View**
 , this option is available only for value columns. To change the aggregation, click a value column header in the pivot table, select
 **Change Aggregate**
 , then choose the desired aggregation type. When you apply an aggregation in
 **Pivot View**
 , the totals reflect the aggregation you have applied, not just the sum of a row or column. For example, if you select
 **Average**
 as your aggregation, the total for each row and column is the average of all the averages in that row or column.


 Available aggregations include the following:


 Aggregation
  |
 Description
  |
| --- | --- |
|
 Sum
  |
 Shows the sum of each set of grouped rows for a column. This is the default aggregation that is applied to value columns when you choose
 **Group**
 in
 **Column View**
 and to all values in your table in
 **Pivot View**
 .
  |
|
 Average
  |
 Shows the average value for each set of grouped rows for a column.
  |
|
 Unique
  |
 Shows the number of unique items in each set of grouped rows for a column. This is the default aggregation that is applied to non-value columns when you choose
 **Group**
 in
 **Column View**
 .
  |
|
 Count
  |
 Shows the number of all items in each set of grouped rows for a column.
  |
|
 Min
  |
 Shows the smallest value in each set of grouped rows for a column. If you select this option for a non-value column, each cell shows the first item alphabetically for this set of rows in your DataSet.
  |
|
 Max
  |
 Shows the largest value in each set of grouped rows for a column. If you select this option for a non-value column, each cell shows the last item alphabetically for this set of rows in your DataSet.
  |

*Aggregation examples**


 The following image shows the changes in a typical table in
 **Column View**
 as a user first groups the rows and then applies an aggregation to the value column.

The following image shows changes in
 **Pivot View**
 as the user applies an aggregation. (Because rows are grouped by default in this view, no
 **Group**
 option is required.)

*To change the aggregation for a column in Column View,**

. Do either of the following:

* Click the aggregation name in the column header (such as "Unique," "Sum," etc.), then select the aggregation type.
	* Mouse over the column header, click

 , then select
	 **Change Aggregate**
	 .


	 Your table must contain at least one set of grouped rows for this option to appear.

*To change the aggregation type for the table in Pivot View,**

. In the pivot table, click the header of the value column you want to change.
2. Select
 **Change Aggregate**
 .
3. Select the aggregation you want to apply.


####
 Changing the total aggregation type in Column View

You can also change how your column totals are aggregated in
 **Column View**
 . Each column in this view includes a "TOTAL" cell at the bottom. By default, totals for numeric columns are calculated by summing all of the values in the columns, and totals for string and date/date-time values are determined by counting all of the unique values in the columns. You can click the aggregation indicator in a total cell to pop up a list of alternate aggregation types. If you change the total aggregation type for a column that has itself been aggregated (by applying a "Group" or "Date Grain" to the table), the aggregation type for the column is also changed. Otherwise, changing the aggregation type affects only the total for the column.


 In the following example, the user has grouped the "Cust" column and applied a monthly date grain to the "Invoice Date" column. By default, all of the values in the "Amount" column are summed to yield a total value of "1,620,327."

The user then changes the total aggregation for the "Amount" column to "Average." This changes all of the values in the column to averages then calculates the overall average for the column total, as follows:

*To change the total aggregation for a column in Column View,**

. Click on the aggregation indicator in the total cell at the bottom of the column (such as "Sum," "Unique," etc.).


 This pops up a list of alternate aggregation types. The specific aggregations in the list differ depending on the data type for the column (that is, whether it is a value, string, or date/date-time column).
2. Select an aggregation type.

The total (and the values in the cells, if the column has been aggregated) updates to reflect the new aggregation type.

##
 Changing the date grain of a Sumo table

You can specify whether dates in a Sumo table are shown by day, week, month, quarter, etc. This changes the aggregation of any values associated with a particular date. In Domo, this ability to "zoom" on a date range is called a "date grain." For more information about date grains and date filtering in general, see

Filtering dates

.


 You can add a date grain to a Sumo Card in either
 **Column View**
 or
 **Pivot View**
 .

*Notes:**


* In
 **Column View**
 , you can have only one date column with a date grain applied at any time. So, for example, if you added a date column and set a date grain on it, then added a second date column, this new column would automatically have an aggregation of "Count." If you then applied a date grain to the second column, the first column would switch to a "Count" aggregation.
* In
 **Pivot View**
 , as with
 **Column View**
 , you  can only have one date column with a grain applied,
 *but*
 you can group by the other date column. The second column is not grained but will group all the rows that have the same date/time stamp into one row.

The following example shows the original view of a DataSet. Data is arranged by date, and on each date a single specific sales amount was earned.

The user then adds a "Weekly" date grain. This consolidates all the individual date rows into their corresponding weeks. In addition, the daily sales amounts are aggregated into larger amounts representing earnings for entire weeks.

*To add or remove a date grain to/from a table in Column View,**

. Mouse over the date column header.
2. Do one of the following:

* Click

 .
	* Click

 then select
	 **Date Grain**
	 .
3. (Conditional) To add a date grain or change the current date grain, select the desired date grain. To remove a date grain, select
 **Remove Date Grain**
 .

*To add or remove a date grain to/from a column in Pivot View,**

. Click the date column header in the pivot table.
2. Select
 **Date Grain**
 .
3. (Conditional) To add a date grain or change the current date grain, select the desired date grain. To remove a date grain, select
 **Remove Date Grain**
 .


###
 Filtering columns in a Sumo table

In a Sumo table, you can apply filters to columns so that only the most important data from those columns appears in your table. You do this using the
 **Filter**
 menu item, which is available in all columns in both
 **Column View**
 and
 **Pivot View**
 . Filters applied in
 **Column View**
 are sticky in
 **Pivot View**
 and vice-versa.


**To apply a filter,**

. Do one of the following:

* (Conditional) If you are in
	 **Column View**
	 , click

 at the top of the column you want to filter then click
	 **Filter**
	 OR click the

 icon.
	* (Conditional) If you are in
	 **Pivot View**
	 , click the header for the column or row you want to filter in the pivot table then select
	 **Filter**
	 OR click the column name in the template table or unused columns pool.


	 A different dialog appears, depending on whether the column or row you selected contains series, amount, or date data.
2. Do one of the following:

* (Conditional) If the selected column or row contains series data,
	1. Select the checkboxes for the rows you want to appear in the table.


	 You can filter the series that appear in the list by entering a keyword in the
	 **Search options**
	 field.
	2. Specify whether the items you have checked appear or do not appear in your chart by selecting
	 **Include checked items**
	 or
	 **Exclude checked items**
	 from the menu at the top of the dialog.
	3. Click
	 **Apply**
	 .
	* (Conditional) If the selected column or row contains amount data,
	1. Select a condition statement from the menu.
	2. Enter the desired amount in the field.


	 For example, if you wanted the table to show only data greater than $50,000, you would select
	 **is less than**
	 from the menu then enter "50,000" in the field.
	3. Click
	 **Apply**
	 .
	* (Conditional) If the selected column or row contains date data,
	1. In the menu, select the date range you want
	2. Click
	 **Apply**
	 .

Your chart updates with the new filter(s) applied. If you now export the data from this Sumo table, the filters are applied in the exported data. For more information about exporting Sumo data, see

Exporting Sumo Data

.

##
 Formatting numbers in a Sumo table

In a Sumo table, you can set number formatting for values columns and date and time formatting for date-time columns in the
 **Formatting**
 dialog. The options available in this dialog depend on the data type of the column.


 Also, for any value or string column, you can set rules (aka
 *conditional formatting*
 ) so that certain values or strings in that column appear in a different color depending on whether those rules or met. For example, you could use color to draw viewers' attention to values that fall above or below a certain threshold.


 For more information about these and other components of this view, see

Sumo Editor Layout

.

###
 Formatting numbers

For a value column, you can format the appearance of numbers in your Sumo table using options in the
 **Formatting**
 menu.


 Option
  |
 Description
  |
| --- | --- |
|
 Type menu
  |
 Lets you select a value type, either
 **Number**
 ,
 **Currency**
 , or
 **Percentage**
 .
 **Currency**
 values have a "$" affixed to the front, and
 **Percentage**
 values have a percent symbol affixed to the end.
 **Number**
 values have no special characters affixed.
  |
|
 Decimals menu
  |
 Lets you select the number of decimal places that appear in values.
  |
|
 Financial style
  |
 When this box is checked, negative numbers are enclosed in parentheses; otherwise a minus sign is used.
  |
|
 Use thousands separator
  |
 When this box is checked, commas are used to separate thousands.
  |
|
 Show negative numbers in red
  |
 When this box is checked, negative numbers appear in red.
  |
|
 Abbreviate
  |
 When this box is checked, long numbers are abbreviated using letters, such as "K" for 1000, "M" for 1,000,000, etc. For example, the number "904,634" becomes "904K."
  |

*To apply formatting to a value column,**

. (Conditional) If you are in
 **Column View**
 , mouse over the value column then click

. If you are in
 **Pivot View**
 , click the value column header in the pivot table.
2. Click
 **Formatting**
 .
3. Select the options you want in the menu.
4. Click
 **Apply**
 .


####
 Formatting dates and times

For a date column, you can format the appearance of dates in your Sumo table.


 Available formats differ depending on your selected date grain. For example, if you have a daily date grain, options include different formats for showing days of the year, such as "1/15/2013," "2013-01-15," and so on. If you had a monthly date grain, however, available options would include formats for months, such as "Jan 2013," "01/13," and so on. For more information about setting date grains, see

Date grain

.


 For a date-time column (for example, "1-15-13 12:00"), you can format the appearance of the date and time.


**To apply formatting to a date column,**

. Do one of the following:

* (Conditional) If using
	 **Column View**
	 , mouse over the date column then click

 .
	* (Conditional) If using
	 **Pivot View**
	 , click the date column header in the pivot table.
2. Click
 **Formatting**
 .
3. Select the date or date-time format you want in the menu.
4. Click
 **Apply**
 .


####
 Adding rules for conditional formatting

For value or string columns, you can set rules so that certain values or strings in that column appear in a different color depending on whether those rules or met.


 Column Type
  |
 Description
  |
| --- | --- |
|
 Value
  |
 You can set rules for values that meet specified mathematical conditions. For example, you could create a rule for a column stating that all values above $100,000 appear green. Domo provides a number of conditional statements, such as "greater than," "less than," "between," and so on.
  |
|
 String
  |
 You can set rules for strings that contain or do not contain certain text. For example, in a Sumo table that compares information on certain companies, you could create a rule for a column stating that all values containing the name of your primary competitor appear red. Domo provides a number of conditions for strings, such as "contains," "starts with," and so on.
  |
|
 Date
  |
 Conditional formatting is
 *not*
 available for date columns.
  |

You can set multiple rules for a single column. For example, if you wanted to call out strings that contain the word "Texas" but
 *not*
 the word "Austin," you could do so by setting a "Contains" rule for the word "Texas" and a "Does not contain" rule for the word "Austin."


**To set conditional formatting for a column,**

. Do one of the following:

* (Conditional) If using
	 **Column View**
	 , mouse over the column then click

 .
	* (Conditional) If using
	 **Pivot View**
	 , click the column header in the pivot table.
2. Select
 **Conditional Formatting**
 , then select a conditional statement.
3. In the
 **Number**
 or
 **Text**
 field, enter the number or text that completes the conditional statement.
4. In the pane on the right side of the dialog, select the desired text color and background.
5. (Optional) Add another rule by clicking
 **Add Rule**
 , then repeating the above steps.
6. Click
 **Apply**
 .

The color changes for all values or strings in this column that meet the criteria you set.

##
 Grouping and ungrouping columns in a Sumo table

In
 **Column View**
 for a Sumo table, you can group the rows in any column except for date columns. This combines all rows with like headings and aggregates the data in those rows. You can also ungroup columns, which restores them to their original states. The
 **Group**
 and
 **Ungroup**
 options are not available in
 **Pivot View**
 because all columns you add to your table in this view are grouped automatically.

###
 Grouping columns

The following screenshot shows a typical DataSet as it might appear before the
 **Group**
 option is applied:

In the next screenshot, the user has grouped the "Cust" column.

This combines all of the rows with like headings and the data in those rows. Also, the column you grouped turns blue, and an ascending sort is applied automatically. The five instances of "GL Electronics" are combined, and the amounts in the "Amount" columns for all of those instances are totaled to yield a single value of "1,050,028." Cells in columns that cannot be aggregated display a value of "Unique" by default, which is a count of all unique items within that column. For example, if a column with salesperson names contained five instances of the name "Bob Jones," that name would only be counted once in the "Unique" aggregation. You can change the aggregation type for any column except the column you grouped. This option is described in more detail in

Changing the aggregation type in a Sumo table

.


**To group a column,**

. In
 **Column View**
 , mouse over the column you want to group.
2. Do either of the following:

* Click the

 icon that appears.
	* Click

 then select
	 **Group**
	 .

You can also group multiple columns. In the next screenshot, the user has opened the Sumo table shown in the previous example and grouped the "Region" column. This combines the groupings for both "Cust" and "Region," in effect "unzipping" all unique "Cust"-"Region" pairings. Because all three instances of "Accumsan" have a corresponding region of "Americas," no unzipping need occur, and all columns corresponding to "Accumsan" retain the same aggregations as before. In the case of "Augue," however, two different regions are represented—"Americas" and "EMEA"—so two separate rows are shown, each of which has distinct aggregated values.


####
 Ungrouping columns

You can "ungroup" any column that has been grouped, which restores it to its previous setting.


**To ungroup a column,**

. In
 **Column View**
 , mouse over the column you want to ungroup.
2. Do either of the following:

* Click the

 icon that appears.
	* Click

 then select
	 **Ungroup**
	 .


###
 Sorting data in a Sumo table

In a Sumo table, you can apply ascending or descending sorts to any data column. Sorting is available in both
 **Column View**
 and
 **Pivot View**
 . For more information about these views and their components, see

Sumo Editor Layout

.

###
 Column View sorting

In
 **Column View**
 , you can have only one sorted column in a given instance. For example, you could not sort by date and then have a separate sort for your values column for each represented date.


**To apply a sort to a column in Column View,**

. Mouse over the header of the column you want to sort.
2. Do either of the following:

* Click

 once to apply an ascending sort or twice to apply a descending sort.
	* Click

 then select
	 **Sort Ascending**
	 or
	 **Sort Descending**
	 .


####
 Pivot View sorting

In
 **Pivot View**
 , you can apply multiple sorts to your table
 *so long as you sort only series and date columns*
 . For example, you could have a descending sort in your date column (so that the most recent date would appear at the top) and an ascending (alphabetical) sort in your series column.


 When you sort by a values column, other columns are sorted accordingly to match the order of the values. In the following example, the user has applied an ascending sort to the "Amount" column. The "Region" and "Cust" columns are both sorted individually to match the sorting of the values within them. For each "Region"-"Cust" pairing, an individual total is given, and subtotals are provided for both regions.

This "nesting" of values allows viewers to quickly see the highest or lowest series in a table without having to scrutinize the values themselves. In the above screenshot, for example, the viewer can immediately see that the "Americas" region has had stronger sales than the "APAC" region. He can also see that within the "Americas" region, "GL Electronics" has been the highest-paying customer. The viewer can then look at the actual values on the right if he wants to see more specific details.


**To apply a sort to a column in Pivot View,**

. In the pivot table, click the header of the column or row you want to sort.
2. Click
 **Sort Ascending**
 or
 **Sort Descending**
 .

Understanding the relationship between views
----------------------------------------------

Because you can switch between the two views in the edit view, it is helpful to understand how making changes in one view may affect what you see in the other. The following is a list of some of these changes and how they affect your data:

 When you add or remove rows in
 **Pivot View**
 , those changes are reflected in
 **Column View**
 . However, adding or removing columns in
 **Column View**
 does
 *not*
 affect your table layout in
 **Pivot View**
 .
* Hiding and showing columns in
 **Column View**
 has no impact on the layout of your table in
 **Pivot View**
 .
* Changes you make using the dropdown options in either view persist when you navigate to the other view. For example, if you change the number format to
 **Currency**
 in
 **Column View**
 , those formatting changes are applied when you go to
 **Pivot View**
 .
* Because aggregations are applied automatically in
 **Pivot View**
 , those aggregations persist when you go back to
 **Column View**
 .


