

Intro
-------

Refer to this topic to find information about chart properties available for tables, flex tables, heat map tables, mega tables, and textboxes, such as those for configuring header rows, total and subtotal rows, alignment, styling, and so on.


 "General" Properties
----------------------

The properties in the following table are found in the
 **General**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Allow Text to Wrap
  |
 When enabled, text in table columns wraps instead of disappearing off the right side of the column.
  |

|
|
 Financial Style Negatives
  |
 When this box is checked, negative numbers are enclosed in parentheses; otherwise a minus sign is used.
  |
 —
  |
|
 Show Negative Numbers in Red
  |
 When this box is checked, negative numbers appear in red.
  |
 —
  |
|
 Text
  |
 Lets you set custom text for a Textbox. Any text you enter here replaces the text from your DataSet. You can use the macro
 `%_VALUE`
 here to insert the value from the column you applied in the
 **Optional Value**
 field. For example, if you wanted the text in your textbox to read "Today's quota is [some value]," you would enter
 `Today's quota is %_VALUE`
 in this field.
  |
 —
  |
|
 Font Style
  |
 Lets you choose whether the font for text in a Textbox is plain, bold, italic, or bold-italic.
  |
 —
  |
|
 Font Color
  |
 Lets you choose the color for text in a Textbox or table.
  |
 —
  |
|
 Horizontal Text Alignment
  |
 Lets you select the horizontal alignment for text in a Textbox. The examples at right show the same string of text left-aligned, center-aligned, and right-aligned, in that order.
  |

|
|
 Vertical Text Alignment
  |
 Determines whether text in a Textbox appears at the top, in the center, or at the bottom.
  |
 —
  |
|
 Top Margin
  |
 Determines the amount of space in pixels above the text in a Textbox.
  |
 —
  |
|
 Bottom Margin
  |
 Determines the amount of space in pixels below the text in a Textbox.
  |
 —
  |
|
 Left Margin
  |
 Determines the amount of space in pixels to the left of the text in a Textbox.
  |
 —
  |
|
 Right Margin
  |
 Determines the amount of space in pixels to the right of the text in a Textbox.
  |
 —
  |
|
 Row Height
  |
 Specify the size of the padding in the cells of your Mega Table.
  |
 —
  |
|
 Fixed Row Height
  |
 Sets the height for all rows in a Flex table. A minimum value of 28 is required, but no there are no restrictions on the maximum value.
  |
 —
  |
|
 Column 1-Column 10
  |
 Lets you choose the aspect of the series that is portrayed in a given column in a Flex table. Four columns are included in a table by default, but you can add additional columns by choosing options for columns 5 through 10. For example, if you selected
 **Penultimate Value**
 for
 **Column 5**
 , a fifth column would be added to the table, portraying the penultimate value in the data for each series.


 The screenshot shows a Flex table in which nearly all aspects are shown (except for
 **Penultimate Value**
 ).


 The options in this menu are as follows:


|  |  |
| --- | --- |
|
 Default
  |
 The default aspect of the series represented in each column. For column 1, this is the name of the series; for column 2, the graph; for column 3, a positive or negative indicator, and for column 4, the percent of change. All remaining columns default to
 **Empty**
 .
  |
|
 Empty
  |
 If you choose this option, this column does not appear in the table. This is the default setting for columns 5-10.
  |
|
 Name
  |
 The name of the series. This is the default setting for column 1.
  |
|
 Graph
  |
 The line or bar graph for this series. This is the default setting for column 2. You can change the graph type under
 **Graph Settings > Type**
 .
  |
|
 Change Indicator
  |
 An icon that shows whether overall change for the series is positive (green) or negative (red). This is the default setting for column 3.
  |
|
 Change Percent
  |
 The percent of overall change for the series. This is the default setting for column 4.
  |
|
 Change Value
  |
 The specific amount of change for the series.
  |
|
 First Value
  |
 The first data value in the series.
  |
