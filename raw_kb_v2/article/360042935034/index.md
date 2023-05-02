

New features and enhancements
-------------------------------

Features and enhancements for our May 2018 release include the following:

##
 Alerts Wizard with Custom Message Builder

Creating alerts in Domo is now easier than ever thanks to our new 3-step Alerts Wizard. In addition to guiding you through longstanding alert-building processes such as configuring alert rules and sharing alerts, the Wizard also includes a Custom Message Builder. This new tool allows you to customize the message that is sent when an alert is triggered. Instead of having to read a system-generated message that may not always make sense to recipients, you can now configure your own templates on a per-alert basis.


 When you go to set up a new alert, you can write your own text and incorporate system variables to produce a more human-readable, friendly, and informative alert message, which can provide more context to recipients faster. The result is dynamically-generated messages sent to alert recipients that clearly provide information on what the alert is supposed to tell them about, as well as what has triggered the alert.


 Managing by exception and keeping everyone on the same page at the same time just got one notch easier.

For more information about creating alerts, see

Creating a Custom Alert for a KPI Card

.

##
 Custom Charts

Domo has added support for custom data-driven maps. All you need to do is upload an image and Domo does the rest. You can create any maps pertinent to your business, such as maps for countries not available by default in Domo, like this map of Hong Kong:

Or you can build geographical maps divided by region, like this regionalized sales map for the United States:

You can even build maps of objects like office layouts, assembly lines, production/shipping facilities, or seats on an airplane, like the following:

All of these maps are powered by your own data, so any time your data updates, your maps will update as well.


 Depending on the complexity of your maps, you may be able to upload maps without having to edit the SVG, or you may need to make code changes, which will most likely require a working knowledge of XML.


 For more information, see

Adding Custom Charts to Domo

.

##
 Microsoft Word Plugin

Use the Domo Word plugin to download cards or DataSet data from Domo into Microsoft Word. This is an excellent way to share your Domo data with others in your company who may not have access to Domo.


 Using this plugin, you can do all of the following:

 Import

KPI cards

or individual components of KPI cards (such as chart/table content, summary numbers, owner name, etc.) into Word.
* Use query tables to import DataSet data as selected fields or as a single value.
* Highlight the Domo content in your Word document so viewers can recognize it immediately.
* Refresh the content—if anything has changed in the card or DataSet, it will be "redownloaded."

Users with whom you share documents with Domo content do not need to have the plugin installed to edit or view those documents. However, if they want to update the Domo content, they must have the plugin installed.


 Just as with Domo's other Microsoft Office plugins, the Word plugin is not available for the Mac OS.

For more information, see

Using the Domo Word Plugin

.

##
 NLQ Bots

Sometimes you just want to see single-valued key metrics in the fastest possible way. Domo's new Natural Language Query (NLQ) Bots allow you to query Domo directly from Buzz to get an answer in a language that everyone can understand.


 To use NLQ Bots, you simply install a Bot in Buzz, just like an app, then query Buzz for information using natural language. Buzz returns a response to the query in natural language too. This enables business leaders to quickly get insights on demand on any platform that supports Buzz. For example, if you had the Shopify Bot integrated with your Buzz, you would simply enter

/shopify

followed by a question such as "how many refunds for march?" Buzz would then generate and display the answer to your question. For any connector with NLQ Bots enabled, you can see several sample questions just by clicking the "?" icon next to the
 **Command Name**
 field.

For more information about Bots, see

Adding a Bot to Buzz

.

##
 DomoStats

Introducing the freedom to explore what is happening in Domo for your company. Have you ever wondered how many users you have, who has logged in this past week, what cards are being created, and which DataSets are running? DomoStats lets MajorDomos and Admin users power up a QuickStart app with a pre-built dashboard with details about card views, user logins, and DataSet creation so they can see everything happening in their Domo. The live DataSets behind DomoStats gives you the visibility into these questions and the opportunity to build cards, alerts, and DataFlows around these new and powerful stats. Find DomoStats in the Appstore right now and get started exploring!


###
 Unannounced Features and Enhancements

The following features have been available now for the past month but are just being announced:

##
 Custom Card Sizing

We are excited to announce custom sizing for Domo cards. Now you can display your cards using custom size configurations to more easily convey your business stories. From tall and skinny layouts, to wide and short views, to really large full-page cards, you can choose the optimal sizes for every card type while still maintaining the clean and grid organization you expect in your Domo dashboards. Emphasize your most important cards and shrink your supporting cards to draw attention to what really matters in your data.


###
 Spark Line and Spark Bar Charts

Two new chart types have been added to Domo's expansive chart library, Spark Line and Spark Bar. These new charts give you even more options for presenting business stories to meet your company's needs.


 Spark Line and Spark Bar graphs are similar in most respects to standard Line and Bar graphs except that they

 include a built-in gauge that shows the degree of change in the chart data, enabling you to answer your business questions at a glance, and
* do not include axes, providing a simple and uncluttered view of rises and falls in your data.

*Spark Line graph**

*Spark Bar graph**

For more information about these chart types, see the following:

 Spark Line Graph
* Spark Bar Graph


###
 Map Improvements

A number of improvements designed to increase usefulness of maps have been released. You can now do all of the following:

 Zoom and pan on maps using your mouse's scroll button.
* Add data labels to any map.
* Toggle progressive disclosure of city names (i.e. more cities will appear on the map as you zoom in).
* Filter to see selected regions.
* Auto-zoom to show only those regions included in your DataSet.
* Hide "No Data" items on the map.
* Add hover text.
* Create a full ZIP code map by filtering to one state.

For more information about all of these options, see

Properties for Maps

.


 Other News
------------


###
 Discontinuation Announcement for Workbench 2 and 3

Workbench 2 and 3 have been discontinued as of April 28, 2018. If you have any outstanding Workbench 2 or 3 jobs, you will need to migrate these to Workbench 4.6. This comes with many added benefits and significant improvements to the UI experience.  These benefits include heightened security, newer libraries and memory fixes, support for XML and JSON datatypes, and Workbench 4 help from the Domo Support team.


 Feel free to reach out directly to

Support

where you can get one-on-one help with upgrading your Workbench instance to the latest version.


 For more information about Workbench, see

Connecting to Data Using Workbench 4

. For specific information about migrating to Workbench 4, see

Migrating to Workbench 4 from Previous Versions

.


 Getting Help
--------------

You can view the latest release notes information in the Help Center, which you can access from Domo by clicking

***> Help Center****
 .


 If you have questions about Domo,

 search for a topic in the Help Center
* train in Domo University at

http://university.domo.com
* search for training apps in the Appstore
* get answers in the Domo Community at

https://dojo.domo.com
* contact Technical Support by entering a help ticket in the Domo Support Portal.
* reach out to your Domo Customer Success Manager or Technical Consultant

If you have feedback, please send it from within Domo (

***> Feedback****
 ). Or send an email to

product.feedback@domo.com

.


 For more information about getting help, see

Getting Help

.

