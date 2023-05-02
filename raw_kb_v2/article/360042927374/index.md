

Intro
-------

Spredfast is a social software platform which allows large companies to manage their online social media presences, build social media campaigns, and analyze social media performance. You connect to your Spredfast account in the Data Center. This topic discusses the fields and menus that are specific to the Spredfast Conversations connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Spredfast account and create a DataSet, you must have the following:

 The email address associated with your Spredfast account
* Your Spredfast password


###
 Whitelisting the Domo Application for Your Spredfast Account

Before the Domo Spredfast Conversations Connector can successfully connect to your Spredfast account, a ticket must be submitted with Spredfast Support (contact info available here:

https://www.spredfast.com/support

) to request whitelisting of the Domo Application for your Spredfast account.


 Once you have contacted Spredfast Support and they have whitelisted the Domo application for your account, you may proceed with the steps below.


 Connecting to Your Spredfast Account
--------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Spredfast Conversations Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Spredfast Conversations connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Spredfast accounts in Domo) to open the Spredfast OAuth screen where you can enter your Spredfast credentials. Once you have entered valid Spredfast credentials, you can use the same account any time you go to create a new Spredfast Conversations DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Spredfast when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Spredfast.


###
 Details Pane

This pane contains a primary
 **Reports**
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Spredfast Conversations report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Advanced Account Analytics Export
  |
 Returns daily account-level performance metrics from conversations.
  |
|
 Advanced Post Analytics Export
  |
 Returns filtered analytics from Conversations.
  |
|
 Analytics Data (Deprecated)
  |
 Returns metadata for analytics.
  |
|
 Advanced Page Analytics Export (Deprecated)
  |
 Returns conversation analytics.
  |
|
 Analytics Report (Deprecated)
  |
 Returns a specified analytics report.
  |
|
 Analytics Report List (Deprecated)
  |
 Returns a list of analytics reports.
  |
|
 Assets in Folder
  |
 Returns a list of assets in a folder.
  |
|
 Content Center Asset
  |
 Returns a content center asset.
  |
|
 Content Center Folder
  |
 Returns details for a specific content center folder.
  |
|
 Conversations Users List
  |
 Returns a list of users for a conversation.
  |
|
 Folder List
  |
 Returns a list of folders.
  |
|
 Initiative Data
  |
 Returns data for a specific initiative.
  |
|
 Initiatives List
  |
 Returns a list of available initiatives.
  |
|
 Message
  |
 Returns a specific message.
  |
|
 Page Labels
  |
 Returns a list of page labels.
  |
|
 Plans List
  |
 Returns a list of plans.
  |
|
 Streams Export (Deprecated)
  |
 Returns filtered analytics regarding specific or all streams.
  |

|
|
 Company
  |
 Select the company you want to retrieve information for.
  |
|
 Folders
  |
 Select the folders you want to display assets for.
  |
|
 Saved Report
  |
 Select the predefined Spredfast Conversations report you want to import into Domo.
  |
|
 Initiative
  |
 Select the initiative you want to retrieve data for.
  |
|
 Asset
  |
 Select the asset you want to retrieve data for.
  |
|
 Message Identifier
  |
 Enter the identifier for the message you want to retrieve.
  |
|
 Name Filter
  |
 Enter a filter to retrieve data based on that filter.
  |
|
 Metrics
  |
 Select whether to show metrics data in your report.
  |
|
 Order
  |
 Select how you want the data in your report to be sorted.
  |
|
 Direction
  |
 Select whether you want your report data to be sorted in an ascending or descending direction.
  |
|
 Query (Optional)
  |
 Enter a query to filter your data by.
  |
|
 Priority?
  |
 Select whether you want to show only priority items (
 **True**
 ) or all items (
 **False**
 ).
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

