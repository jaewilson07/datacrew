---
    title: Google PageSpeed Insights Connector
    url: https://domo-support.domo.com/s/article/360043433333
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043433333](https://domo-support.domo.com/s/article/360043433333)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003571
    views: 2,121
    created_date: 2022-10-24 21:13:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


Google PageSpeed Insights can help you identify ways to make your site faster and more mobile-friendly. To learn more about the Google PageSpeed Insights API, visit their page ([https://developers.google.com/speed/...peed/insights/](https://developers.google.com/speed/pagespeed/insights/ "https://developers.google.com/speed/pagespeed/insights/")).  


You connect to your Google PageSpeed Insights account in the Data Center. This topic discusses the fields and menus that are specific to the Google PageSpeed Insights connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to Google PageSpeed Insights and create a DataSet, you must have a Google PageSpeed Insights API key. To learn how to get set up in the Google PageSpeed Insights development environment and generate an API key, see [https://developers.google.com/speed/...rst-app#APIKey](https://developers.google.com/speed/docs/insights/v2/first-app#APIKey "https://developers.google.com/speed/docs/insights/v2/first-app#APIKey").


You must also have API access in your PageSpeed account before the connector will work. For more information, see [https://console.developers.google.com/apis/api/pagespeedonline/overview](https://console.developers.google.com/apis/api/pagespeedonline/overview "Follow link").


Connecting to the Google PageSpeed Insights API
-----------------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Google PageSpeed Insights Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to the Google PageSpeed Insights API. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| API Key | Enter your Google PageSpeed Insights API key. |


Once you have entered a valid API key, you can use the same account any time you go to create a new Google PageSpeed Insights DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with several other menus for configuring the selected report.




| Menu | Description |
| --- | --- |
| Report | Select the Google PageSpeed Insights report you want to run. Currently only one report is available.

|  |  |
| --- | --- |
| Page Speed | Returns data about a specified web page's performance. |

 |
| Page URL | Enter the URL of the web page you want to return performance data for. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


 

