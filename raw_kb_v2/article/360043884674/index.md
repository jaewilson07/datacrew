

Welcome to the Flex Map app! This guide will help you prepare and connect your data to the app. The Flex Map app is designed to help users map locations and territories to get geographical insights into their data, and discover relations between locations and important metrics. Follow the steps below to prepare your data for the app.

##

Data
------

This app requires a handful of datasets to be prepared to power four main parts of its functionality: mapping locations, displaying heatmap data, displaying data powered shapes on the map, and uploading custom KML or .shp files to display. The datasets for each part of the app breakdown the following way:


 Locations Data (2 datasets):

 Main locations dataset: rows of locations data mapped by latitude and longitude
* Locations Search and Display: a configuration dataset for the locations

Heatmap Data (2 datasets):

 Main Heatmap dataset: rows of data by region to display as numerical or categorical heatmaps
* Heatmap Metric Mapping: a configuration to map which columns from the heatmap data to use as metrics

File Mapping Data (1 dataset):

 File Mapping Metadata: a dataset with file names and ids of files that have been uploaded to the Domo Files API to use with the FlexMap

Data-Powered Shapes (2 datasets):

 Flattened GeoJson data: a dataset extracted from a GeoJson file that has been flattened so that each latitude/longitude coordinate pair from the file is represented on its own row in the dataset
* GeoJson Metric mapping: a configuration dataset to choose which fields from the GeoJson properties will be displayed when hovering over the shapes on the map.

Follow the instructions below to prepare each of these datasets.

##


###
 Locations Data

The app requires the following fields for the locations dataset. The required fields are case sensitive, so make sure you add these columns to your data with these exact names:


 Location Id


 Latitude


 Longitude


 Location Name


 Address


 SearchCache


 Any additional columns

 Location Id is a unique number/letter number combination for a location.
* Latitude: the latitude of a location
* Longitude: the longitude of a location
* Location Name is the name of the location and should be a one-to-one relation with the location id for the location. You can have multiple rows for a single location and the app will group the data for the location together by the id and name.
* Address: the address of a location
* SearchCache: A comma separated list of terms you want to use for the app to be able to use to find the location when searching using the main search bar of the app.
* Additional Columns: Add any additional columns for data and metrics for the locations you want to display with your mapped pins. Examples would be things like Region, any other address data, certain metrics, etc.


###
 Location Search and Display Preferences:

This is the schema for the configuration dataset (The column headers for this configuration dataset):


 ColumnName


 SearchInclude


 DisplayInclude


 DisplayOrder


 Description


 TooltipInclude


 TooltipOrder


 DisplayType

 ColumnName is the name of the column from your locations data that you would like to display in either the search or display details for a location.
* SearchInclude: Enter a 1 in this column if you would like to include the column in the search options and leave blank otherwise
* DisplayInclude: Enter a 1 in this column if you would like to include the column in the display details for a location pin.
* DisplayOrder: Enter sequential numbers in this column with the order you would like to display the columns in the location pin details. Ex. put a number 1 on the first column you’d like to see, then 2 for the second, etc.
* Description: A description of the column. This column needs to have at least one value for the app to function.
* TooltipInclude: Enter a 1 into this column on any row if you would like to include the data from that column in the tooltip when clicking on a mapped location.
* TooltipOrder: Enter sequential numbers in this column on any row where you have set TooltipInclude to 1 with the order you would like to use for the fields to be displayed in the tooltip.
* DisplayType: This setting is applied to both the tooltip and the display panel. Enter the word ‘image’ if the field represented on that row contains image urls. Enter ‘URL’ if the field represented on that row contains links to external sites. Otherwise, leave this blank.


###
 Heatmap Data:

This data is used to map metrics to regions for the heatmaps in the app. The most important columns from this data are the RegionCode and RegionType columns. The app uses statistical regions to create the heatmaps, so you will need to map your metric data to the region types that the app needs. For example, if you are in the USA and you have metric data based on zip code, you will need to map your zip codes to CBSA codes in order for the map to use your data. You can easily find data to map your data to these codes online. The app supports the following region codes/types: CBSA for the USA, CMA for Canada, SA3 for Australia, and NUTS 2 for Europe. Reach out to your Domo Admin if you need regions beyond what is available.


 Here is the schema of the heatmap data. These three required fields are case sensitive, so make sure you add them to your data named as seen below:


 RegionCode


 RegionName


 RegionType


 Your Metric Columns...


 Additional Metadata Columns...

 RegionCode: This is the code for the area that matches what you have listed in the RegionType column. For example, your region code on a row might be 30030 and your region type would be ‘CBSA’.
