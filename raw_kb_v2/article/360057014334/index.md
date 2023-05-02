

Intro
-------

The Google Analytics Partition connector extracts data from the Google Analytics API. You can connect Google data to Domo, including page views, unique visitor counts, return visitor counts, referring domains, geographic patterns, and more. You can use predefined reports or create your own. This connector connects to your partitioned tables.


 With your Google Analytics data in Domo, you can get immediate insights into your web performance metrics so you can better understand your customers and assess the performance of your content. Create visualizations in just minutes, and easily share them with your team to help drive better user experiences. Use Domo's Google Analytics Partition Connector to efficiently generate reports about campaign, device, location, social network, and traffic metrics to make sure the customer behavior you're seeing now translates to sales and revenue down the line. To learn more about the Google Analytics API, visit


 https://developers.google.com/analytics/


 .


 You connect to your Google account in the Data Center. This topic discusses the fields and menus that are specific to the Google Analytics Partition connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Best Practices
----------------


* It's important to note that when the report uses sample data, the sampled data is optimal. This can cause output discrepancies when comparing the Google API data to the reports available in the Google Analytics reporting tool. The sampling is designed to help the API perform optimally while still providing representative data.
* When starting out, consider deploying the

Google Analytics QuickStart App

. The Base Metrics report has many of the fundamental metrics that are key to a Google Analytics dashboard.

Prerequisites
---------------

To connect to the Google Analytics API and create a DataSet, you must have a Google email address and password.


 Connecting to Your Google Account
-----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Google Analytics Partition

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane

The Domo Google Analytics Partition connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Google accounts in Domo) to open the Google OAuth screen where you can enter your Google email address and password. Once you have entered valid Google credentials, you can use the same account any time you go to create a new Google Analytics Partition DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Google when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Google.


###
 Details Pane

This pane contains a number of sub-panes in which you can select a report, set a date range, choose your segments, and more.


 Menu
  |
 Description
  |
| --- | --- |
|
 View
  |
 Choose whether you want to pull data from a specific view or all views. If you choose
 ****Specific views****
 , you are asked to choose the desired profiles. Be aware that you won't be able to use custom metrics and dimensions if you choose more than one web property.
  |
|
 Report
  |
 The Google Analytics Partition reports are divided  into three categories, namely- Custom report, Google Analytics Audience reports, and Curated Domo reports. The number of available Metrics and Dimensions for the selected report appear next to the reports drop down. You can view the names of the metrics and dimensions as you hover the pointer over the respective field. The following reports are available:


|  |  |
| --- | --- |
|
 Custom Report
  |
 Custom Report allows you to create a customized report. You can select a base report for your custom report from the
 **Base Report**
 drop down. Depending on your base report selection, the number of metrics and dimensions that you can combine in your custom report appear next to the report drop down as well as in the left pane. You can select the categories from list available. A list of available metrics and dimensions for the selected category appears in the right pane. As you select/deselect the desired metrics and dimensions, you can see the changes in the respective numbers in the left pane as well as next to the report drop down.
  |
| **Google Analytics Audience reports**  |
|
 Active Users
  |
 Returns data for Users, New Users, and Sessions.
  |
|
 Behavior
  |
 Returns data for % New Sessions, Avg. Session Duration, Bounce Rate, Goal Completions, Goal Conversion Rate, Goal Value, New Users, Pages / Session, Page views, and Sessions broken down by Count of Sessions, Days Since Last Session, and Session Duration.
  |
|
 Cohort Analysis
  |
 Returns data for Goal Completions, Page views, Revenue, Session Duration, Sessions, Transactions, and Users broken down by Date.
  |
|
 Demographics
  |
 Returns data for % New Sessions, Avg. Session Duration, Bounce Rate, Goal Completions, Goal Conversion Rate, Goal Value, New Users, Pages / Session, and Sessions broken down by Age and Gender.
  |
|
 Geo
  |
 Returns data for % New Sessions, Avg. Session Duration, Bounce Rate, Goal Completions, Goal Conversion Rate, Goal Value, New Users, Pages / Session, and Sessions broken down by City, Continent, Country, Language, Region, and Sub Continent.
  |
|
 Mobile
  |
 Returns data for % New Sessions, Avg. Session Duration, Bounce Rate, Goal Completions, Goal Conversion Rate, Goal Value, New Users, Pages / Session, Page views, and Sessions broken down by Device Category, Mobile Device Branding, Mobile Device Info, Mobile Input Selector, Operating System, Screen Resolution, and Screen Provider.
  |
|
 Overview
  |
 Returns data for % New sessions, Avg. Session Duration, Bounce Rate, New Users, Pages / Session, Page views, Sessions, and Users broken down by Browser, City, Country, Language, Operating System, Screen Resolution, and Service Provider.
  |
