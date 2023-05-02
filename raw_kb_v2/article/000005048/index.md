

Intro
-------

Flex Map v2 is a premium app available in the Appstore. Its main purpose is to display your data in different ways on a map to gain geographical and relational insights from the data. The app can map out various sets of locations and related data for those locations, create and display geographical territories to show the boundaries inside which mapped locations lie, and display heat maps to correlate locations with important metrics or demographics.


 Before you begin using the app, make sure you have completed all the required configurations. Learn about these in the

Flex Map v2 Implementation Guide

.

*Important:**
 Flex Map v2 is not the same as Flex Map v1. Learn about how to use that app in the

Flex Map v1 User Guide

.

This guide provides information for using Flex Map v2 in the following topics:
 * App navigation
* Pin Layers
* Map Layers
* Favorites
* Saved Maps
* Heatmaps
* Map Settings
* Data Settings
* User permissions and features
* Interacting with the map
* Demo notes

App Navigation
------------------

Map controls display on the right side of the screen.


 The table below describes each of the map controls.


|
 Icon
  |
 Tool Description
  |
| --- | --- |
|

|
**Zoom in**
 /
 **out —**
 Allows you to adjust the zoom level for the map.
  |
|

|
**Reset bearing to north —**
 Resets the map's orientation to display north at the top.
  |
|

|
**Undo**
 /
 **Redo —**
 Unmakes or remakes a change to the map.
  |
|

|
**Export —**
 Enables you to export your map as an image, PowerPoint file, or PDF.
  |
|

|
**Return to default —**
 Returns the map to its default settings.
  |
|

|
**Clear Map —**
 Clears the map of all layers.
  |
|

|
**Save Map —**
 Saves the current map configuration.
  |


 At the top of the screen are the main menu and the search bar.


 You can access most of the app's features from the main menu, by opening the hamburger menu. Each feature is described later in this guide.


* After you open the main menu, you can

*Close**
 it to return to the default screen.
* After you open any feature, you can

*Expand**
 or

*Collapse**
 the feature interface or

*Close**
 it to return to the default screen.
* Use the search bar to find locations from your connected data and display them temporarily on the map so you can favorite them. Learn more about

Favorites

below.

Pin Layers
--------------

In the main menu, select
 **Pin Layers**
 to open the search interface.

Here, you can create Layers, a subset of the locations data connected to the app.


 The following table describes the tools in the
 **Pin Layers**
 menu:


|
 Icon
  |
 Tool Description
  |
| --- | --- |
|

|
**Group —**
 Creates a new group.
  |
|

|
**Item —**
 Creates a new item.
  |
|

|
**Clone —**
 Copies the currently selected Pin Layer. The copied layer displays at the bottom of the Pin Layer list, with the name formatted as
 *Name of*
*Pin Layer*
 - copy.
  |
|

|
**List —**
 Shows the list of individual locations that are currently being displayed.
  |


###
 Creating a Pin Layer


1. Select

*Item**
 to create a new Pin Layer.


 The
 **New Pin Layers**
**Search**
 interface displays.
2. Select the list and choose a column from your data to begin filtering down the connected locations data to a subset of the data you want to display on the map. If your data is not connected, complete the necessary configuration by following the steps in the

Flex Map v2 Implementation Guide

.
3. Below the selected column, select whether to include locations that are
 **In**
 or
 **Not In**
 the values you select from the column.
4. (Optional) To apply more filtering criteria, select
 **Item**
 again to add another Pin Layer to the current layers.
	* First, select whether the Pin Layer has an
	 **And**
	 or an
	 **Or**
	 filter.

 An
	 *And*
	 filter combines current Pin Layers with previous Pin Layers so that only locations that meet all
	 *And*
	 criteria display.


	 Using an
	 *Or*
	 filter adds all locations that match that filter along with any other filters that are set.
	* Next, choose the category of additional Layer:
	 **Parent Id**
	 ,
	 **Latitude**
	 ,
	 **Longitude**
	 ,
	 **Location Name**
	 , or
	 **City**
	 .
 Two more options,
 **Channel Type**
 and
 **Channel Group**
 , only display if more than one Pin Layer is pinned.

You can

*Delete**
 any Pin Layer to remove that filter.
