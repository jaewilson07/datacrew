


 New features and enhancements
--------------------------------

Features and enhancements in this release include the following:

##
 Build your own Writeback Connector

Using the Connector IDE, build a Writeback Connector that will send data from Domo to your external systems. Writeback Connectors give you the power to share data between your business systems that currently don't talk to each other. And now, if Domo’s library does not yet include what you need, you have the expanded ability to build your own. For more information, visit

https://developer.domo.com/docs/writeback-connectors/build

.

##
 Data Science Home Page

The Data Science Home Page shows all of the powerful data science tools in one place, gives you quick access to the data science tools, outlines the products and services, and where tools fit into the data science maturity journey. For more information, see

Data Science Home Page

.


###
 Python and R SDK enhancements

The R and Python SDK's have been updated to use the same function naming for both languages and to have the same functions available in each. For more information, visit

https://developer.domo.com/docs/domo-sdks/sdks

.

##
 Scheduled Reports security options

With the new Scheduled Reports security options, Admins now have the ability to enable the
 **Limit to Domo users**
 option. When this setting is configured, Domo blocks scheduled reports to any external email address, only email addresses tied to an existing account will receive reports. For more information, see

Scheduling Reports

.

##
 Auto-Width Dashboards

With the Auto-Width Dashboard setting, Dashboard content will expand to fill all the available window space. This will allow for more rows/columns to be visible from the Dashboard view. This is enabled on a per-Dashboard basis to allow you to customize your Stories. For more information, see

Creating Domo Stories

.

##
 New custom import chart types

With the new custom import chart types, you can now create custom charts from more than just SVG files.


 The following formats are now supported:

 **KML (keyhole markup language) -**
 is a file format used to display geographic data in an Earth browser such as Google Earth.
* **GeoJSON -**
 is an open standard format designed for representing simple geographical features, along with their non-spatial attributes.
* **TopoJSON -**
 is an extension of GeoJSON that encodes geospatial topology and that typically provides smaller file sizes.
* **Shape -**
 is an

ESRI standard file format. Includes geospatial vector data (import Google Earth and export as KML.)

For more information, see

Custom Charts

.

##
 Divergent colors

Divergent colors make it easy to quickly create and display range distributions by combining multiple color themes. Divergent colors allow you to pick any starting color and any ending color. In addition, you can pick the number of ranges to use. Divergent colors also provide you control of your midpoint. You can select the midpoint value and color or to not include the midpoint. For example, you can use diverging colors to make it easier to see hot to cold trends in your data by using a red theme combined with a green theme to show a more complete range of values. Divergent colors add this flexibility to Map and Heat Map Cards. For more information, see

Heat Map

.


###
 Week view in Calendar Cards

The week view in Calendar Cards add a new option to show as a “Week” view. This allows navigation by week and lets you customize the start of the week shown. For more information, see

Calendar

.


###
 Dependency Gantt chart

The Dependency Gantt chart handles changes in dates for you and gives many new display options to communicate project timelines, such as:

 Calculate end dates from dependency and duration data.
* Show dependency data relationships.
* Display milestones.
* Show projects and sub-projects in a hierarchy.
* Allow resource tracking and representation in the chart.
* Smart date calculations – automatically account for weekends or display them.

For more information, see

Dependency Gantt Chart

.


###
 Progress bar color ranges

The Progress bar chart now has up to four color ranges that can be used to augment your chart. You can specify a minimum and maximum value for each range and select the corresponding color you would like to display. For more information, see

Progress Bar Gauge

.


###
 Create a "top n" Trellis chart

The Trellis Chart Property now allows you to see just the top/bottom “n” in a category. For example, Top 5 Customers by Region. The Trellis Chart Property is found in most chart types. For more information, see

Properties Available for Most Charts

.


###
 Analyzer UI improvements

We’ve made it easier to work in Analyzer with the following improvements:

 Limit Rows in Analyzer is now grouped with Filter and Sort.
* Filter and Sort are combined into one section.
* Summary number dropdown and format changes now auto-saves, so you no longer need to click Apply.

For more information, see

Analyzer Layout

.


###
 Saved Search

With the Saved Search feature, you can save and easily come back to your common searches—no matter how complex they are. For more information, see

Searching in Domo

.


###
 Regional formatting for multinational corporations

Regional formatting allows Admins to set date and number formats globally on the Domo platform based on your region. Users can also now select their region as well as their language. Formatting conventions based on your region will now be used to display numerical, financial, and date/time values based on your region. For more information, see

Setting Your Time Zone and Regional Formatting

.


###
 Support for screen readers in Stories

