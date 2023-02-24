---
    title: Kapost Connector
    url: https://domo-support.domo.com/s/article/360042926874
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042926874](https://domo-support.domo.com/s/article/360042926874)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003753
    views: 1,079
    created_date: 2022-10-24 21:14:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


Kapost is a web content marketing platform that allows you to create and manage website content with ease. To learn more about the Kapost API, visit their page ([https://developer.kapost.com/](https://developer.kapost.com/ "https://developer.kapost.com/")).


You connect to your Kapost account in the Data Center. This topic discusses the fields and menus that are specific to the Kapost connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Kapost account and create a DataSet, you must have the following:


* A Kapost username and password.
* The URL of your company Kapost instance.


Connecting to Your Kapost Account
---------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Kapost Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Kapost account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Username | Enter your Kapost username. |
| Password | Enter your Kapost password. |


Once you have entered valid Kapost credentials, you can use the same account any time you go to create a new Kapost DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Kapost report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Campaigns | Returns a list of campaign resources. |
| Campaign Comments | Returns the activity feed for the specified campaign. |
| Campaign Reminders | Returns a list of reminders for the specified campaign. |
| Campaign Tasks | Returns a list of tasks for the specified campaign. |
| Content | Returns a list of content resources. |
| Content Analytics | Returns content analytics. |
| Content Comments | Returns the activity feed for the specified content. |
| Content Reminders | Returns a list of reminders for the specified content. |
| Content Tasks | Returns a list of tasks for the specified content. |
| Content Visibility | Retrieves a list of all instance members (and eligible groups) and their visibility and notification configurations for the specified content. |
| Custom Fields | Returns a list of custom fields for the current instance. |
| Ideas | Returns a list of idea resources. |
| Ideas Comments | Returns the activity feed for the specified idea. |

 |
| Content ID | Enter the content ID for the content you want to retrieve data for. |
| Idea ID | Enter the idea ID for the idea you want to retrieve data for. |
| Campaign Slug | Select the campaign you want to retrieve data for. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

