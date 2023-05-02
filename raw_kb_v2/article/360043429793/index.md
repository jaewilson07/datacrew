

Intro
-------

Refer to this topic to find information about chart properties available for most chart types, such as those for configuring data labels and hovers, scale markers, value and category scale labels, and so on.


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
 Font Size
  |
 Allows you to increase or decrease the font size for category and value scale labels in many chart types.


 For Textboxes, a number of sizes are available ranging from Small to XX-Large. If you select
 **Default**
 , the size is chosen that best matches the amount of available space. So, if you had the maximum amount of space available, the "XX-Large" size would be used.


 For more information, see

Changing the Font Size in Your Chart

.
  |
 —
  |
|
 Portrait View Legend Position
  |
 Determines where legends appear in charts in portrait view. By default, legends appear on the bottom of the chart in this view. For more information, see

Changing the Legend Position in Your Chart

.
  |
 —
  |
|
 Landscape View Legend Position
  |
 Determines where legends appear in charts in landscape view. By default, legends appear on the right of the chart in this view. If you select
 **Auto**
 , the legend appears to the right of the chart if it contains 10 or fewer items. Otherwise it appears at the bottom of the chart. For more information, see

Changing the Legend Position in Your Chart

.
  |
 —
  |
|
 Reverse Legend Layout Order
  |
 Reverses the order in which legend items appear.
  |
 —
  |
|
 Disable Animation
  |
 Turns off the animations that play when the viewing a chart in the Details view.
  |
 —
  |

"Grid Lines" Properties
-------------------------

The properties in the following table are found in the
 **Grid Lines**
 category in Chart Properties for most kinds of charts.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Zero Line Color
  |
 Determines the color for the "zero line" on most single-axis charts. You can enter either the name of the color or the hexadecimal color code (such as

FF0000

for red). This attribute does not work if the zero line is also the baseline (that is, the chart must contain negative values). In the example, this property has been set to

red

.
  |

|
|
 Zero Line Width
  |
 Determines the width of the "zero line" on most single-axis charts, in pixels. This attribute does not work if the zero line is also the baseline (that is, the chart must contain negative values). In the example, this property has been set to

5

.
  |

|
|
 Calculated Line
  |
 Lets you set an additional grid line that denotes the median or average value in the chart. In the example, the user has selected
 **Average**
 .
  |  |

"Data Label Settings" Properties
----------------------------------

The properties in the following table are found in the
 **Data Label Settings**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Text
  |
 Specifies text for data labels. This property is the "on switch" for data labels—you must specify text for them to appear.


 For more information about creating data label text, including a list of available macros, see

Formatting Data Label and Hover Text in Your Chart

.
  |
 —
  |
|
 Position
  |
 Determines where data labels are shown in relation to their corresponding data items.


 Available positions differ between chart types. For example, Pie and Funnel graphs include
 **Outside Leaders**
 and
 **Outside Arranged Leaders**
 options. Leaders are lines that connect data labels to their associated data items in the graph. If you select
 **Outside Leaders**
 , diagonal leaders are used; if you select
 **Outside Arranged Leaders**
 , the leaders are horizontal.


 The example shows a chart in which the data label position is set to
 **Inside Top**
 for a Vertical Bar graph.
  |

|
|
 Fill
  |
 Lets you add a colored fill to your data labels. The example at right shows a chart in which a red fill color with 45% transparency has been added.
  |

|
|
 Fill Color
  |
 Lets you specify the color for the fill in your data labels. This property is only available when you check the
 **Fill**
 box.
  |
 —
  |
|
 Fill Transparency Percent
  |
 Lets you specify the fill transparency for data labels. You can specify any number between 0 and 100, in which 0 is completely opaque and 100 is completely transparent. This property is only available when you check the
 **Fill**
 box.
  |
 —
  |
|
 Rotate
  |
 Lets you rotate data labels 90 degrees. The example at right shows a chart in which this has been done.
  |

|
|
 Justification
  |
 Determines the justification for multi-line data labels—either
 **Left**
 ,
 **Center**
 , or
 **Right**
 . For information about creating data label text, see

Formatting Data Label and Hover Text in Your Chart