5. Select
 **List**
 to view the results based on the search criteria.
6. (Optional) Select the star icon next to any result to add it to the
 **Favorites**
 section of the app.
7. After adding all of your filters, note the three buttons added to the
 **Pin Layers**
 menu:
 **Select Icon**
 ,
 **Select Color**
 , and
 **Save**
 .


####
 Adding Icons and Colors

You can choose to display specific locations or landmarks on the map with the icon selection palette. You can only use one icon per Pin Layer. If you want to add another icon, create a new Pin Layer.

. Choose
 **Select Icon**
 in the
 **Pin Layers**
 menu.


 The icon palette opens.
2. Select an icon to add to the Pin Layer.
3. (Optional) Go to the
 **Size**
 tab of the palette to adjust the size of the icon.


 You can also choose to make an icon static or dynamic. If the icon is dynamic, the size changes with the zoom level of the map.

The icon displays on the map. If it doesn't display, adjust the zoom level.
4. In the
 **Pin Layers**
 menu, choose
 **Select Color**
 to choose the display color for your search.
5. Select
 **Save**
 in the
 **Pin Layers**
 menu to save your search.


 The
 **Save Pin Layers Search**
 modal displays.
6. Enter a
 **Name**
 and choose a
 **Folder**
 or
 **Group**
 to save the search in or create one.
7. Select
 **Save**
 .

You can now access your search in a list of created searches and groups under the

*Group**
 icon in the
 **Pin Layers**
 menu. You can also access all saved items from the
 **Saved Maps**
 section of the main menu.

##
 Groups and Items

In Flex Map v2, groups are folders that hold and organize items you create.


 When you select

*Group**
 in the
 **Pin Layers**
 menu, you create a folder that displays in the groups list. You can then name and open the group and drag any items into the group. You can also nest folders by dragging a group into another group.


 After you save an Item or search inside a folder or group, you can interact with it.


 Select

*View**
 /
 **Hide**
 on a search to toggle it on or off. When a search is on, the locations of the search display on the map.

Remove an item or group by selecting

*Delete**
 .

*Important:**
 If you delete a group, all items inside the group, including nested items, are also deleted.

You can edit an Item or search at any time in
 **Pin Layers**
 .

*Note:**
 App admins see an additional option for items and groups: the
 **Share**
 button. Admins can share items and groups with other app users. Learn more about admin functionality under

User Permissions and Features

.

Map Layers
--------------

Map Layers in the Flex Map v2 app are data driven from values stored in KML or GeoJSON, so interaction with them is more limited than other items in the app. The purpose of Map Layers is to display constantly updated lines or shapes on the map with their associated metrics, which are read directly from the uploaded layer file. For example, you may want to display shipping routes and their attributes from an outside system.


 To begin, the data for layers must be correctly prepared. Learn how to do that in the

Flex Map v2 Implementation Guide

.

##
 Creating a Map Layer


1. In the main menu, select
 **Map Layers**
 .
2. Select

*Item**
 .


 The new Layers interface displays.
3. In the
 **Map Layers**
 menu, there are three icons on the left side:

*Circle**
 ,

*Polygon**
 , and

*Polyline**
 .

When you select

*Circle**
 , you can create a colored circle on the map with the area and radius provided. Adjust the size of the circle by clicking and dragging the orange dots on the perimeter of the circle. You can also click and drag the entire shape. Change the color of the circle by using the
 **Select Color**
 icon. If you want to start over, select

*Circle**
 again to delete it.

The second of the three icons is

*Polygon**
 and allows you to create a shape with numerous sides. To use the tool, select

*Polygon**
 and choose a point on the map where you want the shape to begin. Keep adding points to the map until you achieve the shape you want. To finish the shape, select the last orange dot that you placed. You can move the entire shape by clicking inside it and dragging. To adjust the shape, click and drag the orange dots. To change the color, use the
 **Select Color**
 icon. To delete the shape, select

*Polygon**
 again.

The last icon is

*Polyline**
 , which allows you to determine the total distance traveled along a path. You can create this path by clicking on the map, which leaves a trail of orange dots for every marker you place. When you are done, select the last orange marker you placed; the total distance of the polyline displays. To start over, select

*Polyline**
 again.

