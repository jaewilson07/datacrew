

Intro
-------

Data labels and hovers in charts have the same purpose—to show the value of a chart element such as a bar, bubble, etc. However, they differ in the way they present this information. Data labels, when turned on, always appear for every element in a chart. This makes it easy for viewers to see information quickly but may also cause a chart to appear cluttered. Hovers, by contrast, appear only when a viewer mouses over a chart element. Using hovers rather than data labels may make identifying exact values more time-consuming; however, this also makes a chart look more clean and professional.


 By default, most charts use hovers, not data labels, to show the most important information for each chart element. You can change this default behavior by doing any of the following:

 Turning on data labels by entering the desired label text in
 **Data Label Settings > Text**
 in
 **Chart Properties**
 . This causes data labels to always appear. Default hover text also appears when viewers mouse over chart elements.
* Changing the default hover text by specifying your own text in the
 **Hover Text Settings > Text**
 property in
 **Chart Properties**
 .
* Including both data labels
 *and*
 customized hovers by specifying both data label and hover text in
 **Chart Properties**
 .

Some chart types have different behavior than that explained above. These differences will be explained in continuation.

*Video - Applying Data and Hover Labels**

Turning on and customizing data labels
----------------------------------------

In most chart types that allow data labels, you turn on data labels by entering the desired data label text
 **Data Label Settings > Text**
 in Chart Properties.


 There are a number of options you can use to customize data labels. These are also found in
 **Chart Properties > Data Label Settings**
 . These options do
 *not*
 work unless you enter text in
 **Data Label Settings > Text.**
 (One exception to this is Sankey charts, in which data labels are on by default unless you hide them.)


**To turn on and customize data labels for most chart types,**

. Open the Analyzer for the chart you want to edit.
2. In
 **Chart Properties**
 , click
 **Data Label Settings**
 .
3. (Optional) Enter the desired text in the
 **Text**
 field.


 You can insert macros here by clicking the "+" button and selecting the desired macro. For more information about macros, see

Data label macros

.
4. (Optional) Set the other options in
 **Data Label Settings**
 as desired. These options are described in continuation.


###
 Data label options for charts

The following table lists and describes all of the options in
 **Chart Properties > Data Label Settings**
 available for charts. You can click a thumbnail image to see a larger image.


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
 Specifies text for the data labels. This property is usually the "on switch" for data labels—you must specify text for them to appear. For Sankey charts, data labels are on by default unless you use the
 **Hide**
 option.


 You can insert macros here by clicking the "+" button and selecting the desired macro. For more information about macros, see

Data label macros

.
  |
 —
  |
|
 Hide
  |
 Hides/shows data labels in a Sankey chart.
  |
 —
  |
|
 Show One Label
  |
 Determines whether a single label is shown for an entire stack in a vertical stacked bar chart. By default this single label represents the topmost data item in a stack, but you can change the represented data item by entering the desired macro in the
 **Text**
 field. For example, to implement a single label that represents the total value of a stack, you would enter

%\_CATEGORY\_TOTAL

in the
 **Text**
 field. This is the data label that is shown in the example at right.
  |

|
|
 Show
  |
 Available for pareto charts. This property determines whether data labels are shown parallel to the bars in the chart or rotated 90 degrees.
  |
 —
  |
|
 Position
  |
 Determines where data labels are shown in relation to their corresponding data items. The example shows a chart in which the data label position for a vertical bar chart has been set to
 **Inside Top**
 .
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

Left

,

Center

, or

Right

. The example chart includes multi-line data labels that have been left-justified (by selecting

Left

for the
 **Justification**
 property).
  |

|
|
 Show when zero
  |
 Determines whether data labels are shown for chart elements with a value of 0.
  |
 —
  |
|
 Use scale format
  |
 Determines whether data labels use the same formatting that has been set for the value scale.
  |
 —
  |
