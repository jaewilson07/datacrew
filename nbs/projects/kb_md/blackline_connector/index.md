---
    title: BlackLine Connector
    url: https://domo-support.domo.com/s/article/360043432733
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043432733](https://domo-support.domo.com/s/article/360043432733)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003635
    views: 1,081
    created_date: 2022-10-24 21:13:00
    last updated: 2022-10-24 22:42:00
    ---



Intro
-----


BlackLine automates complex, manual and repetitive accounting processes and enables companies to move beyond the legacy record-to-report process. To learn more about BlackLine, visit their website ([https://www.blackline.com](https://www.blackline.com "https://www.blackline.com")).


You connect to your BlackLine account in the Data Center. This topic discusses the fields and menus that are specific to the BlackLine connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in  [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your BlackLine account and create a DataSet, you must have the following:


* Your BlackLine client ID, provided by your BlackLine integration team
* Your BlackLine client secret, provided by your BlackLine integration team
* Your BlackLine application username
* Your BlackLine user API key
* Your BlackLine instance GUID, provided by your BlackLine integration team


For information about obtaining these credentials, please reach out to your BlackLine representative.


Connecting to Your BlackLine Account
------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the BlackLine Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your BlackLine account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Datacenter | Select the BlackLine datacenter containing your instance. |
| Client ID | Enter your BlackLine client ID. |
| Client Secret | Enter your BlackLine client secret. |
| Username | Enter your BlackLine application username. |
| Password | Enter your BlackLine user API key. |
| Scope | Enter your BlackLine instance GUID. |


Once you have entered valid BlackLine credentials, you can use the same account any time you go to create a new BlackLine DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a single menu from which you select a completed report from BlackLine.




| Menu | Description |
| --- | --- |
| Report | Select the report from your BlackLine account you want to run.  |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").