|
 Penultimate Value
  |
 The second-to-last data value in the series.
  |
|
 Last Value
  |
 The last data value in the series.
  |
|
 Minimum Value
  |
 The minimum (lowest) data value in the series.
  |
|
 Maximum Value
  |
 The maximum (highest) data value in the series.
  |
|
 Average Value
  |
 The average data value in the series.
  |


 |

|
|
 Column 1-10 Title
  |
 The name of a Flex table column, as it appears in the topmost row of the table.
  |
 —
  |
|
 Column 1-10 Width
  |
 Lets you set the width of a Flex table column as a percentage of the entire table (1-100).
  |
 —
  |
|
 Number of Locked Columns
  |
 Lets you determine how many columns on the left side of a mega table are locked. When columns are locked, they always appear in the table, even when scrolling to the right.
  |
 —
  |
|
 Hide Alternating Row Colors
  |
 Lets you turn off the default alternating row colors in the table, meaning all rows will appear with a white background (except for when you mouse over a column, in which case all cells in that column and the current row appear blue).
  |
 —
  |
|
 Apply Color Rules to Totals and Subtotals
  |
 Lets you apply any color rules you have set using the
 **Colors**
 property to total and subtotal rows in your mega table.
  |
 —
  |
|
 Apply Color Rules to Headers
  |
 Lets you apply any color rules you have set using the
 **Colors**
 property to header rows in your mega table.
  |
 —
  |
|
 Allow HTML Links and Images
  |
 Lets you permit HTML-encoded links and images to show up in your mega table.


 URLs should be enclosed in

<a>

tags. For example, the following code would be converted into a functional email address for a user named "Sam MacGregor":


 <a href="mailto:

sam.macgregor@yankuna.com

">

sam.macgregor@yankuna.com

</a>


 Images should be enclosed in

<div>

tags. For example, the following code would be converted into an image called "bruce.png" that is stored on

knowledge.domo.com

:


 <div style="text-align:center"><img height="80px" src="

https://knowledge.domo.com/@api/deki/files/7627/bruce.png?origin=mt-web"></div>

;


 The example shows a table in which both URLs and images have been enabled.
  |

|
|
 HTML Image Size
  |
 Lets you set a size constraint for HTML images in your mega table. You can set any size between 10 and 500 pixels. The default is 64.
  |
 —
  |
|
 Apply Heat Map to Columns
  |
 Lets you specify which numeric columns in your heat map table have shading applied. You indicate the columns by their number in the table from left to right. You can use commas to indicate different columns or hyphens to indicate ranges of columns. For example, if you entered

2,4-6

in this field, columns 2, 4, 5, and 6 would have heat map coloring.
  |
 —
  |
|
 Hide Columns
  |
 Lets you hide columns in a table by entering the numbers of those columns in a comma-separated list. Column numbers are based on the table column order going from left to right. For example, the third column from the left would be column 3.
  |
 —
  |

"Header Row" Properties
-------------------------

The properties in the following table are found in the
 **Header Row**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Header Row Fill Color
  |
 Lets you select a background color for the header row in a table. If you select
 **Default**
 , no color is used.
  |

|
|
 Header Row Font Color
  |
 Lets you select the text color for the column names in your table header row. This color takes precedence over the table font color applied in
 **General > Font Color**
 , so if you set the general font color to blue and the header row font color to red, the header row font color would appear red instead of blue. If you then chose
 **Default**
 , the header row color would revert to blue.
  |

|
|
 Header Row Alignment
  |
 Lets you select the alignment for the column names in a table header row. The default setting is
 **Left**
 .


 In the example, the column names are centered.
  |

|
|
 Header Row Font Style
  |
 Lets you select the font style for the column names in a table header row, either bold, italic, bold-italic, or underline. The default setting is
 **Bold**
 .


 In the example,
 **Bold-Italic**
 is set as the font style.
  |

