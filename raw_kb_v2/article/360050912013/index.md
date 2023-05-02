

New features and enhancements
===============================

Features and enhancements in this release include the following:


 Updated navigation
--------------------

Domo's new navigation makes it easy to organize and manage your Pages so that they are easier to find, regardless of whether you have just a few Pages or a few hundred. It also makes it possible to navigate to all of Domo’s most used features in fewer clicks, decreasing the time it takes you to perform actions in Domo and get answers. For more information, watch this

demo video

.


 Here’s a highlight list of some of the most notable improvements:

##
 Improved UI

The Pages menu has been moved to the left side of the screen in a scrollable "Dashboards" list. You can collapse this list, providing more space when you want to focus on important dashboard content. If you want you can still show the list when it is in its collapsed state. The list is searchable too, allowing you to quickly filter down the list of Pages as you type.

You will also find shortcuts to your most important Domo functions now exposed at the top of the screen, giving you quicker access.

##

Third-level Pages

An additional level of Page hierarchy lets you create Subpages of your Subpages. You have more options than ever for how you organize your Pages to show related information.


###

Favorite Pages

You can now mark Pages as "favorites," making it easier for you to get to your most important content in Domo. You can add any Page as a "favorite" Page by choosing the
 **Add to favorites**
 option in the wrench menu for the Page.

Once a Page is added as a Favorite, you can jump to it quickly by clicking
 ****Favorites****
 at the top of the Pages list and selecting the Page you want to open.


 For more information, see

New Navigation Announcement

.


 New Domo Everywhere features
------------------------------


###
 Story Embed

Expand beyond individual iFrames for each Card towards a single unified iFrame for an entire Story that easily scales to all your partners and customers. Simply copy the embed code from the story
 **Share**
 dialog and paste it into your portals or applications. Now the power of the platform is available to everyone—even outside your company.

For more information, see

Sharing Cards and Stories Outside of Domo Using Domo Embed (BETA)

.

##
 Programmatic Filter Embed

By using programmatic filtering with Domo Embed, you can distribute personalized content in portals and software at scale. You can share your Domo content with an unlimited number of viewers, even if they do not have Domo accounts.


 Programmatic filters provide all of the following benefits:

 Showing only approved and relevant content for the viewer.
* Decreasing the number of PDP policies you need to manage.
* Eliminating the need for viewers of embedded content to be full Domo users.
* Decreasing the risk of viewers logging into the full instance.

Filters are defined in your code based on the login credentials of your systems instead of Domo data permissions policies. This ensures that viewers only see approved subsets of the data even if you choose not to integrate your identity provider or automate the provisioning of users in Domo.

For more information, see

Using Programmatic Filters with Domo Embed (BETA)

.


 New Appstore UI
-----------------

In February, Domo launched the next generation of the Domo Appstore including a new collaboration with Amazon Web Services (AWS) designed to help users modernize any business process and get BI leverage at cloud scale in record time. Through Domo’s collaboration with AWS, you will be able to access and integrate any data you’ve subscribed to from AWS Data Exchange directly in Domo and easily get that data into the hands of anyone across the business. AWS Data Exchange is a new service that makes it easy for millions of AWS customers to securely find, subscribe to, and use third-party data in the cloud.


 Domo also announced Appstore enhancements that make it even easier to find and build solutions that drive business forward with data. These new additions include the following:

 New enterprise apps that leverage data from different business systems to modernize common business functions including finance and sales operations; and new writeback connectors to modernize workflows.
* Improved navigation to make it easier to find business-ready apps that help instrument key processes like sales commissioning, vendor contract management or retail performance.
* A more robust SDK to allow in-house developers and partners to build and deliver custom business-ready apps in just days or weeks, rather than the typical months, quarters, or years associated with traditional app development.
* A public-facing portal to help increase access to the type of innovation that is possible with Domo and Domo apps.

All apps in the Domo Appstore leverage the power of the Domo Business Cloud, making it quick and easy connect to virtually any data source and make that data more valuable for teams and organizations anywhere.

For more information, see

Appstore Layout

.


 Data Impact Analysis
----------------------

Domo's Data Impact Analysis tool, available in the details view for a DataSet, helps you understand the impact of actions you take on your DataSets.


 This tool includes all of the following functions:

 ****Impact card****
 . A new card in the
 ********Overview********
 tab shows you the number of DataSets, DataFlows, Cards, and Alerts directly and indirectly impacted by changes to that DataSet. The card displays the direct impact for each, along with the total number of impacts.