|
 Use scale abbreviation
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
 Determines whether data labels are still shown when they overlap. For most chart types, data labels will not overlap unless you select this option. Recommended only for charts with a small number of series.
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
|
 Font Size
  |
 Sets the font size for data labels in Sankey charts. The default size is
 **Medium**
 .
  |
 —
  |
|
 Text Color
  |
 Determines the text color for data labels. The default is
 **Black**
 . If you select
 **Complementary**
 (shown in the example at right), colors are determined automatically based on the node color.
  |

|


###
 Data label options for maps

The following table lists and describes all of the options in
 **Chart Properties > Data Label Settings**
 available for maps. (Some map types, such as latitude-longitude maps, do not have data labels.) You can click a thumbnail image to see a larger image.


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
 Specifies text for the data labels. This property is the "on switch" for data labels—you must specify text for them to appear.


 You can insert macros here by clicking the "+" button and selecting the desired macro. For more information about macros, see

Data label macros

.
  |
 —
  |
|
 Font Size
  |
 Allows you to increase or decrease the data label font size. The "Default" font size falls between the largest and second-smallest font sizes. For more information, see

Changing the Font Size in Your Chart

.
  |
 —
  |
|
 Text Color
  |
 Lets you determine the text color for your map data labels. If you select "Default," the color will be automatically determined based on the background color. This is shown in the example at right, in which the data labels on darker areas appear white and those on lighter areas appear dark red.
  |

|
|
 Value Abbreviation
  |
 Determines whether data label values are abbreviated (the default being 3 significant digits) or not.
  |
 —
  |
|
 Fill
  |
 Lets you add a colored fill to your map data labels. The example at right shows a chart in which a pale blue fill color with 60% transparency has been added.
  |

|
|
 Fill Color
  |
 Lets you specify the color for the fill in your map data labels. This property is only available when you check the
 **Fill**
 box.
  |
 —
  |
|
 Fill Transparency Percent
  |
 Lets you specify the fill transparency for map data labels. You can specify any number between 0 and 100, in which 0 is completely opaque and 100 is completely transparent. This property is only available when you check the
 **Fill**
 box.
  |
 —
  |

Data label macros
-------------------

Domo lets you add macros to data labels to reference different data items. A variety of macros is available. You can open a list of selectable macros by clicking the "+ button in the
 **Text**
 field.


 For example, if you wanted all data labels in a vertical bar chart to show the category name, followed by a colon and space, followed by the data item value, you would 1) select the
 **Category**
**Name**
 macro from the dropdown, 2) add a colon and a space after the

%\_CATEGORY\_NAME

text in the field, and 3) select the
 **Value**
 macro from the dropdown. The data labels would then look similar to the ones in the following chart:

Available macros depend upon the selected chart type.

###
 Data label macros for most charts

Data labels for most types of charts, including bar and line charts, area charts, and so on, can include the following macros:


 Macro
  |
 Description
  |
| --- | --- |
|
 Category Average
  |
 The average of all series in each category in a stacked bar chart.
  |
|
 Category Name
  |
 The name of the category that the data item belongs to.
  |
|
 Category Number
  |
 The number of the category that the data item belongs to.
  |
|
 Category Total
  |
 The sum of all the data values in the category that the data item belongs to.
  |
|
 Graph Total
  |
 The sum of all the values in the chart.
  |
|
 Percent of Category
  |
 The data value represented as a percentage of the sum of all the data values in the category.
  |
|
 Percent of Total
  |
 The data value represented as a percentage of the sum of all the data values in the chart.
  |
|
 Percent of Previous
  |
 The data value represented as a percentage of the sum of the previous category in a funnel chart.
  |
|
 Series Name
  |
 The name of the data series that the item belongs to.
  |
|
 Series Number
  |
 The number of the data series that the item belongs to.
  |
