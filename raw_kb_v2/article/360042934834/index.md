


 New features and enhancements
--------------------------------

Features and enhancements in this release include the following:

##
 Business Automation Engine: Alert Actions

Alert Actions drive powerful action for your business by triggering events such as Webhook integration with third-party systems and Projects & Tasks integrations in Domo. The possibilities for Alert Actions are literally endless. For example...

 As a retail store manager, you might already have an Alert that notifies you when a certain product has reached a threshold of units sold; with Alert Actions you could expand upon this basic Alert by having it also activate a "reorder" action in your inventory system when it is triggered.
* As a sales leader, you could set an Alert Action to turn on sirens or music in your office when you've closed a large deal so everyone can celebrate together.
* As a support manager, you could set Alert Actions to automatically create tasks in Domo and assign them to specified individuals whenever the number of open bugs exceeds a certain number.

Two types of Alert Actions are currently available in Domo—Webhooks and Tasks. With the Webhook action, you can connect to any of a number of third-party systems. With Task actions, you can create a Task in a specified Project and assign it to a certain person. You configure these actions in the Alert Wizard when you create an Alert or edit an existing Alert.


 For more information, see .

##
 Updated navigation

Domo's new navigation makes it easy to organize and manage your Pages so that they are easier to find, regardless of whether you have just a few Pages or a few hundred. It also makes is possible to navigate to all of Domo’s most used features in fewer clicks, decreasing the time it takes you to perform actions in Domo and get answers. For more information, watch this

demo video

.


 The updated navigation will be available to all customers in our October release. Because of the magnitude of this change, the new navigation structure will not officially replace the old structure until March of 2020. Until then, all customers have the option to turn on the new navigation by going into the Admin Settings and selecting
 **Company Settings > Feature control**
 , then switching on the option reading "Enable updated navigation for all users." (You must have Admin security privileges to do this.) This way, your organization has the freedom to make the transition whenever it is ready. Note that third-level and favorited Pages are only supported in the updated navigation, so if you switch back to the old navigation from the new navigation, these Pages won't be visible in the UI.


 Here’s a highlight list of some of the most notable improvements:

###
 Improved UI

The Pages menu has been moved to the left side of the screen in a scrollable "Dashboards" list. You can collapse this list, providing more space when you want to focus on important dashboard content. If you want you can still show the list when it is in its collapsed state. The list is searchable too, allowing you to quickly filter down the list of Pages as you type.

You will also find shortcuts to your most important Domo functions now exposed at the top of the screen, giving you quicker access.

###

Third-level Pages

An additional level of Page hierarchy lets you create Subpages of your Subpages. You have more options than ever for how you organize your Pages to show related information.


####

Favorite Pages

You can now mark Pages as "favorites," making it easier for you to get to your most important content in Domo. You can add any Page as a "favorite" Page by choosing the
 **Add to favorites**
 option in the wrench menu for the Page.

Once a Page is added as a Favorite, you can jump to it quickly by clicking
 **Favorites**
 at the top of the Pages list and selecting the Page you want to open.

###
 Getting Started Page

The new
 **Getting Started**
 Page gives users an improved login experience with easier access to several of the most important Domo functions. This Page enables you to get value out of Domo faster by helping you find important Cards and Pages, create Alerts, and join Buzz conversations. This will help guide new users to what they should be doing in Domo and give them a meaningful login experience.

For companies that have processes already in place to onboard new users or that already have company landing Pages configured, there is an option to “shut off” this Page at the company settings level. This will allow Admin-level users to hide the
 **Getting Started**
 Page for all users at the company and keep their existing onboarding/login process, should they choose to.


 For more information, see

New Navigation Announcement

.

##
 Streaming MP4 videos in Doc Cards

Easily create more clarity for your viewers with MP4 video streaming in Doc Cards. You can view these videos either from the Page level (standard Pages and Domo Stories are both supported) or from the Doc Card Details view. You can also choose a custom image for your video's thumbnail or let Domo choose a default thumbnail for you.


 Videos can be viewed in both Web and Mobile versions of Domo. Please note that
 *only*
 MP4 videos are supported at this time (no AVI, WMV, QuickTime, etc.). If your video is not an MP4 file, the video will not stream; you will just see the file icon. Also note that the file size limit for videos is 1GB and the limit for custom thumbnail images is 10MB.

##
 No Code JSON Connector

Connect custom data to Domo without writing any code using the No Code JSON Connector.


 Up until now, if you wanted to bring your custom data into Domo, you had to either ask someone at Domo to build a custom connector for you or create the connection using our API or Connector IDE, both code-intensive options. Now you can pull in your custom data just by following the steps in a simple wizard interface. The wizard will help you connect to your data as a JSON file and pull it into Domo.


 To use this tool, you will need the following:

 A client ID and client secret from

developer.domo.com
* An authorization URL and access token URL from your data provider
* The URL to access the JSON file

Access the interface for this connector by searching for "No-Code JSON OAuth Connector" in the Appstore.


###
 DomoStats - DataSets and DataFlows

The DataSets and DataFlows App, the newest addition to our ever-expanding repertoire of DomoStats Apps, comes with a pre-built dashboard that allows Admin users to...

 Clean up Domo quickly by seeing which DataSets and DataFlows need attention, are orphaned or duplicated, etc., then selecting a direct link to take immediate action.
* Understand where to target efforts to fix DataSets and DataFlows with Cards that show what needs attention based on Card counts, owners, etc.
* Keep Domo secure by watching who is creating data and what data is coming into Domo.

Ready to take this App for a spin? Simply search for "DomoStats" in the Appstore, select the "DomoStats - DataSets and DataFlows" App, then click
 **Try it**
 . Note that you must have an "Admin"-level security role to deploy DomoStats Apps in Domo.


###
 New Help Center

Find all Domo learning materials in one place with our revamped Help Center. The Help Center provides access to all of the following:

 1700 Knowledge Base articles
* 450+ how-to videos (embedded from YouTube)
* 80+ free online training modules
* Our Dojo user community
* Options for booking professional trainers
* Support resources

The Help Center is public-facing, meaning you can access all of the above resources from Google.


 To access the Help Center, just click on the

icon in the upper right corner of the screen.


###

Data Impact Analysis

Domo's Data Impact Analysis tool, available in the details view for a DataSet, helps you understand the impact of actions you take on your DataSets.


 This tool includes all of the following functions:

 **Impact card**
 . A new card in the
 ****Overview****
 tab shows you the number of DataSets, DataFlows, Cards, and Alerts directly and indirectly impacted by changes to that DataSet. The card displays the direct impact for each, along with the total number of impacts.
* **Lineage view**
 . This view shows you the upstream and downstream impact of changes made to the DataSet. You can also see the lineage for a DataSet simply by clicking on the
 ****Lineage****
 tab.
* **Info panel**
 . This panel shows the owner, the number of direct and indirect impacts on downstream elements, input and outset DataSets (for DataFlows and DataFusions), the update history, and the number of rows and columns (for DataSets).
* **List panel**
 . This panel allows you to see all of the individual DataSets, DataFlows, Cards, and Alerts powered by this DataSet.

This tool is currently available
 *by request*
 for any user who wants it. For more information about obtaining this tool, reach out to your CSM or AE.


 For more information about using this feature, see

Viewing the Impact of Changes to DataSets

.


 Getting help
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

