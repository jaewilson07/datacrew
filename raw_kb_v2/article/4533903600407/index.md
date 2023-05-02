

Intro
-------

Dropdown Selector Cards display values from a selected DataSet column. When you add them to a Dashboard in Domo, users visiting that Dashboard can click on values to filter the other Cards on the Dashboard. You can set up the Dropdown Selector Card to filter on a single value or multiple values at once.


 For example, you could build a Dropdown Selector Card with names of U.S. states and add it to a Dashboard. If you then clicked "Texas" and "Oklahoma," all of the Cards in the Dashboard would be filtered to show only data for those states. Filter Cards only work when Interaction Filters are turned on. If Interaction Filters are not turned on, clicking a filter opens the Details view for the Card instead of applying the filter. For more information about using Filter Cards on a Dashboard, see

Applying Page-Level Filters with Filter Views

. All Dropdown Selector Cards have a 25,000 row limit.


**Note:**
 In order to use a Beast Mode as the column in the "Items" section to power your Dropdown Selector Card, you must share the Beast Mode to the DataSet.

You can also use a Dropdown Selector filter in the Card Details view to filter data to a specific column value before applying a drill path.


 Dropdown Selector and Checkbox Cards are essentially the same. The only difference is that the filters in Dropdown Selector Cards are represented as a searchable list...

...and the filters in Checkbox Cards use checkboxes.


**Note:**
 You can select multiple options from the Dropdown Selector list if you have enabled the Allow Multiple Selections Chart Property. You will know this has been enabled if there are checkboxes next to the list of items.


 Radio Button Cards are similar to both of the above but use radio buttons instead of buttons or checkboxes, meaning users can filter on only one value at a time.


 For information about other Filter Card types, see the following:

 Slicer, Checkbox, and Radio Button Cards
* Date Selector Card
* Range Selector Card

*Video - Filter Chart Types**

Powering Dropdown Selector Cards
----------------------------------

Dropdown Selector Cards require two columns or rows of data from your DataSet. One of these contains the category values you want to use as filters. You drop this column into the "Items" field in Analyzer.

The other field is called "Group By." Though this field is required to power up the Card, in general, it doesn't matter what column you drop here. If you need to aggregate the data, you can use this column to do so. For example, if the column with the filter names is duplicated in your DataSet, you can make the filter names unique by aggregating.


 For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 Customizing Dropdown Selector Cards
-------------------------------------

You can customize the layout of filters in a Dropdown Selector Card by editing its
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

. Unique properties of Dropdown Selector Cards include the following.

 **Property**  | **Description**  |
|
 General > Allow Multiple Selections
  |
 When set, the selector will allow you to select more than one item from the list.
  |
|
 General > Label Text
  |
 Optional label displayed with the dropdown selector.
  |
|
 General > Label Position
  |
 Sets the position for the label associated with the dropdown selector.
  |
|
 General > Default Select Text
  |
 This is the text that will be displayed by default when nothing is selected. The default is Select.
  |
|
 General > Vertical Alignment
  |
 Determines where the selector will be displayed within the Card.
  |
|
 Full Size Settings
  |
 Lets you specify the width and height to use when "full" size is selected on a page of cards. For reference, a medium card is 1x1 and a large card is 2x2.
  |


