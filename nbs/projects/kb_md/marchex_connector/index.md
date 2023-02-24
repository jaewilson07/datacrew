---
    title: Marchex Connector
    url: https://domo-support.domo.com/s/article/360043431533
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043431533](https://domo-support.domo.com/s/article/360043431533)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003745
    views: 1,077
    created_date: 2022-10-24 21:14:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


Marchex is a mobile advertising analytics platform that connects online behavior to real-world, offline actions. To learn more about the Marchex API, visit their page ([http://call-ad-network-api.marchex.com/api](http://call-ad-network-api.marchex.com/api "http://call-ad-network-api.marchex.com/api")).


You connect to your Marchex account in the Data Center. This topic discusses the fields and menus that are specific to the Marchex connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Marchex account and create a DataSet, you must have a Marchex username and password.


Connecting to Your Marchex Account
----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Marchex Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Marchex account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Username | Enter your Marchex username. |
| Password | Enter your Marchex password. |


Once you have entered valid Marchex credentials, you can use the same account any time you go to create a new Marchex DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Marchex report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Account List  | Gets a list containing account information for the parent account and all client accounts associated with the current user. |
| Acccount Membership List | Gets a list containing account membership information for the specified user. |
| Account Report Scheduled List | Gets information about all scheduled reports for the specified account, and optionally, information about scheduled reports for client accounts. |
| Ad Campaign | Gets a list of ad campaigns. |
| Ad Group List  | Lists the ad groups associated with the specified account.  |
| Ad Image Replace List  | Lists the proxy image replacement rules for the specified ad campaign. |
| Ad Play File List  | Lists the playfiles for the specified ad campaign. |
| Ad Rewrite Proxy List  | Lists the proxy rewrite rules associated with the specified proxy.  |
| Ad Tags List  | Lists the tags for the specified ad campaign. |
| Call Forwarding List   | Lists the call forwarding entries for the specified ad campaign. |
| Call Search  | Search all calls logged for an account. |
| Click To Call List | Lists the call log entries of click-to-call calls for the specified click-to-call ad campaign. |
| Image List  | Lists the images associated with the specified account.  |
| JavaScript Rewrite List  | Lists the JavaScript rewrite rules associated with the specified account. |
| Number List  | Lists the phone numbers associated with the specified account.  |
| Number Order List  | Lists the pending number orders for the specified account.  |
| Number Search NPA List | Matches and lists available telephone numbers, up to the specified quantity, that match the specified NPA code  |
| Number Search NPA NXX Associated List  | Matches and lists available telephone numbers, up to the specified quantity, that either exactly match or are in the same rate center as the specified NPA and NXX code combination. |
| Proxy Edit List  | Lists the text replaces associated with the specified proxy.  |
| Proxy List  | Lists the proxies associated with the specified account.  |
| Proxy Rewrite List  | Lists the proxy rewrite rules associated with the specified proxy.  |
| Users List  | Lists the active users associated with the specified account.  |
| Voice XML Call List  | Lists the calls handled by a VoiceXML application that occurred between the specified start and end date and times, for the specified account.  |
| Voice XML Call Recording List | Lists the recordings for the specified VoiceXML call.  |

 |
| Account Name | Select the account you want to retrieve data for. |
| Ad Campaign Name | Select the ad campaign you want to retrieve data for. |
| Proxy Domain Name | Select the proxy you want to retrieve data for. |
| User Name | Select the user you want to retrieve data for. |
| Call ID | Select the call you want to retrieve data for. |
| Include Sub Accounts | Select **True** if you want your report to include data about sub accounts; otherwise select **False**. |
| NPA | Enter the NPA you want to retrieve data for. |
| NXX | Enter the NXX you want to retrieve data for. |
| Quantity | Enter the quantity you want to retrieve data for. |
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


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

