


 New Features and Enhancements
--------------------------------

Features and enhancements in this release include the following:

##
 PDP Improvements

The following improvements have been made to PDP (Personalized Data Permissions), giving you even more control over who sees what data in your company.

###
 Dynamic PDP

Your company is growing, and so is your company's use of Domo. You need an easier way to configure how each person accesses only the appropriate data.


 Dynamic PDP makes your job easier. Instead of selecting individual values in specific columns to pertain to users or groups, you select a column and a user attribute, and Domo takes care of the rest, only allowing people to see the rows that match that user attribute. And because user attributes must be locked by an "Admin"-level user before they can be used in a PDP policy, you can feel just as secure as when you use a standard PDP policy.

For more information, see

Creating and Deleting PDP Policies

.

###
 Custom PDP Filters

For more precise control over the rows used in PDP policies, use custom PDP filters. This allows you to set rules for values that are returned, using general filter conditions such as "is greater than," "is between," "begins with," and so on. For example, if you had a subset of users who should only be allowed to view data within a certain date range, you could create such a filter here.

For more information, see

Creating and Deleting PDP Policies

.

###
 PDP on DataFusions

Scaling and security go hand in hand now that DataFusions support Personalized Data Permissions. Build powerful, scalable DataFusions and use PDP to control access. PDP can be applied to either the inputs to the Fusion, the DataFusion output itself, or both. Domo seamlessly calculates across all your data so your users only see what they’re supposed to see.


 For more information, see

PDP and DataFlows

.

##
 Domo Stories

Domo Stories allow you to easily create beautiful Domo Dashboards with powerful narratives. Because each layout has been optimized individually for web, mobile, tablet, print, and Scheduled Reports, each Domo Stories Dashboard tells a consistent story no matter where it's viewed.


 You can create your own Card layout, or choose from one of over 100 template options to bridge the gap between understanding the data and taking action. Domo Stories also create consistency and clarity as they use pre-established templates. This ensures that different device restrictions don’t change the meaning and context of a story.


 Domo Stories give you more freedom to tell your data stories and communicate the things that matter most to your end users.

When building Domo Stories Dashboards, you can do all of the following:

 Create the exact layout you want by adding card slots then resizing.
* Add new Card layouts based on a variety of Domo Stories templates.
* Drag and drop Cards into the slots in the layouts you have added.
* Create new Cards in empty slots.
* Resize templates and the Cards within them by dragging their borders.
* Swap Cards in a layout by dragging one card on top of another.
* Add headers and borders.
* Add images and Notebook Card content inline, without having to first open the Doc Card upload screen or Notebook Card editor.
* Change the background color of your Page and individual Cards.
* Specify which Card elements appear (for example, you could hide the Summary Number for a Card).
* Define the actions that take place when a user clicks on a Card. Actions include:

+ Opening the Card details view in a new browser tab.
	+ Enabling Interactions Filters for all cards for all Cards on the Page or for selected Cards.
	+ Opening other content in Domo, either in the same browser tab or in a different tab.
	+ Opening a specified web page.

You can also export Domo Stories Dashboards as PDFs.


 For more information about Domo Stories, see

Creating Domo Stories

.

##
 Card-to-Card Filtering

Business insights pop off the page when you use Card-to-Card Filtering. These filters allow you to see relationships between Cards simply by hovering over values on an individual Card. Get insights in second that used to require extensive Page filtering or additional clicking in and out of Details. Analysis of your business data has never been this easy.


 With Card-to-Card Filtering, you can also click on a chart element to apply a filter for that element to all cards in the page. For example, if you clicked on the bar for "2014-Jan," all cards would be filtered to that month. This also works for rows in tables. You can turn off this filter by clicking the element again.


 Card-to-Card Filters are automatically enabled in Domo Stories Pages. To turn on Card-to-Card Filters in standard Pages, first turn on Page Filters by selecting

***> Turn on Page Filters****
 . An
 ****Interaction Filters****
 toggle appears and is turned on by default. You can disable or reenable Card-to-Card Filters by clicking this toggle. If you turn off page filters, Card-to-Card Filters also turn off.

For more information about Card-to-Card Filters, see

Applying Page-Level Filters

.

##
 Filter Chart Types

