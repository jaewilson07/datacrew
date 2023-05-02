

Intro
-------

You can use Domo's YouTube Enterprise Connector to retrieve viewing statistics, popularity metrics, and demographic information for YouTube videos and channels. To learn more about the YouTube API, visit their page (

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

The YouTube Enterprise Connector is a "Cloud App" Connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the Connector page for this and other Cloud App Connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your YouTube Enterprise account in the Data Center. This topic discusses the fields and menus that are specific to the YouTube Enterprise Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector.

Best practices
----------------

When you first power up the Connector and request historical data, it takes around 30 days to bring in all the data. This is due to how the YouTube API functions. For example, if a report is first started on April 1, data from April 1 onward will be available 24-48 hours later. Every day, a few more days prior to April 1 will be available. After around 30 days, 6 months of backfill data will have been added to the report (though it comes in a rather sporadic order). In this example, by April 30 the user should end up with 7 months of —data for April, plus the 6 prior months.


 Prerequisites
---------------

To connect to your YouTube Enterprise account and create a DataSet, you must have the following:

 A Google Client ID.
* A Google Client Secret.
* A Google username and password.

For step-by-step instructions on obtaining a Client ID and Client Secret, see

https://support.google.com/cloud/answer/6158849

.


**Note:**
 For multiple

YouTube Enterprise Advanced accounts in Domo, you must click the Google+ API checkbox in the Google API when creating the Client ID and Client Secret. If the Google+ API box is not checked, then any new YouTube Enterprise Advanced account in Domo will override the current credentials.

You must also enable the Google People API to properly configure this Connector. For more information about this API, see

https://developers.google.com/people/?hl=en\_US

.

Connecting to your YouTube Enterprise account
-----------------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the YouTube Enterprise Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most Connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials pane

This pane contains fields for entering credentials to connect to your YouTube Enterprise account. For information about obtaining these credentials, see "Prerequisites," above. The following table describes what is needed for each field:


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


**Note:**
 In order to create a client ID and secret, you will be asked to enter the following redirect URL:

https://oauth.domo.com/api/data/v1/oauth/providers/youtube-enterprise/exchange


 After you have entered valid credentials, you are taken to Google's OAuth page where you are prompted to enter your Google username and password. Once you have successfully authenticated, you can use the same account any time you go to create a new YouTube Reporting Enterprise DataSet. You can manage Connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details pane

This pane contains two primary menus,
 **API**
 and
 **Report**
 , along with other menus which may appear depending on the selected API and report type.


 Menu
  |
 Description
  |
| --- | --- |
|
 API
  |
 Select your YouTube Enterprise API type. Depending on the API you select, a different set of reports is available. You can choose from the following APIs:


|  |  |
| --- | --- |
|
 Analytics API
  |
 The Analytics API helps to understand your users and how they interact with your channel and your videos.
  |
|
 Ad Performance
  |
 The Ad Performance API includes reports that provide impression-based metrics for ads that ran during video playbacks.
  |
|
 Content ID API
  |
 The Content ID API is used to understand your content.
  |
|
 Content Owner
  |
 The Content Owner API includes reports that contain metrics for channels linked to a specified YouTube content owner.
  |
|
 Data API
  |
 The Data API is used to retrieve the resources of the user.
  |


 |
|
 Report (Analytics API)
  |
 Select the desired Analytics API report.


|  |  |
| --- | --- |
| **Report**  | **Description**  |
|
 Basic User Activity
  |
 Return basic information about how users are watching your videos
  |
|
 Content Sharing By Platform
  |
 Returns information about video sharing, broken down by viewing platform
  |
|
 Device OS
  |
 Returns information about which Operating Systems users are using to view your videos
  |
|
 Device Type
  |
 Returns information about what devices are being used to view your videos
  |
|
 Device Type and OS
  |
 Returns information about devices and their operating systems that are used to view your videos
  |
|
 Geographic Activity By Country
  |
 Returns information about viewer activity by country
  |
