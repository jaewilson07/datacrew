

Intro
-------

Pendo captures user behavior, gathers feedback and provides contextual help beyond your service or platform. To learn more about the Pendo API, visit their page (

https://help.pendo.io/resources/supp...dev/index.html

).


 You connect to your Pendo account in the Data Center. This topic discusses the fields and menus that are specific to the Pendo connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Pendo account and create a DataSet, you must have a Pendo integration key. You can generate an integration key by doing the following:

. Log into Pendo.
2. Click your username.
3. Select
 **Integration Keys**
 .
4. Select
 **Add Integration Key**
 .
5. Name your new key.

Connecting to Your Pendo Account
----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Pendo Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Pendo account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Integration Key
  |
 Enter your Pendo integration key. For information about generating a key, see "Prerequisites," above.
  |


 Once you have entered valid Pendo credentials, you can use the same account any time you go to create a new Pendo DataSet. You can manage connector accounts in the
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
 Select the report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Contents of Reports
  |
 Returns the contents of a selected Pendo report.
  |
|
 Get Change History for Guide
  |
 Returns the change history for a specified guide.
  |
|
 Row Aggregation
  |
 Returns row aggregation data for a given source and timeframe.
  |
|
 Public Reports
  |
 Returns a list of public Pendo reports.
  |

|
|
 Pendo Report
  |
 Select the Pendo report you want to pull into Domo.
  |
|
 Use Report Schema
  |
 Select this checkbox if you want to report schema as column names.
  |
|
 Guide ID
  |
 Enter the ID of the guide you want to retrieve information for. To find the ID for a desired guide, navigate to the page for that guide (from the
 **Guides**
 page in Pendo), then copy the last portion of the URL. For example, in the URL

https://app.pendo.io/guides/abcd\_xyz1234

, the guide ID would be


 abcd\_xyz1234


 .
  |
|
 Source
  |
 Select the desired source for the
 **Row Aggregation**
 report. The following table describes the available sources:


|
 Source
  |
 Description
  |
 Date Filter Field
  |
| --- | --- | --- |
|
 Accounts
  |
 The accounts your users (usually your customers) belong to.
  |
 metadata.auto.lastvisit
  |
|
 Custom
  |
 Lets you define your own request JSON in the
 **Custom Aggregation**
 field. For more information, see

http://help.pendo.io/resources/suppo...w-sources.html

.
  |
 You define your own
  |
|
 Events
  |
 All recorded click and pageview events (tagged or untagged).
  |
 timeSeries dayRange
  |
|
 Features
  |
 Sets of rules that identify individual product features (defined by a DOM rule).
  |
 lastUpdatedAt
  |
|
 Feature Events
  |
 All recorded click events matching tagged features.
  |
 timeSeries dayRange
  |
|
 Guides
  |
 The in-app messages you show visitors.
  |
 lastUpdatedAt
  |
|
 Pages
  |
 Sets of rules that idenfity individual pages in your product (defined by a URL rule).
  |
 lastUpdatedAt
  |
|
 Page Events
  |
 All recorded pageviews matching tagged pages.
  |
 timeSeries dayRange
  |
|
 Visitors
  |
 Your product's users (including internal users who access customer accounts).
  |
 metadata.auto.lastvisit
  |

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
 Custom Aggregation
  |
 Enter the request JSON. For example:


`{

"pipeline": [

{

"limit": 5

}

],

"source": {

"pageEvents": null

},

"timeSeries": {

"count": 1,

"first": 1493596800000,

"period": "dayRange"

}

}`
 |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

