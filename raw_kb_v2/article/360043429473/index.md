

Intro
-------

In Domo, Pivot Tables are a powerful alternative to

HTML Tables

. They allow you to more efficiently summarize large quantities of data from a DataSet and explore data by different dimensions and measures.


 HTML Tables, also known as Flat or Standard Tables, are useful for displaying information in a scannable format, but they are not always useful for summarizing and highlighting data. HTML Tables can be based on either columns or rows, but not both. This means you have to use a large amount of space to display information.


 Pivot Tables, on the other hand, allow you to display data using both rows and columns. Each cell in the table contains data for the intersecting column and row. You can also have multiple columns and/or rows. Each subsequent column or row you add becomes a new grouping within the previously added grouping.


 This article describes how to manage Pivot Tables in Domo in the following categories:

 Pivot Table capabilities
* Power Pivot Tables
* Customize Pivot Tables
* Best practices for Pivot Tables

Pivot Table Capabilities
----------------------------

Pivot Tables provide the following capabilities:

 Alert integration
* Beast Mode support
* Card-to-Card Filter support
* Color rules
* Color/attribute control by row and column
* Connect and update data

, as with any other chart type
* Drill Path
* Domo Embed support
* Expand/collapse rows and columns
* Export to

Excel and CSV

or

PowerPoint
* Full integration with Analyzer
* Full mobile support
* Highlighting and selection by row and column grouping
* Independent control over row and column totals
* Much larger table handling
* Quick Filters support
* Share via email
* Summary Numbers

Pivot Tables have Table Calculation functionality. Follow this link to learn about

Table Calculations

.


 Pivot Tables also include several chart properties for configuring the look and feel of the chart. You can use chart properties to control the font size and color, text wrapping, header appearance, total and subtotal appearance, and more. For more information about changing chart properties, see the section about

Customizing Pivot Tables

below.


 Just like in an HTML Table, you can include any DataSet columns you want in a Pivot Table and change the order of the columns as you like. For information about changing the order of columns, see the section about

Sorting Rows and Columns

below.


 Power Pivot Tables
----------------------

Unlike with other chart types—where you must drag columns of a specific data type into specific fields in the
 **Columns**
 region above the chart—you create Pivot Tables by dragging columns into any field you want:
 **Rows**
 ,
 **Columns**
 , or
 **Values**
 .

 Columns you drag into the
 **Rows**
 region display as groupings on the left side of the chart.
* Columns you drag into the
 **Columns**
 region display as groupings at the top of the chart.
* Columns you drag into the
 **Values**
 region are used to populate the inner data pane of the chart, with one value appearing for each row-column pair.

If you drag more than one column into a field, each subsequent grouping becomes a subset of the previous grouping. You can change the order of a grouping by dragging a column to your desired location in the field.


 Columns retain their unique data types after you drag them into a field. You can select columns in the
 **Rows**
 ,
 **Columns**
 , and
 **Values**
 fields to access additional options, such as aggregation and formatting. The specific options that are available depend on the data type.


 Columns in the
 **Dimensions**
 pane allow you to only set basic aggregation options, enter a table label, and change the styling. Columns in the
 **Measures**
 pane provide more aggregation options, a label setting option, and number formatting options.


 The following articles provide more information on the following topics:

 See

Applying DataSet Columns to Your Chart

for information about aggregation.
* See

Formatting Values in Your Chart

for information about formatting numbers.
* See

Understanding Chart Data

for information about value, category, and series data.


 In Analyzer, you choose the columns containing the data for your table. For more information about choosing data columns, see our article about

Applying DataSet Columns to Your Chart

, and for information about formatting charts in Analyzer, see our

Analyzer Overview

article.

Customize Pivot Tables
--------------------------

You can customize the appearance of a Pivot Table in several ways, many of which are possible with the
 **Chart Properties**
 tool. For more information about this tool, see our article about

Chart Properties

.

##
 Pivot Table Properties


####
 General Properties


* **Font Color**
 — Change the font color used for all text in the table.
* **Allow Text to Wrap**
 — When enabled, text wraps in columns instead of disappearing off the right side of the column.
* **Financial Style Negatives**
 — When this checkbox is selected, negative numbers are enclosed in parentheses; otherwise, a minus sign is used.
* **Show Negative Numbers in Red**
 — When this checkbox is selected, negative numbers display in red.


####
 Header Row Properties


* **Header Fill Color**
 — Select a background color for the header row of your table. If you select
 **Default**
 , no color is used.

Note that the names in the upper-left corner of your Pivot Table are considered both row and column names. If you select both a
 **Header Row**
 fill color and a
 **Header Column**
 fill color, the
 **Header Row**
 fill color takes precedence.
* **Header Font Color**
 — Select the text color for the column names in your header row. This color overrides the table font color set in
 **General**
 >
 **Font Color**
 .