|
 Geographic Activity By US State
  |
 Returns information about viewer activity by US state
  |
|
 Time Activity By Country
  |
 Returns information about how long viewers are watching your videos, broken down by country
  |
|
 Top Videos
  |
 Returns information about your most-viewed videos
  |
|
 Top Videos By US State
  |
 Returns information about your most-viewed videos, broken down by US state
  |
|
 Traffic Source
  |
 Returns information based on the manner in which viewers reached your videos
  |
|
 Traffic Source Detail
  |
 Returns information based on the referrers that generated the most views for the channel's content
  |
|
 Video Playback Location
  |
 Returns information about the type of page or application where video playbacks occurred
  |
|
 Video Playback Location Detail
  |
 Returns information about the embedded video players that generated the most views or viewing time for a channel's video
  |
|
 Viewer Demographic
  |
 Returns information about viewers' age group and gender
  |


 |
|
 Report (Ad Performance)
  |

  |  |
| --- | --- |
|
 Ad Performance By Ad Types
  |
 Returns information about ad performance, broken down by the type of ad
  |
|
 Country Specific Ad Performance
  |
 Returns information about ads, broken down by country
  |
|
 Daily Earnings and Ad Performance
  |
 Returns daily information about ad performance
  |
|
 Earnings and Ad Performance
  |
 Returns information about total ad performance
  |


 |
|
 Report (Content ID API)
  |

  |  |
| --- | --- |
|
 Allowed Video Ads
  |
 Returns information about the types of allowed ads for a specified partner- or user-uploaded video
  |
|
 Video Ad Settings
  |
 Returns advertising settings for the specified video
  |


 |
|
 Report (Content Owner)
  |

  |  |
| --- | --- |
|
 Activity for Time Periods (including subscriber counts)
  |
 Returns information about daily user activity
  |
|
 Basic Statistics (including subscriber counts)
  |
 Returns information about user activity related to a content owner's channels and those channels' videos
  |
|
 Basic Statistics for US States
  |
 Returns user activity statistics for U.S. states and the District of Columbia
  |
|
 Device Type
  |
 Returns aggregates video viewing statistics based on device types
  |
|
 Device Type and OS
  |
 Returns video viewing statistics based on viewers' operating systems and device type
  |
|
 Engagement and Content Sharing
  |
 Returns statistics showing how frequently videos on the content owner's channels were shared on different social platforms
  |
|
 Geographic Activity including owned and claimed content
  |
 Returns statistics related to user activity on a country-by-country basis for a channel
  |
|
 Geographic Activity including subscriber counts
  |
 Returns statistics related to user activity on a country-by-country basis for a channel, including subscriber count
  |
|
 Operating System
  |
 Returns video viewing statistics based on viewers' operating systems
  |
|
 Traffic Source
  |
 Returns statistics based on the manner in which viewers reached videos on the content owner's channels
  |
|
 Traffic Source Detail
  |
 Returns statistics based on the manner in which viewers reached videos on the content owner's channels
  |
|
 User Activity (including owned and claimed content)
  |
 Returns information about users' actions on the channel
  |
|
 User Activity by Province
  |
 Returns information related to geographic activity by province
  |
|
 User Activity in US
  |
 Returns information related to geographic activity by US State
  |
|
 Video Playback Location
  |
 Returns statistics related to the type of page or application where video playbacks occurred
  |
|
 Video Playback Location Detail
  |
 Returns statistics related to the type of page or application where video playbacks occurred
  |


 |
|
 Report (Data API)
  |

  |  |
| --- | --- |
|
 Activities
  |
 Returns information about actions that a particular channel, or user, has taken
  |
|
 Channel Sections
  |
 Returns information about a set of videos that a channel has chosen to feature
  |
|
 Channels
  |
 Returns information about the authenticated Channel
  |
|
 Channels by User
  |
 Returns information about Channels owned by the designated users
  |
|
 Comment Threads by Video Id
  |
 Returns information about comments on the selected Video
  |
