

Intro
-------

You can use Domo's YouTube Reporting Enterprise Connector to retrieve information about YouTube assets, videos, and channels. To learn more about the YouTube API, visit their page (

https://developers.google.com/youtube/

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

The YouTube Reporting Enterprise Connector is a "Cloud App" Connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the Connector page for this and other Cloud App Connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your YouTube Reporting Enterprise account in the Data Center. This topic discusses the fields and menus that are specific to the YouTube Reporting Enterprise Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector.

Best practices
----------------


* When you first power up the Connector, you can choose to retrieve "Predefined Reports." These reports can be used to get analytics data about the provided YouTube account. Whenever a report is selected for the first time (meaning first dataset using this report), Domo creates a YouTube reporting job. All data before that day is considered "historical data." YouTube only returns 30 days worth of historical data. For example, if the first "Device and OS" report dataset is created on August 31st, only data up to August 1st will be available. This historical data will typically be available in a couple days after the dataset's creation. Every day after, data from two days prior will be available. Using the previous example, this means August 31st's data will be available on September 2nd and September 1st's data will be available on September 3rd, and so forth. By the end of September this dataset will have 2 months worth of data (August's data and September's data). However, the historical data will only be available for 30 days. This means around October, the data from August would no longer be available from YouTube. In contrast, all the data after the dataset's creation (so August 31st and after) will be available for 60 days from YouTube.
* DataSets should run only ONCE within a 24-hour period because the data is updated only once a day.

Prerequisites
---------------

To connect to your YouTube account and create a DataSet, you must have the following:

 A Google Client ID
* A Google Client Secret
* A Google username and password

For step-by-step instructions on obtaining a Client ID and Client Secret, see

https://support.google.com/cloud/answer/6158849

.

***Note:****

For multiple YouTube Reporting Enterprise accounts in Domo, you must enable the Google People API to properly configure this Connector. If the Google People API is not enabled, then any new YouTube Reporting Enterprise account in


 Domo will override the current credentials.

For more information about this API, see


 https://developers.google.com/people/?hl=en\_US

.

Connecting to your YouTube Reporting Enterprise account
-----------------------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the YouTube Reporting Enterprise Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most Connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###


 Credentials pane


 This pane contains fields for entering credentials to connect to your YouTube account. For information about obtaining these credentials, see "Prerequisites," above.


 The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|

Client ID

|

Enter your Google Client ID.

|
|

Client Secret

|

Enter your Google Client Secret.

|

After you have entered valid credentials, you are taken to Google's OAuth page where you are prompted to enter your Google username and password. Once you have successfully authenticated, you can use the same account any time you go to create a new YouTube Reporting Enterprise DataSet. You can manage Connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##


 Details pane


 This pane contains a primary menu from which you can select a report, along with various other menus and fields in which you can configure your selected report.


|

Menu

|

Description

|
| --- | --- |
|

Report

|

Select the desired YouTube Reporting Enterprise report. Different reports are available depending on the API type you choose.

  |  |
| --- | --- |
|
 Asset Names
  |
 Returns the list of all assets.

*Content Owner ID is required for this report.**
 |
|
 Available Reports
  |
 Returns the list of available reports based on report type.
  |
|
 Channel Details and Statistics
  |
 Returns content details, snippets, and statistics data for the authenticated channel.
  |
|
 Jobs
  |
 Lists reporting jobs that have been scheduled for a channel or content owner.
  |
|
 Other Video Details and Statistics
  |
 Returns content details, snippets, and statistics data for the specified channel IDs.
  |
|
 Predefined Report Types
  |
 Returns predefined Report types that the channel or content owner can retrieve.
  |
|
 Public Channel Information
  |
 Returns public information of channels entered.
  |
|
 Video and Channel Names
  |
 Returns the list of video and channel names.
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

*Note:**
 You must have content owner access and the Content ID API enabled in the developers console application to do this.

|
|
 Content Owner ID
  |
 Enter the content owner ID for the user with content you want to pull. If you do not specify a value for the parameter, the API server assumes the request is being made for your own channel.


 To find your content owner ID, you must be a member of an MCN (Multi-Channel Network). For more information, see

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

*Note:**
 You must have content owner access and the Content ID API enabled in the developers console application to do this.

|
|
 Preserve Column Names
  |
 Specify whether you want column names in your DataSet to be preserved when a report is changed. The best practice is to set this to
 **True**
 so cards do not break if the data is changed.
  |
|
 Retrieve Video and Channel Names
  |
 Specify whether you want to retrieve video and channel names when a Video or Channel ID is present in a report.
  |
|
 Channel IDs
  |
 Enter the channel ID you want to retrieve data for. If there are multiple channel IDs, separate them with commas.
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
 Other panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

##
 FAQs


####
 How do I create a Client ID and Client Secret?

Follow the steps to create a Client ID and Client Secret:

. Log-in to Google Developer Dashboard using your Google account.
2. Create a new Application.
3. Give the application a descriptive name such as
 **YouTube Reporting Enterprise Connection**
 .
4. Use the
 **Library**
 section to enable the following APIs:
	* YouTube Reporting API
	* Google People API
5. On the
 **OAuth Consent Screen**
 tab in the
 **Credentials**
 section, set the product name to to the same name you gave the project.
6. Click
 **[+ CREATE CREDENTIALS]**
 on the
 **Credentials**
 tab and create an OAuth Client ID.
7. Create a Web Application.
8. Set the following Authorized Redirect URIs:

https://oauth.domo.com/api/data/v1/oauth/providers/youtube-reporting-enterprise/exchange/

This will display the Client ID and the Client Secret.
9. Copy and Paste the Client ID and the Client Secret to Domo's account creation screen.


