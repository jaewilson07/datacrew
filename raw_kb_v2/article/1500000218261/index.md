

Intro
-------

Tiktok is a social media platform for creating, sharing, and discovering short music videos. It acts like a Karaoke for the digital age. It also has the standard features like direct messages and the option to “like” videos, that you would expect from a social network application. Use Domo’s TikTok Ads connector to get the most out of your TikTok data. To learn more about the TikTok API, visit their page (

https://developers.tiktok.com/doc/tiktok-api-v2-introduction/

).


 You connect to your TikTok account in the Data Center. This topic discusses the fields and menus that are specific to the TikTok Ads connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your TikTok account and create a TikTok Ads DataSet, you must have your TikTok account credentials.


 Connecting to Your TikTok Account
-----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the TikTok Ads Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane

The Domo TikTok Ads connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing TikTok accounts in Domo) to open the TikTok OAuth screen where you can enter your TikTok credentials. Once you have entered valid TikTok credentials, you can use the same account any time you go to create a new TikTok Ads DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into TikTok when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of that TikTok account.


###
 Details Pane

This pane contains a primary
 **Reports**
 menu, along with various other menus which may or may not appear depending on the report type you select.

*Note:**
 The following reports are deprecated because a new report/endpoint is created to retrieve the data they were used for:

 Ad Performance
* Ad Group Performance
* Advertiser Performance
* Campaign Performance

The following reports replaced the above reports:

 Performance report
* Ad Audience


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the TikTok Ads report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Ads
  |
 Returns a list of information related to the ad to be displayed.
  |
|
 Ad Groups
  |
 Returns a list of ad groups.
  |
|
 Performance Report
  |
 Returns a list of spending and performance data.
  |
|
 Campaigns
  |
 Returns a list of campaigns.
  |
|
 Custom Audience List
  |
 Returns a list of custom audiences.
  |
|
 Custom Audience Details
  |
 Returns details of custom audiences.
  |

|
|
 Report Level
  |
 Select which level of audience data to retrieve.
  |
|
 Advertisers Selection
  |
 Select how you want to input the advertisers.
  |
|
 Ad Service Type
  |
 Select the ad service type.
  |
|
 Data Level
  |
 Select the data level.
  |
|
 Advertisers Selection
  |
 Select how you want to input the advertisers.
  |
|
 Advertiser ID
  |
 Select the Advertiser ID(s) for which the data is to be fetched.
  |
|
 Fields
  |
 Select the fields to retrieve.
  |
|
 ID Dimension
  |
 Select if you would like to group data by ID dimension.
  |
|
 Time Dimension
  |
 Select whether daily or hourly data.
  |
|
 Metrics
  |
 Select the metrics to retrieve.
  |
|
 Time Granularity
  |
 Select whether to get daily or hourly data.
  |
|
 Dimensions
  |
 Select the dimensional grouping according to which the data to be retrieved.
  |
|
 Date Selection
  |
 Select the date format for your data.
  |
|
 Single Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |
|
 Specific Date
  |
 Select the specific date using the date selector.
  |
|
 Relative Date
  |
 Enter the number of days back that you would like to get data for in the
 ****Days Back****
 field. Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past.
  |
|
 Date Range
  |
 Select the specific or relative date range.
  |
|
 Start Date - Specific
  |
 Select the first date in your date range using the date selector.
  |
|
 End Date - Specific
  |
 Select the last date in your date range using the date selector.
  |
|
 Start Date - Relative
  |
 Enter the number of days back that you would like to get data from (start day). Combine with
 ****************End Date****************
 to create a range of represented days.


 For example, if you entered 10 for
 ****************Start Date****************
 and 5 for
 ****************End Date****************
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 End Date - Relative
  |
 Enter the number of days back that you would like to get data to (end day). Combine with
 ****************Start Date****************
 to create a range of represented days.


 For example, if you entered 10 for
 ****************Start Date****************
 and 5 for
 ****************End Date****************
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Time Period
  |
 Specify the time period that you would like to receive data for.
  |
|
 Starting Day of the Week
  |
 Select the day you would like your week to start with.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

