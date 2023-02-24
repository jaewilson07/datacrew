---
    title: Sailthru Advanced Connector
    url: https://domo-support.domo.com/s/article/360042927174
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360043431733](https://domo-support.domo.com/s/article/360043431733)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042927174](https://domo-support.domo.com/s/article/360042927174)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003718
    views: 1,097
    created_date: 2022-10-24 21:14:00
    last updated: 2022-10-24 22:40:00
    ---



Intro
-----


Sailthru is a cross-platform marketing company whose platform tracks user preferences and behavior on clients' websites, email, and mobile apps. Use Domo's Sailthru connector to compile reports on emails, blasts, users, and the like. To learn more about the Sailthru API, visit their page ([https://getstarted.sailthru.com/new-.../api-overview/](https://getstarted.sailthru.com/new-for-developers-overview/api/api-overview/ "https://getstarted.sailthru.com/new-for-developers-overview/api/api-overview/")).


There are two versions of the Sailthru connector—a simplified and an advanced version. The major difference is that the advanced version allows you to configure a range of specific or relative dates for the data in your report, whereas the simplified version only lets you enter a number of past days. Also, the advanced version offers an additional report type—"Emails." This topic discusses the advanced version of the report. To learn about the simplified version, see [Sailthru Connector](/s/article/360043431733 "Sailthru Connector").


You connect to your Sailthru account in the Data Center. This topic discusses the fields and menus that are specific to the Sailthru Advanced connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Sailthru account and create a DataSet, you must have the following:


* A Sailthru API key
* A Sailthru API secret


You can obtain both of these by logging into your Sailthru account and navigating to the **Account Settings** page.


Check <https://my.sailthru.com/settings/api_postbacks> to see if IP whitelisting is enabled for API access on your Sailthru account. If so, your credentials will not validate in the connector until you add Domo's IPs to the whitelist. A current list of Domo's IPs can be found here: http://knowledge.domo.com?cid=whitelistingip


Connecting to Your Sailthru Account
-----------------------------------


This section enumerates the options in the  **Credentials**  and  **Details**  panes in the Sailthru Advanced Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Sailthru account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| API Key | Enter your Sailthru API key. |
| API Secret | Enter your Sailthru API secret. |


For information about obtaining these credentials, see "Prerequisites," above.


Once you have entered valid Sailthru credentials, you can use the same account any time you go to create a new Sailthru Advanced DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Sailthru Advanced report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Blast ID Details | Retrieves details about Blasts, such as subject, from email, from name, email count, and so on. |
| Blast Status | Retrieves Blast status metadata. |
| Blast Repeat | Retrieves data on all repeating campaigns. |
| Content | Retrieves metadata about the 20 most recent pieces of content. |
| Email | Retrieves information about one of your Users, referenced by email address. |
| List | Retrieves basic information about all of your Lists. |
| Stats | Retrieves various statistics. |
| Templates | Retrieves information about all existing Templates. |
| User | Retrieves information about a specified User. |

 |
| Status | Select the Blast status you want to filter your results by. |
| Start Date | Select whether to pull data for a specific or relative start date. If you select **Specific**, you will be asked to choose a specific start date from a date picker. If you select **Relative**, you will be asked to enter an offset value (i.e. the number of days in the past you want to start pulling data for).  |
| Select Specific Start Date | Select the date you want to start pulling data for. Combine with **Select Specific End Date** to create a range of dates. |
| End Date | Select whether to pull data for a specific or relative end date. If you select **Specific**, you will be asked to choose a specific end date from a date picker. If you select **Relative**, you will be asked to enter an offset value (i.e. the number of days in the past you want to stop pulling data for).  |
| Select Specific End Date | Select the date you want to stop pulling data for. Combine with **Select Specific Start Date** to create a range of dates. |
| Start Date Offset | Enter the number of days back you want to start pulling data for. Combine with **End Date Offset** to create a relative date range. For example, if you entered 10 for **Start Date Offset** and 5 for **End Date Offset**, each time the report ran it would pull data from the last 10 days up until the last 5 days. |
| End Date Offset | Enter the number of days back you want to stop pulling data for. Combine with **Start Date Offset** to create a relative date range. For example, if you entered 10 for **Start Date Offset** and 5 for **End Date Offset**, each time the report ran it would pull data from the last 10 days up until the last 5 days. |
| Email Address | Enter the email address of the user you want to pull information for. |
| Stat | Select the type of statistic you want to pull information for.  **Blast** retrieves aggregated information from all campaigns over a specified date range.
**Blast Stats by Blast** retrieves stats organized by Blast.
**List** retrieves information about your subscriber counts for a specified date. You can choose to pull all lists OR all subscribers not broken down by list.
**Send** retrieves aggregated information from transactionals over a specified date range. |
| List Information | Select whether to pull all lists or all subscribers not broken down by list. |
| Date | Select the date to pull data for. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