. The example graph includes multi-line data labels that have been left-justified (by selecting
 **Left**
 for the
 **Justification**
 property).
  |

|
|
 Show When Zero
  |
 Determines whether data labels are shown for graph elements with a value of 0.
  |
 —
  |
|
 Use Scale Format
  |
 Determines whether data labels use the same formatting that has been set for the value scale.
  |
 —
  |
|
 Use Scale Abbreviation
  |
 Determines whether data labels use the same scale abbreviation that has been set for the value scale.
  |
 —
  |
|
 Percent Value Decimal Places
  |
 Determines the number of decimal places used in percentage values in data labels.
  |
 —
  |
|
 Allow Overlap
  |
 Determines whether data labels are still shown when they overlap.
  |
 —
  |
|
 Show Data Labels On
  |
 Determines whether data labels appear for lines, bars, or both in line-bar combination charts.
  |
 —
  |

"Hover Text Settings" Properties
----------------------------------

The properties in the following table are found in the
 **Hover Text Settings**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Hover Text
  |
 Lets you set the text that appears in chart hovers. A variety of macros for showing chart values in your hovers is available. For more information and a list of available macros, see

Formatting Data Label and Hover Text in Your Chart

.
  |
 —
  |
|
 Use scale format
  |
 Determines whether hovers use the same formatting that has been set for the value scale. This property overrides the
 **Hover Format**
 ,
 **Divide Value By**
 ,
 **Decimal Places**
 , and
 **Negative Numbers**
 properties.
  |
 —
  |
|
 Use scale abbreviation
  |
 Determines whether hovers use the same scale abbreviation that has been set for the value scale.
  |
 —
  |
|
 Hover Format
  |
 Determines whether values in hovers have currency or percent symbols affixed. This property is overridden by the
 **Use scale format**
 property.
  |
 —
  |
|
 Divide Value By
  |
 When set, values in hovers are divided by the specified factor. This option is useful when the values in your chart are very large and you want to abbreviate them by dividing by a common number. For example, if the values in your chart represented millions of dollars, you could choose to divide by millions—all of the values in the hovers would then be reduced to more manageable single digits. When you choose to divide by
 **Percentage**
 , the numbers in the value scale are multiplied by 100. This property is overridden by the
 **Use scale format**
 property.
  |
 —
  |
|
 Decimal Places
  |
 Determines the number of decimal places in values in hovers. This property is overridden by the
 **Use scale format**
 property.
  |
 —
  |

"Value Scale" Properties
--------------------------

The properties in the following table are found in the
 **Value Scale**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Title
  |
 Determines whether labels appear alongside value scales. For more information, see

Adding Scale Titles to Your Chart

. The example shows a Grouped Bar with Line chart in which value scale labels are used to distinguish the line and bar data.
  |

|
|
 Show Label
  |
 Determines whether labels appear for value items.
  |
 —
  |
|
 Label Format
  |
 Determines the general number format for value scale numbers and data labels. For more information, see

Formatting Values in Your Chart

.
  |
 —
  |
|
 Divide Scale By
  |
 Refers to the number that values in the value scale are to be divided by, if any. This option is useful when the numbers on your value scale are very large and you want to abbreviate them by dividing by a common number. For example, if all of the numbers on the value scale represented millions of dollars, you could choose to divide by millions—all of the numbers on the scale would then be reduced to more manageable single digits. When you choose to divide by
 **Percentage**
 , the numbers in the value scale are multiplied by 100.
  |
 —
  |
|
 Decimal Places
  |
 Determines the number of decimal places used in decimal values. You can choose from
 **Default**
 ,
 **None**
 , and options for numbers of decimal places (from ".0" to ".00000"). By default, Domo automatically determines the optimal number of decimal places for each number in the chart. When you select
 **None**
 , all values are rounded to the nearest whole number.
  |
 —
  |
|
 Negative Numbers
  |
 Determines the format for negative numbers. If you select
 **-100**
 , all negative numbers have a minus symbol affixed. If you select
 **(100)**
 , all negative numbers are enclosed in parentheses.
  |
 —
  |
|
 Max
  |
 Determines the maximum values on a value scale. For more information, see

