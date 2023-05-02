

Intro
-------

Chartbeat is a web analytics company that provides actionable insights to news websites and blogs. To learn more about the Chartbeat API, visit their page (

https://chartbeat.com/docs/api/

).


 You connect to your Chartbeat account in the Data Center. This topic discusses the fields and menus that are specific to the Chartbeat connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Chartbeat account and create a DataSet, you must have the following:

 Your Chartbeat host URL
* Your Chartbeat API key

You can obtain an API key by signing up for an account. For more information, see

https://chartbeat.com/signup/

.


 Connecting to Your Chartbeat Account
--------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Chartbeat Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Chartbeat account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Host
  |
 Enter your Chartbeat host URL.
  |
|
 API Key
  |
 Enter your Chartbeat API key.
  |


 Once you have entered valid Chartbeat credentials, you can use the same account any time you go to create a new Chartbeat DataSet. You can manage connector accounts in the
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
 Select the Chartbeat report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Geographical Information
  |
 Returns geographical information about the most recent visitors. This call returns sampled data.
  |
|
 Historical Engagement Series
  |
 Returns snapshots of engaged seconds over a period of time based on set frequency or limit intervals.
  |
|
 Historical Engagement Statistics
  |
 Returns summary statistics of engaged seconds over a period of time.
  |
|
 Historical Social Series
  |
 Returns a series of social activity over a period of time.
  |
|
 Historical Social Statistics
  |
 Returns a summary of social activity over a period of time.
  |
|
 Historical Traffic Series
  |
 Returns traffic sources and concurrent data summarized over the given time span.
  |
|
 Historical Traffic Statistics
  |
 Returns the maximum or minimum concurrents in a given time span.
  |
|
 Quick Statistics
  |
 Returns an summary overview about the people on your domain.
  |
|
 Recent Visitors
  |
 Returns information about the most recent visitors for a specific domain.
  |
|
 Recurring report through Charbeat Report Builder
  |
 Retrieves a recurring report to retrieve historical data.
  |
|
 Referrers
  |
 Returns the list of top referrers for a specific domain
  |
|
 Summary
  |
 Returns either numeric or categorical summaries of event fields given a host and optional path.


 Numeric summaries include min, max, sum, nonzero observations, observations and sum of squares.


 Categorical summaries include field keys with associated counts. This call returns data from Chartbeat at 15-minute intervals.
  |
|
 Top Pages
  |
 Returns a list of pages, ordered by which ones have most visitors right now. This call returns data from Chartbeat at 15-minute intervals.
  |

|
|
 Report Type
  |
 Select whether you want your Chartbeat Report Builder report to pull data on videos or pages.
  |
|
 Metrics
  |
 Select the metrics for your Chartbeat Report Builder report.
  |
|
 Dimensions
  |
 Select the dimensions for your Chartbeat Report Builder report.
  |
|
 Filters (Optional)
  |
 Select the filters you want to be applied to your Chartbeat Report Builder report.
  |
|
 Author Filter
  |
 Enter the name of the author for which you want to retrieve data for your Chartbeat Report Builder report.
  |
|
 Browser Filter
  |
 Select/enter the browser for which you want to retrieve data for your Chartbeat Report Builder report.
  |
|
 Content Type Filter
  |
 Enter the content type as tagged on your Chartbeat site.
  |
|
 Demographics Filter
  |
 Enter the demographics you want to filter by in your Chartbeat Report Builder report.
  |
|
 Demographic Type Filter
  |
 Enter the demographic type you want to filter by in your Chartbeat Report Builder report.
  |
|
 Device
  |
 Select the device type for your Chartbeat Report Builder report.
  |
|
 Distribution Channel Filter
  |
 Select the distribution channel for your Chartbeat Report Builder report.
  |
|
 Internal Path
  |
 Enter the internal navigation for your Chartbeat Report Builder report.
  |
|
 Page Path Filter
  |
 Enter the reported path of the page (unique to your domain).
  |
|
 Referrer Filter
  |
 Enter the referring domain for your Chartbeat Report Builder report.
  |
|
 Referrer Type
  |
 Select the referrer type for your Chartbeat Report Builder report.
  |
|
 Section Filter
  |
 Enter the section for a visited site (unique to your domain).
  |
|
 Site Experience FIlter
  |
 Select the desired site experience for your Chartbeat Report Builder report.
  |
|
 Sponsor Filter
  |
 Enter the sponsor ID or name for your Chartbeat Report Builder report, as tagged on the piece of sponsored content.
  |
|
 Subdomain
  |
 Enter the specific subdomain (unique to your domain).
  |
|
 Video Path Filter
  |
 Enter the URL/path of the video for which you want to retrieve data for your Chartbeat Report Builder report.
  |
|
 Video Title
  |
 Enter the title of the video for which you want to retrieve data for your Chartbeat Report Builder report.
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
 Frequency (Optional)
  |
 Enter the frequency of data you want returned in your report. Supported values are multiples of 5, such as 5, 10, etc.
  |
|
 Properties (Optional)
  |
 Select a property to returns summary statistics for that property.
  |
|
 Now On (Optional)
  |
 Select
 **True**
 to show the recirculation list for article pages.
  |
|
 All Platforms (Optional)
  |
 Select
 **True**
 to show the breakdown of desktop, mobile, tablet, and app.
  |
|
 Loyalty (Optional)
  |
 Select
 **True**
 to show the breakdown of new, returning, and loyal visitors.
  |
|
 Types (Optional)
  |
 Select
 **True**
 to show the type for each page (either "Article" or "Landing").
  |
|
 Breakdown Type (Optional)
  |
 Select
 **True**
 to show the breakdown of referrers by traffic source.
  |
|
 Keys
  |
 Select the key you want to retrieve information for.
  |
|
 Limit (Optional)
  |
 Enter the total number of records or pages to return. For the "Recent Visitors" report, the default value is 50. For the "Referrers" and "Top Pages" reports, the default value is 10. For the "Geographical Information" report, enter the data points to return per location segment.

This field is available only for
 **Geographical Information**
 ,
 **Recent Visitors**
 ,
 **Referrers**
 , and
 **Top Pages**
 reports.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

