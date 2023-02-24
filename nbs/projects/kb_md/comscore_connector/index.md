---
title: comScore Connector
url: https://domo-support.domo.com/s/article/360042926554
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042926554](https://domo-support.domo.com/s/article/360042926554)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003784
views: 2,108
created_date: 2022-10-24 21:15:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


comScore is an Internet analytics company providing marketing data and analytics to many of the world's largest enterprises, agencies, and publishers. You can use Domo's comScore connector to pull data about data download requests, event filters, funnels, and report items. For information about the comScore API, see <http://dax-files.comscore.com/digitalanalytix/US/onecall_api/help.html#datadownloadrequest>.




Ben Green
Sep 29, 2016, 9:32 AM


The comScore connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.




This topic discusses the fields and menus that are specific to the comScore connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your comScore account and create a comScore DataSet, you must have the following:


* The client name of your comScore account.
* The username of your comScore account.
* The password of your comScore account.


Connecting to Your comScore Account
-----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the comScore connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your comScore account. The following table describes what is needed for each field:  




| **Field** | **Description** |
| --- | --- |
| Client Name | Enter the client name for your comScore account. This is usually the name of your company. Example: domo |
| Username  | Enter the username for your comScore account.  |
| Password | Enter the password for your comScore account.  |


Once you have entered valid comScore credentials, you can use the same account anytime you go to create a new comScore DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane includes a primary menu, **Report**, and other options that appear depending on the report you select.




| **Option** | **Description** |
| --- | --- |
| Report | Select the comScore report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Credits | Retrieves the number of credits remaining. |
| Event Filter List  | Retrieves the event filters in Digital Analytix.
When using this report, enter the specific collections in the **Event Filter Collection** to limit the output. If unspecified, the library is used in searching for the item. Separate collection and subcollection names with the | character.   |
| Funnel List  | Lists the funnels available to this user.  |
| Report Item List  | Lists the report items.  |
| Report Item Properties  | Lists the properties of a report item.
When using this report, select the ID of the report item in the **Report Item ID** field. |
| Report Items  | Retrieves the content of a report item. |
| Segment List  | Lists the segments in Digital Analytix.
When using this report, enter the collections for the segment in the **Segment Collection** field. Separate collection and subcollection names with the | character.  |
| Site List  | Lists sites the user has permission to access.   |
| Visit Filter List  | Lists the visit filters in Digital Analytix.
When using this report, enter the collections to use to limit the output in the **Visit Filter Collection** field. If unspecified, the library is used in searching for the item. Separate collection and subcollection names with the | character.   |

  |
| Event Filter Collection | Enter the event filter collection you want to retrieve. Separate collection and subcollection names with the | character.   |
| Report Item ID  | Select the ID of the report item you want to retrieve information for.  |
| Site  | Select the site or sites you want to retrieve information for. |
| Duration  | Specify whether the data in this report is for a single date or a range of dates. |
| Report Date  | Specify whether the data is for a specific or relative date. Choose **Relative** if you always want the report to retrieve data for a given number of days back (which you specify in **Days Back**) from the current date. For example, if you enter 5 for **Days Back** and set the DataSet to update daily, each new day the report will update to show information for the date 5 days in the past.    |
| Select Specific Date  | Select the date you want to retrieve data for.   |
| Days Back  | Enter the number of days back from the current date that will be presented in the report.  |
| Start Date  | Specify whether the first date in your date range is a specific or relative date. Choose **Relative** if you always want the report to retrieve data for a given number of days back (which you specify in **Days Back to Start From**) from the current date. If you choose **Relative** here, you should also choose **Relative** for **End Date** and specify a value for **Date Back to End At**. 
For example, if you enter 10 for **Days Back to Start From**and 5 for **Days Back to End At**and you set the DataSet to update daily, each new day the report will update to show information for 5 to 10 days in the past.     |
| End Date  | Specify whether the last date in your date range is a specific or relative date. Choose **Relative** if you always want the report to retrieve data for a given number of days back (which you specify in **Days Back to End At**) from the current date. If you choose **Relative** here, you should also choose **Relative** for **Start Date** and specify a value for **Date Back to Start From**. 
For example, if you enter 10 for **Days Back to Start From**and 5 for **Days Back to End At**and you set the DataSet to update daily, each new day the report will update to show information for 5 to 10 days in the past.      |
| Select Specific Start Date  | Select the first date in your date range.   |
| Select Specific End Date  | Select the last date in your date range.   |
| Days Back to Start From  | Enter the number of days before the current date to use as the start date.  
For example, if you enter 10 for **Days Back to Start From** and 5 for **Days Back to End At** and you set the DataSet to update daily, each day the report updates to show information for a 5-day range, starting 10 days ago and ending 5 days ago.  |
| Days Back to End At  | Enter the number of days before the current date to use as the end date.  
For example, if you enter 10 for **Days Back to Start From** and 5 for **Days Back to End At** and you set the DataSet to update daily, each day the report updates to show information for a 5-day range, starting 10 days ago and ending 5 days ago.   |
| Segment Collection  | Enter the segment collections you want to retrieve information for. Separate multiple collections with |.   |
| Visit Filter Collection  | Enter the visit filter collections you want to retrieve information for. Separate multiple collections with |.  |
| Time Interval Code  | Select the time interval for the report.  |
| Language  | Select the language for the report.  |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