Note that the names in the upper-left corner of your Pivot Table are considered both row and column names. If you specify both a
 **Header Row**
 font color and a
 **Header Column**
 font color, the
 **Header Row**
 font color takes precedence.


 For example, if you set the general font color to blue and the header row font color to red, the header row font color displays as red instead of blue. If you then select
 **Default**
 , the header row color reverts to blue.
* **Header Alignment**
 — Select the alignment (left, center, or right) for the column names in the header row. The default setting is
 **Left**
 .

Note that the names in the upper-left corner of your Pivot Table are considered both row and column names. If you specify both a
 **Header Row**
 alignment and a
 **Header Column**
 alignment, the
 **Header Row**
 alignment takes precedence.


 In the example below, the column names are centered.
* **Header Font Style**
 — Select the font style (bold, italic, or bold-italic) for the column names in the header row. The default setting is
 **Bold**
 .

Note that the names in the upper-left corner of your Pivot Table are considered both row and column names. If you specify both a
 **Header Row**
 font style and a
 **Header Column**
 font style, the
 **Header Row**
 font style takes precedence.


 In the example below, the font style is
 **Bold-Italic**
 .


####
 ​​​​​​Header Column Properties


* **Header Fill Color**
 — Select a background color for the header column of your table. If you select
 **Default**
 , no color is used.


 Note that the names in the upper-left corner of your Pivot Table are considered both row and column names. If you specify both a
 **Header Row**
 fill color and a
 **Header Column**
 fill color, the
 **Header Row**
 fill color takes precedence.
* **Header Font Color**
 — Select the text color for the row names in your header column. This color overrides the table font color set in
 **General**
 >
 **Font Color**
 .

Note that the names in the upper-left corner of your Pivot Table are considered both row and column names. If you specify both a
 **Header Row**
 font color and a
 **Header Column**
 font color, the
 **Header Row**
 font color takes precedence.


 For example, if you set the general font color to blue and the header row font color to red, the header row font color displays as red instead of blue. If you then select
 **Default**
 , the header row color reverts to blue.
* **Header Alignment**
 — Select the alignment (left, center, or right) for the column names in the header column. The default setting is
 **Left**
 .

Note that the names in the upper-left corner of your Pivot Table are considered both row and column names. If you specify both a
 **Header Row**
 alignment and a
 **Header Column**
 alignment, the
 **Header Row**
 alignment takes precedence.


 In the example below, the row names are centered.
* **Header Font Style**
 — Select the font style (bold, italic, or bold-italic) for the row names in the header column. The default setting is
 **Bold**
 .

Note that the names in the upper-left corner of your Pivot Table are considered both row and column names. If you specify both a
 **Header Row**
 font style and a
 **Header Column**
 font style, the
 **Header Row**
 font style takes precedence.


 In the example below, the font style is
 **Bold-Italic**
 .


####
 Totals Properties


* **Show Total Row**
 — Add a
 **Grand Total**
 row to the bottom of your table. This row sums all value columns and counts any string and date/time columns you added to the
 **Values**
 region.
* **Total Row Position**
 — Specify whether the total row displays after the data rows in your table (default) or before the rows, at the top. This property is available only when the
 **Totals**
 >
 **Show Totals Row**
 checkbox is selected.

The example below shows a table with the total row placed before the data rows.
* **Total Row Fill Color**
 — Select a background color for the total row in your table. If you select
 **Default**
 , no color is used. This property is available only when the
 **Totals**
 >
 **Show Total Row**
 checkbox is selected.
* **Total Row Font Color**
 — Select the text color for the content in your total row. This color overrides the table font color set in
 **General**
 >
 **Font Color**
 , and this property is available only when the
 **Totals**
 >
 **Show Total Row**
 checkbox is selected.

For example, if you set the general font color to blue and the total row font color to red, the total row font color displays as red instead of blue. If you then select
 **Default**
 , the total row color reverts to blue.
* **Show Total Column**
 — On the right side of your table, add separate totals columns for each column you have dragged into the
 **Values**
 region above the chart preview. Each column sums all value columns and counts any string and date/time columns you added to the
 **Values**
 region.

In the example below, a total column displays for both "Profit" and "Sales."
* **Total Column Fill Color**
 — Select a background color for the total column(s) in your table. If you select
 **Default**
 , no color is used. This property is available only when the
 **Totals**
 >
 **Show Total Column**
 checkbox is selected.
* **Total Column Font Color**
 — Select the text color for the content in your total column(s). This color overrides the table font color applied in
 **General**
 >
 **Font Color**
 , and this property is available only when the
 **Totals > Show Total Column**
 checkbox is selected.

For example, if you set the general font color to blue and the total row font color to red, the total column font color displays as red instead of blue. If you then select
 **Default**
 , the total column color reverts to blue.
