

Intro
-------

A gauge is a simple chart that indicates progress towards meeting a target. A multi-value gauge displays the current value of your as DataSet as a numeral, along with the degree of change for the gauge data, whether positive or negative. You can aggregate the current value of the gauge using any of a variety of aggregation functions (sum, average, minimum or maximum value, etc.). You can also show the degree of change as a percentage or a value. In addition, a number of other customization options are available.


 This chart type is useful when you want to see a change in value quickly, without having to interpret bars, lines, etc. This gauge is similar to a

single value gauge

, which displays the current value without the degree of change indicator. Other gauge types in Domo include

filled gauges

,

progress bar gauges

,

radial gauges

,

face gauges

, and

comparative fill gauges

.


 Powering multi-value gauges
-----------------------------

A multi-value gauge requires only one column or row of data in your DataSet, which should contain the values. You can also include an optional column for grouping your data. In most cases, this will be a date column; this way, your change value will reflect change in the data over time. Finally, you can apply a column of target values to the gauge by clicking the
 **Tooltips**
 icon at the top of the screen then dragging the desired column into the
 **Target Values**
 field that opens. Target values are not reflected in the gauge itself but may be referenced using certain chart properties, which are discussed later in this article.


 For information about value, category, and series data, see

Understanding Chart Data

.


 For more information about aggregating data, see

Aggregating your data

.


 For more information about
 **Chart Properties**
 , see

Chart Properties

.


 In the Analyzer, you choose the columns containing the data for your multi-value gauge. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

KPI Card Building Part 2: The Analyzer

.


 The following graphic shows you how the data from the category and value columns in a typical column-based spreadsheet is converted into a multi-value gauge:

Customizing multi-value gauges
--------------------------------

You can customize the appearance of a multi-value gauge by editing its
 **Chart Properties**
 . For information about all chart properties, see

Setting Properties for Gauges

.

Property

|

Description

|

Example

|
|

General > Layout

|


 Lets you one of a number of different layouts for the values in your gauge. (
 **Split Right**
 is the default.) At right, you can see an example of each layout.


 Note that for the
 **Domo Summary 1**
 and

*Domo Summary 2**
 layouts, the date grain elements (e.g. "by Day") only appear if you turn them on using the
 **Date Grain Options > Show**
 option.

|


 Domo Summary 1

Domo Summary 2


 Horizontal

Split Right

Split

Split Left

Center Vertical

|
|

General > Sizing

|

Lets you select a size option for gauge elements.
 **Scale to Fit**
 , the default option, fills the card space with the selected elements. All fixed size options sets elements to different sizes, relative to other elements. Fixes sizes allow for consistency between cards but do not check for overlapping text.

|

—

|
|

General > Vertical Alignment

|

Lets you determine the vertical alignment for the elements within the gauge.
 **Middle**
 is the default.

|

—

|
|

Title Options > Text

|

Lets you add a title to your gauge. The title text actually appears within the content area of the gauge (so it is separate from the card name). The title is incorporated into the layout you have selected in
 **General > Layout**
 . In the example, it is used with the
 **Center Vertical**
 layout.

|

|
|

Title Options > Color

|

Lets you set the color for your title. You can choose colors from a color picker, enter a hexadecimal value, or change the opacity using a slider. This option is only available when text has been entered into the
 **Title Options > Text**
 field.

|

|
|

Title Options > Style

|


 Lets you choose the style for your title. You can choose bold, italic, or bold with italic. This option is only available when text has been entered into the
 **Title Options > Text**
 field.


 In the example, the
 **Bold Italic**
 style is used.


 |

|
|

Title Options > Size

|


 Lets you set the size of your title in relation to the other text in the gauge. A variety of sizes is available.
 **X-Small**
 is the default.


 In the example, the
 **X-Large**
 size is used.


 |

|
|

Value Options > Hide

|

Lets you hide the value of the gauge. This is useful when you
 *only*
 want your users to see the degree of change rather than a specific value.

|

|
|

Value Options > Value