|
 Tooltip Field 1-3
  |
 Allow you to include additional data in your chart by referencing columns you have dragged into the
 **Tooltip**
 fields above the chart (which you can toggle on or off by clicking
 **Tooltips**
 in the icon bar at the top of the Analyzer window). For more information, see

Referencing tooltip fields

.
  |
|
 Value
  |
 The value of the data item.
  |

For more information about value, category, and series data, see

Understanding Chart Data

.

###
 Data label macros for pie and donut charts

You can customize the label text that appears in slices in pie and donut charts. You do this in Chart Properties, in the
 **Data Label Settings > Text**
 property. You can use any of the following macros:


 Macro
  |
 Description
  |
| --- | --- |
|
 Name
  |
 The name of the data item for a given slice.
  |
|
 Value
  |
 The value of the data item.
  |
|
 Percent of Total
  |
 The data value represented as a percentage of the sum of all the data values in the chart.
  |

In the example screenshot below, the user has entered the following text for this property:

%NAME: %\_PERCENT\_OF\_TOTAL

###
 Data label macros for maps

You can customize the label text that appears in slices in most map types (with the exception of a few types such as latitude-longitude maps). You do this in Chart Properties, in the
 **Data Label Settings > Text**
 property. You can use any of the following macros:


 Macro
  |
 Description
  |
| --- | --- |
|
 Long Name
  |
 The full name of the region (which is the name used by default).
  |
|
 Name
  |
 An abbreviated designation for the region, usually a two-letter state or country abbreviation (such "MA" for Massachusetts).
  |
|
 Range Name
  |
 The name of the range (if range names have been specified using the
 **Ranges**
 chart properties).
  |
|
 Tooltip Field 1-3
  |
 Allow you to include additional data in your chart by referencing columns you have dragged into the
 **Tooltip**
 fields above the chart (which you can toggle on or off by clicking
 **Tooltips**
 in the icon bar at the top of the Analyzer window). For more information, see

Referencing tooltip fields

.
  |
|
 Value
  |
 The value of the associated region.
  |
|
 Code
  |
 (Japan map only) The name of the Japanese prefecture in Japanese characters.
  |


####
 Data label macros for tree maps

By default, data labels in tree maps show only the category names for each data item. You can customize these labels to show the information you want. You do this in the
 **Label Settings**
**> Text**
 field.


 You can use any of the following macros to change the default label text in tree maps:


 Macro
  |
 Description
  |
| --- | --- |
|
 Category Number
  |
 The number of the category that the item belongs to.
  |
|
 Graph Total
  |
 The total of all data values in the tree map.
  |
|
 Name
  |
 The category name of the data item.
  |
|
 Percent of Total
  |
 The data value represented as a percentage of the sum of all the data values in the tree map.
  |
|
 Series Number
  |
 The number of the data series that the item belongs to.
  |
|
 Value
  |
 The value of the data item.
  |

For example, if you wanted each square in your tree map to show the data item name followed by that item's percentage of all items in the tree map, you would 1) select the
 **Name**
 macro from the dropdown in
 **Label Settings > Text**
 , 2) add a colon and a space after the

%\_NAME

text in the field, and 3) select the
 **Percent of Total**
 macro from the dropdown. The following screenshot shows an example tree map that depicts the percentage of each U.S. state's population in the country.


####
 Data label macros for Gantt charts

By default, data labels in Gantt and percent complete Gantt charts show category names, item names, and date ranges, in that order. For example: "Sprint 1: Write PRD: 2013-02-05 - 2013-02-16." You can replace this default text with your own custom text.


 You can use any of the following macros to change the default label text in Gantt charts :


 Macro
  |
 Description
  |
| --- | --- |
|
 Category
  |
 The category for the data item. Only available if you break up the chart data by dropping a column into the
 **Category**
 field above the chart.
  |
|
 End Date
  |
 The end date of the data item.
  |
|
 Item
  |
 The name of the data item.
  |
|
 Percent Complete
  |
 The percentage of completion of the data item. (Available in Gantt percent complete charts only.)
  |
