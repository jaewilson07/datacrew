

Intro
-------

After powering up a card, you can add layers of "drill path" by s


 etting filters on specific columns in your DataSet so, when a user clicks a graph element in the chart, they drill to another view that represents the underlying data for that column. You can add another layer of drill path to this view so that the user can drill to see additional details, and so on.


 Users can drill down into cards from the Details view or the Page view. However, drilldown is
 *only*
 available in the Page view when Domo Stories Dashboards are enabled. Also, you must enable
 **Drill in place**
 for the Card in the
 **Card interaction settings**
 dialog. For more information, see

Settings Card Interactions

.


 You can have as many drill path layers as your data allows. The "bottom" drill path layer of any chart is, by default, a table containing the data for the graph element you clicked. You can prevent drilling to the "bottom" drill path layer.

*Note:**
 The bottom-layer data table is not available when drilling down into a Card from the Page level.

You can also drill down from one DataSet to another, as long as the second DataSet contains the same category and series columns you filtered off of in the first DataSet. (The second DataSet does
 *not*
 need to contain the same value columns.) For example, if you had two DataSets that contained a column called "Customers," you could create a top-level chart with "Customers" data using the first DataSet. Then, because you used the "Customers" column in the first DataSet, you could drill down to the second DataSet and filter off of the "Customers" column in that DataSet to see additional details.

*Notes:**
* Calculations you create using Beast Mode are inherited when you drill from one view to another using the
 *same*
 DataSet. However, calculations are
 *not*
 inherited when you drill to a
 *different*
 DataSet. For more information about Beast Mode, see

Adding a Beast Mode Calculation to Your Chart

.
* You
 *cannot*
 create Beast Mode calculations on any card in a drill path
 *except*
 the top-level card. Calculations created on any other cards in a drill path will disappear after they are saved.
* Drilldown is not available for Funnel graphs.
* You cannot add Period-over-Period charts within a drilldown.
* When adding a fiscal calendar as part of a drill path, the fiscal calendar selection in the child pages MUST be the same as that of the parent card; otherwise the drill path won't work. For more information, see

Using A Fiscal Calendar


 .

If you create drill levels out of the desired sequence, don't worry—in the Drill Path view you can click and drag drill levels into the order you want, and the drill path for the card adjusts automatically.


 If PDP (Personalized Data Permissions) is enabled on a DataSet used in a drill layer, those policies are retained in the drill path. For example, if Brett, a member of the "Western Region" policy, goes to build a drill path on a PDP-affected card in which he is only allowed to see data for western states, his completed drill path will contain only information for those same states. For more information about PDP, see

Creating and Deleting PDP Policies

.


 This topic discusses how to incorporate drill path layers into a chart. For information about exploring existing drill path layers in a chart, see

Drilling into Data

.

*Video - Creating a Drill Path**


 ​

Adding a drill path to a chart
--------------------------------

When you add a drill path to a chart, you add a new view of the data in your DataSet. Each successive view is filtered from the previous view. So, for example, if your top-level view had bars for 2006, 2007, and 2008, your next layer down would filter off of the data in those rows.


**To add a drill path to a chart,**

. Click the KPI card to open the Details view.
2. Click

, then select
 **Edit Drill Path**
 .


 A new page titled "Drill Path" opens.
3. Click
 **Add a view**
 .


 A view opens that is similar to the Analyzer. For more information about the Analyzer interface, see

Analyzer Layout

.
4. (Optional) Select a different DataSet by doing the following:

1. Click

 next to the DataSet name.
	2. In the dialog that opens, select the DataSet you want to drill to.

**Notes:**
	 1) The new DataSet
	 *must*
	 contain the same category and series column name(s) you filtered off of in the original DataSet. The column data should also be the same; however, the column in the second DataSet may contain additional data items not found in the original DataSet. Value columns you have filtered off of in the original DataSet do
	 *not*
	 need to be present in the second DataSet. For more information about category, series, and value columns, see

 Understanding Chart Data

 .  2) If your DataSet contains more than one sheet and you want to connect to the data in another sheet, you must first re-upload the DataSet, being sure to select that sheet in the
	 **Review your Data**
	 dialog. This creates a new DataSet that you can connect to like any other DataSet.

 If your DataSets are compatible, a success message appears; otherwise an error message appears displaying the names of the columns not present in the second DataSet.