|


 Lets you specify the value for the gauge. A variety of calculations are available for determining the value:

  |  |
| --- | --- |
|

Last Value

|

The last value in the DataSet is used. This is the default option.

|
|

First Value

|

The first value in the chart is used.

|
|

Sum

|

The total of all of the values in the chart is used.

|
|

Average

|

The average of all of the values in the chart is used.

|
|

Minimum

|

The lowest value out of all values in the chart is used.

|
|

Maximum

|

The highest value out of all values in the chart is used.

|
|

Count

|

The number of individual values in the chart is used.

|

|

—

|
|

Value Options > Size

|


 Lets you set the size of the gauge value in relation to the other text in the gauge. A variety of sizes is available.
 **Medium**
 is the default.


 |

—

|
|

Value Options > Color

|


 Lets you set the color for your gauge value. You can choose colors from a color picker, enter a hexadecimal value, or change the opacity using a slider.


 In the example, the value has been set to blue.


 |

|
|

Value Options > Use Change Color

|

Lets you dynamically match the color of the gauge value to that of the change value. If another color has been selected for the gauge value, it will be overridden by the change value color.

|

—

|
|

Change Value Options > Hide

|

Lets you hide the change value of the gauge. This is useful when you
 *only*
 want your users to see the specific value rather than the degree of change.

|

|
|

Change Value Options > Value

|

Lets you specify whether the degree of change in your chart is represented as a percentage (default) or a change in the specific value.

|

—

|
|

Change Value Options > Data

|


 Determines how the degree of change in the gauge is calculated. A variety of calculations are available for determining the degree of change:

  |  |
| --- | --- |
|

First and Last Values

|

The difference between the first and last values in your DataSet is used. This is the default setting.

|
|

Last 2 Values

|

The difference between the last two values in your DataSet is used.

|
|

Last and X Periods Ago

|

The difference between the last value and the specified number of date grain periods as determined from your DataSet. For example, if your DataSet was broken down by week, and you entered
 **3**
 in the
 **Periods Ago**
 field, your change value would be the difference between the last value in the DataSet and the value for three weeks ago.

|
|

Last Target Value and Last Value

|

The difference between the last value in your
 **Gauge Values**
 column and the last value in your
 **Target Values**
 column. Note that the field for applying a target values column appears only when you click
 **Tooltips**
 in the toolbar at the top of Analyzer.

|
|

Penultimate Target Value and Penultimate Value

|

The difference between the second-to-last value in your
 **Gauge Values**
 column and the second-to-last value in your
 **Target Values**
 column. Note that the field for applying a target values column appears only when you click
 **Tooltips**
 in the toolbar at the top of Analyzer.

|

|

—

|
|

Change Value Options > Periods Ago

|


 Lets you specify the number of past date grain periods to use in your calculation when
 **Last and X Periods Ago**
 is selected in the
 **Change Value Options > Data**
 menu.


 For example, if your DataSet was broken down by week, and you entered
 **3**
 in the
 **Periods Ago**
 field, your change value would be the difference between the last value in the DataSet and the value for three weeks ago.


 |

—


 |
|

Change Value Options > Size

|

Lets you set the size of the change value in relation to the other text in the gauge. A variety of sizes is available.
 **Small**
 is the default.

|

—


 |
|

Change Value Options > Hover Text

|

Lets you specify the hover text that appears when a user mouses over the change value in the gauge. A variety of replacement macros is available. For more information, see

Formatting Data Label and Hover Text in Your Chart

.

|

—


 |
|

Change Value Options > Direction Indicator

|

Specifies whether the symbol used to represent change in the change value is an arrow (default), a curved arrow, or a triangle. Examples of all three of these are shown at right.

|

|
|

Change Value Options > Indicator Position

|

Lets you specify whether the change indicator symbol next to your gauge's change value appears before the value (the default) or after (which is shown in the example at right).

|

|
|

Change Value Options > Color Indicator Only

|

