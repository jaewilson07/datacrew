

Intro
---------

Ooyala provides online video analytics and monetization solutions that boost revenues from video. You can use Domo's Ooyala connector to retrieve performance analytics, lists of your most popular videos, total bytes delivered, and so on. For more information about the Ooyala API, visit their website. (

http://support.ooyala.com/developers...ics\_v3\_metrics

)


 The Ooyala connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 There is also an advanced version of the Ooyala connector. This connector is almost identical but includes an additional report, "Ooyala IQ Analytics v.3," a customizable report that lets you select dimensions and metrics as well as apply filters. For more information about the advanced report, see

Ooyala Advanced Connector

.


 You connect to your Ooyala account in the

Data Center

. This topic discusses the fields and menus that are specific to the Ooyala connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 Use this connector to monitor viewer habits by device type, platform, screen size, and playthrough rate.
  |
|
**Primary Metrics**
 | * Most viewed videos
* Total video views
* Total vs. unique views
* Video displays/loads/starts
* Video playthrough rate percentage
 |
|
**Primary Company Roles**
 | * Marketing director
* Marketing manager
* Training video producer
 |
|
**Average Implementation Time**
 |
 1 hour
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 3
  |

Best Practices
----------------


* Retrieve account/brand performance data for account over time.
* View trends to determine viewer behaviors.
* Determine analytics regarding device types and platforms to optimize viewing experience.

Prerequisites
---------------

To connect to your Ooyala account and create a DataSet, you must have an Ooyala API Key and API Secret. You can obtain these credentials by doing the following:

. Log into your account at

https://backlot.ooyala.com

.
2. Click the
 **Account**
 button in the toolbar at the top of the screen.
3. Click
 **Developers**
 in the subtab row under the main toolbar.

The API Key is immediately visible in this tab. To show the API Secret, click
 **Display API Secret**
 .


 Connecting to Your Ooyala Account
-----------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Ooyala Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Ooyala account. For information about obtaining these credentials, see "Prerequisites," above.


 Field
  |
 Description
  |
| --- | --- |
|
 API Key
  |
 Enter the API Key for your Ooyala account.
  |
|
 API Secret
  |
 Enter the API Secret for your Ooyala account.
  |

Once you have entered valid Ooyala credentials, you can use the same account any time you go to create a new Ooyala DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a primary
 **Report**
 menu in which you select a report type. Depending on the report type you select, other parameters may be required.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select an Ooyala report. The following reports are available:


|  |  |
| --- | --- |
|
 Account Performance
  |
 Returns perfromance metrics for the authenticated user's account.
  |
|
 Brand Performance
  |
 Returns performance metrics based on brands for the authenticated user's account.
  |
|
 Performance Analytics for Device Types
  |
 Returns performance metrics for device types.
  |
|
 Performance Analytics for Platforms
  |
 Returns performance metrics per platform.
  |
|
 Get Total Bytes Delivered
  |
 Returns total bytes delivered within a fixed period of time.
  |
|
 List All Assets
  |
 Returns a list of videos and other assets for the authenticated user's account.
  |
|
 List All Asset Analysis
  |
 Returns performance metrics for each asset.
  |
|
 List Most Popular Videos
  |
 Returns a list of the most popular videos in descending order.
  |
|
 List Plays By Country
  |
 Returns performance metrics by specified country.
  |
|
 List Videos with Most Momentum
  |
 Returns a list of videos with the most momentum in descending order.
  |


 |
|
 Label
  |
 Select the label you want to retrieve data for.
  |
|

Duration

|

Specify whether the data in this report is for a single date or a range of dates.

|
|

Report Date

|

Specify whether the data is for a specific or relative date. Choose
 **Relative**
 if you always want the report to retrieve data for a given number of days back (which you specify in
 **Days Back**
 ) from the current date. For example, if you enter

5

for
 **Days Back**
 and set the DataSet to update daily, each new day the report will update to show information for the date 5 days in the past.

|
|

Select Specific Date

|

Select the date you want to retrieve data for.

|
|

Days Back

|

Enter the number of days back from the current date that will be presented in the report.

|
|

Start Date

|

Specify whether the first date in your date range is a specific or relative date. Choose
 **Relative**
 if you always want the report to retrieve data for a given number of days back (which you specify in
 **Days Back to Start From**
 ) from the current date. If you choose
 **Relative**
 here, you should also choose
 **Relative**
 for
 **End Date**
 and specify a value for
 **Days Back to End At**
 .


 For example, if you enter

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 and you set the DataSet to update daily, each new day the report will update to show information for 5 to 10 days in the past.

|
|

End Date

|

Specify whether the last date in your date range is a specific or relative date. Choose
 **Relative**
 if you always want the report to retrieve data for a given number of days back (which you specify in
 **Days Back to End At**
 ) from the current date. If you choose
 **Relative**
 here, you should also choose
 **Relative**
 for
 **Start Date**
 and specify a value for
 **Days Back to Start From**
 .


 For example, if you enter

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 and you set the DataSet to update daily, each new day the report will update to show information for 5 to 10 days in the past.

|
|

Select Specific Start Date

|

Select the first date in your date range.

|
|

Select Specific End Date

|

Select the last date in your date range.

|
|

Days Back to Start From

|

Enter the number of days before the current date to use as the start date.


 For example, if you enter

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 and you set the DataSet to update daily, each day the report updates to show information for a 5-day range, starting 10 days ago and ending 5 days ago.

|
|

Days Back to End At

|

Enter the number of days before the current date to use as the end date.


 For example, if you enter

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 and you set the DataSet to update daily, each day the report updates to show information for a 5-day range, starting 10 days ago and ending 5 days ago.

|
|
 Report Period Type
  |
 Select the period type for the report data. For example, if you entered

30

for
 **Start Day**
 and selected
 **Month**
 for
 **Report Period Type**
 , and today's date was September 15, data would be returned for the month of August.
  |
|
 Breakdown
  |
 Select the time unit the report data will be broken down by. For example, if you selected
 **Week**
 , there will be a row in the report for each individual week.
  |
|
 Include Sub Account
  |
 Specify whether sub accounts are to be included.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------

Check that date ranges are valid for the accounts/videos.

