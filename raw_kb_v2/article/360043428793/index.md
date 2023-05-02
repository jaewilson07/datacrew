

Intro
-------

Using Domo's Custom Regions tool, you can set up a map with regional groupings that match your business regions.


 For example, let's say you manage a number of time share properties in the United States. These properties are divided across five distinct regions—West, Southwest, Midwest, Southeast, and Northeast. You want to be able to see at a glance the revenue gained from each region, something like the following:

However, Domo does not include a preinstalled map for regions of the United States (and if it did, the states in each grouping would probably not exactly correspond to the states in the regions in your company).


 The solution is to set up custom regional groupings. There are two ways to do this in Domo:

 Customize an SVG map of the United States by adding grouping tags, as discussed in detail in

Custom Charts

. This requires a rudimentary knowledge of XML.
* Use the Custom Regions tool to upload a DataSet that includes a column for the new custom regions matched with the sub-regions within them. This solution requires a simple understanding of

Domo dataset structure

; however, knowledge of XML is not required.

This topic discusses the second option, including how to set up your DataSets properly. For an in-depth discussion of building custom charts from scratch, see

Custom Charts

.

*Video - Custom Map Regions**

Setting Up Your DataSet
-------------------------

Before you can incorporate regions into a map, you must first ensure that your DataSet is set up properly. The DataSet
 *must*
 contain the following columns for regions to work:

 A column with the names of the regions (i.e. the larger geographical areas your sub-regions will be divided between). For example, in the U.S. map shown above, there are 5 regions—a Southwestern region that includes Arizona, New Mexico, Texas, and Oklahoma; a Western region with California, Nevada, Idaho, etc.; and so on.
* A column with the names of the sub-regions (i.e. the smaller geographical areas that will be divided across the larger areas). Sub-regions in the above map include individual states such as California, Texas, Alaska, etc.

So the DataSet used to divide the above U.S. map into regions would include columns that look something like the following:

As another example, here is a portion of a DataSet used to divide a map of Canada into western, central, and eastern regions:

This DataSet matches regions with three-digit FSA codes, though you could also use provinces if you wanted.


 The resulting map would look as follows (with shading based on a value column applied afterward in the Analyzer):

Adding Regions to a Map
-------------------------

Once you have all of the necessary columns in your DataSet, you are ready to create a new regional map in your Domo instance. You must have an "Admin" default security profile or a custom role with "Manage All Company Settings" to add maps to Domo. For more information about default security roles, see

Managing Custom Roles

.


**Note:**
 If you want to regionalize a map for a country


 not available in Domo, you must first upload an SVG map for that country. Y

ou can download SVG country maps from any of a number of websites, such as

http://www.amcharts.com/svg-maps/

and

https://simplemaps.com/resources/svg-maps

. These sites also include maps for overseas territories such as French Guiana, Aruba, and so on.

For more information about downloading SVG maps, see

Obtaining an SVG Chart

.


**To regionalize a map,**

. Select
 **More**
**> Admin**
 in the toolbar at the top of the screen.
2. In Admin Settings, select
 **Company Settings > Custom Charts**
 .
3. Click
 **Add Chart**
 .
4. Click
 **Create regions**
 .
5. Click on the map you want to add regions to, then click
 **Next**
 .


 If the map you want to regionalize has been added to Domo using the Custom Charts tool, you can find it by switching to "Custom Charts" in the menu at the top of the dialog.

If the country map you want is not in Domo, you must first upload it. (See the note at the top of this section.)
6. In the DataSet dialog, use the search and filter options to locate the DataSet with your regions data, then click
 **Select DataSet**
 .


 If the DataSet you need is not yet available in Domo, you can upload it by clicking
 **Add DataSet**
 then configuring the connector you want to use to pull data. For more information, see

Adding a DataSet Using a Data Connector

.


 After you click
 **Select DataSet**
 , a new window opens in which you can select your region and sub-region columns.
7. In the
 **Select new custom region**
 menu, select the name of the column containing your regions (i.e. the larger geographical areas your sub-regions will be divided between).
8. In the
 **Select column for subregions**
 menu, select the name of the column containing your subregions (i.e. the smaller geographical areas that will be divided across the larger areas).

After you make selections in both menus, your map should update to show the new regional areas.
9. Click
 **Next**
 .


 A new window now opens in which you can choose from two configuration options.
10. Uncheck the
 **Show lines separating sub-regions**
 box if you want to remove the borders between your subregions; otherwise leave this box checked.


 The following screenshot shows an example of this, in which the lines bordering the U.S. states have been removed:
11. Uncheck the
 **Show sub-regions not included in DataSet**
 box if you want to hide regions not included in the DataSet; otherwise leave this box checked.


 The following screenshot shows an example of this, in which the "Northeastern" and "Southeastern" regions do not appear because there is no data for them in the DataSet. This is an excellent option to use when you want to show map data only for specific regions of a given country.
12. Click
 **Next**
 .
13. In the new window that appears, enter a name for the map.


 This is the name of the map as it will appear in the Chart Picker.
14. (Optional) Enter a description for the map if desired.
15. Click
 **Save**
 .

The map should now be available in the Chart Picker in Analyzer, under
 **Custom Charts**
 .


 Building Your Map in Analyzer
-------------------------------

After you upload your map to Domo, you can build a card from it in Analyzer just as you would any other country map. You can access the new map in
 **Custom Charts**
 in the Chart Picker. For instructions about building country maps, see

Country Map

.


 Chart properties for custom maps are the same as those used in most other geographical maps. For a list of these properties, see

Properties for Maps

.

