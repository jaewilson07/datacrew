---
title: Base CRM Connector
url: https://domo-support.domo.com/s/article/360042927654
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042927654](https://domo-support.domo.com/s/article/360042927654)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003684
views: 1,183
created_date: 2022-10-24 21:14:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


Base CRM provides a web-based all-in-one sales platform that features tools for email, phone dialing, pipeline management, forecasting, and reporting. Use Domo's Base CRM connector to retrieve data gathered by Base CRM, including lists of contacts, deals, leads, orders, notes, and so on. To learn more about the Base CRM API, visit their page ([https://developers.getbase.com/](https://developers.getbase.com/ "https://developers.getbase.com/")).


You connect to your Base CRM account in the Data Center. This topic discusses the fields and menus that are specific to the Base CRM connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Base CRM account and create a DataSet, you must have a Base CRM username and password.


Connecting to Your Base CRM Account
-----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Base CRM Connector page. The components of the other panes in this page, **Scheduling**and **Name & Describe Your DataSet,** are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


The Domo Base CRM connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click **Connect** (or select **Add Account** if you have existing Base CRM accounts in Domo) to open the Base CRM OAuth screen where you can enter your Base CRM credentials. Once you have entered valid Base CRM credentials, you can use the same account any time you go to create a new Base CRM DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




 

**Note:** If you are already logged into Base CRM when you connect in Domo, you are authenticated automatically when you click **Add account**. If you want to connect to an account that is different from the one you are logged into, you must first log out of Base CRM.



### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Base CRM report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Associated Contacts | Returns all contacts associated with a given deal. |
| Calls | Returns all available calls of the user. |
| Call Upsert | This report returns a stream of historical calls and data for both leads and contacts on the first run, and then every subsequent run will Upsert the last 72 hours of call data. |
| Call Outcomes | Returns all available call outcomes of the user. |
| Contacts | Returns all contacts of the authenticated user. |
| Collaborations | Returns all available collaborations of the user. |
| Deals | Returns all of the authenticated user's deals. |
| Deals And Stages | Returns all available deals and stages data to the user. |
| Deal Sources | Returns all deal sources for the authenticated user. |
| Leads | Returns all of the authenticated user's leads. |
| Lead Sources | Returns all of the authenticated user's lead sources. |
| Line Items | Returns all line items associated with a given order. |
| Loss Reasons | Returns a list of loss reasons for the authenticated user. |
| Notes | Returns all of the authenticated user's notes. |
| Orders | Returns all of the authenticated user's orders. |
| Pipelines | Returns all of the authenticated user's pipelines. |
| Products | Returns all products from the catalog. |
| Stages | Returns all of the authenticated user's stages. |
| Tags | Returns a list of tags available to the authenticated user. |
| Tasks | Returns all of the authenticated user's tasks. |
| Text Messages | Returns available text messages of the user. |
| Users | Returns a list of users. |
| Visits | Returns information about the visit. |
| Visit Outcomes | Returns information about the outcomes of the visit. |

 |
| Deal ID | Enter the ID of the deal you want to retrieve information for. |
| Customer Status (Optional) | Select a customer status to filter your results by. |
| Prospect Status (Optional) | Select a prospect status to filter your results by. |
| Deal Hot Status (Optional) | Select a deal hot status to filter your results by. |
| Status (Optional) | Enter a lead status to filter your results by. |
| Organization Name (Optional) | Enter an organization name to filter your results by. |
| Last Name (Optional) | Enter the last name of a lead to filter your results. |
| Order ID | Enter the ID of the order you want to retrieve information for. |
| Resource Type | Select the resource type you want to retrieve information for. |
| Active Record Status | Select **Yes** to retrieve only active records; otherwise select **No**. |
| Tasks Type | Select whether you want to retrieve data for floating or related tasks. |
| Completed Tasks | Select **Yes**to retrieve data only for completed tasks; otherwise select **No**. |
| Overdue Tasks | Select **Yes**to retrieve data only for overdue tasks; otherwise select **No**. |
| Tasks Reminders | Select **Yes**to retrieve data only for tasks with reminders; otherwise select **No**. |
| User Status | Select whether to pull data for active or inactive users. |
| User Role | Select **Admin** to pull data for only Admin-level users; otherwise select **User**. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

