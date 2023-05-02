


**Note:**
 Depending on the product version you are using, the documentation may include information about features that may not be available or may have changed.


 New features and enhancements
--------------------------------

Features and enhancements in this release include the following:

##
 Drill Path Reorder Capability

Previously when you set a drill path on a card, if you inadvertently added the drill levels in the wrong order, you had no choice but to delete all of the levels and start again from scratch—an extremely frustrating scenario. With our new drill reorder capability, that frustration is now a thing of the past. In the updated drill edit screen, drill path levels are represented as movable tiles. If you add a level in the wrong sequence, worry not—you can simply click and drag it almost anywhere in the drill sequence (except for to the top or bottom of the drill path, since those spots are reserved for your top level view and table view, respectively), automatically adjusting your card's drill path. You can also edit or delete any movable path in the sequence.

For more information, see

Adding Drill Path to Your Chart

.

##
 Workbench 4.5

Workbench 4.5 is being released. In addition to bug fixes, this release provides the following improvements designed to make your Workbench experience easier:

 You no longer have to be an Admin in Windows to run Workbench. Non-Admin users can now access Workbench as long as they are assigned to the "Domo Workbench Users Group." All members of this group are allowed to configure and use Domo Workbench to upload data to Domo.
* Previously all data readers would do impersonation. We now launch the Data Collector Process as an impersonated user, which should especially help plugin writers.
* A new security option under
 **Settings**
 allows you to require impersonation credentials for all DataSet Jobs. This option can only be modified by an Admin user.
* A new option under
 **Additional Settings**
 for a DataSet Job lets you specify whether the Job waits for Adrenaline indexing before completing.
* If you change the impersonation credentials on a DataSet Job, Workbench now asks you if you want to change the credentials for all jobs that use those credentials.

Likewise, if you change the impersonation credentials for a provider, you are asked if you want to change credentials on all Jobs that use that provider.
* In the Job Scheduler, if a DataSet Job is from a local file provider, you can now select
 **Watch File**
 for the Job. The Job will then run every time the local file is updated.
* A new plugin platform allows for backwards compatibility with older plugins.
* Password-protected Excel files are now supported.
* You can now change the name of a Workbench-imported DataSet in Domo.
* Improved migration between Workbench 2 and Workbench 4.5.


###
 New Publication Groups UI

The Publication Groups interface has been enhanced to provide a more intuitive user experience. The interface now guides users through the process of adding pages, setting DataSet filters, and configuring access groups.

For more information, see

Setting Up Publication Groups

.

##

2-Factor Authentication


**Note:**


 This feature is available


*on demand.*


 To request that this feature be enabled,

reach out to your Domo Customer Success Manager or Technical Consultant.

Depending on the feature, you may be required to complete training before you can use the feature.


 You can now enable multi-factor authentication for your company.


 In

*Admin Settings > Security > Authentication**

, you have access to the following multi-factor authentication options:


* You can set a requirement that users redo their multi-factor authentication after a given number of days.
* You can set a requirement that codes expire after a given number of failed attempts.
* You can see a list of all users who have not entered their mobile number into their
 **Profile**
 pages. You can also send these users a Buzz message reminding them to provide their numbers.

Users will
 *not*
 be able to log into Domo if you enable multi-factor authentication before they have a chance to enter their mobile numbers in their
 **Profile**
 pages. Make sure all of the employees in your company have entered their numbers before activating this feature.

For more information, see

Turning On Multi-Factor Authentication

.

##
 Activity Logs

With the new Activity Logs tool in the Admin Settings, you can get greater visibility of what’s changing and who’s changing it. View activity logs for all users in your Domo instance. Quickly filter the logs using any of four commonly used "quick filters." Or, if you want to dig deeper into the logs to single out a specific log or pinpoint a small range of logs, create customized combinations of filters. You can also refresh the logs appearing in the tab or export the logs as a CSV file. Activity Logs provide data for the last 6 months.

For more information, see

Viewing Activity Logs

.

##
 License Management

The
 **User Licenses**
 tab in the Admin Settings shows you the number of licenses in use and lets you add new licenses. (If you have exceeded your number of licenses, this number appears red.) It also shows a history of license requests, with the date of request, the name of the requestor, and the number of requests for each individual transactions.

When you choose to add licenses and confirm the transaction, an email is sent to your AE, who then follows up with you, sends an invoice, etc.  The License Manager does
 *not*
 impede your ability to add new users on the fly.


 For more information, see

Adding User Licenses in Domo

.

##
 Design Studio improvements

This update provides a new method for transitioning widgets to the artboard. Previously, a representation of the widget was placed on the artboard. This representation was in SVG format and could cause some confusion on what could be directly edited on the artboard versus within the configuration options for that widget. It also prevented exact representations for some widgets, such as the Table and YouTube Player from being shown accurately. The new HTML screenshot method gives a significant performance boost and more accurately represents how the widget will look once on the design. Whatever configurations are chosen for the widget, the artboard will replicate that. In addition, it will allow elements such as Legends to be moved more accurately on the design.

*Note:**
 Some widgets are HTML based and require this upgrade to be available in the Add Widgets menu. This includes the Table, YouTube Player, some Maps, and Filter control widgets.  If you do not see these widgets on your list, you will need to upgrade to 2.0.6.  Any designs that were created in an older version of Design Studio will function normally.

This release also includes

 Additional support for SSO authentication
* Updated Table widget instructional text
* Various bug fixes


###
 Page Search in More menu

In the
 **More**
 menu in the card page navigation bar, you can filter to show the desired page(s) or subpage(s) with their owners. By default, only top-level pages appear in the
 **More**
 menu. However, when you enter a search term, both top-level pages
 *and*
 subpages appear in the menu as search results.

For more information, see

Searching in Domo

.

##
 App search

Domo's global search now includes Appstore Apps matching your keyword in addition to Buzz messages, cards, and so on.

For more information, see

Searching in Domo

.

##
 New Maps

Country maps are now available for India, Panama, and Peru. In addition, a region-level map that includes countries in the United Kingdom is now available.


**India**

*Panama**

*Peru**

*UK Country**

For information about the India, Panama, and Peru maps, see

Continental/Regional Map

.

##
 Full Page Domo Apps

You can now view Domo Apps in full-screen mode by clicking

in the Details view for the App.

For more information about the Details view user interface, see

Card Details View Layout

.

##
 PDP and Group API

You can now utilize our APIs to onboard users and assign them to the correct Domo groups as well as set PDP permissions.


 For more information about APIs in Domo, visit

https://developer.domo.com/manage-domo

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

dojo.domo.com
* reach out to your Domo Customer Success Manager or Technical Consultant

If you have feedback, please send it from within Domo (

*> Feedback**
 ). Or send an email to

product.feedback@domo.com

.


 For more information about getting help, see

Getting Help

.