Favorites
-------------

*Favorites**
 is where you can find any locations favorited in the app, allowing you to quickly find important locations when you return to the app. You can add locations to
 **Favorites**
 in a few ways.


 If you enter a term in the main search bar of the app, a list of matching locations returns. You can then select the star icon next to a location to favorite it.


 You can also favorite currently displayed locations in the
 **List**
 screen of the
 **Pin Layers**
 section.


 When viewing
 **Favorites**
 , you can create Groups and add favorited items to them, like you can for searches and Heatmaps. You can remove locations from
 **Favorites**
 by selecting

*Delete**
 for the location.


 Select

*View**
 /
 **Hide**
 to toggle a favorited location on and off.

Admin users can share favorited locations here by selecting
 **Share**
 for the location.


 Saved Maps
--------------

Any user can save the current configuration of territories and searches at any time by selecting

*Save Map**
 in the map controls. When you save a map, you are prompted to enter a name for it.


 You can see all of the maps by going to
 **Saved Maps**
 in the main menu. Here, you can add saved maps to Groups or delete them like other items in the app.


 Admin users can also share saved maps by selecting
 **Share**
 on a saved map.

Heatmaps
------------

You can find
 **Heatmaps**
 in the main menu. Follow the steps below to create a new Heatmap.

*Note:**
 Heatmaps only take effect after you save them.


1. Select
 **Create a New Heatmap**
 .
2. Select a
 **Heatmap Layer**
 .
3. Select a
 **Heatmap Metric**
 .
4. Under
 **Color Range**
 , select

*Edit Range**
 .
	* Select the colored rectangle to choose and apply a color to a certain range.


	 Manually input the numerals for the range.


	 Remove any range by selecting
	 **Delete**
	 .
	* Above the ranges, you can

**Reset to default**
	 ,

**Clear all**
	 , and

**Add new**
	 .
	* Make sure to select
	 **Apply Range**
	 to save your changes.
5. To activate the Heatmap, select
 **Save**
 .

You can then name your Heatmap and save it to a new or existing folder or Group.


 Select

*View**
 /
 **Hide**
 to display the new Heatmap on the map.


 Depending on the column you choose for the Heatmap, the map legend displays different numerical ranges.

*Note:**
 Only one Heatmap can display at a time, unlike searches where many can display at one time.

Map Settings
------------------

*Map Settings**
 is the final option in the main menu.


 If you are a card owner or app admin, you can determine certain map behaviors rendering options, including rendering Pin Layers in standard cluster mode or allowing all pins to render individually on the map. You also have access to new Map Layers in the
 **Base Layer**
 menu.

Data Settings
-----------------


**Note:**
 This section is only visible on the main menu for card owners and app admins.

If you are a card owner or app admin, you have total control over the data that is available to the map for locations and Heatmap metrics.


 From the main menu, select
 **Data Settings**
 to view two options:

 The
 **Search and Display Preferences**
 allow you to customize what is shown on your map.
* **Heatmap Metric Mapping**
 allows you to define metrics for your Heatmap Layers and associate them with a color scale on the map.

##
 Search and Display Preferences

When you select
 **Search and Display Preferences**
 , the settings grid displays. There are three sections in the settings:
 **Schema**
 ,
 **Display Order**
 , and
 **Tooltip Order**
 .

In the
 **Schema**
 section, you can configure what you see in and on the map from your core Locations DataSet. The Schema settings have five editable elements:

 **SearchInclude**
 is the list of fields that you want to be available in the
 **Pin Layers**
 search builder. Check the boxes for the fields you want to include.
* **Static Label**
 allows you to choose one field to display directly under the Pin on the map.
* **DisplayInclude**
 displays the chosen fields on the detail view of a selected Pin.
* **TooltipInclude**
 allows you to include the selected fields' value in the tooltip when you hover over a Pin on the map.
* **DisplayType**
 lets you tell Flex Map what type of data is in the field so it can handle special exceptions like links and images.

After you update any setting, select

*Expand**
 and then
 **Save & Close**
 to return to the app where your updates are live.


 In the
 **Display Order**
 section, you can configure the order of your display fields by dragging and dropping them.


 Make sure to
 **Save & Close**
 .

