---
    title: Box Analytics Connector
    url: https://domo-support.domo.com/s/article/360043433713
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042929194](https://domo-support.domo.com/s/article/360042929194)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043433713](https://domo-support.domo.com/s/article/360043433713)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003543
    views: 2,136
    created_date: 2022-10-24 21:13:00
    last updated: 2022-10-24 22:42:00
    ---



Intro
-----


Box is an online file sharing and personal content cloud management service for businesses. You can use Domo's Box Analytics connector to pull data about files and folders, users, enterprise events, and single user events from Box. To learn more about the Box API, go to  [https://docs.box.com/v2.0/reference#events](https://docs.box.com/v2.0/reference#events "https://docs.box.com/v2.0/reference#events") .


The Box Analytics connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.


This connector is nearly the same as the [Box Analytics Advanced Connector](/s/article/360042929194 "Box Analytics Advanced Connector"). The difference is that the advanced version allows more filtering options for the "File and Folder" and "Enterprise Events" reports. 


This topic discusses the fields and menus that are specific to the Box Analytics connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").




|  |  |
| --- | --- |
| **Primary Use Cases** | This connector is best suited for IT Enterprise Admins who need to gain insight on how their company Box account is being used. |
| **Primary Metrics** | The connector gives great insight into how often users are logging in, downloading, viewing, and other general adoption metrics. |
| **Primary Company Roles** | IT Administrator |
| **Average Implementation Time** | 10 hours |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 7 |


Best Practices
--------------


The data that comes from this connector is a stream of events occurring in your company Box account. While helpful, the data may take a while to analyze and understand before becoming useful.


Prerequisites
-------------


To connect to your Box account and create a Box Analytics DataSet, you must have the following:


* The email address you use to log into your Box account.
* The password you use to log into your Box account.




 


**Note:** While anyone with a Box account can use this connector, if you are not an Admin you will only be able to see one report about your own usage, which may not be helpful.



Connecting to Your Box Account
------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Box Analytics connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


The Domo Box Analytics connector uses OAuth to connect to Box. Click **Connect** (or select **Add Account** if you have existing Box Analytics accounts in Domo) to open the Box OAuth screen where you can enter the email address and password associated with your Box account. After you have entered valid Box credentials, you can use the same account in Domo any time you create a Box Analytics DataSet.


You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane includes a single menu from which you select a Box Analytics report.




| **Menu** | **Description** |
| --- | --- |
| Report | Select the Box Analytics report. The following reports are available:

|  |  |
| --- | --- |
| File and Folder Report | Returns details of files and folders in the account. |
| User Report | Returns details about account users. For an individual user, this includes only the user's own user information and content. For an enterprise administrator, this includes both the individual user's information along with that of any other users in the administrator’s enterprise account. |
| Enterprise Event Report | Returns the full history of an enterprise account. |
| Single User Event Report | Returns a list of all the events relevant to an individual user's Box account. |

  |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").  


Troubleshooting
---------------


Verify that you are an Admin in your company's Box instance. Otherwise you will not be able to pull much data using this connector.


FAQ
---


##### How do I know that my Box account credentials are secure?


The login process uses the OAuth process, so your Box credentials are never seen or stored by Domo. This keeps your login secure. You can revoke Domo's access to your account at any time.


##### How often can the data be updated?


Datasets should be set to update once every 15 minutes.


##### Are there any API limits that I need to be aware of?


Box allows roughly 10 queries per second for each user. Note that a single dataset run may require multiple queries.


##### Why am I not able to pull maximum data?


Make sure that you are an Admin in your company's Box instance. Otherwise you may not be able to pull much data using this connector.


##### What is the difference between the Box Analytics connector and the Box Advanced Analytics connector?


Box Analytics Advanced connector allows more filtering options for 'File and Folder' and 'Enterprise Events' reports. 

