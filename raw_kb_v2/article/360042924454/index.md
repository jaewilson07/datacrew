

Intro
-------

You can add custom charts via the following formats to your Domo instance in the Admin Settings or the Analyzer.

 **SVG (Scalable Vector Graphics) -**
 Are an XML-based markup language for describing two-dimensional based vector graphics.
* **KML (Keyhole Markup Language) -**
 Is a file format used to display geographic data in an Earth browser such as Google Earth.
* **GeoJSON -**
 Is an open standard format designed for representing simple geographical features, along with their non-spatial attributes.
* **TopoJSON -**
 Is an extension of GeoJSON that encodes geospatial topology and that typically provides smaller file sizes.
* **Shape -**
 ESRI standard file format. Includes geospatial vector data (import Google Earth and export as KML).

Once you have added a chart, it becomes available for users to select in the "Custom Charts" menu in the

Chart Picker in Analyzer

. This allows your users to build visualizations pertinent to your business that are not available by default in Domo. Depending on the complexity of your charts, you may be able to upload charts without having to edit the SVG, or you may have to make extensive changes, which will most likely require a working knowledge of XML.


 You can also use the Custom Regions tool to upload a DataSet that includes a column for the new custom regions matched with the sub-regions within them. This is not as robust as building your own SVG files but does not require a knowledge of XML. For more information, see

Creating a Map with Regions

.


**Note:**
 You must have an "Admin" default security role or a custom role with "Manage All Cards and Pages" enabled to add custom charts to your Domo instance. For more information about default security roles, see

Managing Custom Roles

.

As a simple example, let's say user JJ, an executive at a doll factory in Hong Kong, wants to build a card showing sales of a new line of dolls throughout all the districts of Hong Kong. With the set of preinstalled maps available in Domo, she would have no way to do this. However, with Domo's custom charts feature, all JJ has to do is go online, download an SVG map of Hong Kong, then add it to her Domo in the Admin Settings or in Analyzer. The map is now available for JJ to use as well as anyone else with card-building permissions. JJ creates her card in the same way she would create any other map card—by uploading the DataSet with her sales data, opening the Analyzer, selecting the "Hong Kong" map type, and plugging in the columns from the DataSet. The resulting map looks as follows:

As a slightly more complex example, let's say user Rodrigo manages a number of time share properties in the United States. These properties are divided across five distinct regions—West, Southwest, Midwest, Southeast, and Northeast. Rodrigo wants to be able to see at a glance the revenue gained from each region. Again, Domo does not include a preinstalled map for regions of the United States (and if it did, the states in each grouping would probably not exactly correspond to the states in the regions in Rodrigo's company). In this case, because custom grouping of regions is required, Rodrigo will need to customize an SVG map of the United States to incorporate grouping. Luckily he has a basic knowledge of XML, so without too much trouble he is able to add the required grouping tags in order to divide up the map as needed:

These are two relatively simplistic examples of how Domo users might implement custom charts. More complex examples might include non-geographical maps such as college campuses...

...layout charts for airplane seats...

...and even assembly instructions, like the ones for this car bumper:

With custom charts, you are limited only by your imagination, expertise, and amount of free time. Be aware that charts like those shown in the previous three examples are extremely complex and will require an extensive knowledge of XML to build. Also be aware that some XML tags are not supported at this time. These will be listed later in this article.

*Important:**

The maximum size of an SVG, KML, GeoJSON, TopoJSON, and Shape file


 that can be imported and converted is 25 MB

.


**Video - Custom Maps and Charts**

Summary of steps
------------------

In general, the process for adding custom charts to your Domo and building cards from them will go as follows:

. Obtain the chart you want to add.
2. Edit the XML if necessary.
3. Add the chart to Domo in Admin Settings or Analyzer.
4. Build your chart card in Analyzer.

Obtaining an SVG chart
------------------------

In most cases, you can obtain an SVG chart for use in Domo by either a) downloading it from the Internet, or b) building it yourself.


 If you want to install a map for a country not available in Domo, you can download it from any of a number of websites, such as

http://www.amcharts.com/svg-maps/

and

https://simplemaps.com/resources/svg-maps

. These sites also include maps for overseas territories such as French Guiana, Aruba, and so on. Once you have downloaded one of these maps, you can immediately upload it to Domo—there is no need to manipulate the XML (unless you are planning to divide it into subregions).


 If you want to build an SVG chart yourself, you can do so using any of a number of vector-based drawing applications such as

Adobe Illustrator

or

Inkscape

. For information about these or other applications, please refer to their documentation.


 Editing the XML for your chart
--------------------------------

If your SVG is not a simple regional map or requires any customization, you will need to edit the XML to incorporate the necessary changes. Based on the desired customizations and the complexity of the chart, these edits may be miniscule or extremely extensive. It is possible that you may attempt to upload an SVG chart to Domo and encounter an error; this is usually the result of unsupported tags in your XML. In this case you will need to either strip out the problematic tags or replace them with supported tags.


 This section provides lists of tags supported by Domo's SVG converter along with those that are not currently supported.

##
 Supported XML tags


####
 Supported shape tags

The following shape tags are supported:

 path

(all path commands are supported except rotating an arc)
* rect
* circle
* ellipse
* line
* polyline
* polygon

Of these, you can include data for all except

line

and

polyline

.

###
 Supported style tags

The following style tags are supported, either with a tag, in the

style

attribute, or from CSS embedded in the SVG. (These tags cannot include data.)

 fill
* stroke
* stroke-width
* fill-opacity
* stroke-opacity
* opacity


####
 Supported transforms

Domo provides LIMITED support for the following transforms:

 matrix()
