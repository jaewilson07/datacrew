

Intro
-------

YouTube Reporting supports predefined and Jobs reports that contain a comprehensive set of YouTube Analytics data for a channel or content owner. Use Domo's Youtube Reporting Connector to download bulk data sets that you can query with the YouTube Analytics API. To learn more about the YouTube API, visit their page (

https://developers.google.com/youtube/analytics/

).

*Note:**
 There are currently 5 YouTube Connectors available in Domo. The difference between these may be difficult to understand, so here is an explanation of each:


* **YouTube Reporting Connector -**
 This is our entry-level YouTube Connector. It requires only a Google username and password to authenticate. Most Domo users should use this Connector to retrieve YouTube data.
* **YouTube Reporting Enterprise Connector -**
 This is the enterprise version of the YouTube Reporting Connector. This report has a few additional reports and requires you to enter a Google Client ID and Client Secret in addition to a basic Google username and password.
* **YouTube Enterprise Advanced Connector -**
 This is Domo's most advanced YouTube Connector. (This is the only version of the YouTube Enterprise Connector; there is no Connector simply called "YouTube Enterprise.") It requires a Google Client ID and Client Secret as well as a Google username and password. It provides more reports and options than the other YouTube Connectors but is also more complicated and much more difficult to configure. This Connector is recommended for advanced users only.
* **YouTube Reporting Partition Connector**
**-**
 This offers the same reports as the YouTube Reporting Connector, with the added ability to use Partitioning in the DataSet.
* **YouTube Reporting Enterprise Partition Connector**
**-**
 This offers the same reports as the YouTube Reporting Enterprise Connector, with the added ability to use Partitioning in the DataSet.

You connect to your YouTube Reporting account in the Data Center. This topic discusses the fields and menus that are specific to the YouTube Reporting Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


**Note:**
 When you create a report using this Connector, a job is created and takes 24 hours to return data.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 Pulling all video metrics across channels, devices, location so you can understand how people are consuming video content on YouTube.
  |
|
**Primary Metrics**
 | * Number of views
* Watch minutes total
* Number of red views
* Red watch minutes total
* Number of likes and dislikes
* Number of comments
* Number of shares
* Number of clicks
 |
|
**Primary Company Roles**
 | * Content creators
* Digital asset managers
* Digital marketers
* Content asset managers
 |
|
**Average Implementation Time**
 |
 If you pull just out-of-the-box, standard reports, you could have any report up and running within a couple of hours. If you need more than 180 days of history or if you want to pull in millions of rows, implementation could take up to 30 hours.
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 5
  |

Best Practices
----------------


* In order to pull metrics for a channel, the owner of the provided credentials must be the owner of that channel.
* If you are using Content Manager or are pulling metrics "On behalf of the content owner," you should use the YouTube Reporting Enterprise Connector. This will allow you to pull metrics for channels that you are not the direct owner of. Additionally, YouTube can update metrics for any report for up to 30 days of that activity. It is recommended that you set up up the Connector to replace at least 35 days of history. To build history beyond 180 days, you must setup a recursive DataFlow to capture that information going forward. For more information, see

Creating a Recursive/Snapshot Magic ETL DataFlow

.
* DataSets should run only ONCE within a 24-hour period because the data is updated only once a day.
* When you first power up the Connector, you can choose to retrieve "Predefined Reports." These reports can be used to get analytics data about the provided YouTube channel. Whenever a report is selected for the first time (meaning first dataset using this report), Domo creates a YouTube reporting job. All data before that day is considered "historical data." YouTube only returns 30 days worth of historical data. For example, if the first "Device and OS" report dataset is created on August 31st, only data up to August 1st will be available. This historical data will typically be available in a couple days after the dataset's creation. Every day after, data from two days prior will be available. Using the previous example, this means August 31st's data will be available on September 2nd and September 1st's data will be available on September 3rd, and so forth. By the end of September this dataset will have 2 months worth of data (August's data and September's data). However, the historical data will only be available for 30 days. This means around October, the data from August would no longer be available from YouTube. In contrast, all the data after the dataset's creation (so August 31st and after) will be available for 60 days from YouTube

.

Prerequisites
---------------

To connect to your YouTube account and create a DataSet, you must have a Google email address and password.


 Connecting to Your YouTube Reporting Account
----------------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the YouTube Reporting Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most Connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo YouTube Reporting Connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing YouTube Reporting accounts in Domo) to open the YouTube Reporting OAuth screen where you can enter your Google credentials. Once you have entered valid Google credentials, you can use the same account any time you go to create a new YouTube Reporting DataSet. You can manage Connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Google when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of your Google account.


###
 Details Pane

This pane contains a primary
 **Reports**
 menu from which you can select a Jobs report or predefined report. If you select a predefined report, various other menus may or may not appear depending on the configuration options you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the YouTube Reporting report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Jobs
  |
 Returns a list of reporting jobs that have been scheduled for a channel or content owner.
  |
|
 Video and Channel Names
  |
 Returns the names of all videos and channels for your account.
  |
|
 Predefined Report
  |
 Returns a predefined report type.
  |

|
|
 Call on Behalf of Content Owner
  |
 Select
 **Yes**
 if you are planning to retrieve a predefined report for another user (whose ID you will enter in the
 **Content Owner ID**
 field). Select
 **No**
 if you are the content owner for the report you plan to pull.
  |
|
 Content Owner ID
  |
 Enter the content owner ID for the user with content you want to pull. To find your content owner ID, you must be a member of an MCN (Multi-Channel Network). For more information, see

https://support.google.com/youtube/answer/2737059?hl=en

.


 To find your content owner ID, do the following:
 1. Log into YouTube.
2. Click your profile picture in the top right.
3. Select
 **Studio**
 in the dropdown menu.
4. Copy the portion of the page URL following

o=

.


 For example, if the page URL was

https://www.youtube.com/dashboard?o=abc123\_qrs\_654

, the content owner ID would be


 abc123\_qrs\_654

.

|
|
 Report Types
  |
 Select the predefined report you want to run. The list of reports available to you is based on what you are authorized to see. For this reason, we do not offer a list of report descriptions for this Connector.
  |
|
 Retrieve Video and Channel Names
  |
 Select
 **True**
 if you want your report to return video and channel names when IDs are present; otherwise select
 **False**
 .
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

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


 YouTube only allows you to pull 30 days of history when setting up a specific report for the first time. When you first run a report, it may take 24-48 hours before data is available. Additionally, YouTube can update their metrics for any report for up to 30 days for historical data (data for days prior to using a specific report for the first time) and 60 days for non-historical data.


