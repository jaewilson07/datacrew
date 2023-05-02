


 New features and enhancements
--------------------------------

Features and enhancements in this release include the following:

##

Buzz

Share and collaborate like never before using Domo's newly revamped collaboration tool, now simply called Buzz. Share insights with anyone in your company, even those not in Domo. Collaborate with real-time data in groups or privately on any device. Make your coworkers laugh out loud with GIFs and emojis.


 The new Buzz includes all of the following new features/improvements:

 Real-time chat with people and groups.
* Two types of conversations:

+ "People" conversations centered around users and groups in your organization.
	+ "Data" conversations centered around pages, cards, and projects.
* Ability to tag conversations as "Favorites" then quickly find them whenever you need them in a custom-sortable Favorites tab.
* Two primary views for finding and opening your messages:

+ **Inbox**
	 , with three category tabs (
	 **Favorites**
	 ,
	 **Data**
	 , and
	 **People**
	 ) for your conversations with recent activity.
	+ **Discovery Feed**
	 , in which you can browse a listing of all conversations in your Domo.
* "Universal Compose" feature that allows you to start conversations on the fly.
* Ability to quote reply, add messages as "Favorites," and insert reactions and emojis.
* Card and page tagging.
* "Bots"—third-party integrations with Buzz
* Downloadable Buzz desktop app
* Free Social users—a new security role that allows users to use only Buzz, Profiles, and Projects and Tasks.
* Ability to send support tickets using

\support

.
* Lots more!

Buzz integrates fully into Domo's enterprise Business Cloud.

*Inbox**

*Discovery Feed**

*Conversation Pane**

*Details View**

##
 "Social" User

The "Social" user role is now available in Domo. Social users can access Domo for free and have unlimited access to all of Domo’s social features, including Buzz, Profiles, and Projects & Tasks. They can also view cards that have been shared with them. They cannot create cards or drill into new cards. On mobile they can see pages but not go into interactive mode on charts. On the web version, they cannot see pages at all.


 You can grant access to your Domo instance to an unlimited number of social users. Social users can be invited into your instance by other users (including other Social users).

For more information, see our

Security Role Reference

.

##
 Report Scheduler

Domo’s new Report Scheduler allows you to get those critical reports into the right hands faster and easier than ever.  With just a few clicks of the mouse, you can enable the delivery of any card or page by email at just the right time. You can use this feature to send reports to any

Domo user in your instance or any non-Domo user with an authorized domain

. Report recipients will see the card details for every card included in the report. Cards in the email are ordered the same way as in Domo, including collections. Recipients with a Domo account can quickly link back to the live card or page in Domo from their desktop or mobile device.

You can also manage your reports. In the Report Scheduler page you can see all reports you've created

and those you receive. You can subscribe and unsubscribe to any of your reports, as well as edit each report’s schedule, view the report histories, send reports immediately, delete reports, and enable or disable individual reports. You can also make Analyzer changes to a report for a page or card that affect only the report; visitors to the actual page or card will not see the filters you have applied.

If you have an "Admin" security profile, you can manage all reports for your company. Y

ou can edit individual report schedules as well as delete or enable and disable any report. You can also see a full history, including the ability to isolate successful or unsuccessful messages. Finally, if for any reason you need to suspend all Report Scheduler activity, you can disable this feature entirely. Disabling Report Scheduler does not delete or destroy any of the reports that have been scheduled; it simply suspends the sending of reports until the feature is re-enabled.


 For more information, see

Scheduling Reports

.

##

CSV Upload

You can use Domo's CSV Upload connector to build DataSets based on CSV data.

Just like our Microsoft Excel and Google Sheets connectors, the CSV connector allows you to  add KPI cards powered by CSV data directly to a page without having to open the Data Center. If you want, you can also add CSV DataSets from the Data Center and then build cards afterward, just as you can with all of Domo's other third-party connectors.

CSV files can be uploaded to Domo using any of the following methods:

 Sending them to a Domo-hosted SFTP server, either by uploading through your favorite SFTP client, using the command line, or sending directly from a service such as Adobe Analytics.
* Uploading directly from your machine or network.
* Copying and pasting the CSV content right into Domo.


 For more information about these and other connectors, see

CSV Upload Connector

.

##
 Ability to save page-level filters

You can now save page-level filters to that page so they are already set anytime you visit that page. These filters are applied only to your specific Domo instance, so other users navigating to the page will not see the filters applied. This ability is especially useful for Participant-level users, as they can manipulate filters set by other users and save the updated filters to their own Domo instances.

For more information, see

Applying Page-Level Filters

.

##
 Workbench Updates

Workbench 4.5.1 has been released, and includes the following fixes and improvements:

 Ability to create SFTP connections with an SSL certificate.
* OLAP now locates all providers on your machine.
* Improved handling of custom values.
* Ability to search for Workbench 2 DataSet Jobs and migrate them into Workbench 4.
* Ability to bulk-export DataSet Jobs.
* Ability to grab a dynamic file name.
* Ability to specify comment characters for a CSV file. In addition, the CSV reader no longer requires escape characters.
* Updated connection delete behavior. If you delete an account then log in again, by default all the jobs are still there.
* Option to limit the number of concurrent jobs running.


###
 Sumo Available in PowerPoint Plugin

You can now use Domo's PowerPoint plugin to download Sumo table data into PowerPoint. There are a few points to keep in mind with this functionality, which are as follows:

. The plugin downloads Sumo
 *table data*
 into PowerPoint, not actual Sumo
 *cards*
 . It does not honor or render any Sumo logic, colors, etc.
2. Large Sumo tables will be divided into smaller cards in your presentation. The size of these cards depends on the number of cards per slide you select in
 **Templates**
 . So if you select
 **Single Card**
 , you will get larger cards than if you selected
 **Dual Cards**
 or
 **Four Cards**
 . The maximum number of cards you can select for any size is 10. Therefore, if you want to download as much data as possible, you should select
 **Single Card**
 .

For more information, see

Using the Domo PowerPoint Plugin

.

##
 Customizable Home Screen for Mobile

The Home page is the go-to location on Mobile for bookmarking the content you use most. You can now add Home tiles for any card or page, as well as find preset trending tiles. Once you've added or removed the tiles specific to you, you can reorder them to personalize your layout.

##
 End of Support for Image Cards

To make the Domo experience better and simplify the number of card types, we have removed Image Cards. You can now use document cards to upload images, along with other file types such as .doc, .pdf, and so on.


 For more information about document cards, see

Document Cards

.

##
 New IP Address for Whitelisting

Most of Domo's database connectors (MySQL, Mongo, etc.) now require that the following additional IP address be whitelisted:


`34.198.214.100`


 For more information about whitelisting, see

Whitelisting IP Addresses

.


 Getting Help
--------------

You can view the latest release notes information in the Help Center, which you can access from Domo by clicking

*> Help Center**
 .


 If you have questions about Domo,

 search for a topic in the Help Center
* train in Domo University at

http://www.domo.com/university
* get answers in the Domo Community at

https://dojo.domo.com

.
* contact Technical Support by entering a help ticket in the Domo Support Portal, by sending a Buzz message to

\support

, or by emailing

support@domo.com

.
* reach out to your Domo Customer Success Manager or Technical Consultant

If you have feedback, please send it from within Domo (

*> Feedback**
 ). Or send an email to

product.feedback@domo.com

.


 For more information about getting help, see

Getting Help

.