* translate()
* scale()
* rotate()


####
 Text tag

The

text

tag has LIMITED support. You cannot set the font, but Domo will attempt to use whatever font color and size you specify.

rotate()

is supported with

text

tags. You can also use the

matrix()

transform to rotate a

text

tag.

##
 Unsupported XML tags

Domo's SVG converter does
 *not*
 currently support any of the following:

 Gradient paints
* Patterns
* Filters
* Other complex fills
* Embedded images


###
 Understanding SVG file structure

The following XML code was taken from an SVG file for a country map of Colombia. This shows the basic format for the file, with extraneous elements removed for simplicity and most path data elements condensed (indicated by ellipses). All of the tags used in this file are supported in Domo.


 path

tags always include the

d

subtag, which indicates the path data elements for a particular region, along with at least one other subtag to indicate a unique ID or name for a region. In the above example, each region path includes an

id

and

name

subtag. These tags are important because they also correspond to the region columns in your DataSet. When you build a map in Analyzer, you do so by dragging a region column into the "State Name" field above your map preview. (For more information about applying columns, see

Applying DataSet Columns to Your Chart

.) So in this example, your DataSet would need to include at least one of the columns referenced above—either a column with region IDs or names—to match up with your SVG map.

*Note:**
 If an attribute of

data-name

is found, this will be the name used to target data. If this attribute does not exist, the next in priority is

name

. If neither of this is specified,

id

will be used.

You could also add other subtags as necessary to account for other possible names that may be used in a DataSet. For example, DataSets for most country maps include a column for ISO 3166 regional codes. So in the "Colombia" example above, the XML could include a third subtag with the code for each region. We can simply call this tag

code

. So under the

name="Amazonas"

tag you could add something like

code="01"

(because the ISO 3166 code for Amazonas is "01"), and then follow up in similar fashion with the other regions.


 The following example shows a simple DataSet with columns that correspond to the previous code example (with an "ISO 3166" column added as suggested in the preceding paragraph):

If you want to combine regions in a map into larger regions, you can do so by grouping all

<path>

tags in your SVG file into their appropriate groups then enclosing each group within

<g>

and

</g>

tags. All

<g>

tags in your file must include an

id

and/or

name

attribute.


 The following code sample shows a portion of an SVG file with grouping included. This code is for a U.S. map divided into a number of different groups. Two of these groups, "West" and "Southwest," are represented in this screenshot.

To access the full code sample so you can start building USA region maps, click here:

usa\_regions.svg

. Remember that you can customize regions as desired just by cutting and pasting

<path>

tags for states into the appropriate group. For example, this file places Oklahoma into the "Southwest" group, but if you wanted to move it into "Midwest," you could do so just by copying and pasting into the group with the

id

of "Midwest." You can also add or delete groups as necessary.


 Adding custom charts to Domo
------------------------------

Once you have acquired the chart you want to add to your Domo instance—and edited the XML if necessary—the next step is to upload it to your Domo. You can do this in either of the following locations:

 In
 **Admin Settings > Company Settings > Custom Charts**
 . You cannot access
 **Company Settings**
 unless you have an "Admin" default security profile or a custom role with "Manage All Company Settings" enabled.
* In the Chart Picker in Analyzer, by choosing
 **Custom Charts**
 then clicking the "+" button at the bottom of the pane. This button does not appear unless you have an "Admin" security profile or a custom role with "Manage All Cards and Pages" enabled.

For more information about default security profiles, see

Managing Custom Roles

.


**To add a custom chart to Domo in the Admin Settings,**

. Navigate to
 **More**
**> Admin Settings > Company Settings > Custom Charts**
 .
2. Click
 **Add Chart**
 .
3. Do one of the following:

* Drag and drop your file into the "Drop file here" field.
	* Click
	 **Select File**
	 , navigate to the desired file, and select it.
4. (Optional) Rename the file and enter a description if desired.
5. Click
 **Save**
 .

*To add a custom chart to Domo in the Analyzer,**

. Open the Analyzer for a card.
2. In the Chart Picker, select
 **Custom Charts**
 .
3. Click the "+" button at the bottom of the
 **Custom Charts**
 pane.
4. Do one of the following:

* Drag and drop your file into the "Drop file here" field.
	* Click
	 **Select File**
	 , navigate to the desired file, and select it.
5. (Optional) Rename the file and enter a description if desired.
6. Click
 **Save**
 .

The chart is now available in the
 **Custom Charts**
 dropdown in the Chart Picker in Analyzer. If at any time you want to delete this chart from Domo, you can do so by going into
 **Admin Settings > Company Settings > Custom Charts**
 , selecting the chart, then choosing
 **Delete**
 from the wrench menu in the top right corner. Similarly, if you want to switch the file for a chart, you can do so by choosing
 **Change file**
 from this same menu.


 Building your chart in Analyzer
---------------------------------

After you upload your chart to Domo, you can build a card from it in Analyzer just as you would any country map. For instructions about building country maps, see

Country Map

. Note that these instructions hold true for any custom chart you upload into Domo, whether or not it is a geographical map.


 Chart properties for custom charts are the same as those used in most geographical maps. For a list of these properties, see

Properties for Maps

.


 Adding drill path to custom charts
------------------------------------

You can add drill path to custom charts so you can drill from one custom chart to another. You do this

the same way as you would for any other chart

. Note that for this to work, you must give the custom chart you are drilling to the
 *same name*
 as that of the group on the top chart you are drilling on. For example, if you had a custom regional map of America, and you wanted to drill to another custom chart on the "Western Region," then the next custom map would need to be called "Western Region."