* ****Lineage view****
 . This view shows you the upstream and downstream impact of changes made to the DataSet. You can also see the lineage for a DataSet simply by clicking on the
 ********Lineage********
 tab.
* ****Info panel****
 . This panel shows the owner, the number of direct and indirect impacts on downstream elements, input and outset DataSets (for DataFlows and DataFusions), the update history, and the number of rows and columns (for DataSets).
* ****List panel****
 . This panel allows you to see all of the individual DataSets, DataFlows, Cards, and Alerts powered by this DataSet.

For more information about using this feature, see

Viewing the Impact of Changes to DataSets

.


 New chart types
-----------------

We have added a number of exciting new chart types to Analyzer to better enable you to tell the data stories you want. These charts include the following:

##
 Sankey chart

Sankey charts are ideal for showing flow information from business activities. For example, you can use them to show where money came from and went to (budgets, contributions, etc.), flows of energy from source to destination, and flows of goods from place to place.

For more information about Sankey charts, see

Sankey Chart

.

##
 Multi-value gauge

With multi-value gauges, you can display a summary number along with a second value showing the positive or negative degree of change. You can aggregate the current value of the gauge using any of a variety of aggregation functions (sum, average, minimum or maximum value, etc.). You can also show the degree of change as a percentage or a value. In addition, a number of other customization options are available.

For more information, see

Multi-Value Gauge

.

##
 SPC chart

SPC (statistical process control) charts, also known as control charts, Shewhart charts, or process-behavior charts, are line charts used to determine if a manufacturing or business process is in a state of control. Domo's SPC charts lets you set up rules from SPC standards by configuring them in the Chart Properties. When values outside the specified rules are encountered, these are flagged in the chart as outliers. There are 8 rules you can configure for SPC charts in Domo. You can have one SPC rule per chart or combine them.

For more information, see

SPC Charts

.

##
 Shape gauge

A shape gauge uses any of 45 different images to indicate a current value. By using different images to indicate different ranges, you can convey to users whether the current value is positive, neutral, or negative. Available images include different shapes such as squares, circles, triangles, pentagons, and octagons; thumbs up/thumbs down; airplanes taking off and landing; and more. In addition, you can vary shapes by customizing their colors, giving you even more options to choose from. You can have up to 10 ranges in a shape gauge.

For more information, see

Shape Gauge

.

##
 Mega table

A mega table provides all of the same functionality as a standard table or heat map table but includes much more as well. In a mega table, you can do all of the following:

 Include up to 25,000 rows.
* Collapse and expand, sort, and scroll while on a Page.
* Include HTML links and images.
* Apply predefined or custom date formatting to specific columns. The
 **Date Shorthand**
 and
 **Full Date**
 predefined options both take your locale into consideration when used; for example, if your locale is Japan, a Japanese date format will be applied automatically if you select either of these options.
* Transpose your table data, i.e. switch the rows and columns, which may be useful if your table has too many columns to see easily.
* Preserve all of the formatting when exporting a Domo table to Excel, including cell/row/column formats, Page and Card Filters, and even pivot views. In the following screenshot, the first table is from Domo, and the second is the same table when exported to Excel:

For more information, see

Table Chart

.


###
 Pivot table

Pivot tables provide a more powerful alternative to standard tables in Domo. They allow you to quickly and easily summarize large quantities of data from a DataSet as well as explore data by different dimensions and measures. Pivot table functionality has long been available in Domo in the form of

Pivot Table

.

##
 New POP charts

Six new period-over-period chart types are now available in Domo, giving you even more flexibility in telling your business story. The new chart types include running total line, multi-value gauge, shape gauge, flex table, filled gauge, and progress bar.


 New chart improvements
------------------------

This release includes all of the following improvements to our charting functionality:

##
 New options for scatter plots

Now you have even more flexibility when building scatter plot charts. More options are available for customizing the look of the points in the chart. In addition, you now have the ability to set data label options and tooltip fields. This enables you to set grid-like charts with informative data labels and hover text.

For more information, see

Customizing scatter plot charts

.

##
 More charts in Popular tab

The "Popular" tab in the Chart Picker now contains more of our most commonly used chart types, allowing you to quickly select these chart types without having to first open another Chart Picker tab.

##
 New properties for trellises and tiered dates

You can now customize trellis charts and tiered dates by configuring a number of new Chart Properties. These properties include the ability to toggle trellises and tiered dates on and off, to set the divider color, to set word wrapping, and so on.

For more information about these properties, see

Properties Available for Most Charts

.

##
 Recent weighted forecasting