New Filter chart types—Slicer, Checkbox, Radio Button, Range, and Date Selector—make filtering data on a card page even easier. Once you have added a Filter Chart Card to a Page, anyone viewing it can click on one or more values to filter the other Cards on the Page.

 **Slicer**
 ,
 **Checkbox**
 , and
 **Radio Button**
 charts are all used to filter on specific values. For example, you could create a Card with a Slicer chart containing names of U.S. states and add it to a Page. If you then clicked "Texas" and "Oklahoma," all of the Cards in the Page would be filtered to show only data for those states. With Slicer and Checkbox charts, anyone can apply as many filters at a time as they want. With Radio Button charts, users can apply only one filter at a time.
* **Date Selector**
 charts are used to filter on a specified date range. For example, you could build a Card with a Date Selector chart containing a 2014 calendar. If a user then selected all dates from February to June, all other Cards in the Page would filter to show data for those dates.
* **Range**
 charts are used to filter values within a range using a slider. For example, you could build a Card with a Range chart with a minimum value of $2000 and a maximum value of $4000. Viewers could then narrow the range using the slider buttons, and the other Cards in the Page would update to show data for that range of values.

You can apply filters from multiple Cards. These should apply to any card so long as all of the selected criteria pass the filters. If any filter you have selected doesn't apply to a card, an "Out of range" error appears.


 Cards with Filter charts only work when Card-to-Card Filters are turned on. If Card-to-Card  Filters are not turned on, clicking a filter opens the Details view for the card instead of applying the filter.


**Slicer Card**

*Checkbox Card**

*Radio Button Card**

*Range Card**

*Date Selector Card**

You build Filter cards in Analyzer, just like any other chart type. For more information about building Slicer, Radio Button, and Checkbox charts, see

Date Selector Chart

.


 For information about using Filter cards on a page, see

Applying Page-Level Filters

.

##
 Chart Improvements

For this release, we have added a number of exciting improvements to our charting functionality.

###
 Trellis Charts

Add richness to your charts by including up to 2 additional dimensions. These additional dimensions are represented in the chart by overlaying boxes on top of each grouping. For example, the following Grouped Bar chart shows revenue by product by campaign by lead source.

Note that this functionality is intended to be used with
 *string*
 columns, not date columns. To add date grouping to a chart, it is recommended that you use Tiered Dates, the next item in this list.


 Trellis Chart functionality is available for all graph types that utilize series data, like Bar graphs, Line graphs, and Area graphs.


 For more information, see

Applying DataSet Columns to Your Chart

.

###
 Tiered Dates

Tiered Dates allow greater ease of understanding by presenting multiple time periods in a single view. For example, you can now show weekly data that is also grouped by month and by quarter—all on the same chart. For any chart, you can choose up to 3 date tiers.

For more information, see

Applying DataSet Columns to Your Chart

.

###
 Data Tables for Charts

Get more insights from your data by including data tables under your charts. This allows your viewers to see the underlying data in your chart without having to lose context by switching to the
 **Table**
 tab in the chart Details view.

Data tables appear for charts
 *only*
 in the Details view, not in the Page view. This functionality is available for most vertical graph types.


 For more information, see

Properties Available for Most Charts

.

###
 Flex Tables

Use Flex Tables to display detailed, customized information about individual series in a DataSet. You can customize rows in a Flex Table to show any of the following for each series in your data:

 The name of the series
* A Spark Line or Spark Bar graph representing the series
* A change indicator that shows at a glance whether overall change for the series has been positive or negative
* The percent of change for the series
* The actual amount of change for the series
* The first, penultimate, last, minimum, maximum, or average value for the series

The Flex Table in the following example screenshot shows the name, a Spark Line, a change indicator, and the percent of change for each series in the data:

You can include up to 10 columns in any given Flex Table.


 For more information about Flex Tables, see

Flex Table

.

###
 Dynamic Textboxes

Dynamic Textboxes let you build text Cards with dynamic fields that update whenever your data updates. More than a dozen macros are available, allowing you to reference information from your DataSet such as change percentage, column names, first/last/penultimate value, minimum/maximum/average value, first or last category, and so on. In the following example textbox, all of the called-out fields are set to update dynamically based on the content in the DataSet:

The text can be as long as you want and can contain any character. You can format text style and alignment and margins, as well as change the font size, color, and style.


 For more information, see

Dynamic Textbox

.

###
 Multi-Period Projection

New multi-period projection functionality lets you project as many future periods onto a chart as you want. All multi-period projections are based on linear regression models (though a number of different options are available for configuring your linear regression). Multi-Period Projections are available for vertical Single Bar, Grouped Bar, Stacked Bar, and Running Total Bar graphs, as well as most Line graphs.

For more information, see

Projecting the Last Value in Your Chart

.

