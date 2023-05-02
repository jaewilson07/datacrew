

Intro
-------

Thank you for trying out the Flex Map app! This guide will help you familiarize yourself with the use and features of the app. The main purpose of this app is to display your data in various ways on a map so you can get geographical and relational insights from your data. The app can map out various sets of locations and related data for those locations, create and display geographical territories to show boundaries wherein mapped locations lie, and display heatmaps so that locations can be related to important metrics or demographics.


 Basic Navigation
------------------

When you first open the app, you will see the world map displayed as the default view. Basic map controls are in the upper right corner, including zoom level controls and a re-center button. At the bottom right corner of the app, you will find a few buttons to interact with the map. Basic users will see the save map and clear map buttons. Admin users will additionally see a set as center and set as default button in this area as well. These buttons are explained below.


 The main menu button and search input can be found in the upper left corner of the app. Most of the functionality of the app is found when you click the menu button. Inside the menu, you’ll find buttons to access the interfaces for creating searches, territories, and heatmaps, as well as interacting with saved maps, favorites, and your dynamic shapes. The search bar is used to search for locations from your connected data and display them temporarily on the map so they can be favorited. More information on using favorites can be found below.

##
 Searches

In the main app menu, click on searches to open the search interface. Here you can create searches in the app, which are a subset of the locations data that has been connected to the app. In the searches menu you’ll see both a button to create a new group and a button to create a new item as well as a list button that will show you individual locations that are currently being displayed.

Click the Item button to create a new search. You’ll see a dropdown appear where you can select a column from your data to begin to filter down the connected locations data to a subset of data that you’d like to display on the map. You can choose to include locations that are “in” the values you select from that column, or “not in” the values you select from that column.

If you’d like to apply more than one filtering criteria, click the item button again and another filter will be added to the current filters. For additional filters you’ll be given the option to set the filter as an “And” filter or an “Or” filter. An “And” filter will combine this filter with the previous filters and only locations that fit all “And” filters will be displayed. Using an “Or” filter will add all locations that fit that filter in addition to any other filters that are set. At any time if you’d like to remove a filter criterion, you can click the delete icon (trash can) for that given filter.

After entering your desired filters, you’ll see two more buttons at the top of the Searches menu. The first icon is a colored circle. Click this icon to choose the display color for your search that you have created. You’ll also see a save icon next to the color icon. Click this to save your search. You’ll be prompted to enter a name for your search and can add your search to any previously created groups as well. After confirming, your new search will appear in a list of created searches and groups within the Searches menu.

Back at the start of the Searches menu, you can create these groups mentioned above. Groups in this app function as folders to hold other items and groups within to organize the things that have been created. Clicking the group button (folder icon) will create a group or a folder that will appear in the list of items below. After the group is created you can click on it to create a name for the group. You can then click the dropdown arrow on the group to open the folder then click and drag any items into the group to add them to it. Nesting items is also allowed, so you can drag groups into groups as well to create a nested folder structure if so desired.

After you have created a few items you can then interact with them. Click the eye icon on a search to toggle it on or off which will either display or remove the locations of the search on the map Searches and Groups can be deleted by clicking the delete icon. Keep in mind that items inside a group will also be deleted if you delete a group. Lastly, click the pencil icon on a search to edit an existing search. This will take you back into the interface where you can choose filters and a color for your searches.


 Admins will see an addition button on searches and groups. A share button will appear for admins that they can click to share items and groups that have been created to share with other users. More details on admin functionality can be found in the “User Permissions and features” section below.

##
 Territories

Creating territories is very similar to the way searches are created in the app. In the main app menu, click territories to open the territories menu. Similar to searches, you’ll see a button to create groups, and a new item button. Groups function identically for all items in the app, so see the section above for group creation.


 Click the new item button to create a new territory. You will see a set of dropdowns that can be used to create territories. Each of these dropdowns corresponds to a geographical area, US for the United States, NUTS for Europe, CAN for Canada, and AU for Australia. Within each dropdown you’ll find several options of smaller geographical areas to choose from. For example, under US Layers you’ll find options for CBSA statistical areas, Counties, States, and Zip codes. After clicking one of these options, you’ll see the chosen layer display on the map. At this point, you can click and choose individual areas to add to your custom territory. For example, if you wanted to create a territory for the US West Coast, you would click on Washington State, Oregon, and California. You will see the names of those states appear in a list in the menu and they will be highlighted on the map. As soon as you have chosen the areas you would like to include in your territory, you can choose a color for your territory just as you could with searches by clicking the colored circle icon, then save your territory in the same manner as was done with searches as well by clicking the save icon then naming your territory.