|
 Technology
  |
 Returns data for % New Sessions, Avg. Session Duration, Bounce Rate, Goal Completions, Goal Conversion Rate, Goal Value, New Users, Pages / Session, and Sessions broken down by Browser, Flash Version, Hostname, Operating System, Screen Colors, Screen Resolution, and Service Provider.
  |
| **Curated Domo reports**  |
|
 Base Metrics
  |
 Returns data for Bounces, Goal Completions, Goal Value, New Users, Page views, Revenue, Session Duration, Sessions, Transactions, and Users broken down by Date.
  |
|
 Campaign Metrics
  |
 Returns data for Bounces, Goal Completions, Goal Value, New Users, Page views, Revenue, Session Duration, Sessions, Transactions, and Users broken down by Date and Campaign.
  |
|
 Device Metrics
  |
 Returns data for Bounces, Goal Completions, Goal Value, New Users, Page views, Revenue, Session Duration, Sessions, Transactions, and Users broken down by Date, Device, and Operating System.
  |
|
 Location Metrics
  |
 Returns data for Bounces, Goal Completions, Goal Value, New Users, Page views, Revenue, Session Duration, Sessions, Transactions, and Users broken down by Country, Date and Region.
  |
|
 Mobile Metrics
  |
 Returns data for Bounces, Goal Completions, Goal Value, New Users, Page views, Revenue, Session Duration, Sessions, Transactions, and Users broken down by Date, Device Category, Mobile Device Branding, Mobile Device Info, Mobile Device Model, and Operating System.
  |
|
 Product Metrics
  |
 Returns data for Product Revenue, Quantity, and Unique Purchases broken down by Date, Product, Product Category, and Product SKU.
  |
|
 Social Network
  |
 Returns data for Avg. Session Duration, Pages / Session, Page views, and Sessions broken down by Date and Social Network.
  |
|
 Traffic Metrics
  |
 Returns data for Bounces, Goal Completions, Goal Value, New Users, Page views, Revenue, Session Duration, Sessions, Transactions, and Users broken down by Date, Medium, and Source.
  |

|
|
 Range
  |
 Choose a predefined date range (30 days, 60 days, 90 days, or all days since the last successful run) or set a custom date range. If you choose to set a custom date range, you are asked to choose whether to pull data for a single date or a range of dates. With both options, you can choose whether the dates in the range are specific or relative. If you choose specific dates, you are prompted to choose those dates in a date picker. If you choose relative dates, you are asked to pick the number of days back you want to start pulling/stop pulling data for.


 For example, you might choose to pull in data for a date range and then opt to have relative start and end dates for the range. If you were to select 14 days back for the start date and 7 days back for the end date, every time the report ran it would pull data for the last 14 days up until the last 7 days.
  |
|
 Segments
  |
 Select whether you want to use Segments in your data. A Segment is a subset of Google Analytics data. For example, of the entire set of users, one Segment might be users from a particular country or city. Segments let you isolate and analyze those subsets of data so you can examine and respond to the component trends in your business.


 You can build dynamic Segments within Domo. You do this by inputting JSON code formatted as follows:


`[

{

"dynamicSegment": {

"name": "Sessions with Safari browser",

"userSegment": {

"segmentFilters": [

{

"simpleSegment": {

"orFiltersForSegment": [

{

"segmentFilterClauses": [

{

"dimensionFilter": {

"dimensionName": "ga:browser",

"operator": "EXACT",

"expressions": [

"Safari"

]

}

}

]

}

]

}

}

]

}

}

}

]`


 For more detailed information about building segments, see

https://developers.google.com/analyt...asics#segments

.
  |
|
 Filters
  |
 Select whether you want to use Filters in your data. Filters can be used to collect only data that matches specific criteria. You can filter specific metrics or dimensions. For example, you could limit the "browser" dimension to show only traffic from the Safari or Chrome browsers.


 For more information about utilizing Google Analytics filters, see

https://developers.google.com/analyt...erence#filters

.


 You can build Dimension Filters and Metrics Filters within Domo. You do this by inputting JSON code formatted as follows:


`{

"metricFilterClauses": [

{

"filters": [

{

"metricName": "ga:pageviews",

"operator": "GREATER_THAN",

"comparisonValue": "2"

}

]

}

]

}`


 For more detailed information about building Filters, see

https://developers.google.com/analyt...sics#filtering

.
  |
|
 Advanced Settings > Allow Sampled Data
  |
 Select whether you want to allow sampled data in your report. By default Domo will try to unsample data by breaking up the requests into smaller date intervals until Google responds with unsampled data. By allowing sampled data, Domo will not break up the query into smaller date intervals and return the queried data as is. If you are querying user metrics without a date dimension, we recommend allowing sampled data.
  |
|
 Advanced Settings > Replace Backfill
  |
 Select whether you want your dataset to show your past data. While this switch is selected the dataset will retrieve data as per the dates selected and replace all the data in the dataset. If you are using Append as an update mode, be aware that you will lose all past history.
  |
|
 Test
  |
 Click
 ****Run Test****
 to test your configuration.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