Screen readers in Stories give expanded access for screen readers and keyboards to better enable customers to expose Domo content to users with accessibility requirements. Domo’s improved accessibility functionality allows customers to make their Cards screen reader-friendly, as well as find Stories, traverse layouts, and read Card details. For more information, see

Support for Screen Readers in Stories

.


###
 Buzz Status

The Buzz Status feature allows you to set your status on web or mobile to
 **Available**
 ,
 **Busy**
 ,
 **Away**
 , or
 **Out of the office**
 . When someone sends you a 1:1 message or @mentions you in a conversation and your status is set to something other than Available, they will see a warning message that states you are unavailable. You can also add custom messaging to your status message when you are unavailable. An icon on your avatar indicates your current status. For more information, see

Buzz Layout

.

Premium features
------------------

These features are available on demand and paid. To request these features be enabled, reach out to your Domo Customer Success Manager, Technical Consultant, or Account Executive. If you do not have contact information for your CSM, TC, or AE, contact Technical Support. For information on how to contact Support, please see

Getting Help

. Depending on the feature, you may be required to complete training before you can use the feature.

##
 Adrenaline DataFlow

An Adrenaline DataFlow is an Adrenaline powered, in-house built, high-scale, high-performance data-transformation tool for massive DataSets in Domo. It allows you to leverage investments and performance improvements made to the Adrenaline engine. Adrenaline DataFlows are a SQL script-based transformation interface (similar to MySQL & RedShift DataFlows.) For more information, see

Creating an Adrenaline DataFlow

.

##
 AutoML (Machine Learning)

Domo AutoML enables you to train dozens of ML models with just a few clicks, and deploy the best performing models to production. Go from data to models to outcomes faster.


 Domo makes it easy to:

 Automatically train and tune dozens of ML models.
* Launch hundreds of training jobs on any DataSet in Domo to find the model that achieves the best performance for your task.
* Easily deploy the model on your DataSet with the new AutoML tile in Magic ETL.
* All that is required to be successful with AutoML is a well-defined problem and a clean DataSet—Domo will take care of the rest.

For more information, see

AutoML (Machine Learning)

.

##
 Integration Studio

Integration Studio allows you to link disparate business systems together that otherwise would not be able to share data. Transform data, or add Data Science and AI before sharing to a different business system using the Writeback Tile in Magic ETL. For more information, see

Integration Studio

.

##
 Campaigns App SMS

The Campaigns App SMS add-on provides you with the ability to programmatically send SMS messages from Domo. This gives you the ability to contact non-Domo users through multiple avenues automatically for items such as: customer appointment reminders, staff & contractor shift rostering notices, unpaid invoice reminders, shipping updates, product “back in stock” alerts, etc.


 Use the Campaigns App SMS add-on to:

 Read cell phone numbers from a Domo DataSet to populate your list of recipients.
* Prepare your SMS message body content manually or populate it programmatically from Domo DataSet values.
* Manually send SMS message blast, schedule its run time, or trigger it using DataSet Alerts.

For more information, see

Domo Campaigns App

.

Beta features
---------------

If you are interested in joining the Beta for these features, please contact your Customer Success Manager (CSM).

##
 Filter Views (Beta)

Filter Views allow you to customize a single Dashboard to meet the needs of all audiences.


 With Filter Views you can:

 Save personalized Views that only you see.
* Curate and share important Views to create alignment on a specific perspective.
* Provide any number of personalized data stories for any person in any role.
* Designate which saved Filter View is the “default” for a Dashboard.

For more information, see

Applying Page Level-Filters and Filter Views

.


###
 Page Filter settings (Beta)

With Page Filter settings, you can now customize how your users interact with Cards on your Dashboard. You can toggle off
 **Allow adding of new filters**
 to have users only use Card interactions to filter. You can also turn off Date Filters if your Dashboard is built to look at a specific time frame. For more information, see

Applying Page Level-Filters and Filter Views

.


 Getting help
--------------

You can view the latest release notes information in the Help Center, which you can access from Domo by clicking

in the top navigation bar.


 If you have questions about Domo,

 search for a topic in the Help Center
* train in Domo University at

http://domo.com/university/
* search for training apps in the Appstore
* get answers in the Domo Community at

https://dojo.domo.com
* contact Technical Support by entering a help ticket in the Domo Support Portal
* reach out to your Domo Customer Success Manager or Technical Consultant

If you have feedback, please send it from within Domo (
 **More**
****> Feedback****
 ). Or send an email to

product.feedback@domo.com

.


 For more information about getting help, see

Getting Help

.