|
|
 Header Row Height
  |
 Lets you set the height for the header row in a Flex table (i.e. the row containing the column names). A minimum value of 28 is required, but no there are no restrictions on the maximum value.
  |
 —
  |

"Total Row" Properties
------------------------

The properties in the following table are found in the
 **Total Row**
 category in Chart Properties.

*Important:**

Analytics functions (windows functions) are not supported in total or subtotal rows.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Show Total Row
  |
 Lets you add a grand total row to the bottom of a table. In this row, all value columns are summed and all string and date/time columns are counted. Note that the label appears at the bottom of the first column, replacing any total information that would otherwise appear here, so it is recommended that you don't set a column you want to see a total of as your first column.
  |

|
|
 Label
  |
 Lets you replace the "GRAND TOTAL" text in your table's total row with custom text. This option is only available when the
 **Total Row > Show Total Row**
 box is checked.
  |
 —
  |
|
 Fill Color
  |
 Lets you select a background color for the total row in your table. If you select
 **Default**
 , no color is used. This option is only available when the
 **Total Row > Show Total Row**
 box is checked.
  |

|
|
 Font Color
  |
 Lets you select the text color for the content in your table's total row. This color takes precedence over the table font color applied in
 **General > Font Color**
 , so if you set the general font color to blue and the total row font color to red, the total row font color would appear red instead of blue. If you then chose
 **Default**
 , the total row color would revert to blue. This option is only available when the
 **Total Row > Show Total Row**
 box is checked.
  |

|
|
 Font Style
  |
 Lets you select the font style for the column names in a table total row, either bold, italic, bold-italic, or underline. The default setting is
 **Bold**
 . This option is only available when the
 **Total Row > Show Total Row**
 box is checked.


 In the example,
 **Bold-Italic**
 is set as the font style.
  |

|
|
 Hide Counts
  |
 Lets you hide "Count" summations for non-value columns in the total row of your mega table.
  |
 —
  |
|
 Position
  |
 Lets you specify whether your total row appears at the end of your mega table (default) or at the beginning.
  |
 —
  |
|
 Padding
  |
 Lets you add padding between the content in the total row of your mega table and the upper border, in pixels. In the example, this value has been set to 25.
  |

|
|
 Position
  |
 Lets you specify whether your total row appears at the end of your mega table (default) or at the beginning.
  |
 —
  |

"Subtotal Row" Properties
---------------------------

The properties in the following table are found in the
 **Subtotal Row**
 category in Chart Properties.

*Important:**

Analytics functions (windows functions) are not supported in total or subtotal rows.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Show Subtotal Rows
  |
 Lets you add subtotal rows after each group of like values in your table's first column. In this row, all value columns are summed and all string and date/time columns are counted.


 In the example, the first column includes state names, which are sorted alphabetically. There are three rows for New Mexico. Therefore, a subtotal column appears after the New Mexico rows, providing subtotals just for the New Mexico data.
  |

|
|
 Show as Percent of Total
  |
 When this box is checked, subtotals in a table will appear as percent of total values for the entire column instead of the usual subtotals. This option is only available when the
 **Subtotal Row > Show Subtotal Rows**
 box is checked.
  |

|
|
 Label
  |
 Lets you customize the label text for your table's subtotal rows. Note that your custom text replaces only the word "Total," not the name of the group of like values the subtotal is based on. For example, if the group of like values was "Minnesota" and you added "Summary" as the label text, the label would read "Minnesota Summary." You can specify whether your custom label comes before or after the group name using the
 **Subtotal Row > Label Position**
 option.


 This option is only available when the
 **Subtotal Row > Show Subtotal Rows**
 box is checked.
  |
 —
  |
|
 Label Position
  |
 Lets you specify whether the word "Total" (or your custom label if you specified one in the
 **Subtotal Row> Label**
 property) comes before or after the name of the group of like values the subtotal row is based on in a table. The default is
 **After**
 . For example, if the group name was "Minnesota," by default the label would read "Minnesota Total." If you changed this setting to
 **Before**
 , the label would read "Total Minnesota."


 This option is only available when the
 **Subtotal Row > Show Subtotal Rows**
 box is checked.
  |
 —
  |
