---
title: Brightcove Connector
url: https://domo-support.domo.com/s/article/360043435653
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043435653](https://domo-support.domo.com/s/article/360043435653)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003350
views: 1,091
created_date: 2022-10-24 21:12:00
last updated: 2022-10-24 22:39:00
---



Intro
-----


Brightcove is a leading online video hosting platform and video player solution. To learn more about the Brightcove API, visit their page ([https://support.brightcove.com](https://support.brightcove.com "https://support.brightcove.com")).  


You connect to your Brightcove account in the Data Center. This topic discusses the fields and menus that are specific to the Brightcove connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Brightcove account and create a DataSet, you must have the following:


* A Brightcove client ID
* A Brightcove client secret


For information about obtaining these credentials, see [https://support.brightcove.com/managing-api-authentication-credentials](https://support.brightcove.com/managing-api-authentication-credentials "https://support.brightcove.com/en/video-cloud/docs/managing-api-authentication-credentials").


Connecting to Your Brightcove Account
-------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Brightcove Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Brightcove account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Client ID | Enter your Brightcove client ID. |
| Client Secret | Enter your Brightcove client secret. |


Once you have entered valid Brightcove credentials, you can use the same account any time you go to create a new Brightcove DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus for configuring your report.




| Menu | Description |
| --- | --- |
| Report | Select the Brightcove report you want to run. 

|  |  |
| --- | --- |
| Analytics | The Analytics API allows you to obtain analytics data for your Video Cloud accounts directly. |
| Video by Player | The report allows you to obtain video data for a particular player in your Video Cloud accounts directly. |
| View Events | The report allows you to obtain view events for a Video Cloud account. |

 |
| Account IDs | Enter a comma-separated list of Video Cloud account IDs you want to retrieve information for. For example: 12345,98765,10293 |
| Dimensions | Select all of the dimensions you want to retrieve information for. The following table lists and describes all of the available dimensions:

| Dimension | Description | Filter Values |
| --- | --- | --- |
| account | Retrieves general analytics data for the account. | N/A |
| browser\_type | Returns information about the browser used to view videos. Browsers are not broken down by device type; however, you can combine this with the device\_type dimension or use device\_type as a filter. | chrome, edge, firefox, ie, opera, safari, other |
| city | Returns analytics data by city. | Enter a comma-separated list of city names in the **Where** field, e.g. Seattle,Boston,San Francisco |
| country | Returns analytics data by country. | Enter a comma-separated list of ISO-3611-1 country codes in the **Where** field, e.g. US,CH,MX. 
For a list of all codes, see [https://en.wikipedia.org/wiki/ISO\_3166-1\_alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2 "https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2"). |
| date | Returns analytics for a single day interpreted to the current time zone for the account. | N/A |
| date\_hour | Returns analytics data in hourly segments. Reports are only valid for ranges within the last 32 days interpreted to the time zone for the account. | N/A |
| destination\_domain | Returns the domain in which video views occurred. | N/A |
| destination\_path | Returns the path in which video views occurred. Often used with the destination\_domain dimension. | N/A |
| device\_manufacturer | Returns information about the manufacturer of the device videos were viewed on. | amazon, apple, asus, blackberry, fujitsu, google, htc, huawei, kyocera, lenovo, lg, micromax, microsoft, nintendo, panasonic, roku, samsung, sharp, sony, vizio, zte, other |
| device\_os | Provides information about the operating system of the device that videos were viewed on. | android, bada, ios, rim, symbian, web\_os, windows, os\_x, mac, linux, other |
| device\_type | Provides information about the type of the device that videos were viewed on. | mobile, tablet, tv, desktop, other  |
| player | Provides analytics for video players. | Enter player IDs in the **Where** field as a comma-separated list. |
| referrer\_domain | Returns the top private domain of the referrer URL on a page where events are collected for analytics. | Enter domains in the **Where** field as a comma-separated list, e.g. [brightcove.com](http://brightcove.com),[docs.brightcove.com](http://docs.brightcove.com). |
| region | Returns information about where videos were viewed. Data is returned as ISO-3611-2 region codes (example: US-WA). How regions are defined varies by country. | Enter a comma-separated list of ISO-3611-2 region codes in the **Where** field, e.g. US-WA. |
| search\_terms | Returns analytics for search terms. | Enter a comma-separated list of search terms in the **Where** field, e.g. players,videos. |
| source\_type | Returns the traffic source that results in events being collected for analytics. | direct, referral, organic\_search, paid\_search, secure\_search  |
| social\_platform | Returns analytics for social platforms such as Twitter, Facebook, and YouTube, if you distributed your videos to those platforms using the Video Cloud Radius module. | facebook,twitter,youtube |
| video | Returns analytics by video. | Enter a comma-separated list of videos in the **Where** field, or use the query video.q=={video field}:{value}. |

 |
| Fields | Select all fields to include in your report. |
| Other Fields | Enter a comma-separated list of custom or calculated fields for your report. |
| Where | Enter an optional WHERE clause to filter the result set. See the "Dimensions" table above for filter values for each dimension.The general syntax for this field is dimension1==value1;dimension2==value2. For example, if you had selected video and device\_type as dimensions, you could enter filters for both using a query like the following:
video==123456789;device\_type==tablet
Commas are treated as logical ORs, and semicolons as logical ANDs. For example, the query video==1234,5678;player=9876 is interpreted as "where video=1234 OR 5678 AND player=9876."
Using the special where=video.q=={property}:{value} filter, you can limit your report to a specific set of videos based on a variety of properties, including all of the following:* tags
* reference\_id
* custom\_fields (internal name)
* {a\_specific\_custom\_field}
* published\_at

Examples:
Tags: video.q==tags:foo,barCustom Fields: video.q==custom\_fields.thefieldname:fooTags and custom Fields: video.q==tags:foo,bar+custom\_fields.field2:fish |
| Player | Select the video player you want to retrieve information for. |
| Duration  | Select whether you want to pull data for a specific date or a date range.  |
| Report Date  | Select whether the report data is for a specific date or for a relative number of days back from today.  |
| Select Specific Date  | Select the date for the report.  |
| Days Back | Enter the number of past days that should appear in the report.   |
| Start Date | Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in **End Date**.  |
| End Date | Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in **Start Date**.   |
| Select Specific Start Date | Select the first date in your date range.  |
| Select Specific End Date | Select the second date in your date range.  |
| Days Back to Start From | Enter the number of the farthest day back that should be represented in the report. Combine with **Days Back to End At** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |
| Days Back to End At | Enter the number of the most recent day back that should be represented in the report. Combine with **Days Back to Start From** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").   

