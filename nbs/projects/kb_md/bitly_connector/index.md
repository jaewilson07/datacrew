---
    title: Bitly Connector
    url: https://domo-support.domo.com/s/article/360042926454
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042926454](https://domo-support.domo.com/s/article/360042926454)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003797
    views: 2,121
    created_date: 2022-10-24 21:15:00
    last updated: 2022-10-24 22:39:00
    ---




Intro
------


Bitly is a URL-shortening, bookmarking service and link-sharing platform.  To learn more about the Bitly API, visit their website (<https://dev.bitly.com/v4_documentation.html>).


The Bitly connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.  


You connect to your Bitly account in the Data Center. This topic discusses the fields and menus that are specific to the Bitly connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").




|  |  |
| --- | --- |
| **Primary Use Cases** | Retrieving data about link statistics (such as number of clicks, countries providing click traffic, etc.) |
| **Primary Metrics** | * Number of clicks
* Number of encoders
* Countries providing the most traffic
 |
| **Primary Company Roles** | Marketing analysts |
| **Average Implementation Time** | Less than 1 hour |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 2 |


 


Prerequisites
-------------


To connect to your Bitly account and create a DataSet, you must provide credentials for Bitly, Facebook, or Twitter. 


Connecting to Your Bitly Account
--------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Bitly Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


The Domo Bitly connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click **Connect**(or select **Add Account** if you have existing Bitly accounts in Domo) to open the Bitly OAuth screen where you can sign in to Bitly using Bitly, Facebook, or Twitter credentials. 


Once you have entered valid Bitly credentials, you can use the same account any time you go to create a new Bitly DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Report** menu, along with various other menus and fields which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Bitly report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Link Clicks | Returns the number of clicks for a given Bitlink. |
| Link Countries | Returns metrics about the countries referring click traffic to a given Bitlink. |
| Link Encoders | Returns users who have encoded a given Bitlink. |
| Link Encoders by Count | Returns users who have encoded this Bitlink, sorted by the number of clicks on each encoding user's link. |
| Link Encoders Count | Returns the number of users who have shortened (encoded) a given Bitlink. |
| Link Information | Returns metadata for a given Bitlink. |
| Link Referrers | Returns metrics about the pages referring click traffic to a given Bitlink. |
| Link Referrers by Domain | Returns metrics about the pages referring click traffic to a given Bitlink, grouped by referring domain. |
| Link Referring Domain | Returns metrics about the domains referring click traffic to a given Bitlink. |
| Popular Links | Returns the authenticated user's most-clicked Bitlinks (ordered by number of clicks) in a given time period. |
| Popular Owned by Clicks | Returns the top links to your tracking domain (or domains) created by users not associated with your account, ordered by clicks. |
| Popular Owned by Shortens | Returns the top links to your tracking domain (or domains) created by users not associated with your account, ordered by shortens. |
| Referrers | Returns aggregate metrics about the pages referring click traffic to all of the authenticated user's Bitlinks. |
| Referring Domains | Returns aggregate metrics about the domains referring click traffic to all of the authenticated user's Bitlinks.  |
| Shorten Counts | Returns the number of Bitlinks created in a given time period by the authenticated user. |
| User Clicks | Returns the aggregate number of clicks on all of the authenticated user's Bitlinks. |
| User Countries | Returns aggregate metrics about the countries referring click traffic to all of the authenticated user's Bitlinks. |

  |
| Bitly Link | Enter the Bitlink you want to retrieve information for.  |
| Unit | Select whether data should be broken down by day, by hour, by week, etc.  |
| Number of Units | Enter the number of units of the selected time unit that should be returned. For example, if you selected **Month** as the **Unit** and entered 3 for **Number of Units**, data would be returned for the last 3 months. If you enter -1, all units of time are returned.  |
| Time Zone | Enter the desired time zone. You can enter this as an integer hour offset from UTC (from -14 to 14) or as an actual time zone name. This defaults to Eastern Standard Time.   |
| Roll Up  | Choose whether to return data for multiple units rolled up to a single result instead of a separate value for each period of time. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).   