After saving your territory you will then see it appear in the list in the territory menu. Here it can also be edited, deleted, or added to a group. Admins can also share territories from this menu as well.


 Admins will have access to an additional feature here. When creating a new territory, admins will see a “+ Custom Territory” button underneath the different geographical layer dropdowns. Clicking this button will take an admin user to a custom territory interface. Here, an admin user can pick files from a dropdown to add as custom layers to the territory builder. Files will only appear in this dropdown as options if they have been uploaded to Domo’s files API and are included in the file mapping dataset wired to the app. Only .shp files or KML files are supported. See the app implementation guide for more details on preparing files and the file mapping dataset.


 An admin user can add as many custom territory files as are mapped in the file mapping dataset. For each custom file added, the admin user will need to supply a property id for that file to indicate a unique property for each geographic location. This can be something like a region name or a region id for example, but you have to have the exact property name as it appears in your file. If you don’t know the properties of your files, you can enter any value and click save, and after a bit of processing, the app will show a warning and error that will list the properties on the file so that you can take note of them and add the correct ones. After adding the correct property ids, click save and allow the app to process the files. After the files are processed, you will see a new dropdown appear in the territory builder labelled “Custom layers” where you can find and use the custom files that were uploaded to create new territories just like the built-in layers that were already available.

##
 Heatmaps

The heatmaps menu is similar to the menu for searches and territories and can be found by clicking heatmaps from the main app menu. Groups can be created here in the same manner they are created for searches and territories as well.


 When clicking the new item button for heatmaps, you will see a dropdown where you will be prompted to choose a column from the connected heatmap data to use to create a heatmap. Choose one of the columns available in the dropdown. From this point you can choose colors for the heatmap and then save the heatmap using the color circle and save icons just as was done when creating searches and territories.

Depending on the column you chose for the heatmap however, you will get different options in the color picker for the heatmap. If the column you chose is a numeric column you will see tabs in the color picker to choose a color for the upper bound and lower bound for your data. The app will then create a gradient between these two colors to use when displaying the heatmap.


 If the column you chose for the heatmap is categorical, you will see a list of all values from the column that was chosen, and the app will let you pick a color for each of those values.


 After picking colors, click the save icon to name and save your heatmap.

*Note**
 : Only one heatmap can be displayed at a time, as opposed to searches and territories, where many can be displayed at once.

##
 Dynamic Shapes

Dynamic shapes in the Flex Map app are data driven, so interaction with them is a little more limited than other items in the app. The purpose of Dynamic shapes in the app is to have constantly updated lines or shapes display with their related metrics on the map that are read directly from a dataset in Domo. For example, you may want to display shipping routes and their real-time status on the map.


 After the data for dynamic shapes has been correctly prepared (see implementation guide for details), clicking on “Dynamic Shapes” in the menu will take you to a list of all of the shapes that have been read from the data. You will see “show all” and “hide all” buttons at the top of the list that can be used to toggle on or off all of the shapes. You can also click the eye icon next to each item to toggle on or off each individual shape if so desired.


 Because these shapes are data driven, that is the limit to what can be done with these in the menu. These items cannot be deleted or edited or shared in the app, nor can they be added to groups. Any changes to these shapes and their data needs to be done on the data level.

##
 Favorites

The favorites menu is where you will find any locations that have been favorited in the app. This is so users can quickly find important locations upon return to the app. Locations can be favorited in a few ways.


 If a user uses the main search bar on the map and enters a search, this returns a list of matching locations. A user can then click the star icon next to a location to favorite it. Additionally, when a user is in the Searches menu and clicks the list icon, the app will show a list of all currently displayed locations. Users can click the star icon here to favorite a location as well.