|
 Guide Category by Id
  |
 Returns information about the selected Category
  |
|
 Guide Category by Region
  |
 Returns information about the Categories available in the selected Region
  |
|
 Languages
  |
 Returns a list of languages supported by YouTube
  |
|
 Other Users' Video Statistics
  |
 Return information about videos owned by the selected Users
  |
|
 Playlist
  |
 Returns a list of the authenticated user's Playlists
  |
|
 Playlist By Id
  |
 Returns information about the selected Playlist
  |
|
 Playlist By Item Id
  |
 Returns information about Playlists that the selected video is in.
  |
|
 Regions
  |
 Returns a list of Regions supposed by YouTube
  |
|
 Subscribers
  |
 Returns information about the users that have subscribed to the authenticated Channel
  |
|
 Subscription
  |
 Returns information about the channels that the authenticated user is subscribed to
  |
|
 Video Category by Id
  |
 Returns information about the selected Category
  |
|
 Video Category by Region
  |
 Returns information about the Categories available in the selected Region
  |
|
 Video Dislikes
  |
 Returns a list of videos that the authenticated user has marked as disliked
  |
|
 Video Likes
  |
 Returns a list of videos that the authenticated user has liked
  |
|
 Videos
  |

Returns a list of the user's videos

|


 |
|
 Call on Behalf of Content Owner
  |
 Select
 **Yes**
 if you are planning to retrieve a report for another user (whose ID you will enter in the
 **Content Owner ID**
 field). Select
 **No**
 if you are the content owner for the report you plan to pull.
  |
|
 Content Owner ID
  |
 Enter the ID of the content owner you want to pull data for. If you do not know the ID, ask your partner manager.
  |
|
 User IDs
  |
 Enter comma-separated IDs for the users you want to retrieve data for. A user’s ID is located at the end of the URL for his YouTube channel. For example, in the URL

https://www.youtube.com/user/google

, “google” is the user ID.
  |
|
 Video ID
  |
 Enter the ID of the video you want to retrieve comments for.
  |
|
 Region
  |
 Select the country or region you want to pull data for.
  |
|
 Videos Published After (Days Ago)
  |
 Enter a number of past days to retrieve data for all videos published after that date. For example, if you entered 20, your report would contain information on all videos published within the last

20

days. If you leave this field blank, you will get a breakdown of all videos.
  |
|
 Videos Published Before (Days Ago)
  |
 Enter a number of past days to retrieve data for all videos published before that date. For example, if you entered

20

, your report would contain information on all videos published more than 20 days ago. If you leave this field blank, you will get a breakdown of all videos.
  |
|
 Playlist
  |
 Select the playlist you want to retrieve data for.
  |
|
 Legacy Reporting Mode
  |
**Advanced use only.**
 This is to enable support with data sources made with an old version of the Connector. When set to
 **True**
 , the report includes columns that are no longer reported,or whose meanings have changed.


 For the Videos report, the "kind", "id\_kind", and "id\_videoId" columns are different or available.
  |
|
 Number of Days Ago
  |
 Enter the most recent past day for which you want to retrieve data. For example, you would enter

2

to get data for the day before yesterday. YouTube does not usually report data less than 2 days old.
  |
|
 Backfill Days
  |
 Enter the number of days prior to
 **Number of Days Ago**
 for which you want to retrieve data. For example, if you entered

7

for
 **Number of Days Ago**
 and

14

for
 **Backfill Days**
 , your report would contain data for all of the days in the week before last.
  |
|
 Prior Days
  |
 Enter the number of days prior to
 **Number of Days Ago**
 for which you want to retrieve data on the second and subsequent runs of the data source.
  |
|
 Dimension
  |
 Specify whether you want a daily or summarized report.
  |
|
 US State
  |
 Select the U.S. state you want to pull data for.
  |
|
 Traffic Filter
  |
 Select a traffic option to filter by. For example, if you selected
 **Google Search**
 , only information related to Google would appear in your report.
  |


###
 Other panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