* **Total Column Font Style**
 — Select the font style (bold, italic, bold-italic, or underline) for the cells in the total column(s). The default setting is
 **Bold**
 , and this property is only available when the
 **Totals**
 >
 **Show Total Column**
 checkbox is selected.

In the example below, the font style is
 **Bold-Italic**
 .


####
 Subtotals Properties


* **Show Subtotal Rows**
 — Add subtotal rows to your Pivot Table. Subtotal rows sum all value columns are summed and count any string and date/time columns you added to the
 **Values**
 field. One subtotal row displays for each of the primary
 **Rows**
 groupings in your table.

In the example below, one such row displays for the "Furniture" grouping and another for the "Office Supplies" grouping.
* **Subtotal Row Position**
 — Specify whether subtotal rows display after the data rows in your table (default) or before the rows, at the top of each grouping. This property is available only when the
 **Subtotals**
 >
 **Show Subtotals Row**
 checkbox is selected.
* **Subtotal Row Fill Color**
 — Select a background color for the subtotal rows in your table. If you select
 **Default**
 , no color is used. This property is only available when the
 **Subtotals**
 >
 **Show Subtotal Rows**
 checkbox is selected.
* **Subtotal Row Font Color**
 — Select the text color for the content in your subtotal rows. This color overrides the table font color set in
 **General**
 >
 **Font Color**
 , and this property is only available when the
 **Subtotals**
 >
 **Show Subtotal Rows**
 checkbox is selected.

For example, if you set the general font color to blue and the subtotal row font color to red, the subtotal row font color displays as red instead of blue. If you then select
 **Default**
 , the subtotal row color reverts to blue.
* **Subtotal Row Font Style**
 — Select the font style (bold, italic, bold-italic, or underline) for the text in the subtotal rows. The default setting is
 **Bold**
 , and this property is only available when the
 **Subtotals**
 >
 **Show Subtotal Rows**
 checkbox is selected.

In the example below, the font style is
 **Bold-Italic**
 .
* **Show Subtotal Columns**
 — Add subtotal columns to your Pivot Table. Subtotal columns sum all value columns and count any string and date/time columns you added to the
 **Values**
 field. One subtotal column displays for each of the primary
 **Columns**
 groupings in your table.

In the example below, one such column displays for the "Central" regional grouping.
* **Subtotal Column Fill Color**
 — Select a background color for the subtotal columns in your table. If you select
 **Default**
 , no color is used. This property is available only when the
 **Subtotals**
 >
 **Show Subtotal Columns**
 checkbox is selected.
* **Subtotal Column Font Color**
 — Select the text color for the content in your subtotal columns. This color overrides the table font color set in
 **General**
 >
 **Font Color**
 , and this property is available only when the
 **Subtotals**
 >
 **Show Subtotal Columns**
 checkbox is selected.

For example, if you set the general font color to blue and the subtotal column font color to red, the subtotal column font color displays as red instead of blue. If you then select
 **Default**
 , the subtotal column color reverts to blue.
* **Subtotal Column Font Style**
 — Select the font style (bold, italic, bold-italic, or underline) for the text in the subtotal columns. The default setting is
 **Bold**
 , and this property is available only when the
 **Subtotals**
 >
 **Show Subtotal Columns**
 checkbox is selected.

In the example below, the font style is
 **Bold-Italic**
 .
* **Suppress Single Item Subtotals**
 — Hide subtotals for all groupings that contain only one item.


###
 Specify Table Labels

To change the label that displays for any column or row in your table, follow these steps:

. In the fields region above the chart, select the column for which you want to change the label.
2. Enter your desired label in the
 **Data Label**
 field.


###
 Change the Aggregation Type for a Column

All similar rows in a DataSet are automatically aggregated in a Pivot Table. The default aggregation is
 **Sum**
 , which sums the values for similar rows in a given column.


 You can change the aggregation type for a column to any of the following:


 Aggregation Type
  |
 Description
  |
| --- | --- |
|
 Sum
  |
 Adds the values in similar rows.
  |
|
 Minimum
  |
 Displays the lowest value in similar rows.
  |
|
 Maximum
  |
 Displays the highest value in similar rows.
  |
|
 Average
  |
 Displays the average value of all similar rows.
  |
|
 Count
  |
 Displays the number of similar rows. For dimensional columns, this is the only available aggregation type.
  |

To change the aggregation type for a column, follow these steps:

. In the fields region above the chart, select the column for which you want to change the aggregation type.
2. Select your desired aggregation in the
 **Aggregation**
 field.


