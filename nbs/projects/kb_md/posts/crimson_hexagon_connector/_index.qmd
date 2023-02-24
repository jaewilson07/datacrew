---
title: Crimson Hexagon Connector
url: https://domo-support.domo.com/s/article/360042929234
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042929234](https://domo-support.domo.com/s/article/360042929234)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003531
views: 2,124
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


Crimson Hexagon is an enterprise social media analytics company providing insights for brand strategy, market research, and more. To learn more about the Crimson Hexagon API, visit their page ( [http://apidocs.crimsonhexagon.com/re...ce#results-api](http://apidocs.crimsonhexagon.com/reference#results-api "http://apidocs.crimsonhexagon.com/reference#results-api") ).




|  |  |
| --- | --- |
| **Primary Use Cases** | This connector helps you answer business questions regarding consumer trends, sentiment, competitors, and category-level conversations. |
| **Primary Metrics** | * Mentions volume over time
* Net sentiment
* Emotions breakdown
* Social engagement
* Mentions by geography
* Demographic breakdowns.
 |
| **Primary Company Roles** | * Marketing VP
* Marketing director
* Marketing manager
 |
| **Average Implementation Time** | ~1 hour |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 3 |


You connect to your Crimson Hexagon account in the Data Center. This topic discusses the fields and menus that are specific to the Crimson Hexagon connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").




 

**Note:** Access to the Crimson Hexagon Monitor API is required to use this connector. 



Best Practices
--------------


* It's recommended that you deploy reports for the same monitor for comparison.
* Deploy reports for a monitor over a consistent time period.
* Social reports only pertain to monitors of the specified social platform (i.e. the Facebook reports will only return data for Facebook monitors).


Prerequisites
-------------


To connect to your Crimson Hexagon account and create a DataSet, you must have your Crimson Hexagon username and password. You must also reach out to Crimson Hexagon support to enable API access for your username. 


Connecting to Your Crimson Hexagon Account
------------------------------------------


This section enumerates the options in the  **Credentials**  and  **Details**  panes in the Crimson Hexagon Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Crimson Hexagon account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Username | Enter your Crimson Hexagon username. |
| Password | Enter your Crimson Hexagon password. |


Once you have entered valid Crimson Hexagon credentials, you can use the same account any time you go to create a new Crimson Hexagon DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Crimson Hexagon report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Authors | Returns information related to the Twitter authors who have posted in a given monitor. Author information is currently only available for monitors with Twitter content. |
| Day and Time | Returns volume information aggregated by time of day or day of the week, depending on the parameters set by the requesting user. The "numberOfDocuments" field shows the total volume of posts for each date.  |
| Demographics Age | Returns age information about authors in a monitor. |
| Demographics Ethnicity | Returns ethnicity information (calculated using US census data and definitions) about authors in a monitor. The information in this endpoint is only available to US-based customers. Users from non-US customers attempting to access this endpoint will receive an error response. |
| Facebook Admin Posts | Returns posts made by the administrator(s) of a targeted Facebook page in a Facebook Social Account Monitor. |
| Facebook Page Likes | Returns the cumulative daily like totals for a targeted Facebook page in a Facebook Social Account Monitor as of the selected dates. |
| Facebook Total Activity | Returns information about actions made by users and admins for that page. |
| Geography All Resources | Returns all the geographical locations that you may use to filter monitor results. For API endpoints that take a filter parameter, you may use the information from this endpoint to filter results based on the geolocation fields included in this response. Each of the other geography resources endpoints provides more granular views of information that appears in this endpoint. |
| Geography Cities | Returns all the cities or urban areas defined in the given country that you may use to filter monitor results. Cities and urban areas may span multiple states or regions. |
| Geography States | Returns all the states or country regions defined in the passed in country that you may use to filter monitor results. |
| Instagram Followers | Returns the cumulative daily follower count for a targeted Instagram account in an Instagram Social Account Monitor as of the selected dates. |
| Instagram Sent Media | Equivalent to Twitter Sent Posts and Facebook Admin Posts, but for media sent by admins in a targeted Instagram account. |
| Instagram Total Activity | Returns information about actions made by users and admins for the selected account. The requested monitor must be an Instagram Social Account Monitor. |
| Interest Affinities | Returns information about the authors in a monitor and their affinity with a range of pre-defined topics. Errors specific to this endpoint are related to the number of posts required to calculate affinities. There must be at least 250 tweets in the selected date range to use Affinities. Each interest must have a minimum of 5 posts and average at least 5 authors per day. |
| Monitor Audit | Returns audit information about the selected monitor, sorted from most to least recent. |
| Monitor Detail | Returns detailed metadata about the selected monitor, including category information. |
| Monitor List | Returns a list of monitors accessible to the requesting (default) or selected user along with metadata related to those monitors. This endpoint provides the most convenient access to the unique monitor IDs used for requests to other endpoints. |
| Monitor Results | Returns the results of a given monitor's analysis. |
| Monitor Results by City | Returns the selected monitor's result volume grouped by the cities in the selected country or the whole world. |
| Monitor Results by Country | Returns the selected monitor's result volume grouped by country. |
| Monitor Results by State | Returns the selected monitor's result volume grouped by the states in the selected country. State information requires the **Country** parameter to return results. |
| Monitor Training Posts | Returns a list of the training posts for a given opinion monitor. The selected monitor must be an opinion monitor; requests for other monitor types will return an error. By default, all training posts for all categories in a monitor will be returned; however you may pass a category ID in your request to get training posts from a specific category. This endpoint is subject to the same content restrictions as other endpoints that return posts. |
| Posts | Returns information about posts in a monitor. For Twitter and Google+ content, we are currently unable to show title and contents information via the API. |
| Team List | Returns a list of teams accessible to the requesting user. |
| Top Sites and Content Resources | Returns volume information related to the sites and content sources (e.g. Twitter, Forums, Blogs, etc.) in a monitor. |
| Twitter Engagement Metrics | Returns information about the top hashtags, mentions, and retweets in a monitor. Whereas the Twitter Total Engagement endpoint requires a Twitter Social Account Monitor, this endpoint requires a standard Buzz or Opinion monitor with Twitter content. |
| Twitter Followers | Returns the cumulative daily follower count for a targeted Twitter account in a Twitter Social Account Monitor as of the selected dates. |
| Twitter Sent Posts | Returns information about posts sent by the owner of a target Twitter account in a Twitter Social Account Monitor. |
| Twitter Total Engagement | Returns information about retweets, replies, and @mentions (collectively, engagement) for a targeted Twitter account in a Twitter Social Account monitor. |
| Word Cloud | Returns an alphabetized list of the top 300 words in a monitor. This data is generated using documents randomly selected from the pool defined by the submitted start, end, and filter parameters. The words included in the response are the 300 words most frequently used in the documents, excluding common stopwords. Note that we are counting the total number of times each word appears in the documents, not the number of posts in which each word appears. |

 |
| Monitor Name | Select the name of the monitor you want to pull data for. |
| Duration  | Select whether you want to pull data for a specific date or a date range.  |
| Report Date  | Select whether the report data is for a specific date or for a relative number of days back from today.  |
| Specific Date  | Select the date for the report.  |
| Days Back | Enter the number of past days that should appear in the report.   |
| Start Date | Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in **End Date**.  |
| End Date | Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in **Start Date**.   |
| Specific Start Date | Select the first date in your date range.  |
| Specific End Date | Select the second date in your date range.  |
| Days Back to Start From | Enter the number of the farthest day back that should be represented in the report. Combine with **Days Back to End At** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |
| Days Back to End At | Enter the number of the most recent day back that should be represented in the report. Combine with **Days Back to Start From** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |
| Use Local Time | Select **True** to use the time local to the publishing author of a post instead of converting that time to the time zone of the selected monitor. |
| Report Daily Results | Select **True** to have results aggregated by day of week instead of time of day. |
| Country Name | Select the country you want to pull data for. |
| Daily | Select **True** to have results aggregated daily instead of across the selected date range. |
| Team Name | Select the team you want to pull data for. |
| Hide Excluded | If you select **True**, categories set as hidden will not be included in category proportion calculations. |
| Geo Tagged | Select **True** to return only geo-tagged documents. |
| Extended Limit | Select **True** to increase the returned posts limit from 500 to 10,000. |
| Filter | Enter a pipe-separated list of field:value pairs to filter results.
For example:   `'site:[blogspot.com](http://blogspot.com),[wordpress.com](http://wordpress.com)|keywords:android|geolocation:USA.NY.New York;GBR.Greater London.London'` |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Troubleshooting
---------------


After selecting the report and monitor type, if you are not able to see the desired monitor, confirm the monitor type in your Crimson Hexagon account.


FAQ
---


##### Do I need a certain kind of account with the data service to set up the connector?


No. Any Crimson Hexagon account with access to collected data should be usable to set up this connector.


##### How often can the data be updated?


Datasets should be set to update once a day.


##### Are there any API limits that I need to be aware of?


The Crimson Hexagon API limits each authenticated user to 120 requests per minute. Note that a single dataset run may make multiple requests to the API.

