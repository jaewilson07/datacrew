

Intro
-------

You can create U.S. maps in which users can drill down on states to see values by both county and zip code. For example, a U.S. map may show sales for western states, as follows:


 In this map, a user could click on the state of Oregon to show the sales for all of the counties in Oregon:


 He could then click on Multnomah County (the small dark red county containing the city of Portland) to show sales by zip code within that county:


 To enable state and county drilldown, you must first create a DataFlow data source that joins two data sources: the data source with the values you want to show and a data source with state, county, and zip code information. With this data source, you can create a U.S. map with state and county drilldown enabled.

*Video - Creating a Map Drilldown to Zip**

Creating the DataSet
----------------------

The first step in building a map with drilldown is creating a DataSet with your values matched to the appropriate states, counties, and zip codes. You can do this by using DataFlows to join the following input DataSets:

 The master DataSet that contains the values you want to display. The DataSet must contain a column with zip codes.
* A reference DataSet containing columns with states, FIPS county codes, and zip codes. The names of the columns in this DataSet must be different from those in the master DataSet, or the DataFlow will not run successfully.


 To create this DataSet you will need to combine your data with Domo's "Zips2Fips" DataSet, which is available via the Domo Dimensions connector.

After you acquire the Domo "Zips2Fips" DataSet, you can create a DataFlow DataSet that joins the master and "Zips2Fips" DataSets by matching the zip code columns.


**To join the master and "Zip2Fips" DataSets,**

. In Domo, click
 ****Data****
 in the toolbar at the top of the screen.
2. Click
 **SQL**
 in the
 **Magic Transform**
 area at the top of the screen.


 The
 **Create DataFlow**
 page opens.
3. Enter a name for the DataFlow in the
 **Name**
 field.
4. (Optional) Enter a description for the DataFlow in the
 **Description**
 field.
5. Under "Input DataSets," click
 **Select a DataSet**
 .
6. Locate and select the master DataSet (the DataSet that contains your values).
7. Click
 **Select a DataSet**
 .
8. Locate and select the "Zip2Fips" DataSet.
9. Click
 **Add Output DataSet**
 .


 An
 **Output DataSet**
 dialog appears.
10. Enter a name for the output DataSet in the
 **Output DataSet Name**
 field.
11. In the
 **Output SQL**
 field, enter the following SQL, replacing
 *master*
 with the name of your master DataSet and
 *zipcode\_column\_name*
 with the name of the zip code column in your master DataSet. Also, if you named the reference DataSet anything besides "zip2fips" in the previous set of steps, you will need to change all instances of "zip2fips" to that name.


`select
 *master*
 .*, zip2fips.`STATE` as 'State', zip2fips.`FIPS`, zip2fips.`CNTY_NAME` as 'County', zip2fips.`ZIP` as 'ZipCode'from
 *master*`


`join zip2fips`


`on zip2fips.`ZIP` =
 *master*
 .`
 *zipcode\_column\_name*
 ``
12. Click
 **Done**
 .
13. Click
 **Save and Run**
 .


 Domo now attempts to create an output DataSet that joins the master and "Zips2Fips" DataSets. If the attempt is successful, the new DataSet is added to your
 **DataSets**
 listing. If any problems are found (such as duplicate column names), a message appears indicating that the run was not successful.

Creating map drilldown
------------------------

With your new DataSet, you can build a U.S. map with state- and county-level drill path.

*Note:**
 You cannot drill directly from the U.S. map into a zip code map; you
 *must*
 include the state level as an intermediary step. For example, you would not be able to click on Oregon and bring up a map with zip codes; you would first need to open a view showing the counties.

*To create a map with drill path,**

. In the page where you want the new card to appear, click

then select
 **Create New Card**
 .
2. Click
 **Existing Data**
 .
3. Locate and select the DataSet you created in the previous set of steps.
4. Click
 **Select DataSet**
 .


 The
 **Visualize your Data**
 screen appears,
5. Select
 **United States**
 as your chart type.
6. In the value menu, select the column that contains the values you want to display.
7. In the category menu, select
 **State**
 .
8. Click
 **Save & Finish**
 .


 The card is saved to the card page.
9. Click the new card to open its
 **Details**
 view.
10. In the
 **Options**
 menu, select
 **Edit Drill Path**
 .
11. Click
 **Add a view**
 .
12. In the category menu, select
 **FIPS**
 .
13. Click
 **Save this View**
 .
14. Click
 **Add a view**
 .
15. In the category menu, select
 **ZipCode**
 .
16. Click
 **Save this View**
 .

The drilldown map is complete. You can test it by returning to the
 **Details**
 view and clicking on a state. If the drill path was implemented correctly, a state-level view appears with counties showing. You can then click a county to show the zip code areas within that county.

*Note:**
 If you have just state level information and use the US map card to filter to a specific state, the entire US map will appear, but only the state you have filtered on will be highlighted.

To view a map of the state you have filtered to, you need the FIPS view saved as the top level US County card.  The map recalibrates the view to show only the state you have FIPS values for. Then, as in the Oregon example above, you would just see the specific state but filtered down to the county level.


**Note:**
 F

or a US map to use State/County/Zip Code drilldown, it is important that the state column in the DataSet for the top-level card use a two letter state abbreviation category. The state column MUST be named "State" or "STATE."


