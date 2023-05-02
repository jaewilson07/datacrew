

Intro
-------

The Data Warehouse in Domo provides a three-dimensional visual representation of all DataSets in your Domo, broken down by connector, along with data currently flowing into and between them. DataSets for each connector type are represented as stacks on a rotating palette. You can configure the order and height of the connector stacks to indicate different metrics. For example, you could sort the connector stacks by number of rows but have the height of the individual stacks represent the number of DataSets.


 You open The Data Warehouse by selecting
 **Data**
 in the toolbar at the top of Domo. The
 **Data Warehouse**
 tab is open by default. If you switch to another tab, you can return to the
 **Data Warehouse**
 tab by clicking

in the left-hand navigation pane.


 For more information about connecting to data in Domo, see

Data Center Layout

.

*Video - Introducing The Data Warehouse**

Manipulating the palette
--------------------------

Mousing over a stack causes the palette to stop rotating. You can click and drag the panel to move it manually. The panel can be moved in three dimensions. Dragging it left or right rotates it, but you can also drag it up or down. If you drag it all the way up, the view changes as if you were seeing it from the front. If you drag it all the way down, the view changes as if you were seeing it from above.


 When you mouse over a stack, an information panel appears for the connector. This panel contains the following information:

 Number of DataSets
* Total number of rows of data in DataSets for the connector
* Number of cards built using the connector

Understanding the stack and line colors
-----------------------------------------

Stacks are colored differently depending on their type and current activity. Colors are as follows:

 Green indicates a standard, fully functional data source connector such as MySQL or Adobe Analytics. These stacks appear closer to the edge of the palette.
* Blue indicates a Magic ETL DataFlow connector, i.e. a connector built up of multiple data sources. These stacks appear closer to the center of the palette.
* Orange indicates a warning state for one or more DataSets or DataFlows for a given connector.
* Red indicates that one or more DataSets or DataFlows for a given connector is broken and needs immediate attention.

Stacks may be accompanied by green or blue lines. These colors indicate the following:

 Green lines run from outside of the palette to data source connector stacks, indicating that data is currently being funneled to these connectors.
* Blue lines connect Magic stacks with the data source connector stacks used to power them. These lines appear only when you mouse over Magic stacks.

Understanding stack sorting and height
----------------------------------------

The arrangement of stacks around the palette and the height of the individual stacks indicate specified metrics. By default, stack arrangement indicates connector status and stack height indicates the number of rows of data found in all DataSets for the connector or all DataFlows. This is the case in the following example:

Sorting on the palette begins to the right of the long gray line and continues counter-clockwise around the palette, ending to the left of the gray line. So, in this example, connector stacks are sorted from the right side to the left side of the line by the connector status of the DataSets/DataFlows, with the broken (red) stacks appearing first, the orange (warning) stacks next, and so on. The height of the individual stacks represents the number of rows in the DataSets/DataFlows. However, you can change the criteria determined by the sorting and height. Sort position for a connector stack can represent any of the following:

 Connector status (default)
* Connector name (alphabetically)
* Number of cards built using the connector
* The number of DataSets for this connector
* Number of rows of data

Height of a connector stack can represent any of the following:

 The number of cards built using the connector
* Number of rows of data (default)
* The number of DataSets for this connector
* The number of issues for the connector

You can change the sort and height configuration in the
 **Sort by**
 and
 **Height by**
 filter menus, respectively.


 Searching in the Data Warehouse
---------------------------------

You can search for a specific connector or DataSet using the Search bar. When you click in the bar, you can access scrollable lists of all data sources, Magic connectors, and DataSets. If you select an item in the Search view, information specific to that item appears on the screen.


 Understanding the Data Source view
------------------------------------

When you click a connector stack, the view changes to show three-dimensional rectangular representations for all of the data sources for the connector. As with the connector-level view, you can move the panel to change the view, change the options in the
 **Sort by**
 and
 **Height by**
 menus, and perform a search. A panel at the bottom of the screen shows the data sources, number of DataSets, and number of rows for the connector.


 If you click a rectangle for a DataSet, the Details view for the DataSet appears.


 Troubleshooting WebGL issues
------------------------------

WebGL is a technology used for rendering interactive 3D and 2D graphics online. It is supported by all modern browsers: Google Chrome, Mozilla Firefox, Apple Safari, Microsoft Edge, etc. If you do not have WebGL enabled in your browser, an error message may appear when you try to open The Data Warehouse view.


 There are a number of things that can cause this error:


 1.     Your browser needs to be updated.


 2.     WebGL and hardware acceleration were disabled in your browser. If this is the case, try to enable it for your particular browser.


 3.     A browser plug-in has disabled your WebGL.


 4.     Your computer’s hardware does not support WebGL.


 5.     Your computer is in a low-power mode or battery mode and WebGL has been disabled.


 6.     You are running inside a VM, and hardware acceleration has been disabled.


 Click the following link to view a list of browsers that support WebGL. If you don’t see your browser listed, please update your browser to one on this list.

https://caniuse.com/#feat=webgl

If you still can't get WebGL to work, check to see if your hardware is WebGL compatible.


 WebGL uses the graphics card in your computer so it will not interfere with your main CPU to slow down your computer. If your computer does not have a capable graphics card, you will not be able to view anything in WebGL. In this case, you will need to upgrade your graphics card.