Setting the Minimum or Maximum Value on Your Chart's Value Scale

.
  |
 —
  |
|
 Min
  |
 Determines the minimum values on a value scale. For more information, see

Setting the Minimum or Maximum Value on Your Chart's Value Scale.

|
 —
  |
|
 Divisions
  |
 Determines the number of value scale gridlines in a chart. For more information, see

Specifying the Number of Value Scale Gridlines in Your Chart

. The example shows a chart with eight value scale gridlines.
  |

|
|
 Log Scale
  |
 Determines whether the value scale increments logarithmically. On a logarithmic scale, each successive increase is exponential. These scales are useful when you have a wide range of data that doesn't fit well on a regular linear scale. The example shows a chart that uses a logarithmic scale to handle a wide range of data.
  |

|
|
 Include Zero
  |
 Determines whether a line for "0" appears in the chart.
  |
 —
  |

"Category Scale" Properties
-----------------------------

The properties in the following table are found in the
 **Category Scale**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Title
  |
 Determines whether labels appear alongside category scales. For more information, see

Adding Scale Titles to Your Chart.

The example shows a chart in which a category scale label is used.
  |

|
|
 Show Label
  |
 Determines whether labels appear for category items.
  |
 —
  |
|
 Tiered Dates
  |
 Determines whether multiple levels of dates are shown and, if so, how many. You can have up to 3 levels of dates. For example, if the dates in your chart were represented by week and you selected
 **3 Tiers**
 , the timeline would continue to show weekly data but the weeks would be broken out into monthly divisions, and the months would be broken out into quarters, as shown in the screenshot.


 For more information about Tiered Dates, see

Applying DataSet Columns to Your Chart

.
  |  |
|
 Date Output Format
  |
 Determines how dates appear in the chart. For more information, see

Adding Filters to Your Chart

.
  |
 —
  |
|
 Label Interval
  |
 The interval at which labels appear for items on the category scale when there are too many items to show. By default, when there are more labels than fit on the category scale, Domo automatically trims out enough labels to prevent label overlapping. However, you can specify the interval at which labels are trimmed. For example, if you wanted every third label to appear in your chart and all others to be trimmed, you would enter
 `3`
 in the
 **Label Interval**
 field. The example shows a chart in which the user set the
 **Label Interval**
 property to
 `8`
 , so a label appears for every eighth item in the chart.
  |

|
|
 Max Label Length
  |
 Determines the maximum number of characters that appear for each category label. This property does not work unless a value is also entered for
 **Max Rotated Label Length**
 . The example shows a chart in which the
 **Max Label Length**
 has been set to
 `5`
 .
  |

|
|
 Allow Label Rotation
  |
 Determines whether labels are rotated if necessary in most kinds of Line charts.
  |
 —
  |
|
 Max Rotated Label Length
  |
 Determines the maximum number of characters that appear when labels are rotated. This property does not work unless a
 **Max Label Length**
 value is specified.
  |
 —
  |
|
 Never Use Time Scale
  |
 Determines which type of time scale is used in supported chart types with time data. By default, when time data is used in supported charts, such as Line and Bar charts, Domo automatically makes it appear using a

date grain

appropriate for your data. This is shown in the first example at right, in which the timeline takes date data spanning several months and shows it by month. If there are periods with no data, gaps are shown accordingly in the timeline. If you check this box, however, date data appears as it does in your DataSet, using individual dates and applying the
 **Date Output Format**
 setting. This is shown in the second example at right, in which the time scale uses individual dates, as in the DataSet. If there are periods with no data, gaps are not shown for those periods in the timeline.
  |


 |
|
 Show Tiered or Extra Categories
  |
 In the event that your chart includes either

additional dimensions

, this option determines whether the extra category names appear above (default) or below the chart. In the example at right, the names appear below.
  |  |

"Trellis/Tiered Dates" properties
-----------------------------------


|
 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Show As
  |
 Lets you either turn on trellis categories or tiered dates in most chart types. When you turn on trellis categories, new fields in which you can drag and drop additional series are added above the chart preview. When you turn on tiered dates, multiple levels of dates are activated in your chart. Both of these features are discussed in

Applying DataSet Columns to Your Chart

