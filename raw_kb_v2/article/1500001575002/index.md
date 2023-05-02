

Intro
-------

YouTube Reporting Enterprise Partition supports predefined and Jobs reports that contain a comprehensive set of YouTube Analytics data for a channel or content owner. Use Domo's Youtube Reporting Enterprise Partition Connector to download the bulk data sets that you can query with the YouTube Analytics API. This Connector allows you to connect your YouTube analytics to Domo to refine your YouTube strategy.

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

The YouTube Reporting Enterprise Partition Connector is a "Cloud App" Connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the Connector page for this and other Cloud App Connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your YouTube Reporting Enterprise account in the Data Center. This topic discusses the fields and menus that are specific to the YouTube Reporting Enterprise Partition Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Best Practices
----------------

*When a Report is created a job is generated and takes 24 -72 hours before returning data.**

After you schedule a reporting job, YouTube generates reports from that day forward and also generates reports covering the 180-day period prior to the time the job was scheduled.

*Any date prior to the Job creation date for a Report Type is considered historical.**

YouTube will generate up to 60 days of historical data. Historical reports are posted as soon as they are available and in no particular order. It takes roughly one month for all of the historical data to be posted for a job. So, a month after scheduling a reporting job, you will have access to around two months of data.

Prerequisites
---------------

To connect to your YouTube account and create a DataSet, you must have the following:

 A Google Client ID
* A Google Client Secret
* A Google username and password

For step-by-step instructions on obtaining a Client ID and Client Secret, see

https://support.google.com/cloud/answer/6158849

.

*Note:**
 For multiple YouTube Reporting Enterprise accounts in Domo, you must click the Google+ API checkbox in the Google API when creating the Client ID and Client Secret. If the Google+ API box is not checked, then any new YouTube Reporting Enterprise account in Domo will override the current credentials.

You must also enable the Google People API to properly configure this Connector. For more information about this API, see

https://developers.google.com/people/?hl=en\_US

.


 Connecting to Your YouTube Reporting Enterprise Account
---------------------------------------------------------

This section enumerates the options in the Credentials and Details panes in the

YouTube Reporting Enterprise Partition

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most Connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your

YouTube

account. The following table describes what is needed for each field:


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


 After you have entered valid credentials, you are taken to Google's OAuth page where you are prompted to enter your Google username and password. Once you have successfully authenticated, you can use the same account any time you go to create a new YouTube Reporting Enterprise Partition DataSet. You can manage Connector accounts in the

*Accounts**

tab in the Data Center.

For more information about this tab, see

Managing User Accounts for Connectors

.

##
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

Select the desired YouTube Reporting Enterprise Partition report. Different reports are available depending on the API type you choose.

  |  |
| --- | --- |
|
 Asset Names
  |
 Returns the list of all assets.

***Content Owner ID is required for this report.****
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
 ****Yes****
 if you are planning to retrieve a predefined report for another user (whose ID you will enter in the
 ****Content Owner ID****
 field). Select
 ****No****
 if you are the content owner for the report you plan to pull.


****Note:****
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
 ****Studio****
 in the dropdown menu.
4. Copy the portion of the page URL following o=.


 For example, if the page URL is
 **https://www.youtube.com/dashboard?o=abc123\_qrs\_654**
 , the content owner ID would be
 **abc123\_qrs\_654**
 .


****Note:****
 You must have content owner access and the Content ID API enabled in the developers console application to do this.
  |
|
 Preserve Column Names
  |
 Specify whether you want column names in your DataSet to be preserved when a report is changed. The best practice is to set this to
 ****True****
 so cards do not break if the data is changed.
  |
|
 Retrieve Video and Channel Names
  |
 Specify whether you want to retrieve video and channel names when a Video or Channel ID or both are present in a report.
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
 Backfill Days
  |
 Enter the number of backfill days.
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
 ****End Date****
 .
  |
|
 End Date
  |
 Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in
 ****Start Date****
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
 ****Days Back to End At****
 to create a range of represented days.


 For example, if you entered 10 for
 ****Days Back to Start From****
 and 5 for
 ****Days Back to End At****
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Days Back to End At
  |
 Enter the number of the most recent day back that should be represented in the report. Combine with
 ****Days Back to Start From****
 to create a range of represented days.


 For example, if you entered 10 for
 ****Days Back to Start From****
 and 5 for
 ****Days Back to End At****
 , the report would contain data for 10 days ago up until 5 days ago.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 What version of the YouTube Reporting API does this Connector use?

This Connector uses version 1 of the YouTube API (


 https://youtubereporting.googleapis.com/v1/


 ).

###
 What kind of credentials do I need to power up this Connector?

First you need to register an App with Google via

Google Developer Console

. This will provide you with a Client ID and Secret. Then you will need the username and password of the YouTube account that you wish to use. This account needs to have access to the Channel(s) that you are interested in. Depending on how and when a YouTube account was created, it may only have access to a single Channel. You may need a separate login for each Channel that you want to report on.

###
 How do I create a Client ID and Client Secret?


1. Using your Google account, log into the

Google Developer Dashboard

.
2. Create a new Application. Give it a descriptive name such as "YouTube Connection".
3. Using the Library section, the following APIs need to be enabled:
	* YouTube Analytics API
	* YouTube Data API
	* Google+ API
4. In the Credentials section, there is a tab called "OAuth consent screen". Set the product name to the same name you gave the project.
5. In the Credentials tab, press the Create Credentials button and create an OAuth Client ID.
6. Create a Web Application.
7. Set the following Authorized JavaScript origins:
	* https://domo.com

 .
8. Set the following Authorized Redirect URIs:
	* https://oauth.dev.domo.com/api/data/v1/oauth/providers/youtube-enterprise/exchange

 .
	* https://oauth.domo.com/api/data/v1/oauth/providers/youtube-enterprise/exchange

 .
9. This will then show the Client ID and Client Secret. Copy and paste them into Domo's account creation screen.


####

Do I need a certain kind of account to power up this Connector?


 Any YouTube account can be used to power up the Connector, since there is a default Channel associated with your account. However, the channel should have videos to return any meaningful results. An account that is connected to an organization's Content Management system will also work. These accounts have access to multiple channels instead of just their default one.


####

My YouTube account has access to my company's Content Management account. How do I get information about my videos and channels?

The reports that are available in the Data and Content Owner APIs have fields that allow you to request information about channels and videos that are not in your default channel. For the reports in the Data API, set the field called "Call on Behalf of Content Owner" to "True" and then you can enter the name of the Content Owner. For the Content Owner reports, you can just enter the name of the Content Owner. This will give you access to the Content Owner's channels and videos

###
 Are there any API limits I should be aware of?

YouTube enforces different API call rate limits for each report. You should make sure that the datasets do not run more than once per day, and they only request the data that you need. Additional data may result in extra API calls.

###
 How often can the data be updated?

Datasets should be set to update once a day. Note that there are times when the most recent data that you can retrieve is 2 or more days old.

###
 What's the difference between the YouTube Reporting Enterprise and YouTube Reporting Enterprise Partition Connectors?

The YouTube Reporting Enterprise Partition Connector supports Date partitioning and backfilling for the Available Reports and Predefined Report Types.


 Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


