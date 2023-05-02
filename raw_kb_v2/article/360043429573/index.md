

Intro
-------

Most Domo chart types require certain columns from your DataSet to be built—usually columns with category, value, and series data. For more information, see the

Chart Types

topic in our knowledge base.


 However, with a table, you can include any DataSet columns you want in the table. You can also change the order of the columns to suit your needs.


 This article describes tables in Domo in the following topics:

 Types of tables
* Power tables
* Customize tables
* Specify column labels
* Set formatting for individual columns
* Table calculations
* Set total and subtotal options for individual columns
* Set a custom table size
* Understanding row limits
* FAQ

Types of Tables
-------------------

For Visualization Cards in Domo, several different types of tables are available:

 **HTML Tables**
 are basic tables that can contain up to 10,000 cells.
* **Heat Map Tables**
 are almost the same as HTML Tables; the only difference is that, in a Heat Map Table, values in a `Values` column are shaded different colors depending on where they fall in the given range. The image below shows an example of a Heat Map Table.
* **Mega Tables**
 provide the same functionality as HTML Tables and Heat Map Tables but include much more. They can have up to 25,000 rows and contain HTML links and images. You can also collapse and expand, sort, and scroll through Mega Tables on a Dashboard.

All of the above tables are built in the same way and are discussed in this article. Domo also includes two other types of tables, which are discussed in their own articles:

 **Flex Tables**
 display different rows for each series of a chart, with all series shown as individual Spark Line or Spark Bar charts. For more information, see our

Flex Table

article.
* **Pivot Tables**
 allow you to efficiently summarize large quantities of data from a DataSet and explore data by different dimensions and measures. For more information, see our

Pivot Table

article.

You can also create Pivot Tables using Domo's Sumo Card functionality. Unlike other types of tables, Sumo Cards are not considered chart types for Visualization Cards but are a separate class of cards. For more information about Sumo Tables, see our article about

Understanding Cards

.


 For information about adding Filters to your chart, see our article about

Adding Filters to Your Chart

, and for information about configuring deep linking with Filters in Table Cards, see

Sample Beast Mode Calculations: Miscellaneous Transforms

.


 Drill Paths work the same in tables as they do in other chart types. For more information, see our article about

Adding a Drill Path to Your Chart

.


 Power Tables
----------------

Unlike with other chart types—where you must drag columns of a specific data type into specific fields in the
 **Columns**
 region above the chart—you create tables by dragging columns into any `Columns
 **`**
 fields you want. The order in which you arrange the columns is the order in which they display in the table.


 For example, if you drag the `Order Date` column into the first field, the `Customer Name` column into the second field, and the `Amount` column into the third field, the columns display in the table in that order. You can drag and drop column fields to rearrange them as needed.


 The following table shows the relationship between field order and table column order:

Columns retain their unique data types even after you drop them into a field. As with other chart types, you can select a column in the
 **Columns**
 region to access additional options, such as aggregation, formatting, and so on. The specific options that are available depend on the data type.


 Columns from the
 **Categories**
 region on the left side of the screen only allow you to set basic aggregation options and a
 **Details**
 >
 **Table View**
 label. Columns from the
 **Values**
 region provide more aggregation options, a label setting option, and number formatting options. For more information about aggregation, see our article about

Formatting Values in Your Chart

.


 For information about value, category, and series data, see our article about

Understanding Chart Data

.


 In Analyzer, you choose the columns containing the data for your table. For more information about Analyzer, see our

Analyzer Layout

article.


 For more information about choosing data columns, see our article about

Applying DataSet Columns to Your Chart

.


 Customize Tables
--------------------

You can customize the appearance of a table in several ways, many of which are possible with the
 **Chart Properties**
 tool. For information about the chart properties, see our

Chart Properties

article.

##
 Table Properties

This section describes the unique properties of tables. Unless otherwise noted, all properties apply to HTML Tables, Heat Map Tables, and Mega Tables.

###
 General Properties


* **Font Color**
 — Allows you to change the font color used for all text in the table.
* **Allow Text to Wrap**
 — When enabled, text in columns is wrapped instead of disappearing from the right side of the column.

The example below shows an HTML Table with text wrapping enabled.
* **Row Height**
 — Allows you to specify the size of the padding in the cells. This property can be applied only to Mega Tables.
* **Financial Style Negatives**
 — When this checkbox is selected, negative numbers are enclosed in parentheses; otherwise, a minus sign is used.
* **Show Negative Numbers in Red**
 — When this checkbox is selected, negative numbers display in red.
