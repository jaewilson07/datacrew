---
    title: Foursquare Connector
    url: https://domo-support.domo.com/s/article/360042929734
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042929734](https://domo-support.domo.com/s/article/360042929734)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003483
    views: 2,110
    created_date: 2022-10-24 21:13:00
    last updated: 2022-10-24 22:40:00
    ---



Intro
-----


Foursquare is a local search and discovery service mobile app which provides a personalized local search experience for its users.  To learn more about the Foursquare API, visit their page (<https://developer.foursquare.com/>).


The Foursquare connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.


You connect to your Foursquare account in the Data Center. This topic discusses the fields and menus that are specific to the Foursquare connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").




|  |  |
| --- | --- |
| **Primary Use Cases** | Use this connector to find out what your friends are doing, learn about new places, and check on mayorships and venues. |
| **Primary Metrics** | Engagements |
| **Primary Company Roles** | Social media reps |
| **Average Implementation Time** | ~1 hour |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 2 |


Best Practices
--------------


This connector works best when the update mode is set to "Replace."


Prerequisites
-------------


To connect to your Foursquare account and create a DataSet, you must have the following:


* The email address or phone number you entered when you signed up for Foursquare
* Your Foursquare password


Alternatively, you can log into your Foursquare account using your Facebook credentials.  


Connecting to Your Foursquare Account
-------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Foursquare Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


The Domo Foursquare connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click **Connect** (or select **Add Account** if you have existing Foursquare accounts in Domo) to open the Foursquare OAuth screen where you can enter the email address or phone number you entered when you signed up for Foursquare, along with your Foursquare password. You can also connect using Facebook credentials. Once you have entered valid credentials, you can use the same account any time you go to create a new Foursquare DataSet. You can manage connector accounts in the **Accounts**tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




 


**Note:** If you are already logged into Foursquare when you connect in Domo, you are authenticated automatically when you click Add account. If you want to connect to an account that is different from the one you are logged into, you must first log out of Foursquare.



### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select a Foursquare report. The following reports are available:

|  |  |
| --- | --- |
| Checkins | Returns a history of checkins for the authenticated user. |
| Checkin Likes | Returns friends and a total count of users who have liked each checkin. |
| Friends | Returns a list of the authenticated user's friends. |
| List Followers | Returns information about users following a given list. |
| Lists | Returns details about lists. |
| List Saves | Returns friends and a total count of users who have saved a given list. |
| List Suggest Venues | Returns suggested venues for a given list. |
| Mayorships | Returns mayorships for the authenticated  user. |
| Next Venues | Returns venues that users often check in to after the current venue. |
| Page Updates | Returns page update details. |
| Page Venues | Returns the venues for a given page. |
| Photos | Returns information about photos for the authenticated user. |
| Requests | Shows pending friend requests for the authenticated user. |
| Search | Returns information for provided names, email addresses, phone numbers, Twitter handles, or Facebook IDs. |
| Specials List | Returns a list of available specials. |
| Specials Search | Returns a list of specials for a given latitude and longitude. |
| Tips | Returns details about tips, including which users have marked a given tip as to-do. |
| Tips Likes | Returns friends and a total count of users who have liked a given tip. |
| Tips Listed | Returns lists in which a given tip appears. |
| Tips Saves | Returns  friends and a total count of users who have saved a given tip. |
| Venue Categories | Returns a list of categories applied to venues. |
| Venue Events | Returns information about events taking place at a given venue. |
| Venue Explore | Returns a list of recommended venues near the location with the provided latitude and longitude. |
| Venue Groups | Returns details about a given venue group. |
| Venue Herenow | Returns a count of the number of people currently at a given venue. |
| Venue Likes  | Returns friends and a total count of users who have liked a given venue.  |
| Venue Links  | Returns URLs or identifiers from third parties that have been applied to this venue.  |
| Venue Listed  | Returns lists in which the given venue appears.  |
| Venue Menu  | Returns menu information for a given venue.  |
| Venue Photo  | Returns information about photos for the given venue.  |
| Venues  | Returns details about venues, including location, mayorship, tags, tips, specials, and category.  |
| Venue Search  | Returns venues for a provided latitude and longitude.  |
| Venue Similar  | Returns a list of venues similar to a given venue.  |
| Venue Stats  | Returns venue stats over a given time range.  |
| Venue Suggest Completion  | Returns a list of venues partially matching the search term for a provided latitude and longitude.  |
| Venue Tips  | Returns tips for a given venue.  |
| Venue Timeseries  | Returns daily stats for a given venue for the provided number of days.  |
| Venue Trending  | Returns a list of venues near the provided latitude and longitude with the most people checked in.  |

  |
| Past Days | Enter the number of past days of data that should appear in the report. You can use the format x, xday, or xdays, where x is a positive integer. Example: 30days |
| Search By | Select the type of query you want to search for. |
| Search Query | Enter the query term(s) to search for. If you selected **Name** in **Search By**, you can search for a single search string, which may consist of a first name, a last name, or both. For example, you could enter any of the following for the name "Phil Jones": phil, jones, or phil jones
If you selected any other option in **Search By**, you may enter multiple search strings using a comma-separated list. |
| Latitude and Longitude | Enter the latitude and longitude of the location you want to retrieve data for, separated by commas. Both latitude and longitude must be in signed degrees format: DDD.dddd.Example: 40.63, -111.91. Compass directions and degree symbols (º) are not allowed.  |
| Query | Enter a title to search for. The query must be at least three letters long. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Rate Limits
-----------


* 5,000 userless requests per hour for venues
* 500 userless requests to most other endpoints per hour
* 500 authenticated requests per hour per OAuth token


FAQs
----


#### Do I need a certain kind of account with the data service to set up the connector?


No. A standard FourSquare account is all this required to power up the connector. 


#### How often can the data be updated?


DataSets should be set to update once a day.


#### Are there any API limits I should be aware of?


Each authenticated user may make up to 500 requests per hour. Note that a single run of a DataSet may require making multiple requests. Domo as a whole may make up to 100,000 requests per day.


Troubleshooting
---------------


If the connector returns an error, make sure to read the error description as well as check the authentication and report configuration. 