.
  |
 —
  |
|
 Tiered Date Levels
  |
 Determines how many levels of dates are shown. You can have up to 3 levels of dates. For example, if the dates in your chart were represented by week and you selected
 **3 Levels**
 , the timeline would continue to show weekly data but the weeks would be broken out into monthly divisions, and the months would be broken out into quarters, as shown in the screenshot.


 For more information about tiered dates, see

Applying DataSet Columns to Your Chart

.
  |

|
|
 Divider Color
  |
 Lets you specify the color for the dividing lines in your trellis chart or tiered dates chart. In the example at right, the dividing lines have been set to blue-green.
  |

|
|
 Mid Word Title Wrap
  |
 Determines whether category name titles wrap in the middle of words and not just on spaces.
  |
 —
  |
|
 Show Tiered or Extra Categories
  |
 Determines whether the extra category names appear above (default) or below your trellis or tiered dates chart. In the example at right, the names appear below.
  |

|
|
 Maximum Bars
  |
 Sets the maximum bars to be displayed in each group. This can be used with the "Sort on Totals" property to create a Top 10 type chart.
  |  |

"Number Format" Properties
----------------------------

The properties in the following table are found in the
 **Number Format**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Currency Symbol
  |
 Refers to the symbol for currency numbers. The default currency symbol is "$." You must select
 **Currency**
 as your label format for this to work. For more information, see

Formatting Values in Your Chart

.
  |
 —
  |
|
 Currency Symbol Position
  |
 Determines whether a currency symbol appears before or after its value. The default currency symbol position is
 **Before**
 . You must select
 **Currency**
 as your label format for this to work. For more information, see

Formatting Values in Your Chart

.
  |
 —
  |
|
 Decimal Separator
  |
 Determines the symbol for separate decimal values. The default decimal separator is a period.
  |
 —
  |
|
 Thousands Separator
  |
 Determines the symbol for separate thousands in large numbers. The default thousands separator is a comma.
  |
 —
  |

"Scale Marker" Properties
---------------------------

The properties in the following table are found in the
 **Scale Marker**
 category in Chart Properties.


 Option
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 Text
  |
 Lets you specify text to replace the default word "GOAL" that normally appears above the top left corner of the chart when a scale marker has been set. If the graph contains a legend, an item for the scale marker is added to the legend with this text (unless you hide it by checking the
 **Scale Marker > Hide in Legend**
 box).


 The example shows a chart in which "MONTHLY TARGET" has been entered as the custom text.
  |

|
|
 Scale
  |
 In dual-scale graphs, lets you specify whether the goal in the graph is associated with the left or right scale.
  |
 —
  |
|
 Type
  |
 Lets you specify whether the scale marker consists of a single line, a range of values, or a set of quantiles.
  |
 —
  |
|
 Value Type
  |
 Lets you determine how the scale marker line is calculated. A range of options is available, such as minimum and maximum, average, standard deviation, and more. If you select
 **Manual**
 (the default), you enter the desired value in the
 **Value**
 field. Otherwise the value is calculated from the data in the graph.
  |
 —
  |
|
 Value
  |
 Lets you specify the value of your scale marker line when you have selected
 **Manual**
 (or
 **Default)**
 for
 **Value Type**
 . This option is only available when you select
 **Line**
 in the
 **Type**
 menu.
  |
 —
  |
|
 Percentile Value
  |
 Lets you calculate the value of your line based on a specified percentile value between 0 and 100. This option is available only when you select
 **Line**
 in the
 **Type**
 menu and
 **Percentile**
 in the
 **Value Type**
 menu.
  |
 —
  |
|
 Percentage Of
  |
 Lets you specify whether your percentage is derived from the maximum, minimum, average, or median value of the chart. This option is available only when you select
 **Line**
 in the
 **Type**
 menu and
 **Percentage**
 in the
 **Value Type**
 menu.
  |
 —
  |
|
 Percentage Value
  |
 Lets you specify the percentage value calculated from the maximum, minimum, average, or median value of the chart (as selected in the
 **Percentage Of**
 field). This option is available only when you select
 **Line**
 in the
 **Type**
 menu and
 **Percentage**
 in the
 **Value Type**
 menu.
  |
 —
  |
