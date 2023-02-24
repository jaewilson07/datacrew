---
    title: Backlog Third Party Connector
    url: https://domo-support.domo.com/s/article/000005131
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/000005131](https://domo-support.domo.com/s/article/000005131)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000005131
    views: 102
    created_date: 2023-02-21 03:26:00
    last updated: 2023-02-21 03:26:00
    ---



Intro
-----


Backlog is a task and project management service. By using Backlog Connector, you can link issue information in Backlog to Domo.


Connect to your Backlog account from Data Center. This topic describes fields and menus specific to the Backlog Connector user interface. For general information about adding DataSets, setting schedules, and editing DataSet information, refer to  [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").

You connect to your Backlog account in the Data Center. This topic discusses the fields and menus that are specific to the Backlog Third Party Connector user interface. 


Prerequisites
-------------


To connect to your Backlog account and create a DataSet, you need the following:


* API KEY of your Backlog account.
* FQDN of the Backlog space.


For details on how to issue an API KEY for your Backlog account, please refer to,  [API settings](https://support-ja.backlog.com/hc/ja/articles/360035641754-API%E3%81%AE%E8%A8%AD%E5%AE%9A "https://support-ja.backlog.com/hc/ja/articles/360035641754-API%E3%81%AE%E8%A8%AD%E5%AE%9A").


Connecting to your Backlog Account
----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Backog Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in  [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Backlog account.


The following table describes what is needed for each field:




| Field | Description |
| --- | --- |
| API Key | Enter the API KEY of your Backlog account. |
| FQDN | Enter the FQDN of the Backlog space. |


For information about obtaining these credentials, see **Prerequisites** above.


After you have entered the valid Backlog credentials, you can use the same account any time you go to create a new Backlog DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, refer to [Managing User Accounts for Connectors](https://domohelp.domo.com/hc/en-us/articles/360042926054 "Managing User Accounts for Connectors").


### Data Selection Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the following available reports to run:

| **スペース情報の取得** | Returns space information. |
| **プロジェクト一覧の取得** | Returns a list of projects. |
| **ユーザー一覧の取得** | Returns a list of users in a space. |
| **チーム一覧の取得** | Returns a list of teams. |
| **種別一覧の取得** | Returns a list of types registered in the project. |
| **カテゴリー一覧の取得** | Returns a list of categories registered in the project. |
| **課題一覧の取得** | Returns the list of issues. |
| **最近の更新の取得** | Returns a list of recent updates made on the space. |
| **レート制限情報の取得** | Returns a information about the rate limits currently set for the user corresponding to the API key in use. |

 |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, refer to [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


FAQs
----


#### What version of the Backlog API does this connector use?


This connector uses API (2.71.2)  
<https://developer.nulab.com/ja/docs/backlog/changelog>


#### Are there any API limitations I should be aware of?


APIs are rate limited. The maximum number of requests varies depending on the API type and plan. Refer to the details on the following page:  
<https://developer.nulab.com/ja/docs/backlog/rate-limit/>

