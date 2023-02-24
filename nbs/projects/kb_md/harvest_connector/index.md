---
    title: Harvest Connector
    url: https://domo-support.domo.com/s/article/360042930434
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042930434](https://domo-support.domo.com/s/article/360042930434)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003419
    views: 1,095
    created_date: 2022-10-24 21:12:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


Harvest offers time tracking, invoicing, expense tracking, and time-based reporting. To learn more about the Harvest API, visit their page ([http://help.getharvest.com/api/](http://help.getharvest.com/api/ "http://help.getharvest.com/api/")).


You connect to your Harvest account in the Data Center. This topic discusses the fields and menus that are specific to the Harvest connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Harvest account and create a DataSet, you must have your Harvest username and password OR a Google account. You must also know the name of your Harvest instance, as this is required for all reports. This is your company name as it appears in your Harvest URL. For example, if your URL was [domo.harvestapp.com](http://domo.harvestapp.com), the instance would be domo.


Connecting to Your Harvest Account
----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Harvest Connector page. The components of the other panes in this page, **Scheduling**and **Name & Describe Your DataSet,** are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


The Domo Harvest connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click **Connect** (or select **Add Account** if you have existing Harvest accounts in Domo) to open the Harvest OAuth screen where you can enter your Harvest username and password. (You can also enter Google credentials to authenticate.) Once you have entered valid credentials, you can use the same account any time you go to create a new Harvest DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




 


**Note:** If you are already logged into Harvest when you connect in Domo, you are authenticated automatically when you click **Add account**. If you want to connect to an account that is different from the one you are logged into, you must first log out of Harvest.



### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Harvest report you want to run. The following reports are available:

|  |  |
| --- | --- |
| All Projects Time Entries | Retrieve time entries for all projects in a specified time period. |
| All Projects Logged Expenses | List all logged expenses for all projects in a specified time period. |
| All Users Logged Expenses | List all expenses logged by users. |
| All Users Time Entries | List all users' time entries. |
| Assignments | List all task assignments for all projects in a specified time period. |
| Clients | List all clients. |
| Contacts | List all contacts. |
| Daily | List all time entries. |
| Expense Categories | List all expense categories. |
| Invoices | List all invoices. |
| Invoice Messages | List invoice messages. |
| Invoice Payments | List invoice payments. |
| Invoice Item Categories | List invoice item categories. |
| People | List all users. |
| Projects | List all projects. |
| Project Expenses | List all projects' logged expenses. |
| Tasks | List all tasks. |
| User Expenses | List all user expenses. |

 |
| Instance | Enter your Harvest instance name. This is your company name as it appears in your Harvest URL. For example, if your URL was [domo.harvestapp.com](http://domo.harvestapp.com), the instance would be domo. |
| Duration  | Select whether you want to pull data for a specific date or a date range.  |
| Report Date  | Select whether the report data is for a specific date or for a relative number of days back from today.  |
| Report Updated Since Date | Select whether the report data is for a specific date or for a relative number of days back from today. |
| Specific Date  | Select the date for the report.  |
| Days Back | Enter the number of past days that should appear in the report.   |
| Start Date | Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in **End Date**.  |
| End Date | Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in **Start Date**.   |
| Specific Start Date | Select the first date in your date range.  |
| Specific End Date | Select the second date in your date range.  |
| Days Back to Start From | Enter the number of the farthest day back that should be represented in the report. Combine with **Days Back to End At** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |
| Days Back to End At | Enter the number of the most recent day back that should be represented in the report. Combine with **Days Back to Start From** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |
| Invoice Status | Select the invoice status you want to filter your report by. If you select **None**, no status is applied. |
| Project ID | Enter the ID(s) of the project(s) you want to pull data for. Separate multiple IDs using commas. |
| User ID | Enter the ID(s) of the user(s) you want to pull data for. Separate multiple IDs using commas. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