|
 Standard Deviations
  |
 Lets you calculate your scale marker value based on a specified number of standard deviations from the mean. If you enter a positive value, your scale marker value will be above the mean. If you enter a negative value, your scale marker value will be below the mean.
  |
 —
  |
|
 Color
  |
 Lets you specify the color of your scale marker line, together with the color of the goal value that appears above the top left corner of the graph. This option is only available when you select
 **Line**
 in the
 **Type**
 menu.


 In the example, the user has selected a red-orange color for the line and value.
  |

|
|
 Width
  |
 Lets you specify the width of your scale marker line—either
 **Thin**
 (the default),
 **Medium**
 , and
 **Thick**
 . This option is only available when you select
 **Line**
 in the
 **Type**
 menu.


 In the example, the user has selected
 **Thick**
 for this option.
  |

|
|
 Style
  |
 Lets you select whether your scale marker line appears solid (default) or dashed. This option is only available when you select
 **Line**
 in the
 **Type**
 menu.


 In the example, the user has selected
 **Dashed**
 for this option.
  |

|
|
 Upper Value Type
  |
 Lets you determine how the upper boundary of your scale marker range is calculated. A range of options is available, such as minimum and maximum, average, standard deviation, and more. If you select
 **Manual**
 (the default), you enter the desired value in the
 **Upper Value**
 field. Otherwise the value is calculated from the data in the graph.
  |
 —
  |
|
 Upper Value
  |
 Lets you select the value for the upper line in your scale marker range. This option is only available when you select
 **Range**
 in the
 **Type**
 menu.


 |
 —
  |
|
 Upper Percentile Value
  |
 Lets you calculate the value of your range's upper boundary based on a specified percentile value between 0 and 100. This option is available only when you select
 **Range**
 in the
 **Type**
 menu and
 **Percentile**
 in the
 **Upper**
**Value Type**
 menu.
  |
 —
  |
|
 Upper Percentage Of
  |
 Lets you specify whether the percentage for your range's upper boundary is derived from the maximum, minimum, average, or median value of the chart. This option is available only when you select
 **Range**
 in the
 **Type**
 menu and
 **Percentage**
 in the
 **Upper**
**Value Type**
 menu.
  |
 —
  |
|
 Upper Percentage Value
  |
 Lets you specify the percentage value for your range's upper boundary calculated from the maximum, minimum, average, or median value of the chart (as selected in the
 **Upper**
**Percentage Of**
 field). This option is available only when you select
 **Range**
 in the
 **Type**
 menu and
 **Percentage**
 in the
 **Upper**
**Value Type**
 menu.
  |
 —
  |
|
 Upper Standard Deviations
  |
 Lets you calculate your upper range boundary's value based on a specified number of standard deviations from the mean. If you enter a positive value, your scale marker value will be above the mean. If you enter a negative value, your scale marker value will be below the mean.
  |
 —
  |
|
 Lower Value Type
  |
 Lets you determine how the lower boundary of your scale marker range is calculated. A range of options is available, such as minimum and maximum, average, standard deviation, and more. If you select
 **Manual**
 (the default), you enter the desired value in the
 **Lower Value**
 fields. Otherwise the value is calculated from the data in the graph.
  |
 —
  |
|
 Lower Value
  |
 Lets you select the value for the lower boundary in your scale marker range. This option is only available when you select
 **Range**
 in the
 **Type**
 menu.
  |
 —
  |
|
 Lower Percentile Value
  |
 Lets you calculate the value of your range's lower boundary based on a specified percentile value between 0 and 100. This option is available only when you select
 **Range**
 in the
 **Type**
 menu and
 **Percentile**
 in the
 **Lower**
**Value Type**
 menu.
  |
 —
  |
|
 Lower Percentage Of
  |
 Lets you specify whether the percentage for your range's lower boundary is derived from the maximum, minimum, average, or median value of the chart. This option is available only when you select
 **Range**
 in the
 **Type**
 menu and
 **Percentage**
 in the
 **Lower**
**Value Type**
 menu.
  |
 —
  |
