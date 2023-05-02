

Intro
-------

Slicer, Checkbox, and Radio Button cards display values from a selected DataSet column. When you add them to a card page in Domo, users visiting that page can click on values to filter the other cards on the page. With Radio Button cards, users can only filter on one value at a time; with Slicer and Checkbox cards, they can filter on multiple values at once.


 For example, you could build a Slicer card with names of U.S. states and add it to a card page. If you then clicked "Texas" and "Oklahoma," all of the cards in the page would be filtered to show only data for those states. Filter cards only work when Interaction Filters are turned on. If Interaction Filters are not turned on, clicking a filter opens the Details view for the card instead of applying the filter. For more information about using slicer cards on a card page, see

Applying Page-Level Filters -- Slicer, Checkbox, and Radio Button Cards

.


**Note:**
 In order to use a Beast Mode as the column in the "Items" section to power your Slicer, Checkbox, or Radio button cards, you must share the Beast Mode to the DataSet.

You can also use Slicer, Radio Button, and Checkbox filters in a card Details view to filter data to a specific column value before applying drill path.


 Slicer and Checkbox cards are essentially the same. The only difference is that the filters in Slicer cards are represented as buttons...

...and the filters in Checkbox cards use checkboxes.

Radio Button cards are similar to both of the above but use radio buttons instead of buttons or checkboxes, meaning users can filter on only one value at a time.


 For information about other Filter card types, see the following:

 Date Selector Card
* Range Selector Card

*Video - Filter Chart Types**

Powering Slicer, Checkbox, and Radio Button Cards
---------------------------------------------------

Slicer, Checkbox, and Radio Button cards require two columns or rows of data from your DataSet. One of these contains the category values you want to use as filters. You drop this column into the "Items" field in Analyzer.

The other field is called "Group By." Though this field is required to power up the card, in general, it doesn't matter what column you drop here. If you need to aggregate the data, you can use this column to do so. For example, if the column with the filter names is duplicated in your DataSet, you can make the filter names unique by aggregating.


 For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

KPI Card Building Part 2: The Analyzer

.


 Customizing Slicer, Checkbox, and Radio Button Cards
------------------------------------------------------

You can customize the layout of filters in a Slicer, Checkbox, or Radio Button card by editing its
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

. Unique properties of Slicer, Checkbox, and Radio Button cards include the following.


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 General > Show Search
  |
 Determines when a search bar is displayed for Slicer, Checkbox, and Radio Button Cards. When the default option,
 ****Auto****
 , is selected, a search bar appears anytime there are more filter items than will fit in the Card view. If you select
 ****Always****
 , the search bar always appears, no matter how many filter items there are. If you select
 ****Never****
 , the search bar never appears.
  |
 —
  |
|
 General > Font Size
  |
 Lets you increase or decrease the font size for the filters in your Slicer, Checkbox, or Radio Button card.
  |
 —
  |
|
 General > Unsorted Data
  |
 Lets you determine whether the filters in the Slicer, Checkbox, or Radio Button card are sorted alphabetically (default) or if the order is determined based on the order in your DataSet.
  |
 —
  |
|
 General > Number of Columns (Checkbox and Radio Button Cards only)
  |
 Lets you specify the number of filter columns in your Checkbox or Radio Button card. Note that this option requires the
 **Use Paging**
 option to be selected.
  |
 —
  |
|
 General > Single Column (Slicer Card only)
  |
 Determines whether the filters in your Slicer card are displayed in a single column. By default, the filters are left-aligned unless you choose to center them using the
 **Center Horizontally**
 option. They are also fitted to their individual "bubbles" unless you choose the
 **Equal Width Items**
 option.


 The screenshot at right shows a Slicer card in which this option is being used.
  |

|
|
 General > Single Row
  |
 Determines whether the filters in your Slicer, Checkbox, or Radio Button card are displayed in a row instead of a column. By default, the filters appear at the top of the card unless you choose to center them using the
 **Center Vertically**
 option.


 The screenshot at right shows a Slicer card in which this option is being used (with a pagination control to view filters that don't fit in the card).
  |

|
|
 General > Center Horizontally (Slicer Card only)
  |
 Determines whether the filters in your Slicer card are centered horizontally on the card. This option is available only when you check the box for
 **Single Column**
 .


 The screenshot at right shows a Slicer card in which this option has been set.
  |

|
|
 General > Equal Width Items (Slicer card only)
  |
 Determines whether the "bubbles" for filters in a Slicer card are the same width; otherwise, they are fitted to the width of the filters. This option is available only when you check the box for
 **Single Column**
 .


 The screenshot at right shows a Slicer card in which this option has been set.
  |

|
|
 General > Fill Width (Slicer card only)
  |
 Determines whether the "bubbles" for filters in a Slicer card fill the entire width of the card. This option is available only when you check the box for
 **Single Column**
 .


 The screenshot at right shows a Slicer card in which this option has been set.
  |

|
|
 General > Center Text (Slicer card only)
  |
 Centers the text within each "bubble" in a Slicer card. This option is available only when you check the box for
 **Single Column**
 .


 The screenshot at right shows a Slicer card in which this option has been set (along with
 **Fill Width**
 ).
  |

|
|
 General > Center Vertically
  |
 Determines whether the filters in your Slicer, Checkbox, or Radio Button card are centered vertically on the card. This option is available only when you check the box for
 **Single Row**
 .


 The screenshot at right shows a Slicer card in which this option has been set.
  |

|
|
 General > Selected Color
  |
 Determines the color of the filter bubbles in a Slicer, Checkbox, or Radio Button card when someone mouses over them.
  |
 —
  |