|
 Fill Color
  |
 Lets you select a background color for the subtotal rows in your table. If you select
 **Default**
 , no color is used. This option is only available when the
 **Subtotal Rows > Show Subtotal Rows**
 box is checked.
  |

|
|
 Font Color
  |
 Lets you select the text color for the content in your table's subtotal rows. This color takes precedence over the table font color applied in
 **General > Font Color**
 , so if you set the general font color to blue and the subtotal row font color to red, the subtotal row font color would appear red instead of blue. If you then chose
 **Default**
 , the subtotal row color would revert to blue. This option is only available when the
 **Subtotal Rows > Show Subtotal Rows**
 box is checked.
  |

|
|
 Font Style
  |
 Lets you select the font style for the text in your table's subtotal rows, either bold, italic, bold-italic, or underline. The default setting is
 **Bold**
 . This option is only available when the
 **Subtotal Rows > Show Subtotal Rows**
 box is checked.


 In the example,
 **Bold-Italic**
 is set as the font style.
  |

|
|
 Show All Group Names
  |
 When checked, for unaggregated data in a mega table, names are shown for all individual items within a category. When unchecked, the category name is only used once (aside from the subtotal row), and blank cells appear under that name for all remaining values in the category.


 The first example shows a table in which the customer name appears every time a value is listed for that customer. The second example shows the same table with customer names only being listed once; all subsequent values for the customer have a blank customer name.
  |


 |
|
 Subtotal Row Padding
  |
 Lets you add padding between the content in the subtotal rows in a mega table and the lower border, in pixels. In the example, this value has been set to 25.
  |

|
|
 Hide Counts
  |
 Lets you hide "Count" summations for non-value columns in subtotal rows in a mega table.
  |
 —
  |
|
 Position
  |
 Lets you specify whether the subtotal rows in your mega table appear after the rows they apply to (default) or before.
  |
 —
  |
|
 Show Subheader Rows
  |
 Lets you add subheader rows above the groupings in your unaggregated data rows in your mega table. If you intend to incorporate subheader rows in your table, it is recommended that you set them apart using the
 **Subheader Fill Color**
 ,
 **Font Color**
 , and/or
 **Font Style**
 properties so users can see them easily.
  |
 —
  |
|
 Subheader Fill Color
  |
 Lets you add a selected background color to the subheader rows in your mega table. (Subheader rows must be turned on using the
 **Subtotal Row > Show Subheader Rows**
 checkbox for this to be available.) By default, no background color is used.


 In the example, the subheader rows are shown with an orange background.
  |

|
|
 Subheader Font Color
  |
 Lets you select a color for the text in the subheader rows in your mega table. (Subheader rows must be turned on using the
 **Subtotal Row > Show Subheader Rows**
 checkbox for this to be available.) By default, the color is black.


 In the example, the subheader rows are shown with red text.
  |

|
|
 Subheader Font Style
  |
 Lets you select a style (bold, italic, or both) to the text in the subheader rows in your mega table. (Subheader rows must be turned on using the
 **Subtotal Row > Show Subheader Rows**
 checkbox for this to be available.) By default, no style is applied.


 In the example, the subheader rows are shown in bold and italic styling.
  |

|
|
 Suppress Single Items Subtotals
  |
 Lets you determine whether to suppress (hide) subtotals if there is only one item in a group in your mega table.
  |
 —
  |

"Theme" Properties
--------------------

The properties in the following table apply only to heat map tables and are found in the
 **Theme**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Theme
  |
 Allows you to change the color theme for the values column in a heat map table. For more information about setting colors, see

Changing the Default Colors in Your Chart

.
  |
 —
  |

"Scale" Properties
--------------------

