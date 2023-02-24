---
title: Basecamp Connector
url: https://domo-support.domo.com/s/article/360043434853
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043434853](https://domo-support.domo.com/s/article/360043434853)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003435
views: 2,105
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:41:00
---



Intro
-----


Basecamp is a web-based project management tool. The Basecamp connector integrates Domo with Basecamp to extract data from the Basecamp API. You can use this connector to retrieve data about documents, attachments, calendar events, projects, people, and the like. To learn more about the Basecamp API, visit their Github page ([https://github.com/basecamp/bc3-api](https://github.com/basecamp/bc3-api "https://github.com/basecamp/bc3-api")).


The Basecamp connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.


You connect to your Basecamp account in the Data Center. This topic discusses the fields and menus that are specific to the Basecamp connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").




|  |  |
| --- | --- |
| **Primary Use Cases** | This connector is appropriate for retrieving project status and task and project completion rates. |
| **Primary Company Roles** | Project managers |
| **Average Implementation Time** | 10 minutes |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 2 |


 


Prerequisites
-------------


To connect to your Basecamp account and create a DataSet, you must have the following:


* The username or email address you use to log into Basecamp
* The password you use to log into Basecamp


Connecting to Your Basecamp Account
-----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Basecamp Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


The Domo Basecamp connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click **Connect** (or select **Add Account** if you have existing Basecamp accounts in Domo) to open the Basecamp OAuth screen where you can enter your Basecamp username/email address and password. Once you have entered valid Basecamp credentials and authorized Domo to connect to Basecamp, you can use the same account any time you go to create a new Basecamp DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




 


**Note:**If you are already logged into Basecamp when you connect in Domo, you are authenticated automatically when you click **Add account**. If you want to connect to an account that is different from the one you are logged into, you must first log out of Basecamp.



### Details Pane


This pane contains two primary menus, **Account ID** and **Reports**, along with various other menus which may or may not appear depending on the report type you select.




| **Menu** | **Description** |
| --- | --- |
| Account ID | Select the Basecamp account ID you want to retrieve information for. |
| Report | Select a Basecamp report. The following reports are available:

|  |  |
| --- | --- |
| Accesses | Returns a list of people with access to a given project.  |
| Attachments | Returns a list of attachments for all projects. |
| Calendars | Returns a list of all calendars, sorted alphabetically. |
| Calendar Events | Returns a list of upcoming calendar events. |
| Calendar Events Past | Returns a list of past calendar events. |
| Documents | Returns a list of documents for all projects. |
| Events | Returns a list of all events for the account. |
| People | Returns a list of people with access to the account. |
| Projects | Returns a list of all active projects for the given project type. |
| Projects Archived | Returns a list of all archived projects. |
| Stars | Returns a list of stars for all active projects. |
| To-Do Lists | Returns to-do lists for all active projects for the given list type. |
| To-Dos | Returns a list of to-do items in all to-do lists. |
| Topics | Returns a list of topics for all projects. |

  |
| Project Type | Select a Basecamp project type. |
| To-Do List Type | Select a Basecamp to-do list type. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).  


FAQ
---


##### How do I know my Basecamp 3 account credentials are secure?


The login process uses the OAuth process so your Basecamp credentials are never seen or stored by Domo. This keeps your login secure.


##### How frequently will my data update?


As often as needed.


##### Can this connector pull custom fields?


No. Reports and columns are predefined by Basecamp.


##### What is the difference between the Basecamp and the Basecamp 3 connector?


The Basecamp 3 connector provides more reports and also has more options available to retrieve filtered, customized, and meaningful data.

