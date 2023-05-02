

Intro
-------

A Predictive Modeling chart is one of several data science charts used for in-depth analysis in Domo. It is essentially a

Scatter Plot chart

that includes a model fit line. You can also specify upper and lower bounds if you want.


 The following image points out the primary components of a Predictive Modeling chart:

This chart type does
 *not*
 currently include algorithms to identify your model fit line and upper and lower bounds. You must identify these elements yourself in the DataSet you use to power the chart. However, you can use tools such as R and Python to help you identify these elements.


 Powering Predictive Modeling charts
-------------------------------------

Predictive Modeling charts require three columns or rows of data from your DataSet, or five if you plan to show upper and lower bounds. One column contains the X coordinate values for the chart. All remaining columns contain Y coordinate values to be paired with their corresponding X coordinate value to form various elements in the chart. These Y coordinate columns are as follows:

 A column with Y coordinate values for the points in the chart (required).
* A column with Y coordinate values for the model fit line (required).
* A column with Y coordinate values for the upper bound (optional).
* A column with Y coordinate values for the lower bound (optional).

For an example of how to set up your data, see the graphic below.


 For information about value, category, and series data, see

Understanding Chart Data

.


 In the Analyzer, you choose the columns containing the data for your Predictive Modeling chart. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 The following graphic shows you how the data from a typical column-based spreadsheet is converted into a Predictive Modeling chart. Note that the spreadsheet in this example includes only a small subset of the data used to power the chart.

Customizing Predictive Modeling charts
----------------------------------------

You can customize the appearance of an Outliers chart by editing its
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

. Unique properties of Forecasting charts include the following:


 Property
  |
 Description
  |
 Example
  |
|
 General > Bounds Fill Color
  |
 Determines the color of the region between the lower and upper bounds of the first provided forecasting line. If either of these bounds is not set, no fill is applied.
  |  |
|
 General > Fill Transparency Percent
  |
 Determines the percent of transparency of the fill between the lower and upper bounds of the first provided forecasting line. You can select any number between 0 and 100, in which 0 is completely opaque and 100 is completely transparent. If no color is selected in
 **Bounds Fill Color**
 , this property is unavailable.


 In the example, the transparency has been set to 75.
  |  |