* **Set Column Widths**
 — Allows you to set the widths, in pixels, for all table columns as percentages. Do this by entering the widths as a comma-separated list.


 In the example below, the column widths are 20, 20, 40, 20.
* **Number of Locked Columns**
 — Allows you to specify how many columns are locked on the left side of the table. When columns are locked, they always display in the table, even when you scroll to the right. This property can be applied only to Mega Tables.
* **Hide Columns**
 — Allows you to hide columns in a table by entering the column numbers in a comma-separated list. The column numbers are based on the order of the columns in the table, from left to right. For example, the third column from the left would be column 3.
* **Hide Alternating Row Colors**
 — Turns off the default alternating row colors in the table, so all rows display with a white background (except when you hover over a column, in which case all cells in that column and the current row are blue). This property is only available for Mega Tables.
* **Apply Color Rules to Totals and Subtotals**
 — Applies any color rules you've set using the
 **Colors**
 property to the total and subtotal rows in your table. This property can be applied only to Mega Tables.
* **Apply Color Rules to Headers**
 — Applies any color rules you've set with the
 **Colors**
 property to header rows in your table. This property can be applied only to Mega Tables.
* **Transpose**
 — Transposes your table so that rows become tables and tables become rows. This property can be applied only to Mega Tables.
* **Allow HTML Links and Images**
 — Displays HTML-encoded links and images in your table. You must enclose URLs in <a> tags and enclose images in <div> tags. This property can be applied only to Mega Tables.

The following code is an example URL tag that converts to a working email address for a user named Sam MacGregor:


```
<a href="mailto: sam.macgregor@yankuna.com">sam.macgregor@yankuna.com </a>

``


 The following code is an example image tag that converts to an image named bruce.png, which is stored on

knowledge.domo.com

:


```
<div style="text-align:center"><img height="80px" src="https://knowledge.domo.com/@api/deki/files/7627/bruce.png?origin=mt-web"></div>;

``


 The example below shows a table in which both URLs and images are enabled.
* **HTML Image Size**
 — Allows you to set a size limit for HTML images. You can set any size between 10 and 500 pixels. The default is 64. This property can be applied only to Mega Tables.


####
 Header Row Properties


* **Header Row Fill Color**
 — Allows you to select a background color for the header row of your table. If you select
 **Default**
 , no color is used.
* **Header Row Font Color**
 —  Allows you to select the text color for the column names in your header row. This color overrides the table font color set in
 **General**
 >
 **Font Color**
 .


 For example, if you set the general font color to blue and the header row font color to red, the header row font color displays as red instead of blue. If you then select
 **Default**
 , the header row color reverts to blue.
* **Header Row Alignment**
 — Allows you to select the alignment (left, center, or right) for the column names in the header row. The default setting is
 **Left**
 .

In the example below, the column names are centered.
* **Header Row Font Style**
 — Allows you to select the font style (bold, italic, or bold-italic) for the column names in the header row. The default setting is
 **Bold**
 .

In the example below, the font style is
 **Bold-Italic**
 .


####
 Total Row Properties


* **Show Total Row**
 — Adds a
 **Grand Total**
 row to the bottom of your table. This row sums all value columns and counts all string and date/time columns.

Note that the label displays at the bottom of the first column, replacing any totals that would otherwise display there. We do not recommend making the column you want to total the first column.
* **Hide Counts**
 — Hides count summations for non-value columns in the total row. This property can be applied only to Mega Tables.
* **Label**
 — Replaces the
 **Grand Total**
 text in your total row with custom text. This property is available only when the
 **Total Row**
 >
 **Show Total Row**
 checkbox is selected.
* **Fill Color**
 — Allows you to select a background color for the total row in your table. If you select
 **Default**
 , no color is used. This property is available only when the
 **Total Row**
 >
 **Show Total Row**
 checkbox is selected.
* **Font Color**
 — Allows you to select the text color for the content in your total row. This color overrides the table font color set in
 **General**
 >
 **Font Color**
 . This property is available only when the
 **Total Row**
 >
 **Show Total Row**
 checkbox is selected.

For example, if you set the general font color to blue and the total row font color to red, the total row font color displays as red instead of blue. If you then select
 **Default**
 , the total row color reverts to blue.
* **Font Style**
 — Allows you to select the font style (bold, italic, bold-italic, or underline) for the column names in the total row. The default setting is
 **Bold**
 , and this property is available only when the
 **Total Row**
 >
 **Show Total Row**
 checkbox is selected.

In the example below, the font style is
 **Bold-Italic**
 .