|
 Start Date
  |
 The start date of the data item.
  |
|
 Tooltip Field 1-3
  |
 Allow you to include additional data in your Gantt chart by referencing columns you have dragged into the
 **Tooltip**
 fields above the chart (which you can toggle on or off by clicking
 **Tooltips**
 in the icon bar at the top of the Analyzer window). For more information, see

Referencing tooltip fields

.
  |


####
 Data label macros for Sankey charts

By default, data labels in Sankey charts show the names of the nodes. You can replace this default text with your own custom text.


 You can use any of the following macros to change the default label text in Sankey charts :


 Macro
  |
 Description
  |
| --- | --- |
|
 Name
  |
 The name of the node.
  |
|
 Percent Value
  |
 The value of this node as a percentage of the total of all the nodes on the same vertical axis. (So if the node was an input node on the left side of the chart, the percent value would be the percentage of the total of all nodes on the left side of the chart.)
  |
|
 Value
  |
 The actual value for the node.
  |

Customizing hover text
------------------------

In most chart types, hover text always appears when you mouse over chart elements and cannot be turned off. However, you can customize the text to appear the way you want. A variety of options for customizing hover text is available in
 **Chart Properties > Hover Text Settings**
 .


 Some chart types have different options for hover text. For example, in maps, hover labels appear only in the card view, not the Details view. Maps also have a different set of macros for specifying hover text, as do tree maps and Gantt charts. These chart types are discussed later.


**To customize hover text for most chart types,**

. Open the Analyzer for the chart you want to edit.
2. In
 **Chart Properties**
 , click
 **Hover Text Settings**
 .
3. Enter the desired text in the
 **Text**
 field.


 You can insert macros here by clicking the "+" button and selecting the desired macro. For more information about macros, see

Hover text macros

.
4. (Optional) Set the other options in
 **Hover Text Settings**
 as desired. These options are described in continuation.


###
 Hover text options


####
 Hover text options for charts

The following table lists and describes all of the options in the
 **Chart Properties > Hover Text Settings**
 for most chart types.


 Option
  |
 Description
  |
| --- | --- |
|
 Text
  |
 Lets you set the text that appears in chart hovers. You can insert macros here by clicking the "+" button and selecting the desired macro. For more information about macros, see

Hover text macros

.
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
|
 Use scale abbreviation
  |
 Determines whether hovers use the same scale abbreviation that has been set for the value scale.
  |
|
 Hover Format
  |
 Determines whether values in hovers have currency or percent symbols affixed. This property is overridden by the
 **Use scale format**
 property.
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
|
 Decimal Places
  |
 Determines the number of decimal places in values in hovers. This property is overridden by the
 **Use scale format**
 property.
  |
|
 Negative Numbers
  |
 Determines the format for negative numbers. If you select
 **-100**
 , all negative numbers have a minus symbol affixed. If you select
 **(100)**
 , all negative numbers are enclosed in parentheses. This property is overridden by the
 **Use scale format**
 property.
  |


####
 Hover text options for maps

The properties in the following table are found in the
 **Hover Text**
 category in Chart Properties for maps.


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
 Lets you set the text that appears in map hovers. A variety of macros for showing map values in your hovers is available.
  |
 —
  |
|
 Always Show Over Map
  |
 Specifies whether hover text specified using the
 **Hover Text**
 option is turned on for your chart.
  |
 —
  |

Hover text macros
-------------------

Domo supports macros you can use in hover text to reference different data items. Available macros differ between chart types.

###
 Hover text macros for most chart types

Hover text macros for most chart types include the following:


 Macro
  |
 Description
  |
| --- | --- |
|
 Category Name
  |
 The name of the category that the data item belongs to.
  |
|
 Category Number
  |
 The number of the category that the data item belongs to.
  |
|
 Category Total
  |
 The sum of all the data values in the category that the data item belongs to.
  |
