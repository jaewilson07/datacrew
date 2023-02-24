---
    title: HarvestApp Connector
    url: https://domo-support.domo.com/s/article/4405765083543
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/4405765083543](https://domo-support.domo.com/s/article/4405765083543)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003218
    views: 1,073
    created_date: 2022-10-24 21:11:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


Harvest provides time tracking and online invoicing tools and services for freelancers and small businesses. The Domo HarvestApp connector allows you to get your Harvest data into Domo and begin analyzing data to optimize hiring and invoicing decisions. To learn more about the Harvest API, visit their page ([http://help.getharvest.com/api/](http://help.getharvest.com/api/ "http://help.getharvest.com/api/")).


You connect to your Harvest account in the Data Center. This topic discusses the fields and menus that are specific to the HarvestApp connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Harvest account and create a DataSet, you must have your Harvest username and password. Alternatively, you can use your Google account to login.


Connecting to Your Harvest Account
----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the HarvestApp Connector page. The components of the other panes in this page, **Scheduling**and **Name & Describe Your DataSet,** are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


The Domo HarvestApp connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click **Connect** (or select **Add Account** if you have existing Harvest accounts in Domo) to open the Harvest OAuth screen where you can enter your Harvest username and password. (You can also enter Google credentials to authenticate.) Once you have entered valid credentials, you can use the same account any time you go to create a new HarvestApp DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




 


**Note:** If you are already logged into Harvest when you connect in Domo, you are authenticated automatically when you click **Add account**. If you want to connect to an account that is different from the one you are logged into, you must first log out of Harvest.



### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the HarvestApp report you want to run. The following reports are available:

|  |  |
| --- | --- |
| All Clients | Retrieve a list of all clients. Using the date selector, you can retrieve all clients updated after the specified date. |
| All Contacts | Retrieve a list of all contacts. Using the date selector, you can retrieve all contacts updated after the specified date. |
| All Expenses | Retrieve a list of all expenses. Using the date selector, you can retrieve all expenses updated after the specified date. |
| All Projects | Retrieve a list of all projects. Using the date selector, you can retrieve all projects updated after the specified date. |
| All Roles | Retrieve a list of all roles. |
| All Tasks | Retrieve a list of all tasks. Using the date selector, you can retrieve all tasks updated after the specified date. |
| All Task Assignments | Retrieve a list of all task assignments. Using the date selector, you can retrieve all task assignments updated after the specified date. |
| All Time Entries | Retrieve a list of all time entries. Using the date selector, you can retrieve all time entries updated after the specified date. |
| All User Assignments | Retrieve a list of all user assignments. Using the date selector, you can retrieve all user assignments updated after the specified date. |
| All Users | Retrieve a list of all all users. Using the date selector, you can retrieve all users updated after the specified date. |
| All Project Assignments | Retrieve a list of all project assignments. Using the date selector, you can retrieve all project assignments updated after the specified date for all users. |
| Company | Retrieve info about your current company. |
| Expense Categories | Retrieve a list of expense categories. Using the date selector, you can retrieve all expense categories updated after the specified date. |
| Invoices | Retrieve a list of invoices. Using the date selector, you can retrieve all invoices updated after the specified date. |
| Invoice Item Categories | Retrieve a list of invoice item categories. Using the date selector, you can retrieve all invoice item categories updated after the specified date. |
| Invoice Messages | Retrieve a list of invoice messages. Using the date selector, you can retrieve all invoice messages for each invoice updated after the provided date. |
| Invoice Payments | Retrieve a list of invoice payments. Using the date selector, you can retrieve all invoice payments for each invoice updated after the provided date. |

 |
| Harvest Account | Select the Harvest account you would like to retrieve data from. |
| Duration  | Harvest allows you to select a single updated since date. |
| Report Updated Since Date | Select the report date using relative or specific dates. Relative meaning number of days from today or a specific date using the date selector |
| Specific Date  | Select the date for the report.  |
| Days Back | Enter the number of past days that should appear in the report.   |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


FAQs
----


#### What version of the HarvestApp API does this connector use?


This connector uses version 2 of the HarvestApp API (<https://api.harvestapp.com/v2/>).


#### Which endpoint(s) does each report call in this connector?




| Report Name | Endpoint URL |
| --- | --- |
| All Clients | /clients |
| All Contacts | /contacts |
| All Expenses | /expenses |
| All Projects | /projects |
| All Roles | /roles |
| All Tasks | /tasks |
| All Task Assignments | /projects/{projectId}/task\_assignments |
| All Time Entries | /time\_entries |
| All User Assignments | /projects/{projectId}/user\_assignments |
| All Users | /users |
| All Project Assignments | /users/{userId}/project\_assignments |
| Company | /company |
| Expense Categories | /expense\_categories |
| Invoices | /invoices |
| Invoice Item Categories | /invoice\_item\_categories |
| Invoice Messages | /invoices/{invoiceId}/messages |
| Invoice Payments | /invoices/{invoiceId}/payments |


#### What kind of credentials do I need to power up this connector?


You need your Harvest email id and password, or Google account credentials to power up this connector.


#### How do I know my login credentials are secure?


The login process uses the OAuth process, so your credentials are never seen or stored by Domo. This keeps your login secure. You can revoke Domo's access to your account at any time.


#### Can I use the same account multiple times to create datasets?


Yes


#### When I click 'Add Account', why am I getting automatically validated without needing to enter credentials?


If you are already logged into Harvest when you connect to Domo, you are authenticated automatically as you click Add account. If you want to connect to an account that is different from the one you are logged into, you must first log out of Harvest.


#### How often can the data be updated?


As often as needed.


#### Are there any API limits that I need to be aware of?


Harvest limits 100 requests per 15 seconds.

