

Intro
-------

Range Selector cards display a slider with a minimum and maximum value. When you add a Range Selector card to a card page in Domo, users visiting that page can use the slider buttons to narrow the range between the minimum and maximum values. All other cards in the page then filter to show the data for the newly selected range. For example, you might have a Range Selector card with a minimum value of $2000 and a maximum value of $5000. If a page viewer then adjusted the slider to reflect a minimum of $2500 and a maximum of $4200, all the other cards in the page would filter to show data within this range. For more information about using range cards on a card page, see

Applying Page-Level Filters -- Range Selector Cards

. All Range Selector Cards have a 25,000 row limit.

For information about other filter chart types, see the following:

 Slicer, Checkbox, and Radio Button Cards
* Date Selector Card

Powering Range Selector Cards
-------------------------------

This type of graph requires two columns or rows of data from your DataSet. One of these contains the desired minimum value for your slider, and the other contains the maximum value. For the column you drop into the
 **Minimum**
 field, the smallest value in the column is used, and for the column in the
 **Maximum**
 field, the largest value is used. Note that these can be the same column if you want. However, they must both be either value or date columns.

For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

KPI Card Building Part 2: The Analyzer

.


 Customizing Range Selector Cards
----------------------------------

You can customize the appearance of a Range Selector card by editing its
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

. Unique properties of Range Selector cards include the following:


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 General > Date Output Format
  |
 Lets you change the date format used in your Range Selector card slider if you have applied date columns in your
 **Minimum**
 and
 **Maximum**
 fields. For example, if you entered

MMMM dd, yyyy

in this field, dates would appear in the format shown in the example at right. For a list of macros you can use for formatting dates, see

Changing the Date Format in Your Chart

.
  |

|