* **Position**
 — Allows you to specify whether your total row displays at the end of the table (default) or at the beginning. This property can be applied only to Mega Tables.
* **Padding**
 — Allows you to add padding, in pixels, between the content in the total row and the upper border. This property can be applied only to Mega Tables.

In the example below, this value is 25.


####
 Subtotal Row Properties


* **Show Subtotal Rows**
 — Adds subtotal rows per group within the first column of your table. The subtotal row sums all value columns and counts all string and date/time columns.

In the example below, the first column contains state names that are sorted alphabetically. There are three rows for New Mexico. Therefore, a subtotal column displays after the New Mexico rows, providing subtotals only for the New Mexico data.
* **Show All Group Names**
 — When this checkbox is selected, names of unaggregated data display for all individual items within a category. When it is not selected, the category name is used only once (aside from the subtotal row), and blank cells display under that name for all remaining values in the category. This property can be applied only to Mega Tables.

The first example below shows a table in which the customer name displays each time a value is listed for that customer. The second example shows the same table, but the customer name is listed only once, and all subsequent values for that customer have a blank customer name.
* **Subtotal Row Padding**
 — Adds padding, in pixels, between the content in the subtotal row and the lower border.

In the example below, this value is 25.
* **Show as Percent of Total**
 — When this checkbox is selected, subtotals display as a percentage of the total values for the entire column instead of the usual subtotals. This property is available only when the
 **Subtotal Row**
 >
 **Show Subtotal Rows**
 checkbox is selected.
* **Hide Counts**
 — Hides count summations for non-value columns in subtotal rows. This property can be applied only to Mega Tables.
* **Label**
 — Allows you to customize the label text for your subtotal rows. Note that your custom text replaces only the word "Total," not the name of the group of similar values on which the subtotal is based.

For example, if the group of similar values is "Minnesota" and you enter "Summary" as the label text, the label reads "Minnesota Summary." You can specify whether your custom label displays before or after the group name using the
 **Subtotal Row**
 >
 **Label Position**
 option.


 This property is available only when the
 **Subtotal Row**
 >
 **Show Subtotal Rows**
 checkbox is selected.
* **Label Position**
 — Specifies whether the word "Total" (or your custom label, if you specified one in
 **Subtotals Row**
 >
 **Label**
 ) comes before or after the name of the group of similar values on which the subtotals row is based. The default setting is
 **After**
 .

For example, if the group name is "Minnesota," the default label is "Minnesota Total." If you then select
 **Before**
 , the label becomes "Total Minnesota."


 This property is available only when the
 **Subtotal Row**
 >
 **Show Subtotal Rows**
 checkbox is selected.
* **Fill Color**
 — Allows you to select a background color for the subtotal rows in your table. If you select
 **Default**
 , no color is used. This property is available only when the
 **Subtotal Row**
 >
 **Show Subtotal Rows**
 checkbox is selected.
* **Font Color**
 — Allows you to select the text color for the content in your subtotal rows. This color overrides the table font color set in
 **General**
 >
 **Font Color**
 .

For example, if you set the general font color to blue and the subtotal row font color to red, the subtotal row font color displays as red instead of blue. If you then select
 **Default**
 , the subtotal row color reverts to blue.


 This property is available only when the
 **Subtotal Row**
 >
 **Show Subtotal Rows**
 checkbox is selected.
* **Font Style**
 — Allows you to select the font style (bold, italic, bold-italic, or underline) for the text in the subtotal rows. The default setting is
 **Bold**
 , and this property is available only when the
 **Subtotal Row**
 >
 **Show Subtotal Rows**
 checkbox is selected.

In the example below, the font style is
 **Bold-Italic**
 .
* **Position**
 — Allows you to specify whether your subtotal rows display after the rows to which they apply (default) or before them. This property can be applied only to Mega Tables.
* **Show Subheader Rows**
 — Adds subheader rows above the groupings in your unaggregated data rows. If you plan to include subheader rows in your table, we recommend that you set them apart using the
 **Subheader Fill Color**
 ,
 **Font Color**
 , and/or
 **Font Style**
 properties so that users can easily see them. This property can be applied only to Mega Tables.
* **Subheader Fill Color**
 — Allows you to select a background color for your subheader rows. For this to be available, you must enable subheader rows by selecting the
 **Subtotal Row**
 >
 **Show Subheader Rows**
 checkbox. By default, no background color is used. This property can be applied only to Mega Tables.

