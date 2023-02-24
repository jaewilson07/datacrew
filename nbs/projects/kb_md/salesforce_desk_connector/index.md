---
    title: Salesforce Desk Connector
    url: https://domo-support.domo.com/s/article/360043434313
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043434313](https://domo-support.domo.com/s/article/360043434313)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003488
    views: 2,119
    created_date: 2022-10-24 21:13:00
    last updated: 2022-10-24 22:40:00
    ---




Intro
------


Salesforce Desk is an online customer service software and support ticket help desk application for small businesses and fast-growing companies. The Domo Salesforce Desk connector integrates Domo with Salesforce Desk to extract data from the Salesforce Desk API. The connector allows you to retrieve data about articles, cases, customers, and many other Salesforce Desk components. To learn more about the Salesforce Desk API, visit their website. (<http://dev.desk.com/API/using-the-api/#general>)


The Salesforce Desk connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.


You connect to your Salesforce Desk account in the Data Center. This topic discusses the fields and menus that are specific to the Salesforce Desk connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector"). 


Prerequisites
-------------


To connect to your Salesforce Desk account and create a DataSet, you must have the following:


* Your Salesforce Desk customer ID. You can find your customer ID in the URL of your company's Salesforce Desk instance. For example, in the Salesforce Desk URL**<https://yourcompany.desk.com>**, the company ID is yourcompany.
* The email address you use to log in to your Salesforce Desk account.
* The password you use to log in to your Salesforce Desk account.


Connecting to Your Salesforce Desk Account
------------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Salesforce Desk Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains a single field where you enter your Salesforce Desk company ID. You are then taken to the Salesforce Desk OAuth page where you are required to enter your email address and password. Once you have entered valid Salesforce Desk credentials, you can use the same account any time you go to create a new Salesforce Desk DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Report** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select a Salesforce Desk report. The following reports are available:

|  |  |
| --- | --- |
| Articles | Returns data about articles, including subject, body text, etc. |
| Article Translations | Returns data about article translations. |
| Brands | Returns data about brands, including name, creation date, etc. |
| Cases | Returns data about cases, including status, description, customer ID, last modification date and time, etc. |
| Case Attachments | Returns data about case attachments. This includes private case attachments as well as those on replies and the original message. |
| Case Replies | Returns data about case replies. |
| Case Notes | Returns data about case notes. Notes are private internal messages created by agents. |
| Companies | Returns data about companies, including name, ID, domain, etc. |
| Customers | Returns data about customers, including first and last name, company, title, etc. |
| Facebook Accounts | Returns data about Facebook accounts, including name, ID, image URL, etc. |
| Facebook Feeds | Returns data about Facebook feeds, including name, ID, image URL, etc. |
| Facebook Users | Returns data about Facebook users, including image URL, profile, URL, etc. |
| Filters | Returns data about filters, including names, positions, sort directions, etc. |
| Groups | Returns data about groups, including names, IDs, etc. |
| Insights | Return data about insights.    |
| Inbound Mailboxes | Returns data about inbound mailboxes, including mailbox name, type, mail server hostname and port, last update time, etc. |
| Integration URLs | Returns data about integration URLs, including names, rendered URLs, descriptions, etc. |
| Jobs | Returns data about jobs, including job type, status, percent complete, any errors encountered while running jobs, etc. |
| Labels | Returns data about labels, including names, descriptions, type, etc.   |
| Macros  | Returns data about macros, including names, descriptions, folders, etc. |
| Outbound Mailboxes | Returns data about outbound mailboxes, including names, email addresses, mail server hostname and port, etc. |
| Rules | Returns data about rules, including names, descriptions, etc. |
| Site Settings | Returns data about site settings, including names, values, etc. |
| Topics | Returns data about topics, including names, descriptions, etc.  |
| Topic Translations | Used to discover how people interact with your website through the conversion process. You can use this report to get information about which tactic and channel are generating the most revenue and return-on-ad spending.  |
| Twitter Accounts  | Returns data about Twitter accounts, including name, handle, profile image URL, etc.    |
| Twitter Users | Returns data about Twitter users, including handle, number of followers, etc. |
| Users  | Returns user data, including user name, email, avatar URL, level, etc.   |

  |
| Date Filter Criteria | Specify how you want the data in the report to be filtered.
If you select **Created at**, the report is filtered based on when the record was created.
If you select **Updated at**, the report is filtered based on when this record was last updated by any action.   |
| Past Days | Enter the number of days of data to be retrieved. You can use any of the following formats: X, XDay, or XDays, where x is a positive integer. For example, to retrieve data for 30 days you could enter 30, 30Day, or 30Days. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


 

