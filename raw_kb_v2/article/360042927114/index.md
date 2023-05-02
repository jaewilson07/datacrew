

Intro
-------

RevContent is a content recommendation network with widgets that can be integrated with all types of blogs and websites to enhance traffic and increase revenue. To learn more about the RevContent API, visit their page (

https://api.revcontent.io/docs/stats/

).


 You connect to your RevContent account in the Data Center. This topic discusses the fields and menus that are specific to the RevContent connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your RevContent account and create a DataSet, you must have the following:

 A RevContent client ID
* A RevContent client secret

For information about obtaining these credentials, see

https://faq.revcontent.com/customer/...rs-publishers-

.


 Connecting to Your RevContent Account
---------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the RevContent Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your RevContent account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Client ID
  |
 Enter your RevContent client ID.
  |
|
 Client Secret
  |
 Enter your RevContent client secret.
  |


 Once you have entered valid RevContent credentials, you can use the same account any time you go to create a new RevContent DataSet. You can manage connector accounts in the
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
 Select the RevContent report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 All Boosts
  |
 Returns a list of all boosts.
  |
|
 All Boosts Content
  |
 Returns all boost content for the current account for the specified time period.
  |
|
 All Pages
  |
 Returns all user-owned pages.
  |
|
 Boost Content
  |
 Returns content for a given boost for the specified user status, admin status, and time period.
  |
|
 Boosts Performance
  |
 Returns performance statistics for all boosts or specific boosts for a given time period.
  |
|
 Boost Targets
  |
 Returns target data for a given boost, status, and time period.
  |
|
 Brand Targets
  |
 Returns a list of available brands.
  |
|
 Content Widget Stats
  |
 Returns data for a given content ID and time period.
  |
|
 Countries
  |
 Returns a list of country codes.
  |
|
 Devices
  |
 Returns a list of supported devices.
  |
|
 Interests
  |
 Returns a list of supported interests.
  |
|
 Languages
  |
 Returns a list of supported languages.
  |
|
 Page
  |
 Returns data for a given page.
  |
|
 Segments
  |
 Returns a list of segments for a specified widget ID.
  |
|
 Sub ID Stats
  |
 Returns a list of sub ID statistic CSV's for a specific widget.
  |
|
 Topic Targets
  |
 Returns a list of available targets.
  |
|
 Top vCPM Bid Range
  |
 Returns the top vCBM bid range for a given widget.
  |
|
 Widget IDs
  |
 Returns a list of widget IDs that are listed in Widget Optimizer.
  |
|
 Widget Internal Content
  |
 Returns internal content for a given widget, status, device, and time period.
  |
|
 Widgets
  |
 Returns a list of widgets for a given domain, device, and time period.
  |
|
 Widget Stats
  |
 Returns statistics for a given boost, widget, and time period.
  |

|
|
 Targeting Type
  |
 Select the targeting type you want to retrieve information for.
  |
|
 System Status
  |
 Select the system status you want to retrieve information for.
  |
|
 User Status
  |
 Select the user status you want to retrieve information for.
  |
|
 Date Aggregate
  |
 Select
 **Day**
 to aggregate the data in the report by day; otherwise select
 **None**
 .
  |
|
 Report Duration
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
 Boost ID
  |
 Enter the ID of the boost you want to retrieve information for.
  |
|
 User Status
  |
 Select the user status you want to filter by—either
 **Active**
 ,
 **Inactive**
 , or
 **None**
 .
  |
|
 Admin Status
  |
 Select the admin status you want to filter by—either
 **Approved**
 ,
 **Denied**
 ,
 **Pending**
 , or
 **None**
 .
  |
|
 All Boosts
  |
 Select whether you want to pull information for all boosts (
 **Yes**
 ) or a specific boost (
 **No**
 ). If you select
 **No**
 , enter the ID of the boost you want to pull information for in the
 **Boost ID**
 field.
  |
|
 Status
  |
 Select the status you want to filter by (
 **Enabled**
 ,
 **Disabled**
 , or
 **None**
 ).
  |
|
 Content ID
  |
 Enter the content ID you want to retrieve information for.
  |
|
 Page ID
  |
 Enter the ID of the page you want to retrieve information for.
  |
|
 Widget
  |
 Enter the ID of the widget you want to retrieve information for.
  |
|
 Device
  |
 Select the device type you want to retrieve information for.
  |
|
 Sub Device
  |
 Select the OS you want to retrieve information for.
  |
|
 Country
  |
 Select the country you want to retrieve information for.
  |
|
 Domain
  |
 Enter the domain you want to filter by. If you leave this blank, data will be returned for all domains.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