In the example below, the subheader rows display with an orange background.
* **Subheader Font Color**
 — Allows you to select a color for the text in your subheader rows. For this to be available, you must enable subheader rows by selecting the
 **Subtotal Row**
 >
 **Show Subheader Rows**
 checkbox. The default color is black. This property can be applied only to Mega Tables.

In the example below, the subheader rows display in red text.
* **Subheader Font Style**
 — Allows you to select a style (bold, italic, or both) for the text in your subheader rows. For this to be available, you must enable subheader rows by selecting the
 **Subtotal Row**
 >
 **Show Subheader Rows**
 checkbox. By default, no style is applied. This property can be applied only to Mega Tables.

In the example below, the subheader rows display in bold and italic styling.
* **Suppress Single Items Subtotals**
 — Allows you to choose whether to hide subtotals when there is only one item in a group. This property can be applied only to Mega Tables.


####
 Alignment Properties


* **Column 1-16**
 — Allows you to select the text alignment (left, center, or right) for all desired columns in your table. We do not recommend using this property.

Column numbers are based on the order of the table columns from left to right. For example, the third column from the left would be column 3.


 In the example below, the columns are centered.


####
 Attribute Properties


* **Column 1-16**
 — Allows you to select the font style (bold, italic, bold-italic, or underline) for all desired columns in your table. We do not recommend using this property.

This property does not affect text in header rows. Column numbers are based on the order of the table columns from left to right. For example, the third column from the left would be column 3.


 In the example below, the two value columns display in italic styling.


####
 Theme Properties

The following properties can be applied only to Mega Tables:

 **Theme**
 — Allows you to change the color theme for the values column in a Heat Map Table. For more information about configuring colors, see our article about

Changing the Default Colors in Your Chart

.


####
 Scale Properties

The following properties can be applied only to Mega Tables:

 **Use Log Scale**
 — Uses a logarithmic scale for the ranges in a Heat Map Table.
* **Independent Column Ranges**
 — Applies ranges separately to each column in a Heat Map Table.


####
 Heat Map Properties

The following properties can be applied only to Mega Tables:

 **Color as Heat Map**
 — Applies Heat Map coloring to the value cells in your table. Lighter or darker shades are applied based on where a particular value falls in the entire value range of a given column or across the entire chart (depending on the settings of other
 **Heat Map Options**
 properties).
* **Theme**
 — Allows you to change the color theme used when heat map coloring is enabled in your table. For more information about configuring colors, see our article about

Changing the Default Colors in Your Chart

.
* **Independent Column Ranges**
 — Allows you to specify whether the heat map coloring for columns is based on the entire range of values in the table (unchecked by default), or whether each column's range of values is considered separate from the others.
* **Apply Heat Map to Columns**
 — Allows you to specify which numeric columns in your table have heat map coloring. You specify the columns by their number in the table from left to right. You can use commas to indicate different columns or hyphens to indicate ranges of columns.

For example, if you enter 2, 4-6 in this field, columns 2, 4, 5, and 6 have heat map coloring.
* **Use Log Scale**
 — Uses a logarithmic scale for Heat Map ranges.

*Video: Apply Formatting, Totals, and Subtotals to Table Cards**

##


 Specify Column Labels

You can change the label that displays for any column in your table.


 To change a column label, follow these steps:

. Select the column field in the
 **Column**
 region above the chart.
2. In the
 **Label**
 field, enter your desired label.


###


 Set Formatting for Individual Columns

In the column menus above your chart preview, you can customize the formatting for individual columns. Formatting options include:

 **Justification**
 — Choose left, center, or right justification for the text in a column.
* **Style**
 — Choose regular, bold, italic, or bold-italic text styling.
* **Display As**
 — Choose to display numerical values as plain numbers (default), currency, or percentages. If you choose
 **Currency,**
 you can select from four commonly used currency symbols, the number of decimal places, and whether to use a thousands separator. If you choose
 **Percentage**
 , you can specify the number of decimal places, whether to multiply values by 100, and whether to use a thousands separator.
* **Date Format**
 — Choose a predefined date format for a date column (date shorthand, full date, or YYYY-MM-DD) or create your own custom format by entering it in the
 **Custom Format**
 field. Both the
 **Date Shorthand**
 and
 **Full Date**
 options take your locale into account when they are used.

For example, if your locale is Japan, a Japanese date format is automatically applied when you select one of these options. For a list of accepted date format specifiers, see the Macros section of our article about

Changing the Date Format in Your Chart

.

To set column formatting, follow these steps:

. Select the column field in the
 **Column**
 region above the chart.
2. Select
 **Format**
 , then set options as described above.