* RegionName: The name of the region if applicable, this column is optional.
* RegionType: One of the following values: CBSA, CMA, NUTS 2, or SA3. It should match the type of region code you are using in the RegionCode column.
* Your Metric Columns: Any columns with the metrics that you would like to use to build your heatmaps. You may add as many of these as you would like, but you will need at least one to use the heatmaps.
* Additional Metadata Columns: Any columns with metadata about the regions you would like to map that you could use Domo Page filters to filter down the data, these columns are optional.


###
 Heatmap Metric Mapping:

This dataset is used to choose the columns from your heatmap dataset that you would like to use in the app, and rename the columns for display in the app if needed.


 Here is the schema of the mapping dataset:


 ColumnName


 Label

 ColumnName: List the name of the metric column from your heatmap dataset that you would like to use as a heatmap metric in the app.
* Label: Enter what you would like the metric’s display name to be in this column. For example, if your column name is something like ‘populationAverage’ then you might enter ‘Population Average’.


###
 Dataset Powered Shapes Dataset:

This dataset is a flattened import of a GeoJson file. The data must be flattened so that each latitude/longitude coordinate pair from the file from each shape is represented on its own row in the dataset. See the bottom of this section for the suggested method of importing a GeoJson file into Domo.


 The purpose of this feature is to bring in a GeoJson file from a Domo dataset that may be frequently updated so that the map always shows the latest shapes and related data on the map. These are updated in real-time. This functionality is also optional. If you do not wish to use this feature, prepare the two datasets below with just the column headers and leave the datasets blank.


 The required schema for this dataset follows. The required fields are case sensitive, so make sure they are named accordingly in your data:


 Geo Id


 Geo Name


 Latitude


 Longitude


 Type


 Geometry


 Type


 (Any additional properties you want to use from GeoJson)

 Geo Name: A name for the shape that must be distinct to the shape. Can be created in a dataflow or pulled from one of the properties of the GeoJson.
* Latitude: The latitude from a coordinate pair on the shape. Pulled from the geometry -> coordinates property of the GeoJson feature.
* Longitude: The longitude from a coordinate pair on the shape. Pulled from the geometry -> coordinates property of the GeoJson feature.
* Type: From the type property, likely the value will be ‘Feature’.
* Geometry Type: From the geometry -> type property on your GeoJson. Two values are compatible here, either ‘Polygon’ or ‘LineString’ for drawing polygons or lines on the map respectively.
* Additional properties: Include any additional columns that you would like to use to display information or metrics when hovering over these shapes.

**Note on preparing your GeoJson data:***
 There is a connector available that can be used to import and flatten your GeoJson data. GeoJson can be imported using an HTTP request, from an SFTP connection or locally from your computer. Look for the “JSON no code” beta connector when creating a new dataset in the Domo data center and follow these steps:

. The connector asks for a username and password if using SFTP or basic connection. Enter these or leave them blank if doing local upload and then click “Connect”.
2. Under “Data selection” choose your connection type and enter the required information, including the URL to your file if using SFTP or HTTP request. If choosing local upload, choose the file you would like to upload.
3. For the “Parsing” section, after it finishes loading, click the dropdown arrow on the right to open the parsing interface.
	1. Click your features column, then click the “Unnest column as root” option at the top.
	2. Click your properties column and click “Flatten Object as columns”
	3. Click your geometry column and click “Flatten Object as columns”
	4. Find your geometry\_coordinates column. If your shapes are polygons, you will need to click this column then “Expand array as columns”, then click the resulting column and click “Expand array as rows. If your shapes are lines, you will only need to click “Expand array as rows”
	5. Scroll to the bottom and click “Next”
4. Set whatever schedule frequency you would like in the “schedule” section then name and save your dataset.

At this point dataflow this resulting dataset to get it into the schema explained above for this dataset and it should be ready to use.

##
 GeoJson Metric Mapping:

This dataset indicates which columns from the previous dataset will be used to populate the tooltip that appears when one of these shapes is hovered over in the app.


 The schema is as follows:


 ColumnName


 Label


 Aggregation

 ColumnName: The name of the column from the previous dataset that you would like to use to display in the shape’s hover tooltip.
* Label: Enter the value you would like to use as the label for the column that was entered under ColumnName.
* Aggregation: This can be either blank, ‘sum’, or ‘average’. Use this if you need to aggregate the column of a numerical column you are using in your data, because of the nature of importing GeoJson, in most cases you will likely leave this blank.


###
 File Mapping Dataset:

The final dataset that needs to be prepared is the file mapping dataset. The purpose of this dataset is to point the app to KML or .shp files that have been uploaded to the Domo Files API that the app can then bring in and use as custom territories in the app.


 These following are the required fields, though only File Name and File Id need values for this feature to work:


 File Name


 File Id


 Folder Name


 Folder Type


 Last Run


 Domo Data File Id

 File Name: The name of the file
* File Id: The Domo Files API id indicating the location of the file that has been uploaded.
* Folder Name: (Optional, can be left blank) If uploaded using the Automated File Upload utility app, the Folder name.
* Folder Type: (Optional, can be left blank) If uploaded using the Automated File Upload utility app, the Folder Type.
* Last Run: (Optional, can be left blank) The dateTime the file was last uploaded.
* Domo Data File Id: (Optional, can be left blank) If uploaded using the Automated File Upload utility app, the Domo Data File Id.

As soon as these seven datasets are prepared, you should be ready to connect your data to the app.


 Admin and View-Only Users:
----------------------------

This app supports different user levels including admin, standard, and view only users. Have an admin in the Domo instance navigate to the admin portal within Domo and create two Domo Groups. Name the first group “\_FlexMap\_Admins” and name the second group “\_FlexMap\_ViewOnly”. Users that are added to the Admin group will be able to share items they have created in the app with members of Domo groups, and use buttons at the bottom of the app to set a default map and a default center. Standard users aren’t added to either of those groups, and will get the standard functionality of the app, be able to create their own items, be able to see things that Admin users share with them, but won’t be able to share items or set defaults. View only users cannot create anything in the app, they can only view items that admin users have shared with them.


 Wiring Your Data to the App:
------------------------------

After the data is ready for the app, you can now deploy the app and connect your data. If you have access to the asset of the app, deploy the asset from the asset library to a page in Domo. If the app has been deployed for you with sample data, navigate to the app, click on the wrench in the top right corner of the app and click “edit card.”


 On the edit card screen that you get to from these two methods, you may re-name the app at the top of the screen if desired. After that, scroll down below the app and you will see a series of tabs that represent each of the datasets that the app needs. The first tab will say SCHEMA. Click that tab and then select the dataset you prepared as the search and display preferences dataset. Check the column dropdowns you see after selecting the dataset and re-map any columns to the correct columns if needed. Next, click the LOCATIONS tab and choose your locations dataset. Next, click the HEATMAP tab and select the heatmap dataset that you prepared. Last, click the METRICLABELS tab and choose the heatmap metric mapping dataset that you prepared. Click GEOJSON and upload the GeoJson dataset, then click GEOJSONMAPPING and upload the GeoJson Metric Mapping dataset you prepared, making sure that the columns are mapped correctly. Finally, click the FILEMAPPING tab and upload the file mapping dataset you prepared, mapping the appropriate columns. Click save and finish at the top of the page and your app should be ready to go!

##
 Using the App:

Use the button at the top left of the app to open up the app’s menu. In this menu, you can choose a handful of options to map out your data. Searches will allow you to search for a subset of your locations data to map as pins on your map. Territories will allow you to use predefined options to create territories on the map, as well as draw custom territories freehand to display. Here, admin users will also find the custom territories button where you can configure which of your mapped files you would like to use in the app.


 When you have any combination of pins and territories displayed on the map, you can click the save map button on the bottom right of the app to save your view as a saved map. You can navigate back to your saved maps using the saved maps tab in the menu. You can also favorite saved maps to appear in the favorites tab in the app as well. Using the heatmap tab will allow you to choose a heatmap metric to display on the map. Clicking on dynamic shapes will allow you to see the GeoJson shapes you uploaded to the app.


 Enjoy getting new geographical insights from your data!