When checked, only the indicator symbol will take on the color specified in
 **Change Value Options > Positive Color**
 or
 **Change Value Options > Negative Color**
 . The change value itself will appear dark gray.

|

|
|

Change Value Options > Reverse Color Direction

|

When checked, positive values are shown using the color you have selected in the
 **Change Value Options > Negative Color**
 menu, and negative values are shown using the color you have selected in the
 **Change Value Options > Positive Color**
 menu. This is useful in scenarios where positive values are associated with negative sentiment (e.g. the number of bugs reported in a software application).

|

—

|
|

Change Value Options > Value Format

|

Determines whether the general number format for your change value. Options include
 **Number**
 (which includes no special formatting),
 **Currency**
 (in which a currency symbol is affixed), and
 **Percentage**
 (in which a percent symbol is affixed).

|

—


 |
|

Change Value Options > Positive Color

|

Lets you specify the color associated with positive change in your change value. You can choose colors from a color picker, enter a hexadecimal value, or change the opacity using a slider. The default color is green.

|

—


 |
|

Change Value Options > Negative Color

|

Lets you specify the color associated with negative change in your change value. You can choose colors from a color picker, enter a hexadecimal value, or change the opacity using a slider. The default color is red.

|

—


 |
|

Additional Text Options > Text

|

Lets you specify additional text to appear under the regular content in the gauge. A variety of replacement macros is available for dynamically including calculations in the text. For example, in the screenshot at right, the gauge shows the average stock price for the period in addition to the gauge value and change value. For more information about macros, see

Formatting Data Label and Hover Text in Your Chart

.

|

|
|

Additional Text Options > Color

|

Lets you specify the color used for additional text in the gauge. You can choose colors from a color picker, enter a hexadecimal value, or change the opacity using a slider. The default color is black. This option is only available if additional text has been added using the
 **Additional Text Options > Text**
 field.

|

|
|

Additional Text Options > Style

|
 Lets you choose the style for your additional text. You can choose bold, italic, or bold with italic. This option is only available when text has been entered into the
 **Additional Text > Text**
 field.


 In the example, the
 **Bold Italic**
 style is used.
  |  |
|

Additional Text Options > Size

|

Lets you set the size of the additional text in relation to the other text in the gauge. A variety of sizes is available. If you do not scale to fill the chart space, this will be a fixed size. This option is only available when text has been entered into the
 **Additional Text > Text**
 field.

|

—

|
|

Date Grain Options > Show

|

Determines whether to show the date grain (e.g. "by Day" for day-based DataSets) in multivalue gauges with the layout (
 **General > Layout**
 ) set to
 **Domo Summary 1**
 or
 **Domo Summary 2**
 .

|

|
|

Date Grain Options > Color

|


 Lets you specify the color used for date grain elements in the gauge. You can choose colors from a color picker, enter a hexadecimal value, or change the opacity using a slider. The default color is black. This option is only available if you have enabled date grain elements by selecting
 **Date Grain Options > Show**
 .


 Date grain elements only appear in the gauge when you select
 **Domo Summary 1**
 or
 **Domo Summary 2**
 in
 **General > Layout**
 .


 In the example, this color has been set to red.


 |

|
|

Date Grain Options > Style

|


 Lets you choose the style for your date grain elements. You can choose bold, italic, or bold with italic. This option is only available if you have enabled date grain elements by selecting
 **Date Grain Options > Show**
 .


 Date grain elements only appear in the gauge when you select
 **Domo Summary 1**
 or
 **Domo Summary 2**
 in
 **General > Layout**
 .


 In the example, the
 **Bold Italic**
 style is used.


 |

|
|

Date Grain Options > Size

|


 Lets you set the size of the date grain elements in relation to the other text in the gauge. A variety of sizes is available. If you do not scale to fill the chart space, this will be a fixed size.


 This option is only available if you have enabled date grain elements by selecting
 **Date Grain Options > Show**
 .


 Date grain elements only appear in the gauge when you select
 **Domo Summary 1**
 or
 **Domo Summary 2**
 in
 **General > Layout**
 .


 |

—


 |