**Tip:**
 If you change the aggregation type for a column to something other than
 **Sum**
 , we recommend that you change the column label to reflect the change (as described in the previous steps). This is because most viewers automatically assume that similar rows in a DataSet are summed.


 For example, if you change the aggregation type for your "Sales" column to
 **Average**
 , you might want to change the label to something like "Average Sales." Otherwise, your viewers might mistakenly think that the values in the column have been summed.


###


 Sort Rows and Columns

In a Pivot Table, you can select the arrows to the left of any header row or column to change the sort pattern used. You can do this anywhere a card is displayed—in the Dashboard view, in the Details view, or in Analyzer.

indicates that these rows or columns are in the same order as the original DataSet.

indicates that these rows or columns are in alphanumeric order.

indicates that these rows or columns are in reverse alphanumeric order.

*Important:**
 Due to the back-end work that must be performed on your data in order for it to pivot, you MUST use the sorting arrows to sort the data, NOT the sorting field inside of Analyzer.

Best Practices for Pivot Tables
-----------------------------------

To keep Pivot Tables organized and to avoid displaying unneeded data, the maximum number of column and row combinations is 10. (Possible combinations include: 3 rows and 7 columns, 3 rows and 3 columns, 4 rows and 2 columns, 5 rows and 5 columns). When you drag a new value to a column or row, you must place the new value in one of the
 **Drag Column Here**
 boxes. Existing values are replaced when you drag over them.


 The maximum number of columns allowed in a
 **Values**
 field is 50.

##
 Use Case #1

The following image shows a portion of a typical Pivot Table. It contains two row groupings, "Product Category" and "Product Sub-Category," and two column groupings, "Region" and "Customer State." Each product category is broken down into subcategories, and each region is broken down by state. For example, "Furniture" contains individual rows for "Bookcases" and "Office Furniture," and "Central" contains individual columns for "Illinois" and "Michigan."


 In addition, two columns of data are displayed: "Profit" and "Sales." These columns allow you to efficiently find the profit and sales values for the combination of any product and geographic location. For example, if you are asked to find the profit of office furnishings for the state of Michigan, simply find the cell at the intersection of "Office Furnishings" and "Michigan"/"Profit," which is $4,784.35.


 You can also find the totals for each column at the bottom of the table and individual columns for "Profit" total and "Sales" total on the right side of the table (not shown).


###
 Use Case #2


 In this example, a sales manager uses a Pivot Table to show the profits earned for all product categories. The sales manager wants to display the product categories in the rows, so they:


1. drag the "Product Category" column from the

***Dimensions****

pane into

*Rows**

above the chart preview.
2. drag the "Profit" column from the

*Measures**

pane into

*Values**

above the chart preview.


 This generates a basic Pivot Table that displays the profits for the three categories and their grand total, as shown below.


 At this point, the table does not provide much useful information, so the sales manager decides to expand the table to include data for regions. They drag the "Region" column into
 **Columns**
 above the chart preview. This adds a "Region" header row at the top of the table, adds a "Profit " column to the right side of the table, and divides the table into four "Profit" columns, one for each region.

This is a little more helpful, but still lacks specifics. The table says that all the furniture generated a total profit of $152,374.80, but we don't know the breakdown of the furniture types and how they contribute to this total.


 The sales manager realizes this, so they decide to add another column, "Product Sub-Category," to the table. They do this by dragging the "Product Sub-Category" column into
 **Rows**
 above the chart preview, just as they did with "Product Category." This divides each product category into subcategories, and each subcategory now displays individual profit values.


**Note:**
 You do not need to include columns or rows in their logical breakdown order like in the previous example. If the sales manager switches the order of "Product Category" and "Product Sub-Category," the data will still display correctly.

However, instead of the subcategories displaying in their own easy-to-read groupings, as shown above, each will be listed in alphabetical order and paired with its parent category, as shown below. Because this is harder to read, we recommend that you always arrange the columns in a field in their logical breakdown order.

The sales manager completes their Pivot Table by adding two more columns. They drag "Customer State" into
 **Columns**
 and "Sales" into
 **Values**
 . This divides the regions into individual states (similar to what the sales manager did with "Product Category" and "Product Sub-Category") and adds a new data column, "Sales," for each state.

At this point, the sales manager can make various adjustments to the Pivot Table to make it more readable and useful to viewers. They could set color rules to draw attention to values in a certain range, change the sort and aggregation type for certain columns, highlight total and subtotal rows and columns, add a Drill Path, and much more. For more information about these customizations, see the section about

Customizing Pivot Tables

above.

*Important:**
 If you see the message "Warning: Not all data is shown" with rows in your Pivot Table displaying as "###", numbers that may be in those places have not been included in the data used to create the Pivot Table because there are too many rows to process.


 In this case, there are some subtotals for the column, but because the number of rows of data is limited, the Pivot Table cannot be fully built. The "###" indicates that there is missing data to display. These cells may or may not actually have data, but they cannot be found due to the size of the data.


