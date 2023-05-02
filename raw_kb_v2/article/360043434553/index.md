

Intro
-------

Pinterest Ads help you get your products and content in front of more people as they search, browse and discover on Pinterest. Use Domo's Pinterest Ads connector to retrieve delivery metrics and object information for your Pinterest Ads account. To learn more about the Pinterest API, visit their page (

https://developers.pinterest.com/docs/getting-started/introduction/?

).


 You connect to your Pinterest account in the Data Center. This topic discusses the fields and menus that are specific to the Pinterest Ads connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Pinterest account and create a DataSet, you must have credentials for the account (the email address you use to log into Pinterest and your Pinterest password) OR Facebook or Google credentials.


 Connecting to your Pinterest account
--------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Pinterest Ads Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials pane

The Domo Pinterest Ads connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Pinterest Ads accounts in Domo) to open the Pinterest OAuth screen where you can enter your Pinterest credentials. Once you have entered valid Pinterest credentials, you can use the same account any time you go to create a new Pinterest Ads DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Pinterest when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Pinterest.


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
 Select the Pinterest report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Board Details
  |
 This report returns a board object.
  |
|
 Board Pins
  |
 This report returns a board's pin objects.
  |
|
 Conversion Quality Health Metrics
  |
 This report returns a list of conversion quality health metrics.
  |
|
 Delivery Metrics
  |
 This report returns delivery metrics for the selected object. If a metric has no value, it may not be returned in the metrics dictionary.
  |
|
 Delivery Metrics' Definitions
  |
 This report returns a list of all the names and definitions of Pinterest's delivery metrics.
  |
|
 Most Clicked Pins
  |
 This report returns a list of pins from the specified domain.
  |
|
 Object Information
  |
 This report returns a list containing the object information for the selected object type.
  |
|
 Pins
  |
 This report returns a list containing information about the authenticated user's Pins.
  |
|
 Users
  |
 This report returns information about the authenticated user.
  |
|
 User Metrics
  |
 This report returns metrics for the authenticated user.
  |
|
 User's Boards
  |
 This report returns a board summary about the authenticated user.
  |
|
 Users Top Pin Metrics Client
  |
 This report returns analytics data about the authenticated user's top pins (limited to the top 100).
  |
|
 Users Top Video Pin Metrics
  |
 This report returns analytics data about the authenticated user's top video pins (limited to the top 100).
  |

|
|
 Board
  |
 Select the Board to report on.
  |
|
 Advertiser
  |
 Select the advertiser you want to retrieve data for.
  |
|
 Select Health Type
  |
 Select the health type to return the data on.
  |
|
 Object Type
  |
 Select the type of object you want to retrieve data for.
  |
|
 Select All or Some
  |
 Select whether you want to retrieve all objects of your selected object type or only a specified number.
  |
|
 Granularity
  |
 Select the desired granularity for your report. The following options are available:
 * **Day**
 . Metrics are broken down daily.
* **Hour**
 . Metrics are broken down hourly. This data is real-time and may be inexact.
* **Total**
 . Metrics are aggregated over a specified date range.
 |
|
 Conversion Report Time
  |
 Select the date by which the conversion metrics returned from this report will be reported. There are two dates associated with a conversion event—the date that the user interacted with the ad, and the date that the user completed a conversion event.
  |
|
 View Window Days
  |
 Select the number of days to use as the conversion attribution window for a "view" action.
  |
|
 Engagement Window Days
  |
 Select the number of days to use as the conversion attribution window for an "engagement" (i.e. close-up or save) action.
  |
|
 Click Window Days
  |
 Select the number of days to use as the conversion attribution window for a "click" action.
  |
|
 Select Display Names As Column Names
  |
 Select if you want to use display names as column names instead of internal names.
  |
|
 Domain
  |
 Enter the domain name to query.
  |
|
 Aggregation
  |
 Select the period to aggregate the data over.
  |
|
 Entity Status
  |
 Select the entity status to report on.
  |
|
 Campaign
  |
 Select the campaign you want to retrieve data for.
  |
|
 Ad Group
  |
 Select the ad group you want to retrieve data for.
  |
|
 Pin Promotion
  |
 Select the pin promotion you want to retrieve data for.
  |
|
 Product Group Ids
  |
 Select the product groups.
  |
|
 Include All Advertisers Your User Has Access To?
  |
 Select whether you want your report to include all advertisers your authenticated user has access to.
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


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 What version of the Pinterest Ads API does this connector use?

This connector uses version 5 of the Pinterest Ads API.

###
 Which endpoint(s) does each report call in this connector?


|
 Report Name
  |
 Endpoint URL
  |
| --- | --- |
|
 Board Details
  |
 /boards/{boardId}
  |
|
 Board Pins
  |
 /boards/{boardId}/pins
  |
|
 Conversion Quality Health Metrics
  |
 /measurement/conversion\_quality/health
  |
|
 Delivery Metrics
  |
 /{objectType}/{objectId}/delivery\_metrics
  |
|
 Delivery Metrics' Definitions
  |
 /resources/delivery\_metrics/
  |
|
 Most Clicked Pins
  |
 /domains/{domain}/pins/top/clicks/
  |
|
 Most Repinned Pins
  |
 /domains/{domain}/pins/top/repins
  |
|
 Object Information
  |
 /{objectParent}/{objectId}/{ObjectType}
  |
|
 Pins
  |
 /users/{user}/pins
  |
|
 Users
  |
 /v3/users/me
  |
|
 User Metrics
  |
 /partners/analytics/users/{me}/metrics
  |
|
 User's Boards
  |
 /users/{user}/boards/feed/
  |
|
 Users Top Pin Metrics Client
  |
 /partners/analytics/users/{me}/pins/top/
  |
|
 Users Top Video Pin Metrics
  |
 /partners/analytics/users/{me}/pins/top/video
  |


####
 How do I know my login credentials are secure?

Domo uses the OAuth process to connect to Pinterest, so your credentials are never seen or stored by Domo. You can revoke Domo's access to your Pinterest account at any time.

###
 How often can the data be updated?

DataSets should be set to update once a day.

###
 Are there any API limits I should be aware of?

Pinterest allows up to 1000 API requests for a user per hour. A single dataset run may need to make multiple requests.

