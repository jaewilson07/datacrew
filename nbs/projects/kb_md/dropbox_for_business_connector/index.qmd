---
title: Dropbox for Business Connector
url: https://domo-support.domo.com/s/article/360042930214
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360043434813](https://domo-support.domo.com/s/article/360043434813)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042930214](https://domo-support.domo.com/s/article/360042930214)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003439
views: 2,117
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:42:00
---





 


**Important:** Dropbox has deprecated the Dropbox for Business v1 API and disabled the endpoints as of May 30, 2019. Domo has updated the Dropbox for Business connectors so that our customers can leverage the new Dropbox v2 API. Due to changes in authentication and schema in the new API, we will be deprecating the 2.x version of the Domo Dropbox for Business and Dropbox for Business Advanced connectors. In addition, Domo plans to consolidate the two connectors into a single Dropbox for Business Advanced connector. In order to minimize the interruptions with your Dropbox data, please be aware of the following dates for these changes.
**May 31, 2019**: The 2.x version of the Dropbox for Business and Dropbox for Business Advanced connectors will be deprecated. Customers will still have access to all existing DataSets but will no longer be able to create new ones using the 2.x connectors. The updated 3.x version of the Dropbox for Business Advanced connector will be available for use on this date. In order to create new DataSets, customers will need to create a new Dropbox for Business Advanced DataSet and enter credentials there. Customers should begin migrating/re-creating existing Dropbox for Business and Dropbox for Business Advanced DataSets immediately to use the new 3.x Dropbox for Business Advanced connector.
**June 19, 2019**: The 2.x versions of the Dropbox for Business and Dropbox for Business Advanced connectors will be disabled DataSets created using these versions of the connectors will no longer function. Customers will need to have created new accounts and DataSets using the updated 3.x version of Dropbox for Business Advanced connector by this date.




Intro
-----


Dropbox for Business is a file sharing and storage solution that allows users to share, store, and sync files securely. You can use Domo's Dropbox for Business connector to compile reports about account information, team information, audit log, and team usage statistics. To learn more about the Dropbox for Business API, go to <https://www.dropbox.com/developers/business>.


Domo also includes an advanced Dropbox for Business connector that offers an additional report ("Groups Information") and provides additional filtering options for the "Audit Log" report. For more information, see [Dropbox For Business Advanced Connector](/s/article/360043434813 "Dropbox For Business Advanced Connector").


This topic discusses the fields and menus that are specific to the Dropbox for Business connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").




|  |  |
| --- | --- |
| **Primary Use Cases** | Use this connector to get information about system usage and make governance decisions. |
| **Primary Metrics** | * Storage usage
* Membership
* User activity
 |
| **Primary Company Roles** | Dropbox system administrator |
| **Average Implementation Time** | Less than 1 hour |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 2 |


Prerequisites
-------------


To connect to your Dropbox account and create a Dropbox for Business connector DataSet, you must have the following:


* The account you use to log into your Dropbox account.
* The password you use to log into your Dropbox account.


If you don't have credentials you can get them here: [https://www.dropbox.com/business](https://www.dropbox.com/business "https://www.dropbox.com/business")


Connecting to your Dropbox account
----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Dropbox for Business connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


The Domo Dropbox for Business connector uses OAuth to connect to Dropbox for Business. (Domo does not store or transmit user passwords.) Click **Connect** (or select **Add Account** if you have existing Dropbox accounts in Domo) to open the Dropbox OAuth screen where you can enter the account and password associated with your Dropbox account. After you have entered valid Dropbox credentials, you can use the same account in Domo any time you create a Dropbox for Business DataSet.


You can manage connector accounts in the **Accounts** tab in the **Data Center**. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane includes a single menu from which you select a report type. The following table describes all of the reports you can create using the Dropbox for Business connector:




| **Report** | **Description** |
| --- | --- |
| Audit Log | Accesses the Dropbox for Business audit log for a team. |
| Linked Devices | Retrieves reporting data about a team's linked devices. |
| Members | Lists members of a team. |
| Membership | Retrieves reporting data about a team's membership. |
| Storage usage | Retrieves reporting data about a team's storage usage. |
| Team Information | Retrieves information about a team. |
| User Activity | Retrieves reporting data about a team's user activity. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Troubleshooting
---------------


Check credentials and permissions against the error code received.


FAQ
---


##### How do I know my Dropbox account credentials are secure?


The login process uses the OAuth process, so your Dropbox credentials are never seen or stored by Domo. This keeps your login secure. You can revoke Domo's access to your account at any time.


##### How often can the data be updated?


As often as needed.


##### Are there any API limits that I need to be aware of?


No.


##### What's the difference between this connector and Dropbox For Business Advanced connector?


The Dropbox For Business Advanced connector offers an additional report for "Groups Information" and provides additional filtering options for the "Audit Log" report.

