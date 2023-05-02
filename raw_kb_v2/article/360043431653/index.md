

Intro
-------

Nativo is an advertising platform that promises higher engagement rates for marketers, premium monetization for publishers, and a non-interruptive experience for consumers. You can use Domo's Nativo connector to retrieve Nativo report data such as number of links clicked, video views, impressions, and so on. To learn more about the Nativo API, visit their page at

https://admin.nativo.net/docs/reporting.html

(credentials are required for access).


 You connect to your Nativo account in the Data Center. This topic discusses the fields and menus that are specific to the Nativo connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Nativo account and create a DataSet, you must have the following:

 A Nativo public key (token)
* A Nativo secret

These credentials are provided by your Nativo team upon account creation.


 Connecting to Your Nativo Account
-----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Nativo Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Nativo account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Token
  |
 Enter your Nativo token (public key).
  |
|
 Secret
  |
 Enter your Nativo secret (private key).
  |


 Once you have entered valid Nativo credentials, you can use the same account any time you go to create a new Nativo DataSet. You can manage connector accounts in the
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
 Select the Nativo report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Direct
  |
 Returns selected campaign and ad metrics from the Nativo Direct Service for a given time period.
  |
|
 Managed Campaign
  |
 Returns selected campaign and ad metrics from the Nativo Managed Campaign Service for a given time period.
  |
|
 Marketplace
  |
 Returns selected campaign and ad metrics from the Nativo Marketplace Service for a given time period.
  |
|
 Preferred
  |
 Returns selected campaign and ad metrics from the Nativo Preferred Service for a given time period.
  |

|
|
 Breakdown
  |
 Select all categories that you want to break down the report data by.
  |
|
 Metrics
  |
 Select all metrics that you want to appear in your report.
  |
|
 Filter By
  |
 Select a category to filter the data by. If you select
 **None**
 , no filter is applied (i.e. all available data will be pulled).
  |
|
 Advertisers
  |
 Select all advertisers you want to appear in your report.
  |
|
 Campaigns
  |
 Select all campaigns you want to appear in your report.
  |
|
 Devices
  |
 Enter a comma-separated list of IDs for devices you want to appear in your report.
  |
|
 Publications
  |
 Enter a comma-separated list of IDs for publications you want to appear in your report.
  |
|
 Publishers
  |
 Enter a comma-separated list of IDs for publishers you want to appear in your report.
  |
|
 Resolution
  |
 Select whether you want to show data by hour, by day, or totals.
  |
|
 Time Zone
  |
 Select the time zone for your report data (the default is UTC).
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

Adding a DataSet Using a Data Connector

.