5. Select the chart type you want to use for the new view.


 You can drill down from one chart type to another chart type. Any chart type works, even tables. This makes it possible to produce different views of the same basic DataSet.
6. (Optional) Add filters, sorting, and Beast Mode transforms, if desired.


 For more information about filters, see

Adding a Beast Mode Calculation to Your Chart

.
7. (Optional) Edit the chart properties for the new view, if desired.


 For more information about chart properties, see

Applying and Resetting Chart Properties

.
8. Enter a title for the new view.


 For more information, see

Editing the Name or Description of a Visualization Card

.
9. Power the new view by dragging the desired DataSet columns into the appropriate fields.


 For more information about applying DataSet columns, see

Applying DataSet Columns to Your Chart

.

*Note:**
 Remember that for every new drill path you create, you are filtering off of a new column and all columns "above" it in the drill path. This means that you cannot
 *usually*
 add a column you are already filtering off of to a path; otherwise you encounter problems. The one exception to this is value columns. You can utilize the same value column in a drill path as desired; in fact, most drill paths require that you use the same value column for each successive drill path layer.
10. Click
 **Save this View.**


 This closes the drill path
 **Edit**
 view, returning you to the Drill Path page. It is a good idea to test your new drill path by returning to the top-level page and clicking any of the graph elements. If successful, a new chart appears representing the data for the graph element you clicked.
11. (Optional) Add subsequent drill path layers by returning to the Drill Path page and repeating steps 3 through 10.
12. (Optional) Prevent drilling to the data drill path layer by clicking
 **Prevent drilling to final data grid view**
 .

Editing an existing drill path
--------------------------------

You can go into an existing drill path and edit the data for any view in that path.


**To edit an existing drill path,**

. Click the KPI card to open the Details view.
2. Click

, then select
 **Edit Drill Path**
 .


 The Drill Path page opens.
3. Click
 **Edit**
 to the right of the drill view name.


 The drill path
 **Edit**
 view opens.
4. Make your edits as desired.
5. Click
 **Save this View**
 .

Reordering a drill path
-------------------------

You can change the sequence of levels in a drill path in the Drill Path page. Each level is represented as a tile; you can simply click and drag a tile to move it into a different position. When you do this, the drill path for the card adjusts automatically. Not that you
 *cannot*
 move the tiles for the top and bottom levels in a drill path, as these are integral components of the drill path structure.


**To reorder a drill path,**

. Click the KPI card to open the Details view.
2. Click

, then select
 **Edit Drill Path**
 .


 The Drill Path page opens.
3. Mouse over the tile for the drill level you want to move so that it highlights.
4. Drag the tile to the desired location in the drill path.


**Video - Reordering a Drillpath**

Preventing drilling to the data drill path layer
--------------------------------------------------

The "bottom" drill path layer of any chart is, by default, a table containing the underlying data for the graph element you clicked. You can prevent drilling to the "bottom" drill path layer.

*Notes:**


* This option controls view-only access to drilling to the "bottom" drill path layer in the Chart view. The Table view still shows the data powering the chart, but not the full underlying data of the DataSet.
* The bottom-layer data table is not available when drilling down into a Card from the Page level.

*To prevent drilling to the data drill path layer,**

. Click the KPI card to open the Details view.
2. Click

, then select
 **Edit Drill Path**
 .
3. Click
 **Prevent drilling to final data grid view**
 .


**Note:**
 You can further protect a card by selecting the
 **Only the owner and administrators can edit this Card**
 option.

Deleting a view from a drill path
-----------------------------------

You can go into a drill path and remove views from that drill path.


**To remove a drill path layer from a chart,**

. Click the KPI card to open the Details view.
2. Click

, then select
 **Edit Drill Path**
 .
3. Click
 **Remove**
 to the right of the drill view name.
4. Click
 **Remove**
 to confirm.

Example 1
-----------

Suppose a company called "WidgetSoft" sells products to different companies located in Florida and Georgia. The following spreadsheet records the sales of the salespeople, "Jensen," "Kohler," and "Montoya," over a period of three days in January, with the specific amounts and customers for each sale:

The manager of the sales team wants to create a single KPI card to represent all of the information in this spreadsheet. Because there is too much information here to show in one view, she decides to implement a drill path so that viewers can drill down and see successive views of different information. In the first view, she decides to show the amounts pulled in by Jensen, Kohler, and Montoya for the date range specified. She chooses "Vertical Stacked Bar" as the chart type and selects the "Salesperson," "Date," and "Amount" columns to power the chart. The resulting chart appears as follows:

The manager begins to implement a drill path in the chart using the procedure provided in

Adding a drill path to a chart

. For the first drill path layer, she wants to show how much sales revenue was respectively pulled from Florida and Georgia. She adds a new view, selects Map as the chart type, drags the "Amount" column into the
 **State Value**
 field, and drags the "State" column into the
 **State Name**
 field. Even though she already used the "Amount" column, she can do so again because it is a value column. If she had chosen "Salesperson" or "Date" again, however, the drill path would not function correctly. The manager then saves the new view. If a user were to open the Details view for the chart and click the "Jensen" bar for 2011-01-06, the following new view would appear:

In this view, the amounts for the two "FL" rows for this salesperson and date are aggregated. Hence, the value for Georgia is "12.4k," the same as in the spreadsheet, but the value for Florida is "15.86k," the sum of the two amounts.


 The manager decides to add a second drill path layer in which the customers for each state are shown. She goes back into the Drill Path screen and adds another new view. In this view, she selects "Vertical Bar" as the chart type and uses the "Amount" and "Customer" columns to power the chart. She does
 *not*
 select the "State" column because she is already filtering off of that column. She saves the new view. If a user were to open the Details view, click the "Jensen" bar for 2011-01-06 as before, then click the state of Florida, the following view would appear:

This shows the two customers and the amounts they paid (second drill path layer) for the state of Florida (first drill path layer) for Jensen on January 6, 2011 (top-level view). If a user were to click the state of Georgia instead, only one bar would appear, because there is only one row that contains data for Jensen on January 6 for the state of Georgia.


 However, if that user were to drill down into the "Kohler" bar for January 8 on the top-level view, then click Georgia, two bars would appear, one for each customer.

Example 2
-----------

Suppose "Office Guru" sells office supplies to customers throughout the entire United States. The sales manager has created a simple, two-column "Top Customers" chart that shows the top ten highest-paying customers for the last four years. The data for this chart has been gleaned from a much larger DataSet, and appears as follows:

The resulting Vertical Bar chart appears as follows:

The manager wants to show more detail about these customers, in particular how much they are spending on different categories and subcategories of products. This information is found in the larger DataSet. The manager decides to drill down from the original, two-column DataSet to the larger, more detailed DataSet to show this information. A section of this larger DataSet appears in the following image, with the key columns indicated.

To drill to this second DataSet, the sales manager first opens the
 **Edit Drill Path**
 screen for the "Top Customers" chart then selects
 **Add a view**
 . In the drill path
 **Edit**
 view, he selects his new DataSet, "ordersheet.xls." A message appears stating that the DataSets are compatible because the category column from the first DataSet, "Customer Name," is also found in the new DataSet. The manager picks a new chart type, Vertical Stacked Bar, and applies "Sales" to the
 **Y Axis**
 field, "Product Category" to the
 **X Axis**
 field, and "Product Subcategory" to the
 **Series**
 field. Because this DataSet contains more customer names than in the original chart, he applies filters so that only the top customers are represented.

*Note:**
 At this point, this preview shows the data for the entire DataSet, even though you set filters. This is because the filters are applied only when you drill.

The manager clicks
 **Save this View**
 to add the view to the drill path for the chart.


 When a user clicks a bar in the "Top Customers" chart, a new view appears showing the amounts spent on specific types of product. The following screenshot shows the view for the customer named "Karen Carlisle":

Drilling between maps
-----------------------

With both U.S. state maps and latitude-longitude maps in which U.S. cities are represented, you can create "zoomed" drill layers by drilling down to the same map. For example, if you had a latitude-longitude map showing values per state and you added the same map as a drill layer, clicking any point in the country-level map would bring up a "zoomed in" state or region level that displayed all of the original data points from that state or region.


 Results from using this technique vary depending on the map type, your DataSet, and the specific columns you apply.


 For more information about U.S. state maps, see

Latitude-Longitude Map

.

*Video - Creating a Map Drill to Zip Code Using the Zips to FIPS Connector**