A new Chart Property is now available when using multi-period projections in your charts—
 **Linear Regression Recent Weighted**
 . This projection method puts more weight on the recent periods in your data. Use this option if recent periods are more valuable in your data than earlier periods.

For more information, see

Projecting the Last Value in Your Chart

.

##
 Remove button for columns relocated

In the interest of making the Analyzer user interface more intuitive for first-time users, the "x" button that allowed you to remove columns from a chart has been replaced with a standard v-shaped dropdown button that opens the column options dialog, and a
 **Remove**
 button has been added to this dialog.

Workbench improvements
------------------------


###
 Workbench localization

Workbench now supports localization in several languages. Any language that is supported in Domo (English, Japanese, French, Spanish, German and Simplified Chinese) is now supported in Workbench. Now you can easily navigate, tackle tasks, and get up to speed even more quickly on new features with Workbench in your language. You can select your language on install, or choose it later on in Settings.

In addition to localizing languages, Workbench is also simplifying the Workbench experience by localizing dates and numbers. Now dates and numbers will appear in the format standard for your locale. Simply set your Workbench machine to your locale and choose to use the system language in Workbench, and Workbench will automatically sync to provide region formatted dates and numbers both in Workbench and in your data preview.


###
 Workbench group scheduling

Create job dependencies or select jobs to run as a group. Now if a job fails in your data pipeline, you can stop subsequent jobs from running. Or, if you need to wait for your source data systems to finish updating, you can schedule a group of jobs to run at the same time after your source data is ready.

For more information, see

Scheduling a Job in Workbench 5

.

##
 Workbench advanced scheduling

Now you have more flexibility to schedule jobs when you need them. Set an exact time, choose specific days of the week or month, or opt in to different hourly intervals directly from Workbench.

For more information, see

Scheduling a Job in Workbench 5

.

##
 Workbench improved server migration

Migrate Workbench jobs seamlessly and painlessly between machines using AES Encryption. With AES Encryption, when you move Workbench jobs to a new machine, your credentials move along with them, meaning you do not need to reenter them every time you make a switch. And as a bonus, AES Encryption includes all of the latest security features.

##
 Workbench query builder

Write queries in Workbench without knowing your data structure. Workbench will load table and column names from your database as you write your query so you can feel confident that your queries will be accurate. Query Builder is available for all of our largest databases—MSSQL, MySQL, Oracle, and PostgreSQL.


###
 Workbench DataSync

Getting a new DataSet into Domo via Workbench is now just a drag and drop away. With DataSync, now you can create a new DataSet in Domo simply by adding an Excel or CSV file to the DataSync folder, then watch it automatically update anytime you make a change. No need to hassle with setup or updating. Download Domo Workbench to get started.

For more information, see

Configuring a DataSync Folder in Workbench

.


 SQL DataFlows UI enhancements
-------------------------------

Our new SQL DataFlows UI makes creating, troubleshooting, and editing DataFlows much more efficient. With options like “Run to here” and “Run Preview,” you don’t have to manually click into each transform modal step-by-step in order to then transform later steps. Now you can preview, save, and manage settings for your DataFlow from anywhere in the editor.

Notebook and Doc Cards available in Publication Groups
--------------------------------------------------------

Publication Groups now support Notebook and Doc Cards, helping you to provide better context and understanding for everyone who views your Story both inside and outside your organization. A new "Cards" step in the
 **Publication Groups**
 tab of Admin Settings lets you enable access to all Cards, whether or not they are powered by DataSets, and this includes Notebook and Doc Cards (along with custom apps not powered by DataSets).


 Be aware that this functionality is not turned on by default. If you want to include these Card types in your Publication Groups, you must turn on the setting individually for each Publication Group. Also be aware that Doc Cards in Publication Groups are "View only," meaning content cannot be downloaded from them.

For more information, see

Setting Up Publication Groups

.


 New "Add Card" modal
----------------------

The modal for adding Cards to Domo has been revamped to provide a simplified, less cluttered experience. The initial view now displays the three most common Card types for you to choose from—
 **Visualization**
 (KPI Card),
 **Doc Card**
 , or
 **Notebook**
 . If you select
 **Visualization**
 in this view, you are then prompted to choose whether you want to upload existing data, connect live data, etc. Or, you can choose
 **View More**
 in the initial view to see less-used Card types such as
 **Sumo Table**
 ,
 **Poll**
 , etc.

Undo and redo in Analyzer
---------------------------