When viewing favorites, you can create groups that you can add favorites to as can be done with searches, territories, and heatmaps. You can also delete any locations from favorites here by clicking the delete icon on the favorited location. Click the eye icon to toggle a favorited location on or off

Admin users can also share favorited locations here by clicking the share icon on the favorited location.

##
 Saved Maps

At any time, a user can click the “Save Map” button located in the bottom right corner of the map. This will save any combination of displayed searches and territories as a saved map. The user will be prompted to enter a name for their saved map at this point as well. These saved maps can then be found by clicking “Maps” in the main app menu. Here, saved maps can be added to groups or deleted just like other items in the app. Admin users can also share saved maps by clicking the share button on a saved map.

User Permissions and Features
-------------------------------

Admin users have been mentioned many times previously. The app actually has three different levels of user permission available; Admin users, standard users, and view only users.


 To assign users to these different levels they will need to be added to a group within Domo. Admins need to be added to a group called “\_FlexMap\_Admins”, view only users need to be added to a group called “\_FlexMap\_ViewOnly”, and standard users will not be added to either of those groups. If those groups do not yet exist in your instance of Domo, review the implementation guide for the app and have a Domo Admin create these groups in your instance of Domo.


 Admin users can create, edit, and delete items in the app, share items they have created by clicking the share button on an item and selecting a Domo group to share it to, create custom territories, and set a default map and default center by using the buttons that appear for Admins only on the bottom of the map. (See more about setting map defaults in the following section)


 Standard users can create, edit, and delete items in the app, and view items that have been shared by admins. They cannot share items, create custom territories, or set a default map or default center.


 View only users can only view items that have been shared with them by admin users. They cannot create, edit, or delete items. They also cannot share items, create custom territories, or set a default map or default center.


 Map Interactions
------------------

After creating searches, territories, and heatmaps, you are ready to interact with these items on the map.


 Searches display as colored dots on the map called pins. If they are an individual location, they will be a small dot with no number in the middle. If they are a clustered location, the dot will be larger and have a number in the middle representing how many locations are grouped together. Zoom in to a clustered pin to see it break apart into the distinct locations. Clicking a clustered pin will zoom in to that location by one level. Clicking an individual pin will open a details panel for that location that shows additional information for that location that was set up when the app was implemented. If any of this additional information are URLs, they will show up in orange and will be clickable. If any of this information is a link to an image, it will show up as the image in the detail panel. Hovering over an individual pin will show a tooltip for that location that was configured during implementation.


**Note**
 : URL links will only work if the URL is whitelisted in your instance. See the implementation guide for details.


 Territories are displayed on the map as a filled-in border around the geographical area. Hovering over the territory will show you the name of the location you are hovering over.


 Heatmaps are displayed as multi-colored areas filled in with colors representing the value of the heatmap metric. Hovering over the heatmap will show a tooltip with the metric the color of the area represents and clicking a heatmap area will bring up a tooltip showing all related heatmap metrics for that area. You will also see a legend of what each of the colors of the heatmap represents in the bottom left corner of the map.


 As mentioned in a previous section, in the top left corner of the map you’ll see a search bar. Type any search here to show pins that match the search that you enter. Use this to quickly find a single location, or group of locations, or to create favorites by clicking the star next to the location in the results.


 For admins, you will see a “Set as Default” and a “Set as Center” button at the bottom of the app.


 Clicking the “Set as Default” button will save any displayed searches, territories, and heatmaps as the map default. This means that any user that loads the app will see these default items when the app loads, as long as the items have been shared with them.


 The “Set as Center” button will take the current viewed area of the map and set it as the default center. So, if an admin wanted to set the contiguous United States as the default view and zoom, they would adjust their view so that those 48 states are visible and zoomed to the desired level and then click this button to set it as the default. Then, any time any user opens the map, they will be shown that area with the set zoom level.


 How Do I Get This?
--------------------

To begin using the Flex Map App, locate the app in the Domo AppStore or have an admin contact your Customer Success Manager.*

FAQ
-----


####
 Why is this important?

Enable you to plot locations on a map, overlaid by territory shape files and heat maps, to gain insights into geographical data.*

###
 How Do I Use/Demo It?

Upload a dataset to power pin locations based on lat/long and heat map metrics. Use the app to build territories and save searches/heatmaps.*

###