###


 Table Calculations

Table calculations allow you to display a value in the table as a percent of column total, part of a running total, or how it ranks against other values in the column, all without using Beast Mode calculations or DataFlows. You can bring the same column of data to the top of the chart multiple times to compare the calculated values side by side.

*Note:**
 Table calculations are only available for Mega Tables and Pivot Tables and are performed at the display time of the table.

To use table calculations, select the column you want to configure above the chart preview to display the column menu.

In the column menu, select the
 **Show value as**
 field to display the list options. They are as follows:

 **Actual value (default) —**
 Displays the values in the column as their actual values. This is the default setting.
* **% of column total —**
 Displays the values for each record as the percentage of the column total, with all values adding up to 100 percent.
* **Running total —**
 Displays the values for each record as the running total of values in the record, with the final count for all values in the column in the final record.
* **Ranks large to small —**
 Gives each record in the column a relative rank compared with all values in the DataSet from large to small.
* **Ranks small to large —**
 Gives each record in the column a relative rank compared with all values in the DataSet from small to large.

##

Set Total and Subtotal Options for Individual Columns

In the column menus above your chart preview, you can set options for totals and subtotals cells for a given column. The options that you can set include:

 **Total/Subtotal Aggregation**
 — You can choose how the values in your selected column are calculated to produce total and/or subtotal values. By default, the values are summed. You can also choose from
 **Minimum**
 (takes the lowest value from the column),
 **Maximum**
 (takes the highest value),
 **Average**
 (averages all of the values in the column),
 **Count**
 (counts the number of values in the column),
 **Median**
 (the value in the middle of the column) and
 **Std.Deviation**
 (the average amount of variability in the column).
* **Data Label**
 — Enter the label for your column in this field.
* **Show value as**
 — You can choose how the values in your column display. By default, the
 **Actual value**
 is shown.

To set totals and subtotals options for a column, follow these steps:
 1. Select the column field in the
 **Column**
 region above the chart.
2. Select
 **Subtotal/Total**
 , then set options as described below:
	* **Hide Total —**
	 When you select this checkbox, the cells for the column in all total rows are left blank.
	* **Hide Subtotal —**
	 When you select this checkbox, the cells for the column in all subtotal rows are left blank.


**Note:**
 If you use Beast Mode calculations in a Table Card that contains either COUNT (DISTINCT), SUM (DISTINCT), or division calculations, the subtotal/total rows will not necessarily match the SUM of those same values in the card for that Beast Mode column. This is because Beast Mode calculations are performed on a row-by-row basis, whereas subtotal rows are calculated on the entire grouping and totals rows are calculated on the entire DataSet.

##


 Set a Custom Table Size

*Video: Custom Table Sizing**


 For more information about customizing the size of charts, see our article about

Changing the Size of Cards on a Dashboard

.


**Video: Apply Formatting, Totals, and Subtotals to Table Cards**


 Understanding Row Limits
----------------------------

The maximum number of rows visible in a Table Card depends on how many columns are selected. See the table below for examples.


 Number of columns selected
  |
 Number of visible rows
  |
| --- | --- |
|
 1
  |
 5000
  |
|
 2
  |
 4999
  |
|
 3
  |
 3333
  |

Your version of Excel may also limit the number of rows and columns you can import from Domo.

 If you are using Excel 2003, the limits are 65,536 rows and 256 columns.
* If you are using Excel 2007 or later, the limits are 1,048,576 rows and 16,384 columns.

Excel cannot handle more than 1,048,576 rows and 16,384 columns; this is the maximum you can have in a worksheet, whether it is Excel or CSV data.


 If an export from Domo exceeds the above number of rows, not all of your data will transfer to Excel. This is a limitation set by Excel, and regardless of this limitation or row size, Domo will export everything you have. It is then up to you to find a program that will allow you to open or view this data.


 FAQ
-------

*Data in my table is missing or does not match the summary number.**


 You may have a card where the summary number for the sum of the "Value1" column is 7, but your table has only 3 rows with values totaling 6. Why is there a difference?


 This is most likely due to the formatting of certain columns. If you have an aggregated column, every other non-aggregated column must have a "Group by" applied to it to get the correct result. If there are duplicate rows, they are omitted because of the grouping. However, the summary number does not take these groupings into account, which is why the number is different.


 To align the values, you must separate the aggregated columns OR aggregate the column in the table that is the same column from which the summary number is derived.


**What is the maximum number of columns I can add to my table?**


 The maximum number of columns you can add to a Table Card is 100.

