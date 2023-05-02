

Intro
-------

As one of the most popular social media apps, Snapchat is a popular platform for both Millennials and Gen Z. Story Studio is a Snapchat self-serve tool to create, upload, and publish Shows and publisher stories in Snapchat Discover. Snapchat Publisher API allows a Story Studio user to call the Content, Analytics and Revenue API for their Shows and Publisher Stories.


 Get the real time updates about your story performance and revenue metrics with Domo's leading business intelligence platform. By combining your data with Domo, you'll be able to develop comprehensive marketing strategies to fully optimize your advertising across all platforms.

To learn more about the Snapchat Ads API, visit their page (


 https://developers.snapchat.com/ads/


 ).

The Snapchat Publisher Connector is a "Cloud App" Connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the Connector page for this and other Cloud App Connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your Snapchat account in the Data Center. This topic discusses the fields and menus that are specific to the Snapchat Publisher Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Snapchat account and create a DataSet, you must have the username and password associated with your Snapchat account.


 Connecting to Your Snapchat Publisher Account
-----------------------------------------------

This section enumerates the options in the Credentials and Details panes in the Snapchat Publisher Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Snapchat Publisher Connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Snapchat accounts in Domo) to open the Snapchat OAuth screen where you can enter your Snapchat username and password. Once you have entered valid Snapchat credentials, you can use the same account any time you go to create a new Snapchat Publisher DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Snapchat when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Snapchat account.


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
 Select the Snapchat Publisher report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Daily Audience Metrics
  |

Get the daily performance metrics for a publisher over the specified date range

|
|
 Daily Behaviour Metrics
  |

Get the daily performance metrics for a publisher over the specified date range

|
|
 ECPM
  |
 Retrieve revenue by editions
  |
|
 Publishers
  |
 Retrieve a list of publishers associated with the current user
  |
|
 Publisher Story Performance Metrics
  |
 Get the stories performance metrics for a publisher over the specified date range
  |
|
 Publisher Summary Key Metrics
  |
 Provide an aggregated summary of key metrics for the specified publisher over the specified date range
  |
|
 Total Revenue
  |
 Retrieve single aggregation of revenue metrics
  |

|
|
 Publisher ID
  |
 Select the publisher IDs.
  |
|
 Revenue Type
  |
 Filter revenue data by revenue type. To get All, omit this parameter.
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
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Time Period
  |

Choose the time period for which you would like to receive data.

|
|
 Starting Day of the Week
  |

Select the day that you want to set as the beginning day of the week.

|


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 What version of the Snapchat API does this connector use?

This connector uses version 1 of the Snapchat API (

https://api.snapkit.com/v1/stories/studio/

.)

###
 Which endpoint(s) does each report call in this Connector?


|
 Report Name
  |
 Endpoint URL(s)
  |
| --- | --- |
|
 DailyAudienceMetrics
  |
 /publisher/{publisherId}/daily/audience
  |
|
 DailyBehaviourMetrics
  |
 /publisher/{publisherId}/daily/behavior
  |
|
 ECPM
  |
 /revenue/publisher/{publisherId}/editions
  |
|
 Publishers
  |
 /publishers
  |
|
 Publisher Story Performance Metrics
  |
 /analytics/publisher/{publisherId}/stories
  |
|
 PublisherSummaryKeyMetrics
  |
 /publisher/{publisherId}/summary
  |
|
 Total Revenue
  |
 /revenue/publisher/{publisherId}/aggregate
  |


####
 What kind of credentials do I need to power up this Connector?

You need the username and password associated with your Snapchat account.

###
 How do I know that my Snapchat credentials are secure?

The login process uses the OAuth process, so your Snapchat credentials are never seen or stored by Domo. This keeps your login secure. You can revoke Domo's access to your account at any time.

###
 How often can the data be updated?

As often as needed.

###
 Are there any API limits I should be aware of?

No


 Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


