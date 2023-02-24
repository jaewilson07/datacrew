---
title: FreshBooks Connector
url: https://domo-support.domo.com/s/article/360042928354
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042928354](https://domo-support.domo.com/s/article/360042928354)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003627
views: 1,080
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:41:00
---



Intro
-----


FreshBooks is an online accounting software package designed to simplify and automate tasks like invoicing, expense organization, and time keeping. To learn more about the FreshBooks API, visit their page ([https://www.freshbooks.com/developers](https://www.freshbooks.com/developers "https://www.freshbooks.com/developers")).


You connect to your FreshBooks account in the Data Center. This topic discusses the fields and menus that are specific to the FreshBooks connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your FreshBooks account and create a DataSet, you must have your FreshBooks username and password.


Connecting to Your FreshBooks Account
-------------------------------------


This section enumerates the options in the ****Credentials**** and ****Details**** panes in the FreshBooks Connector page. The components of the other panes in this page, ****Scheduling****and ****Name & Describe Your DataSet,**** are universal across most connector types and are discussed in greater length in [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


The Domo FreshBooks connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click ****Connect**** (or select ****Add Account**** if you have existing FreshBooks accounts in Domo) to open the FreshBooks OAuth screen where you can enter your FreshBooks credentials. Once you have entered valid FreshBooks credentials, you can use the same account any time you go to create a new FreshBooks DataSet. You can manage connector accounts in the ****Accounts**** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




 

****Note:**** If you are already logged into FreshBooks when you connect in Domo, you are authenticated automatically when you click ****Add account****. If you want to connect to an account that is different from the one you are logged into, you must first log out of FreshBooks.  



### Details Pane


This pane contains a primary ****Reports**** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the FreshBooks report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Clients | Returns a list of clients. A client is a resource representing an entity you send invoices to. |
| Estimates | Returns a list of estimates. Estimates provide owners and clients with a way to agree and negotiate on the price and scope of work before it commences. |
| Expense Category | Returns a list of expense categories. These group expenses together to aid in expense tracking. |
| Expenses | Returns a list of expenses. Expenses are used to track expenditures your business incurs. |
| Gateways | Returns a list of gateways. These are also referred to as Payment Processors. The information returned by these endpoints specifies what payment processors are enabled for your businesses. |
| Identity | Returns OAuth authentication, preferences, permissions, roles, and business information. |
| Invoices | Returns a list of invoices. Invoices are sent to clients and detail specific goods or services performed or provided by the Administrator of their System, and the amount that Client owes to the Admin. |
| Items | Returns a list of items. Items are stored from invoice lines to make invoicing easier in the future. |
| Payments | Returns payment information. Payments are a record of the payments made on your invoices. |
| Projects | Returns a list of projects. These are used to track business projects and related information such as hourly rate, service(s) being offered, projected end date, etc. |
| Staff | Returns a list of employees. |
| Systems | Returns accounting systems information. An accounting system represents an entity that can send invoices. |
| Tasks | Returns a list of tasks. Tasks in Freshbooks represent services that your business offers to clients. Tasks are used to keep track of details of the service such as name and hourly rate. |
| Taxes | Returns tax information.  |
| Time Entries | Returns time entries. Time entries represent time spent working for a client or project. |

 |
| Account Name | Select the name of the account you want to retrieve information for. |
| Business Name | Select the name of the business you want to retrieve information for. |
| System Name | Select the name of the system you want to retrieve information for. |
| Duration  | Select whether you want to pull data for a specific date or a date range.  |
| Report Date  | Select whether the report data is for a specific date or for a relative number of days back from today.  |
| Select Specific Date  | Select the date for the report.  |
| Days Back | Enter the number of past days that should appear in the report.   |
| Start Date | Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in **End Date**.  |
| End Date | Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in **Start Date**.   |
| Select Specific Start Date | Select the first date in your date range.  |
| Select Specific End Date | Select the second date in your date range.  |
| Days Back to Start From | Enter the number of the farthest day back that should be represented in the report. Combine with **Days Back to End At** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |
| Days Back to End At | Enter the number of the most recent day back that should be represented in the report. Combine with **Days Back to Start From** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


FAQs
----


##### How do I know my Freshbook credentials are secure?


The login process uses the OAuth process, so your credentials are never seen or stored by Domo. You can revoke Domo's access to your account at any time.


##### Can I use the same account to create multiple DataSets?


Yes.


##### How often can the data be updated?


As often as needed.


##### Are there any API limits I should be aware of?


No.