With the new Undo and Redo buttons in Analyzer, you will have more confidence to explore and try new actions as you build Cards. All actions in Analyzer are available for Undo and Redo, including applying Filters and Chart Properties, making date changes, changing chart types, etc. Keyboard shortcuts for Undo and Redo on Mac and Windows are also available (Command + Z/Command + Shift +Z , respectively, on Mac, and Ctrl + Z/Ctrl + Y on Windows).

For more information, see

Analyzer Layout

.


 DomoStats: Mobile
-------------------

The addition of the mobile activity DataSet to the DomoStats connector adds the ability to measure daily usage of the Domo mobile app within an instance by all users. Being able to better understand how each user is using the Domo platform from both desktop and now mobile unlocks improved decision making and shines light on what content is most important to make business decisions each day.

For more information about DomoStats reports, see

DomoStats Connector

.


 Mobile widgets
----------------

Add your favorite Cards to your phone's home screen as a widget, providing a quick and simple way to see those cards and get "at a glance" insights. The widget view shows the visualization, title, and Summary Number for the Card. You can add any type of Card, including custom apps. On iOS, you can add up to 5 Cards to your widget. On Android, you can add multiple widgets and resize them as you want.

CSV attachments on scheduled reports
--------------------------------------

When scheduling a report on a single Card, you can now choose to include an attachment of the data powering the Card. This creates a CSV export of the data and includes it as an attachment. For busy executives and business users, this makes it easy to perform quick, ad-hoc analyses on snapshots of data using the tools of your choice. This also helps you interface seamlessly with customers and colleagues by giving you a way to easily share important data with them on a recurring schedule.

Note that this functionality is only available for Scheduled Reports on individual Cards, not for Dashboards. Also note that the export includes only the data used to power the Card,
 *not*
 the entire DataSet.


 For more information, see

Scheduling Reports

.


 Disabling of Card interactions
--------------------------------

Keep users on a "guided path" in your Domo Stories by disabling interactions on Cards in those Stories. This option is found in the "Card interaction settings" for a given card and, when selected, prevents any actions from occurring when a user clicks on the Card. In addition, no buttons or highlighting appear when hovering with the cursor. This gives you the freedom to use text and images as design elements in your Stories without distracting from important content.

Along with this, a new
 **Card Options button**
 option is also available in the
 **Display Settings**
 menu that appears when you click the
 **Edit Content**
 button for a Card in the Story edit view. When you uncheck this option, the wrench menu does not appear when a user mouses over the Card. This prevents them from taking any actions on the Card, including sharing, exporting, opening the Details view, etc.

For more information, see

Creating Domo Dashboards

.


 High-Bandwidth Connectors
---------------------------

Make timely and more relevant data-driven decisions by getting large datasets into

Domo

faster.

Domo's

suite of High-Bandwidth Connectors allow you to bring in data 3-6 times faster than the current connectors. These connectors are available for the following systems:

 Google

BigQuery
* Snowflake
* MySQL
* Teradata
* Amazon

Redshift
* PostgreSQL
* Oracle


 Upsert

/partition support in connectors
---------------------------------------------

Update

DataSets

with restated data to ensure you have the most up-to-date information. Or, select a rolling window of data to keep, making it easier to focus on relevant data.


 The following connectors have

upsert

support:

 Shopify
* Box Advanced
* Airtable

The following connectors have partition support:

 PostgreSQL
* MySQL Database
* MariaDB

Database
* Oracle Database
* Amazon

Redshift
* Amazon Aurora
* Amazon Athena
* IBM

DB2
* IBM

Informix
* Snowflake
* Vertica
* Sybase/SAP ASE
* NetSuite


 SuiteAnalytics

Improved File Upload connector wizard
---------------------------------------

We have added a new File Upload experience in the Data Center, which provides a streamlined process for navigating the steps of the File Upload connector. With just a few clicks (and no page redirect), you can easily upload a CSV, XLS, or XLSX file in no time.

For more information, see

File Upload Connector

.


 Minute granularity
--------------------

You can now show your chart data by the minute, so long as your date column includes time data down to the second.

Getting help
==============

You can view the latest release notes information in the Help Center, which you can access from Domo by clicking

in the top navigation bar.


 If you have questions about Domo,

 search for a topic in the Help Center
* train in Domo University at

http://domo.com/university/

.
* search for training apps in the Appstore
* get answers in the Domo Community at

https://dojo.domo.com
* contact Technical Support by entering a help ticket in the Domo Support Portal or by sending a Buzz message to

/support

.
* reach out to your Domo Customer Success Manager or Technical Consultant

If you have feedback, please send it from within Domo (
 **More**
****> Feedback****
 ).


 For more information about getting help, see

Getting Help

.