|
 Graph Total
  |
 The sum of all the values in the chart.
  |
|
 Percent of Category
  |
 The data value represented as a percentage of the sum of all the data values in the category.
  |
|
 Percent of Total
  |
 The data value represented as a percentage of the sum of all the data values in the chart.
  |
|
 Series Name
  |
 The name of the data series that the item belongs to.
  |
|
 Series Number
  |
 The number of the data series that the item belongs to.
  |
|
 Tooltip Field 1-3
  |
 Allow you to include additional data in your chart by referencing columns you have dragged into the
 **Tooltip**
 fields above the chart (which you can toggle on or off by clicking
 **Tooltips**
 in the icon bar at the top of the Analyzer window). For more information, see

Referencing tooltip fields

.
  |
|
 Value
  |
 The value of the data item.
  |

For example, if you wanted all hovers in a vertical bar chart to show the category name, followed by a colon, followed by the data item value, you would 1) select the
 **Category**
**Name**
 macro from the dropdown, 2) add a colon and a space after the

%\_CATEGORY\_NAME

text in the field, and 3) select the
 **Value**
 macro from the dropdown.

###
 Hover text macros for Gantt charts

By default, hover labels in Gantt and percent complete Gantt charts show category names, item names, and date ranges, in that order. For example: "Sprint 1: Write PRD: 2013-02-05 - 2013-02-16." You can replace this default hover text with your own custom text.


 You can use any of the following macros to change the default hover text in Gantt charts:


 Macro
  |
 Description
  |
| --- | --- |
|
 Category
  |
 The category for the data item. Only available if you break up the chart data by dropping a column into the
 **Category**
 field above the chart.
  |
|
 End Date
  |
 The end date of the data item.
  |
|
 Item
  |
 The name of the data item.
  |
|
 Percent Complete
  |
 The percentage of completion of the data item. (Available in Gantt Percent Complete charts only.)
  |
|
 Start Date
  |
 The start date of the data item.
  |
|
 Tooltip Field 1-3
  |
 Allow you to include additional data in your Gantt chart by referencing columns you have dragged into the
 **Tooltip**
 fields above the chart (which you can toggle on or off by clicking
 **Tooltips**
 in the icon bar at the top of the Analyzer window). For more information, see

Referencing tooltip fields

.
  |

For example, if you wanted each bar in your Gantt percent complete chart to show the words

X% complete

, where "X" is the percentage of completion, you would 1) select the
 **Percent Complete**
 macro from the dropdown, and 2) add the word "complete" after the

%\_PERCENT\_COMPLETE%

text. The following screenshot shows an example Gantt chart in which this replacement text has been used:


####
 Hover text macros for Sankey charts

In Sankey charts, hover text can be customized independently on the nodes, the connector lines, and the entry and exit indicators. For more information about these components, see

Sankey Chart

.

####
 Node hover text

By default, the hover text on nodes in a Sankey chart appears as follows:


`[Node name]


 Value: [Node value]`


 You can customize this default text using any of the following macros:


 Macro
  |
 Description
  |
| --- | --- |
|
 In Count
  |
 The number of input lines entering this node.
  |
|
 In Value
  |
 The total value of all of the input lines entering this node.
  |
|
 Maximum Value
  |
 The highest single value of all of the input lines entering this node.
  |
|
 Name
  |
 The name of the node.
  |
|
 Out Count
  |
 The number of output lines exiting from this node.
  |
|
 Out Value
  |
 The total value of all of the output lines exiting from this node.
  |


#####
 Flow hover text

By default, the hover text for connector lines in a Sankey chart appears as follows:


`["From" node name] -> ["To" node name]: [connector line value]`


 You can customize this default text using any of the following macros:


 Macro
  |
 Description
  |
| --- | --- |
|
 From Name
  |
 The "From" node for this line (i.e. the node on the left side of the line).
  |
