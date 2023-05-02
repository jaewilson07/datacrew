

Intro
-------

The Segments feature allows you to create better comparisons of a Segment versus another group. It also allows you to dynamically filter one item and not have the filter impact the Segment so that you can compare the two results. You can add a Segment to any multi-series chart, period over period chart, or multi-value chart. You can also add Segments to the Card Details view of a Card and to Dashboards.


**Video - Segments**

Parts of the Segment Creation Window
--------------------------------------


| **Field**  | **Description**  |
|
 Segment name
  |
 Add the name of the Segment.

*Note:**
 Ensure that the name of the Segment matches the item you are filtering in your data. For example, if you are selecting where the Product column equals "Toys" then you would name the Segment Toys. Otherwise, your chart will display both the original data for "Toys" and the new Segment for "Toys" instead of the Segment replacing the existing data for "Toys".

|
|
 Description
  |
 Add an optional description of what the Segment contains.
  |
|
 Filter columns to create a segment
  |
 Add the columns that define the Segment. These will filter the Segment.
  |
|
 Do not filter this segment by the following columns
  |
 Add columns that will not filter the Segment.
  |
|
 Segment Color Rules - Card Color
  |
 Choose what color the Segment value will show on the chart. The color selected will only display on this specific Card.

*Note:**
 If a Card Color is selected it will override the DataSet Color.

|
|
 Segment Color Rules - Dataset Color
  |
 Choose what color the Segment value will show on the DataSet. The Segment will always display this unless a Card Color has been set.
  |
|
 Segment preview
  |
 This will display the columns defined in the Segment.
  |

Creating a Segment
--------------------


1. Open a Card in
 **Analyzer**
 .
2. Select the
 **Add Dynamic Segment**
 button under the Dimensions and Measures OR select
 **Segments**
 from the Analyzer Toolbar.
3. Enter the
 **Segment name**
 .
4. (Optional) Enter a
 **Description**
 of the Segment. This will help users to determine what Segments they should use if there are multiple on the DataSet.
5. Click the
 **+**
 icon and add the column that you want to filter the Segment to the
 **Filter columns to create a segment**
 section.
6. Select the value in the column that you wish to filter the Segment by and click
 **Apply**
 .
7. Repeat steps 5 and 6 until all of the desired columns are added.
8. Click the
 **+**
 icon and add the column that you do not want to filter the Segment to the
 **Do not filter this segment by the following columns**
 section.
9. Repeat step 8 until all of the desired columns are added.
10. (Optional) Select either a
 **Card Color**
 or a
 **Dataset Color**
 to apply to the Segment.
11. Click
 **Save & Close**
 to save the Segment.

Below is an example Segment that was used in the corresponding screenshots:

Using a Segment in a Card
---------------------------


1. Open a Card in
 **Analyzer**
 .
2. Select an existing Segment from the list of columns under the
 **Beast Modes & Segments**
 section OR create a new Segment by following the steps in the

Creating a Segment

section.
3. Drag the Segment to the
 **Segments**
 section next to the Series in the Card.
4. Repeat steps 2 and 3 until all the desired Segments are added.
5. **Save**
 the Card.

Using a Segment in the Card Details view of a Card
----------------------------------------------------


1. Select the
 **Segments**
 tab from the menu on the right-hand side of the chart.
2. Select the Segment(s) you want applied to the Card. If you hover over the Segment name, and there is a Description entered for the Segment, it will be displayed. Up to three Segments can be selected at a time.

Using a Segment on a Dashboard
--------------------------------


1. Click the Filter icon

if the Filter Bar is not currently displayed on the Dashboard.
2. Click the
 **Segments**
 dropdown menu.
3. Select the Segment(s) you want applied to the Dashboard. If you hover over the Segment name, and there is a Description entered for the Segment, it will be displayed.
4. Click
 **Apply**
 .

FAQ's
-------


* Segments are saved to the DataSet. If a DataSet that has Segments is used on a Dashboard, then the Segments option will display.
* There can be up to 20 Segments saved to a DataSet.
* You can disable Segments on Dashboards by going to the Filter Options and toggling off Segments for that Dashboard.


