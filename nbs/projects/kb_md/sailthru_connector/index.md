---
    title: Sailthru Connector
    url: https://domo-support.domo.com/s/article/360043431733
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042927174](https://domo-support.domo.com/s/article/360042927174)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360043630093](https://domo-support.domo.com/s/article/360043630093)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043431733](https://domo-support.domo.com/s/article/360043431733)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003722
    views: 1,091
    created_date: 2022-10-24 21:14:00
    last updated: 2022-10-24 22:40:00
    ---



Intro
-----


Sailthru is a cross-platform marketing company whose platform tracks user preferences and behavior on clients' websites, email, and mobile apps. To learn more about the Sailthru API, visit their page ([https://getstarted.sailthru.com/new-.../api-overview/](https://getstarted.sailthru.com/new-for-developers-overview/api/api-overview/ "https://getstarted.sailthru.com/new-for-developers-overview/api/api-overview/")).


There are two versions of the Sailthru connector—a simplified and an advanced version. The major difference is that the advanced version allows you to configure a range of specific or relative dates for the data in your report, whereas the simplified version only lets you enter a number of past days. Also, the advanced version offers an additional report type—"Emails." This topic discusses the simplified version of the report. To learn about the advanced version, see [Sailthru Advanced Connector](/s/article/360042927174 "Sailthru Advanced Connector").


You connect to your Sailthru account in the Data Center. This topic discusses the fields and menus that are specific to the Sailthru connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in  [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Sailthru account and create a DataSet, you must have the following:


* A Sailthru API key
* A Sailthru API secret


You can obtain both of these by logging into your Sailthru account and navigating to the **Account Settings** page.


Check here (<https://my.sailthru.com/settings/api_postbacks>) to see if IP whitelisting is enabled for API access on your Sailthru account. If so, your credentials will not validate in the connector until you add Domo's IPs to the whitelist. A current list of Domo's IPs can be found here: [http://knowledge.domo.com?cid=whitelistingip](/s/article/360043630093)


Connecting to Your Sailthru Account
-----------------------------------


This section enumerates the options in the  **Credentials**  and  **Details**  panes in the Sailthru Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Sailthru account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| API Key | Enter your Sailthru API key. |
| API Secret | Enter your Sailthru API secret. |


For information about obtaining these credentials, see "Prerequisites," above.


Once you have entered valid Sailthru credentials, you can use the same account any time you go to create a new Sailthru DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Sailthru report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Blast ID Details | Retrieves details about Blasts, such as subject, from email, from name, email count, and so on. |
| Blast Status | Retrieves Blast status metadata. |
| Blast Repeat | Retrieves data on all repeating campaigns. |
| Content | Retrieves metadata about the 20 most recent pieces of content. |
| List | Retrieves basic information about all of your Lists. |
| Stats | Retrieves various statistics. |
| Templates | Retrieves information about all existing Templates. |
| User | Retrieves information about a specified User. |

 |
| Status | Select the Blast status you want to filter your results by. |
| Number of Days | Enter the number of past days you want to retrieve data for. You can have up to 90 days of data in your report. |
| Email Address | Enter the email address of the user you want to pull information for. |
| Stat | Select the type of statistic you want to pull information for.  **Blast** retrieves aggregated information from all campaigns over a specified date range.
**Blast Stats by Blast** retrieves stats organized by Blast.
**List** retrieves information about your subscriber counts for a specified date. You can choose to pull all lists OR all subscribers not broken down by list.
**Send** retrieves aggregated information from transactionals over a specified date range. |

