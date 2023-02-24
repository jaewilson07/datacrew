---
title: Box Analytics Advanced Connector
url: https://domo-support.domo.com/s/article/360042929194
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360043433713](https://domo-support.domo.com/s/article/360043433713)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042929194](https://domo-support.domo.com/s/article/360042929194)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003541
views: 2,141
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


Box is an online file sharing and personal content cloud management service for businesses. You can use Domo's Box Analytics Advanced connector to pull data about files and folders, users, enterprise events, and single user events from Box. Box Analytics Advanced connector allows more filtering options for 'File and Folder' and 'Enterprise Events' reports. To learn more about the Box API, go to  [https://docs.box.com/v2.0/reference#events](https://docs.box.com/v2.0/reference#events "https://docs.box.com/v2.0/reference#events").


The Box Analytics Advanced connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.


This connector is nearly the same as the standard [Box Analytics Connector](/s/article/360043433713 "Box Analytics Connector"). The difference is that the advanced version allows more filtering options for the "File and Folder" and "Enterprise Events" reports. 


This topic discusses the fields and menus that are specific to the Box Analytics Advanced connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Best Practices
--------------


The data that comes from this connector is a stream of events occurring in your company Box account. While helpful, the data may take a while to analyze and understand before becoming useful.


Prerequisites
-------------


To connect to your Box account and create a Box Analytics Advanced DataSet, you must have the following:


* The email address you use to log into your Box account.
* The password you use to log into your Box account.




 


**Note:** While anyone with a Box account can use this connector, if you are not an Admin you will only be able to see one report about your own usage, which may not be helpful.



Connecting to Your Box Account
------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Box Analytics Advanced connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


The Domo Box Analytics Advanced connector uses OAuth to connect to Box. Click **Connect** (or select **Add Account** if you have existing Box Analytics Advanced accounts in Domo) to open the Box OAuth screen where you can enter the email address and password associated with your Box account. After you have entered valid Box credentials, you can use the same account in Domo any time you create a Box Analytics Advanced DataSet.


You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


In this pane, you can select from any of four Box Analytics report types to import into Domo. Different configuration options may then appear depending on the selected report type. 




| Menu | Description |
| --- | --- |
| Report | Select the Box Analytics report. The following reports are available:

|  |  |
| --- | --- |
| File and Folder Report | Returns details of files and folders in the account. |
| User Report | Returns details about account users. For an individual user, this includes only the user's own user information and content. For an enterprise administrator, this includes both the individual user's information along with that of any other users in the administrator’s enterprise account. |
| Enterprise Event Report | Returns the full history of an enterprise account. |
| Single User Event Report | Returns a list of all the events relevant to an individual user's Box account. |

  |
| Events to Filter On | Select all of the event types you want to import data for. |
| Duration  | Select whether you want to pull data for a specific date or a range of dates. You can also choose **Other**, which lets you select whether to retrieve all data or just new data since the last successful run.   |
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
| Retrieve All Data Or Just New Data Since Last Successful Run | Select how much data you want to retrieve.
**All data** returns all available data.
**Since the last successful run** returns data since the last successful run. If there has never been a successful run, the **All data** option will run once. |
| Use Short Column Names | Select the option for column name length. If you select **No**, the long and default column names will be displayed in the report. If you select **Yes**, the short column names will be displayed. |
| Folder ID  | Enter the ID of the Box folder that you would like to pull information for (e.g. 342963669). If you leave this blank, information will be pulled for all files and folders. |
| Fields to Include | Select all field parameters you want to be included in your report. |
| Get Image Thumbnail | Select **Yes** if you want to retrieve the image's thumbnail. The column "ID" is required. |
| Include Subfolders | Select **Yes** if you want to retrieve results for files in subfolders. |
| Squash Arrays (Optional) | Check this box if you want to squash arrays. This increases the size of columns in your report. |


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

