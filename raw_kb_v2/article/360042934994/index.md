


 New Features and Enhancements
--------------------------------

Features and enhancements in this release include the following:

##
 DataSet Sharing

Sharing a DataSet is now as simple as sharing anything else in Domo. With DataSet sharing, you can even share your DataSet with groups, making it easy to handle your changing and growing organization. Whether people come or go, the right people can always have the right access to the right DataSets. And when you share a DataSet, you can even choose what level of access you want to grant. You can choose from the following access levels:

 **Co-Owner**
 . Has the same privileges as the DataSet owner.
* **Can Edit**
 . Can edit and share DataSets but cannot delete them.
* **Can Share**
 . Can share DataSets but not edit or delete them.

You share a DataSet by choosing the new
 **Share**
 option in the details view for the DataSet then specifying options in the dialog.


 For more information about sharing DataSets, including a table showing all of the privileges available to each access level, see

Sharing a DataSet

.

##
 Domo in Spanish

In addition to English, French, German, Japanese, and Simplified Chinese, Domo has added full support for Spanish. With Domo now available in six languages, new and existing users can easily work within Domo in the language that they feel the most comfortable. With this feature, managers and team leaders can improve their teams' overall operational efficiency and get even more value out of using Domo. The Domo platform is prepared to scale to any number of languages to support Domo's steady international expansion.

To turn on Spanish, go into your User Locale Settings by mousing over your profile photo and clicking the globe icon in the top right corner. Then in the Settings screen, choose
 **Español**
 in the menu under "Language."

For more information about language selection, see

Configuring Languages in Domo

.

##
 Sunburst Graph

We have added again to our repertoire of chart types! We are excited to introduce the Sunburst graph. This chart type is ideal for showing hierarchical relationships for DataSet columns. Each hierarchical level is represented as a ring. The innermost ring represents the top level of the hierarchy, and each progressive ring outward from the center represents a level down from the top level, with smaller segments representing a portion of their parent in the hierarchy. The relative size of any segment represents the value of that segment. You can include up to 5 rings in any Sunburst graph.

For information about building a Sunburst graph, see

Sunburst Graph

.

##
 Apple TV App

Domo can be consumed and viewed across all platforms: mobile, desktop web, and now on TV. The Domo Apple TV app is the ideal offering for Domo users who have large gathering areas, meeting rooms or operations centers, allowing them to have a constant realtime view into their business. The Domo Apple TV app displays any card on a page with the option to have a running slideshow or just a single card view.


 You can download the Domo Apple TV app for free in the Apple TV App Store (4th generation or later). Once you have downloaded the app, launch it and scan the QR code with your device, then log into Domo.

##
 New DomoStats Apps

Domo is excited to announce two new DomoStats Apps this release:

###
 DomoStats DataSets and DataFlows App

With the new DataSets and DataFlows DataSet and App, ensure that your data is always fresh and that your Domo only has the most relevant and up-to-date information. You can watch your DataSet and DataFlow success rates, be notified when DataSets fail to run, and see which DataSets are orphaned, duplicated, or broken so you can clean out your Domo instance. Never feel in the dark about your data again. Available for download for Domo Admins.


 For more information, see

DomoStats - DataSets and DataFlows

.

###
 DomoStats People App

With the new People App for DomoStats, get your user stats and activities all in one place. You can watch adoption levels and take action quickly to help people get onboard by watching login trends and seeing who still needs to log in. With the User Roles card, you can keep your instance secure and make sure everyone is working at the level that is best for them. To get an even broader view of your Domo data, you can also use DataFlows to combine this DataSet with other DomoStats DataSets. See all the information you need about your users, all in one place. Available for download for Domo Admins.

For more information, see

DomoStats - People

.

##
 Personalized Mobile Home Tile Creation

A new tool in the Admin Settings lets you customize the Mobile home tile experience for executives and other users, allowing them to immediately see the content most important to running their business. To use this feature, you simply go into the Admin Settings, locate the
 **People**
 page for the user whose home tile layout you want to customize, and click
 **Manage home screen**
 .

This provides access to a customizable tile listing, which you can change just by clicking the name of a tile and dragging it to the desired position in the list. You can even add an existing page, card, feature, or project as a new tile. Once you hit
 **Save**
 , the changes are applied to the user's Mobile home screen.

For more information, see

Admin Settings Layout -- People Tab

.

##
 Australia Postal and LGA Maps

In addition to the standard province-level maps for Australia, Domo now gives you the ability to create Australian postal maps and LGA (Local Government Authority) maps by applying columns with postal codes or LGA codes, respectively. These updates should be a great help to our users in Australia and other parts of the world who want more control over how their Australia data appears.


**Australia Postal Map**

*Australia LGA Map**