|
 Lower Percentage Value
  |
 Lets you specify the percentage value for your range's lower boundary calculated from the maximum, minimum, average, or median value of the chart (as selected in the
 **Lower**
**Percentage Of**
 field). This option is available only when you select
 **Range**
 in the
 **Type**
 menu and
 **Percentage**
 in the
 **Lower**
**Value Type**
 menu.
  |
 —
  |
|
 Lower Standard Deviations
  |
 Lets you calculate your lower range boundary's value based on a specified number of standard deviations from the mean. If you enter a positive value, your scale marker value will be above the mean. If you enter a negative value, your scale marker value will be below the mean.
  |
 —
  |
|
 Fill Color
  |
 Lets you select the fill color for your scale marker range. This option is only available when you select
 **Range**
 in the
 **Type**
 menu.
  |
 —
  |
|
 Fill Transparency Percent
  |
 Lets you enter an transparency percentage for the fill in your scale marker range. This should be a value between 0 and 100. The higher the value, the more transparent the fill. This option is only available when you select
 **Range**
 in the
 **Type**
 menu.
  |
 —
  |
|
 Border Color
  |
 Lets you select the border color for your scale marker range. This option is only available when you select
 **Range**
 in the
 **Type**
 menu.
  |
 —
  |
|
 Border Style
  |
 Lets you select whether the borders of your scale marker range appear solid (default) or dashed. This option is only available when you select
 **Range**
 in the
 **Type**
 menu.
  |
 —
  |
|
 Number of Quantiles
  |
 Lets you specify the number of quantiles that appear in your chart. You can specify any number between 3 and 10. This option is only available when you select
 **Quantiles**
 in the
 **Type**
 menu.


 The example shows a Line chart in which 6 quantiles (sextiles) have been added.
  |

|
|
 Quantile Line Color
  |
 Lets you specify the color for your quantiles. The default is gray. This option is only available when you select
 **Quantiles**
 in the
 **Type**
 menu.
  |
 —
  |
|
 Quantile Line Style
  |
 Lets you specify whether your quantiles are solid (default) or dashed. This option is only available when you select
 **Quantiles**
 in the
 **Type**
 menu.
  |
 —
  |
|
 Quantile Fill Color
  |
 Lets you select a fill color for the spaces between your quantiles. If you select
 **Default**
 , no fill color is applied. This option is only available when you select
 **Quantiles**
 in the
 **Type**
 menu.
  |

|
|
 Quantile Fill Transparency Percent Start
  |
 Lets you select the transparency for the upper portion of your quantiles. You can enter a value from 0 (totally opaque) to 100 (totally transparent). This option is only available when you select
 **Quantiles**
 in the
 **Type**
 menu.


 In the example at right, this property has been set to

10

.
  |

|
|
 Quantile Fill Transparency Percent End
  |
 Lets you select the transparency for the lower portion of your quantiles. You can enter a value from 0 (totally opaque) to 100 (totally transparent). This option is only available when you select
 **Quantiles**
 in the
 **Type**
 menu.


 In the example at right, this property has been set to

10

.
  |

|
|
 Decimal Places
  |
 Lets you specify the number of decimal places in the goal value, both in the title as well as in the hover text.
  |
 —
  |
|
 Value Abbreviation
  |
 Lets you specify whether values are abbreviated based on the scale marker abbreviation (default) or 3 significant digits.
  |
 —
  |
|
 Hide in Legend
  |
 Lets you prevent a scale marker item from being added to the legend (if the graph contains a legend).
  |
 —
  |
|
 Hide Title
  |
 Hides the goal text and value that normally appear over the top left corner of the graph.
  |
 —
  |


 "Data Table" Properties
-------------------------

The properties in the following table are found in the
 **Data Table**
 category in Chart Properties.


 Option
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 Show Data Table
  |
 Allows you to include a data table under your chart. This data table appears in the Details view of the chart (though
 *not*
 in the page view). This property is available for most vertical chart types.


 The example at right shows a chart in which the data table option has been enabled.
  |

|
|
 Auto Abbreviate Values
  |
 Allows you to abbreviate values in the data table.
  |
 —
  |

"Full Size Settings" Properties
---------------------------------


|  |  |  |
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

