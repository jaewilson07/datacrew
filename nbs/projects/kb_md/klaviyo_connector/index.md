---
    title: Klaviyo Connector
    url: https://domo-support.domo.com/s/article/360042926914
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042926914](https://domo-support.domo.com/s/article/360042926914)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003747
    views: 1,111
    created_date: 2022-10-24 21:14:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


Klaviyo allows ecommerce marketers to target, personalize, measure and optimize email and Facebook campaigns. To learn more about the Klaviyo API, visit their page ([https://www.klaviyo.com/docs](https://www.klaviyo.com/docs "https://www.klaviyo.com/docs")).  


You connect to your Klaviyo account in the Data Center. This topic discusses the fields and menus that are specific to the Klaviyo connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Klaviyo account and create a DataSet, you must have a Klaviyo API key. For information about obtaining an API key, visit [https://help.klaviyo.com/hc/en-us/ar...unt-s-API-Keys](https://help.klaviyo.com/hc/en-us/articles/115005062267-Manage-Your-Account-s-API-Keys "https://help.klaviyo.com/hc/en-us/articles/115005062267-Manage-Your-Account-s-API-Keys"). 


Connecting to Your Klaviyo Account
----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Klaviyo Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Klaviyo account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| API Key | Enter your Klaviyo API key. For information about obtaining an API key, visit [https://help.klaviyo.com/hc/en-us/ar...unt-s-API-Keys](https://help.klaviyo.com/hc/en-us/articles/115005062267-Manage-Your-Account-s-API-Keys "https://help.klaviyo.com/hc/en-us/articles/115005062267-Manage-Your-Account-s-API-Keys").  |


Once you have entered valid Klaviyo credentials, you can use the same account any time you go to create a new Klaviyo DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Klaviyo report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Campaign Information | Returns summary information for the selected campaign. |
| Campaigns in Account | Returns a list of all the campaigns you've created. |
| List All Templates | Returns a list of all email templates you've created. |
| List Exclusions or Unsubscribes | Returns a list of global exclusions or unsubscribes. |
| List Exclusions or Unsubscribes for a List | Returns exclusions or unsubscribes for a selected list. Includes the person's email address and the reason for/time of the exclusion. |
| List of Metrics | Returns a list of metrics in Klaviyo. |
| List of Timeline of All Events | Returns a batched timeline of all events in your Klaviyo account. |
| Listing a Person's Complete Event Timeline | Returns a batched timeline of all events for a specified person. |
| Listing a Person's Complete Event Timeline (with Extra Properties) | Returns a batched timeline of all events for a specified person with extra properties. |
| Listing a Person's Complete Event Timeline (with Person's Data) | Returns a batched timeline of all events for a specified person, with that person's data. |
| Listing The Event Timeline For A Particular Metric (With Extra Properties) | Returns a batched timeline for one specific type of metric, with extra properties. |
| Listing The Event Timeline For A Particular Metric (With Person's Data) | Returns a batched timeline for one specific type of metric with a person's data. |
| List of Accounts | Returns a list of accounts. |

 |
| Campaign | Select the campaign you want to retrieve information for. |
| List | Select the list you want to retrieve information for. |
| Person ID | Enter the ID of the person you want to retrieve information for. |
| Metric | Select the metric type you want to retrieve information for. |
| Type | Select whether you want to filter results by list or segment. If you select **No Selection**, all results are shown. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