The properties in the following table apply only to heat map tables and are found in the
 **Scale**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Use Log Scale
  |
 Uses a logarithmic scale for the ranges in a heat map table.
  |
 —
  |
|
 Independent Column Ranges
  |
 Causes ranges to be applied separately to each column in a heat map table.
  |
 —
  |

"Full Size Settings" Properties
---------------------------------

The properties in the following table are found in the
 **Full Size Settings**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Full Size Settings
  |
 Allows you to set custom sizing on tables in the card view when the "Full Size" option is selected—anywhere from 1 to 6 card sizes in both width and height. For more information about card sizing, see

Changing the Size of Cards in a Page

.


 The first table in the example at right shows a table in the card view that has been set to a 4-card width by a 1-card height. The second table has been set to a 3-card width by a 3-card height.
  |


 |

"Graph Settings" Properties
-----------------------------

The properties in the following table are found in the
 **Graph Settings**
 category in Chart Properties. These properties apply to Flex tables only.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Graph Settings > Type
  |
 Lets you choose the graph type in the column containing your series graphs in your Flex table. Note that these will all be the same graph type for each series; you cannot include more than one type of graph in the same Flex table.


 The following graph types are available:


|  |  |
| --- | --- |
|
 Line
  |
 Creates a

Spark Line

graph for each series. This is the default option. The first screenshot at right shows an example of this graph type.
  |
|
 Bar
  |
 Creates a vertical

Spark Bar

graph for each series. The second screenshot at right shows an example of this graph type.
  |
|
 Horizontal Bar
  |
 Creates a horizontal Spark Bar graph for each series. The third screenshot at right shows an example of this graph type.
  |
|
 Horizontal Single Bar
  |
 Creates a horizontal bar graph in which all bars for each series are aggregated to yield a single bar. The fourth screenshot at right shows an example of this graph type.
  |


 |


 |
|
 Graph Settings > Bar Width Percentage
  |
 Lets you specify the width of the bars in your Flex table as a percentage of the cell space. Not available when you select
 **Line**
 as your graph type.


 The screenshot shows an example of a horizontal bar graph in which this setting has been set to

25

. (In contrast, the preceding example is set to the default value of

50

.)
  |

|

"Regression Line" Properties
------------------------------

The properties in the following table are found in the
 **Regression Line**
 category in Chart Properties. These properties apply to Flex tables only.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Regression Line > Show Linear Regression Line
  |
 Adds a linear regression line to all series graphs in the Flex table. Not available when you select
 **Horizontal Bar**
 or
 **Horizontal Single Bar**
 as your graph type.


 The first screenshot at right shows an example of this when used with a Line graph. The second example shows the same thing with a Bar graph.
  |


 |
|
 Regression Line > Include Last Data Point
  |
 Lets you determine whether the last data point in a series is used to calculate the regression line.
  |
 —
  |
|
 Regression Line > Line Style
  |
 Lets you determine whether regression lines appear dashed (default) or solid.
  |
 —
  |
|
 Regression Line > Line Color
  |
 Lets you determine the color for regression lines.
  |
 —
  |

"Alignment" Properties - DEPRECATED
-------------------------------------

The properties in the following table were formerly found in the
 **Alignment**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Column 1-16
  |
 Lets you set the text alignment (left, center, or right) for all desired columns in your table. Column numbers are based on the table column order going from left to right. For example, the third column from the left would be column 3.


 In the example, all columns are set to
 **Center**
 .
  |

|

"Attribute" Properties - DEPRECATED
-------------------------------------

The properties in the following table were formerly found in the
 **Attribute**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Column 1-16
  |
 Lets you set the font style (bold, italic, bold-italic, or underline) for all desired columns in your table. Note this does not affect text in header rows. Column numbers are based on the table column order going from left to right. For example, the third column from the left would be column 3.


 In the example, the two value columns are set to
 **Italic**
 .
  |
 —
  |


