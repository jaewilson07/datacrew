

Intro
-------

A Textbox is used to represent a piece of text. The text can be as long as you want as long as it fits in a single cell in a DataSet, and can contain any character. You can format text to be centered, left-aligned, or right-aligned, and can set the space of the margins. You can also specify text to override the text from your DataSet or you can reference a value column using a macro.


 Powering Textboxes
--------------------

Textboxes require two columns or rows of data from your DataSet. One of these should contain the text that appears in the Textbox. The contents of the second column do not matter
 *unless*
 you are planning to include dynamic values in the Textbox. In this case, you would drag the desired value column into the
 **Optional Value**
 field then reference the column in
 **Chart Properties > General > Value**
 using a macro.


 For information about value, category, and series data, see

Understanding Chart Data

.


 In the Analyzer, you choose the columns containing the data for your Textbox. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 The following graphic shows how the data from a typical column-based spreadsheet is converted into a Textbox:

Customizing Textboxes
-----------------------

You can customize the appearance of a chart in a number of ways. Many customizations are possible by setting
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

. Unique properties of Textboxes include the following:


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 General > Text
  |
 Lets you set custom text for the Textbox. Any text you enter here replaces the text from your DataSet. You can use the macro
 `%_VALUE`
 here to insert the value from the column you applied in the
 **Optional Value**
 field. For example, if you wanted the text in your textbox to read "Today's quota is [some value]," you would enter
 `Today's quota is %_VALUE`
 in this field. Ensure that
 **No Aggregation**
 is set for the column.
  |

|
|
 General > Font Size
  |
 Lets you select the font size for the text in the Textbox. A number of sizes are available ranging from Small to XX-Large. If you select
 **Default**
 , the size is chosen that best matches the amount of available space. So, if you had the maximum amount of space available, the "XX-Large" size would be used.
  |
 —
  |
|
 General > Font Style
  |
 Lets you choose whether the font for your text is plain, bold, italic, or bold-italic.
  |
 —
  |
|
 General > Font Color
  |
 Lets you choose the color for your text.
  |
 —
  |
|
 General > Horizontal Text Alignment
  |
 Lets you select the horizontal alignment for your text. The examples at right show the same string of text left-aligned, center-aligned, and right-aligned, in that order.
  |

|
|
 General > Vertical Text Alignment
  |
 Determines whether the text in your Textbox appears at the top, in the center, or at the bottom.
  |
 —
  |
|
 General > Top Margin
  |
 Determines the amount of space in pixels above the text.
  |
 —
  |
|
 General > Bottom Margin
  |
 Determines the amount of space in pixels below the text.
  |
 —
  |
|
 General > Left Margin
  |
 Determines the amount of space in pixels to the left of the text.
  |
 —
  |
|
 General > Right Margin
  |
 Determines the amount of space in pixels to the right of the text.
  |
 —
  |