In the
 **Tooltip Order**
 section, you can also drag and drop the fields into the order that you want.


 Make sure to
 **Save & Close
 **.****


###
 Heatmap Metric Mapping

The
 **Heatmap Metric Mapping**
 settings allow you to define and choose the metric fields you want to allow the app user to build off in the
 **Heatmaps**
 section of Flex Map v2.
 **Heatmap Metric Mapping**
 has the same three sections as
 **Search and Display Preferences**
 :
 **Schema**
 ,
 **Display Order**
 , and
 **Tooltip Order**
 .

In the
 **Schema**
 section, you can configure what you see in and on the map from your Heatmaps DataSet. The
 **Schema**
 settings have five editable elements:

 **Use as Metric**
 is the list of fields that you want to use as metrics in
 **Heatmaps**
 . Check the boxes for the fields you want to include.
* **DisplayInclude**
 displays the chosen fields on the detail view of a selected Pin.
* **TooltipInclude**
 allows you to include the selected fields' value in the tooltip when you hover over a Pin on the map.
* **Label**
 allows you to rename your metrics fields for better picklist selections in the builder.
* **Aggregation**
 allows you to select the aggregation method.

After you update any setting, select

*Expand**
 and then
 **Save & Close**
 to return to the app where your updates are live.


 In the
 **Display Order**
 section, you can configure the order of your display fields by dragging and dropping them.


 Make sure to
 **Save & Close**
 .

In the
 **Tooltip Order**
 section, you can also drag and drop the fields into the order that you want.


 Make sure to
 **Save & Close
 **.****

User Permissions and Features
---------------------------------

The app supports three user levels: Admin, Standard, and View-only.

 Admin users can create, edit, and delete items in the app, share items they create in the app with members of Domo Groups, create custom Map Layers, and configure a default map and a default center. See


 Map Settings

, above.
* Standard users can create, edit, and delete their own items, and view items that admins share with them. They can't share items, create Map Layers, or set defaults.
* View-only users can view items that admins share with them. They can't create, edit, or delete items. They also cannot share items or set defaults.


 To learn more, see the

Flex Map v2 Implementation Guide

.

Interacting with the Map
----------------------------

After you create searches, Map Layers, and Heatmaps, you can interact with these items on the map.


 Searches display as colored dots on the map called Pins. If a Pin represents an individual location, it is a small dot without a number in the middle. If it represents a cluster of locations, the dot is larger and has a number in the middle representing the number of grouped locations.


* Zoom into a clustered Pin to see the distinct locations.
* Selecting a clustered Pin zooms into that location by one level.
* Selecting an individual Pin opens a details panel that shows additional information for that location. If the additional information includes URLs, the URLs are colored orange and are clickable. If the additional information includes a link to an image, the image displays in the details panel.
* Hovering over an individual Pin displays a tooltip for that location which card owners and admins can configure in the

*Data Settings**

.

Map Layers display on the map as a filled-in border around the geographical area.

 Hovering over the territory displays the name of the location you are hovering over. Heatmaps display as multi-colored areas filled in with colors representing the value of the Heatmap metric.
* Hovering over the Heatmap displays a tooltip with the metric that the color of the area represents.
* Selecting a Heatmap area brings up a tooltip showing all related Heatmap metrics for that area.
* A legend of what each of the Heatmap's colors represents displays in the lower-left corner of the map.

Enter a term in the search bar at the top of the screen to view all the Pins that match your search entry.


 You can use this to quickly find a single location, a group of locations, or to create a favorite by selecting the star next to the location in the search results.

*Note:**
 Admins see options to
 **Set as Default**
 and
 **Set as Center**
 at the bottom of the app.


* Selecting
 **Set as Default**
 saves any displayed searches, Map Layers, and Heatmaps as the map default. This means that any user who loads the app views these default items when the app loads, as long as the items have been shared with them.
* Selecting
 **Set as Center**
 sets the current view of the map as the default center. This means, for example, that an admin can set the contiguous United States as the default view, zoom in, and then save the revised view so that other users view it when they open the app.

Demo Notes
--------------

One way to demo the app is to upload a DataSet to power pin locations based on lat/long and Heatmap metrics.


 Then show how to build territories and save searches and Heatmaps.