###
 Enriched Tooltips

With our new enriched tooltips functionality, you can use macros in data labels and hovers to reference columns you have dropped into the
 ****Tooltip****
 fields above the chart preview. You can use up to 3 such fields. This is an excellent way to show data for columns that aren't being used to build the chart. For example, in a chart showing sales over time, you may want to also see the profit and cost values for a particular time period. You could use enriched tooltips to incorporate these values into the data labels or hovers in your chart, allowing your viewers to see the extra data while maintaining an uncluttered chart.

For more information, see

Formatting Data Label and Hover Text in Your Chart

.

##
 DataSet Certification

Ensure you’re using trusted data to build your Cards with new DataSet certification. Simply choose
 **Request Certification**
 from the wrench menu to start the certification process.

Two important things to note:

 Only DataSet owners—
 **not**
 co-owners—can start the certification process for the DataSet. If a request for certification is submitted by someone other than the owner, a message is sent to the owner informing them that certification has been requested. That person can then choose whether or not to go in and request certification.
* The certification will expire if the DataSet undergoes a schema change (i.e. columns are deleted or renamed), a configuration change, or an account change.

For more information about certifying DataSets, see

Certifying Cards and DataSets

.

##
 Mobile DataSet Details

DataSet details are now available in the Domo iOS and Android apps, so you can get quick insight into DataSets even while running your business from your phone. DataSet details give you context to better understand the data powering your Cards, including last run information, the owner, size, Cards powered by the data, and people with access.


 To use the new mobile DataSet details, update your app from the Apple or Google Play stores. After updating, navigate to a Card and tap on the DataSet information below the Card.


###
 Sample Apps for Popular Connectors

What's better than having awesome visualizations of your data? Not having to build them all yourself. Increase your time-to-value by using our Sample Apps for popular connectors. Sample Apps provide representative catalog content for incoming data whenever you power up a Domo Connector, so you have a big head start when building visualizations for your data.


 To deploy a Sample App for a connector, just click
 **Get the Sample App**
 when powering up the connector. Note that Sample Apps use your own DataSet data,
 *not*
 sample data.

For more information about deploying connectors, see

Adding a DataSet Using a Data Connector

.

##
 Accounts API

Now you can manage all of your accounts at scale directly from the Accounts API. The Accounts API allows you to create, update, validate, and share accounts through an internal system or a Domo App that can be customized to send alerts to users when they need to update credentials.


 Visit

https://developer.domo.com

to get started with the Accounts API.


 Features Available by Request
-------------------------------

The following features are now available
 *by request*
 . If you are interested in having this features turned on for your instaince, please reach out to your CSM or sales representative.

##
 Improved Navigation

Domo has transformed your experience by making it easier to find and organize content. Specifically, this means you can now...

 create a second level of subpages,
* add Dashboards as Favorites,
* scroll for quick and easy discovery of your Dashboards,
* find Dashboards by name in the filter menu,
* quickly manage, organize, and create Dashboards, and
* hide the Dashboard menu to take advantage of more real estate on the screen.


###
 Enhanced Dashboard Filters

Enhanced Dashboard Filters bring more clarity, context, and simplification to Page filtering. Instead of choosing a DataSet to filter on, you can choose your filter columns from a list of all available columns used in Cards on the Page. And summary text on each Page appears whenever filters are applied, so you quickly see which filters are applied as you dive into your data.

##
 Enhanced Analyzer Card Filters

With the new filtering improvements in Analyzer, you no longer need to create a Beast Mode LIKE function if you want to filter on a value that contains a specific word. You also don’t need to open a DataFlow just to change the data type for a column. These options are now available using the new Analyzer filter options.

##
 OPC Plugin

Sync all of your OPC-compliant devices directly in Domo to watch how all your industrial devices and systems are performing in real-time. OPC data can update in as little as 2 minutes.


 Getting Help
--------------

You can view the latest release notes information in the Help Center, which you can access from Domo by clicking by clicking

in the top navigation bar .


 If you have questions about Domo,

 search for a topic in the Help Center
* train in Domo University at

http://university.domo.com
* search for training apps in the Appstore
* get answers in the Domo Community at

https://dojo.domo.com
* contact Technical Support by entering a help ticket in the Domo Support Portal or by sending a Buzz message to

/support

.
* reach out to your Domo Customer Success Manager or Technical Consultant

If you have feedback, please send it from within Domo (

***> Feedback****
 ). Or send an email to

product.feedback@domo.com

.


 For more information about getting help, see

Getting Help

.

