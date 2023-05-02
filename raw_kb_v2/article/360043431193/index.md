

Intro
-------

Engine Ready provides custom online marketing solutions for businesses and is an industry leader in SEO and PPC. You connect to your Engine Ready account in the Data Center. This topic discusses the fields and menus that are specific to the Engine Ready connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Engine Ready account and create a DataSet, you must have your Engine Ready username and password.


 Connecting to Your Engine Ready Account
-----------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Engine Ready Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Engine Ready account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your Engine Ready username.
  |
|
 Password
  |
 Enter your Engine Ready password.
  |


 Once you have entered valid Engine Ready credentials, you can use the same account any time you go to create a new Engine Ready DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


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
 Select the Engine Ready report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Account - Account List
  |
 Returns the list containing account information for the parent account and all client accounts associated with the current user.
  |
|
 Account - Account Membership List
  |
 Returns the list containing account membership information for the specified user.
  |
|
 Account - Category of Specified Account
  |
 Returns the category of the specified account.
  |
|
 Account - Scheduled Report List
  |
 Returns the information about all scheduled reports for the specified account and, optionally, information about scheduled reports for client accounts.
  |
|
 Ad Campaigns - Ad List All
  |
 Returns the list of ad campaigns associated with the specified parent account, optionally constrained by a specified search filter.
  |
|
 Ad Campaigns - Dispo List
  |
 Returns the list of tags for the specified campaign.
  |
|
 Ad Campaigns - List by Group
  |
 Returns the list of the ad campaigns associated with the specified ad group.
  |
|
 Ad Campaigns - Time Zone List
  |
 Returns the list of valid time zones.
  |
|
 Ad Group - Group List
  |
 Returns the list of of ad groups associated with the specified account.
  |
|
 Call Forwarding - Entries
  |
 Returns the list of call forwarding entries for the specified ad campaign.
  |
|
 Call Recordings - Call Search
  |
 Returns all calls logged for an account.
  |
|
 Click-to-Call and Form to Phone Entries
  |
 Returns the list of call log entries of click-to-call calls for the specified click-to-call ad campaign.
  |
|
 Image List
  |
 Returns the list of the images for the specified account.
  |
|
 Image Replace List
  |
 Returns the proxy image replacement rules for the specified ad campaign.
  |
|
 Phone Numbers - Available Numbers
  |
 Returns the available telephone numbers in the number pool for the specified account.
  |
|
 Phone Numbers - Numbers List
  |
 Returns the list of phone numbers associated with the specified account.
  |
|
 Phone Numbers - Pending Number Orders List
  |
 Returns the list of pending number orders for the specified account.
  |
|
 Playfiles - Get Playfiles List
  |
 Returns the list of playfiles for the specified ad campaign.
  |
|
 Proxy List
  |
 Returns the proxies associated with the specified account.
  |
|
 Rewrite Rules and JavaScript Rewrites
  |
 Returns the proxy rewrite list of the specified click-to-call ad campaign.
  |
|
 Voice XML App List
  |
 Returns the list of the VoiceXML application entries associated with the specified account.
  |
|
 Voice XML Call List
  |
 Returns the list of the calls handled by a VoiceXML application that occurred between the specified start and end date and times for the specified account.
  |

|
|
 Account Name
  |
 Select the account you want to retrieve information for.
  |
|
 Campaign ID
  |
 Select the campaign you want to retrieve information for.
  |
|
 Group ID
  |
 Select the group you want to retrieve information for.
  |
|
 User ID
  |
 Select the user you want to retrieve information for.
  |
|
 Start Date
  |
 Select the start date for your report.
  |
|
 End Date
  |
 Select the end date for your report.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQ
-----


####
 Can I use the same account to create multiple DataSets?

Yes.

###
 How often can the data be updated?

Try to limit the number of concurrent DataSet executions.

###
 Are there any API limits I should be aware of?

There are API limits that might cause slowdowns if multiple DataSets are running concurrently.

