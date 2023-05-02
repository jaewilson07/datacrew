

Intro
-------

MailChimp is an email marketing service provider founded in 2001.  You can use Domo's MailChimp connector to compile reports about marketing statistics. To learn more about the MailChimp API, visit their page (

http://developer.mailchimp.com/docum...ion/mailchimp/

).


 The MailChimp connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your MailChimp account in the

Data Center

. This topic discusses the fields and menus that are specific to the MailChimp connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 The MailChimp connector is appropriate for all of the following use cases:
 * Monitoring/assessing campaign effectiveness
* Gathering feedback to create effective campaigns in the future
* Understanding subscribers' normal behaviors and stats
* Understanding target audiences
 |
|
**Primary Metrics**
 | * Click rate
* Open rate
* Subscribes
* Unsubscribes
* Membership duration
* Recipient count
* Device open type
* Recipient locations
* Languages
* Campaigns
* Email subjects
 |
|
**Primary Company Roles**
 | * Content marketing roles
* Direct marketing roles
* Marketing analytics roles
 |
|
**Average Implementation Time**
 |
 10 minutes
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 3
  |

Prerequisites
---------------

To connect to your MailChimp account and create a DataSet, you must have your MailChimp username and password.


 Connecting to Your MailChimp Account
--------------------------------------

This section enumerates the options in the

Credentials

and

Details

panes in the MailChimp Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo MailChimp connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing MailChimp accounts in Domo)


 to open the MailChimp OAuth screen you can enter your MailChimp username and password. Once you have entered valid MailChimp credentials, you can use the same account any time you go to create a new MailChimp DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a menu in which you can select a report, along with other parameters that may or may not appear depending on your selected report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the MailChimp report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Automations
  |
 Get a list of automations.
  |
|
 Batch Operations
  |
 Get a list of batch requests.
  |
|
 Campaigns
  |
 Get a list of all campaigns.
  |
|
 Campaigns - Content
  |
 Get a campaign content.
  |
|
 Campaigns - Feedback
  |
 Get feedback about a campaign.
  |
|
 Campaign Folders
  |
 Get a list of all campaign folders.
  |
|
 Campaigns - Recipients Conditions
  |
 Get a list of recipients conditions.
  |
|
 Campaigns - Send Checklist
  |
 Get the send checklist for a campaign.
  |
|
 Conversations
  |
 Get a list of conversations.
  |
|
 E-Commerce Stores
  |
 Get information about all stores.
  |
|
 E-Commerce Stores - Carts
  |
 Get information about a store's carts.
  |
|
 E-Commerce Stores - Customers
  |
 Get information about a store's customers.
  |
|
 E-Commerce Stores - Orders
  |
 Get information about a store's orders.
  |
|
 E-Commerce Stores - Products
  |
 Get information about a store's products.
  |
|
 Lists
  |
 Get information about all lists.
  |
|
 Lists - Abuse Reports
  |
 Get information about abuse reports.
  |
|
 Lists - Activity
  |
 Get recent list activity.
  |
|
 Lists - Clients
  |
 Get top email clients.
  |
|
 Lists - Growth History
  |
 Get list growth history data.
  |
|
 Lists - Interest Categories
  |
 Get information about a list’s interest categories.
  |
|
 Lists - Members
  |
 Get information about members in a list.
  |
|
 Lists - Segments
  |
 Get information about all segments in a list.
  |
|
 Mailchimp Overview Report
  |
 Get the overview for the campaign reports and lists.
  |
|
 Reports - Campaign Advice
  |
 Get reports for campaign feedback.
  |
|
 Reports - Campaign Reports
  |
 Get reports for all campaigns.
  |
|
 Reports - Click Reports
  |
 Get reports for campaign click details.
  |
|
 Reports - Domain Performance
  |
 Get reports for domain performance stats.
  |
|
 Reports - EEP URL Reports
  |
 Get reports for EEP url activity.
  |
|
 Reports - EEP URL Reports - Clicks Location
  |
 Get reports for EEP url clicks activity.
  |
|
 Reports - Email Activity
  |
 Get reports for email activity.
  |
|
 Reports - Location
  |
 Get reports for top open locations.
  |
|
 Reports - Sub Reports
  |
 Get reports for child campaigns.
  |
|
 Reports - Timeseries
  |
 Get reports for timeseries.
  |
|
 Reports - Unsubscribers
  |
 Get reports for unsubscribed list members.
  |
|
 Templates
  |
 Get a list of all templates.
  |

|
|
 Campaign Type
  |
 Select the type of campaigns you want to filter the
 **Campaign**
 list by. If you select
 **All**
 , all of your campaigns appear in the
 **Campaign**
 list regardless of type.
  |
|
 Campaign
  |
 Select the campaign you want to retrieve information for.
  |
|
 Campaign Selection
  |
 Specify whether you want to select a specific campaign or filter campaigns by date and type.
  |
|
 Dates Selection
  |
 Specify whether you want to filter results by campaign creation date or campaign send date.
  |
|
 Duration
  |
 Select whether you want to pull data for a specific date or a date range.
  |
|
 Report Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |
|
 Select Specific Date
  |
 Select the date for the report.
  |
|
 Days Back
  |
 Enter the number of past days that should appear in the report.
  |
|
 Start Date
  |
 Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in
 **End Date**
 .
  |
|
 End Date
  |
 Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in
 **Start Date**
 .
  |
|
 Select Specific Start Date
  |
 Select the first date in your date range.
  |
|
 Select Specific End Date
  |
 Select the second date in your date range.
  |
|
 Days Back to Start From
  |
 Enter the number of the farthest day back that should be represented in the report. Combine with
 **Days Back to End At**
 to create a range of represented days.


 For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Days Back to End At
  |
 Enter the number of the most recent day back that should be represented in the report. Combine with
 **Days Back to Start From**
 to create a range of represented days.


 For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Store
  |
 Select the E-Commerce Store you want to retrieve information for.
  |
|
 List
  |
 Select the list you want to retrieve information for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

