---
    title: BrightEdge Connector
    url: https://domo-support.domo.com/s/article/360042926474
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042926474](https://domo-support.domo.com/s/article/360042926474)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003795
    views: 1,132
    created_date: 2022-10-24 21:15:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


BrightEdge is a content marketing platform that transforms online content such as traffic, revenue, and engagement into tangible business results. To learn more about the BrightEdge API, visit their page ([http://www.brightedge.com/technology...on/connect-api](http://www.brightedge.com/technology/integration/connect-api "http://www.brightedge.com/technology/integration/connect-api")).


You connect to your BrightEdge account in the Data Center. This topic discusses the fields and menus that are specific to the BrightEdge connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).




|  |  |
| --- | --- |
| **Primary Use Cases** | Use this connector to pull data about search engine optimization. |
| **Primary Metrics** | * Keyword rankings
* Competitor rankings
* Search volume
* Tracked searches
 |
| **Primary Company Roles** | Digital marketing |
| **Average Implementation Time** | 5 hours |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 3 |


Best Practices
--------------


These reports can power cards individually, but oftentimes it is helpful to combine the reports using Magic ETL. This way you can look at things like your keyword ranks compared to your competitor ranks or evaluate the search volume of your top ranked keywords. For more information about Magic, see Magic Transforms.


Prerequisites
-------------


To connect to your BrightEdge account and create a DataSet, you must have a BrightEdge username and password.


V3 of the BrightEdge API must be enabled to access the connector. Domains must also be enabled for API V3.


Connecting to Your BrightEdge Account
-------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the BrightEdge Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your BrightEdge account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Username | Enter your BrightEdge username. |
| Password | Enter your BrightEdge password. |


Once you have entered valid BrightEdge credentials, you can use the same account any time you go to create a new BrightEdge DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the BrightEdge report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Accounts | Retrieves a list of all accounts. |
| BQL Query | Retrieves rank information for all your keywords. |
| Competitors | Retrieves a list of all competitors being tracked for your account. |
| Domains | Retrieves a list of all domains being tracked for your account. |
| Domain Ranking | Retrieves the positional rank of a domain in a given search engine, according to the domain's defined keywords. |
| Keywords | Retrieves a list of all keywords being tracked for your account. |
| Keyword Groups | Retrieves a list of all keyword groups being tracked for your account. |
| Keyword Ranking | Retrieves the account's ranking for a given domain, keyword or search engine. |
| Keyword Volume | Retrieves a list of keywords and their search volumes, organized by search engine and time. |
| Keywords in Keyword Groups | Returns a list of all the keywords that belong to the specified keyword group. |
| Search Engine | Retrieves a list of all search engines that are enabled for the specified account. |

 |
| Account | Select the account you want to retrieve data for. |
| Query | Enter a query using BQL language. For example:
`{ "dataset":"keywordgroup", "dimension":["domain","search_engine"], "measures":["rank_p1","revenue"], "dimensionOptions":{"time":"weekly"}, "filter": }`
For more information about BQL, see [http://senseidb.github.io/sensei/bql.html](http://senseidb.github.io/sensei/bql.html "http://senseidb.github.io/sensei/bql.html"). |
| Time Frequency | Select how the report data will be aggregated. |
| Start Date | Select the start date for the report data. Data will be returned from this date until the current date. |
| Search Engines | Select all search engines you want to retrieve data for. |
| Keyword Group | Select all keyword groups you want to retrieve data for. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).  


Troubleshooting
---------------


This connector has strict data limits. If it fails to retrieve data, reduce the time period to 90 days or less and try again. This also means that multiple pulls and appends might be needed.