For more information about these new map types, see

Country Map - Australia

.

##
 Ability to Send a Card Using iMessage

The Domo iMessage extension brings the power of Domo and real time insights into iMessage conversations. With the Domo iMessage extension, anyone with the Domo app can share and see live previews of any Domo card within iMessage. Additionally, users will be able to quickly reference cards they have recently viewed or search for any card of their choosing to add to the iMessage conversation.

To begin adding the power of Domo to your iMessage conversations, just tap on the extensions button next to the camera when iMessage is open and select the Domo icon.

##
 Projects & Tasks Improvements and SDK

Domo provides an enhanced experience to Projects & Tasks with the latest update. You can now give each task a description and an owner. Additionally, the new Projects & Tasks SDK gives your developers the ability to incorporate this feature into your company’s existing workflow processes. Use the provided documentation to create custom apps or interactions between Projects & Tasks and your current workflow solutions. The addition of descriptions, owners, and an SDK results in clear and concise workflow planning and execution, tailored to meet your company’s specific needs.

To learn more about the updates to the Projects & Tasks interface, see

Creating and Assigning Project Tasks

.

##
 New Chart Properties

The following new Chart Properties are now available in Analyzer:

###
 New Properties for Line Graphs


* **Outlier Filtering**
 . Available for most Line graphs. Outlier Filters allow you to filter out any lines with points above, below, or in between the value or values you set. If any point on a line does not pass the filter, that entire line is filtered out. For more information, see

Filtering Outliers in a Line Graph

.
* **General > Hide Empty Values**
 . When you check this box, any gaps in your Line graph will be filled in, showing a complete line or lines.
* **General > Hide Area Fill**
 . When you check this box, the fill that appears by default in single-line Line charts is hidden.

For more information about Line graph properties, see

Properties for Line Charts

.

###
 New Properties for Bar Graphs


* **General > Maximum Bars**
 . This property lets you specify the maximum number of bars that appear in your Bar chart. The values of all remaining bars are aggregated into a single bar called "Other" (unless you decide to hide this bar using the
 **Hide 'Other' Bar**
 property).
* **General > Hide 'Other' Bar**
 . This property lets you hide or show the "Other" bar that appears by default when you set the
 **Maximum Bars**
 property.

For more information about Bar graph properties, see

Properties for Bar Charts

.

###
 New Properties for Line-Bar Graphs


* **General > Starting Symbol**
 . This property allows you to select the symbol used to represent the first series in Stacked Bar with Symbol and Grouped Bar with Symbol graphs. (The default symbol is a triangle.) If more than one symbol series appears, the chart rotates through symbols in this order: Triangle, Circle, Plus, Square, Diamond.
* **General > Series on Top Scale**
 . This property determines how many series in horizontal line-bar combination graphs appear as lines. By default, the first series that appears in your legend for these chart types becomes a line, and all remaining series become bars. However, you can convert series from bars to lines by entering the desired number of lines here.

For more information about Line-Bar graph properties, see

Properties for Bar Charts

.

##
 Mobile Preview Image for Domo Apps, Sumo Cards, and Formatted Notebook Cards

We have added an improvement to mobile rendering of Domo Apps, Sumo cards and formatted Notebook cards. Beginning now, anytime you view any of these card types on your mobile Domo app, you will see the preview image of the actual content.

##
 Support Portal Update

An update to our Support portal will ensure that all of our customers receive “update” emails automatically anytime their case is updated by Support—providing improved transparency and customer experience.


 Connector API Change Announcements
------------------------------------

Other items our users should know about are as follows.

##
 Amazon MWS API Change

*What is the situation?**


 To take full advantage of the Amazon MWS API, we have decided to deprecate the old Amazon MWS connector and proceed with a new Amazon MWS connector.


**What do I need to do?**


 Create your DataSets in the latest version of the Amazon MWS connector. Simply visit the AppStore and power up the new DataSets using the new connector. Amazon MWS API has strict API throttling, and the connector does everything possible to globally pace requests. However, we recommend spreading out DataSet runs throughout the entire day and night. This is especially true for the "Orders" suite of reports.


 Once you have created your DataSets in the new connector, you should stop importing new data in the old connector by turning off imports in the "Schedule" section of the old connector. Once the DataSet is completely migrated, ensure that all cards and ETL logic is powered from the new DataSet. Finally, you can delete the old DataSet.


**When do I need to have this done?**


 To ensure continuous service, please ensure that all your DataSets are set up in the new connector by October 11th, 2018. On October 12th, we will be marking the version 0 connector and anything associated with it as legacy and it will stop importing new data.


**What if I have additional questions?**


 As always, we welcome and appreciate your feedback. Please reach out to the Domo support team if you have any questions. Thank you for being a Domo customer.


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