|
 Percent of From
  |
 The value of this line as a percentage of all lines coming from the same "From" node.
  |
|
 Percent of To
  |
 The value of this line as a percentage of all lines feeding into the same "To" node.
  |
|
 To Name
  |
 The "To" node for this line (i.e. the node the line feeds into on the right side).
  |
|
 Value
  |
 The actual value of this line.
  |


#####
 Entry and exit indicator hover text

By default, the hover text for entry and exit indicators in a Sankey chart shows the actual difference between the input and output values. For example, if $500 enters a node and $800 comes out, the hover text for the entry indicator would read

$300

.


 You can customize this default text using any of the following macros:


 Macro
  |
 Description
  |
| --- | --- |
|
 Percent of Total
  |
 The value of the difference between the input and output values as a percentage of the total output value for the node.
  |
|
 Value
  |
 The actual value of the difference between the input and output values for the node.
  |

Creating multi-line labels
----------------------------

You can enter line breaks in data and legend labels by specifying

\\n

in the appropriate field.


**To enter a line break in a label**
 ,

. Open the chart you want to edit in Analyzer.
2. In
 **Chart Properties > Data Label Settings > Text,**
 append

\\n

to the label text you want to format.

For example, if you wanted to format the data labels in the preceding screenshot to look like the following...

...you would enter the following in
 **Chart Properties > Data Label Settings > Text**
 :

%\_CATEGORY\_NAME:\\n%\_VALUE

.


 By default, multi-line data labels are center justified. You can change the justification by clicking
 **Chart Properties > Data Label Settings**
 , then selecting the
 **Justification**
 option you want.


 Referencing tooltip fields
----------------------------

You can use macros in data labels and hovers to reference columns you have dropped into the
 **Tooltip**
 fields above the chart preview. You can use up to 3 such fields. This is an excellent way to show data for columns that are not used to build the chart. In the following example, the chart creator has built a standard bar chart that shows sales by order date. He also wants to show the data for profit, discount percentage, and shipping costs. One way to do this would be to add those columns as series, as discussed in

Applying DataSet Columns to Your Chart

. However, in this case the chart creator decides he wants to keep the chart as simple to read as possible. He decides to add the columns to the
 **Tooltip**
 fields and then reference them using the
 **Tooltip 1-3**
 macros available in the dropdown in
 **Chart Properties > Hover Text Settings > Text**
 . So the text in his
 **Text**
 field would appear as follows:


`SALES: %_VALUE \\n PROFIT: %_TOOLTIP1 \\n DISCOUNT: %_TOOLTIP2 \\n SHIPPING COST: %_TOOLTIP3`


 He also sets the format and decimal places of the "Sales" value in
 **Chart Properties > Hover Text Settings**
 and the formats and decimal places of the other values in the
 **Format**
 dropdowns in the respective fields above the chart preview (since changes to the
 **Hover Text Settings**
 affect
 *only*
 the primary value column used to build the chart).


 Now, whenever a user hovers over any of the bars in the chart, a hover label appears displaying all of the information he wanted, as shown in the screenshot:

*To build data labels or hover labels referencing tooltip fields,**

. Open the chart you want to edit in Analyzer.
2. (Conditional) If the
 **Tooltips**
 fields are not appearing above your chart preview, click
 **Tooltips**
 in the icon bar to toggle them on.
3. Drag a column you want to reference into
 **Tooltip Field 1**
 , above the chart preview.
4. (Optional) If you want to reference more than one tooltip field, drag the desired columns into
 **Tooltip Field 2**
 and
 **Tooltip Field 3**
 .
5. Open
 **Chart Properties > Data Label Settings**
 or
 **Chart Properties > Hover Text Settings**
 .
6. In the
 **Text**
 field, create the text you want to appear in the data labels or hover labels, using the
 **Tooltip 1-3**
 macros from the dropdown menu and any other macros you think are appropriate.


