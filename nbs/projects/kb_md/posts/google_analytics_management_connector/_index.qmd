---
title: Google Analytics Management Connector
url: https://domo-support.domo.com/s/article/360042929274
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042929274](https://domo-support.domo.com/s/article/360042929274)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003530
views: 2,140
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


The Analytics Management API allows programmatic access to the Google Analytics configuration data. Use Domo's Google Analytics Management Connector to generate reports to list all Account, Property and View (Profile) information for a user, or determine which goals are active, and to access their configured names. A Google Analytics Account is organized into several levels and the Management API Connector provides a way of interacting with the entities at each level. To learn more about the Google Analytics Management API, visit <https://developers.google.com/analytics/devguides/config/mgmt/v3>.


You connect to your Google account in the Data Center. This topic discusses the fields and menus that are specific to the Google Analytics Management connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Google account and create a Google Analytics Management DataSet, you must have your Google credentials. 


Connecting to Your Google Account
---------------------------------


This section enumerates the options in the ****Credentials**** and ****Details**** panes in the Google Analytics Management Connector page. The components of the other panes in this page, ****Scheduling****and ****Name & Describe Your DataSet,**** are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


The Domo Google Analytics Management connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click ****Connect**** (or select ****Add Account**** if you have existing Google accounts in Domo) to open the Google OAuth screen where you can enter your Google credentials. Once you have entered valid Google credentials, you can use the same account any time you go to create a new Google Analytics Management DataSet. You can manage connector accounts in the ****Accounts**** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




 


**Note:** If you are already logged into Google when you connect in Domo, you are authenticated automatically when you click **Add account**. If you want to connect to an account that is different from the one you are logged into, you must first log out of Google.



### Details Pane


This pane contains a primary ****Reports**** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Google Analytics Management report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Accounts | Retrieves all accounts that the user has access to. |
| Account Summaries | Retrieves account summaries (lightweight flattened tree comprised of accounts/properties/profiles) that the user has access to. |
| Account User Links | Retrieves account-user links for a given account. |
| Ad Words Links | Retrieves webProperty- Google Ads links for a given web property. |
| Custom Data Sources | Retrieves custom data sources that the user has access to. |
| Custom Dimensions | Retrieves custom dimensions that the user has access to. |
| Custom Metrics | Retrieves custom metrics that the user has access to. |
| Experiments | Retrieves experiments that the user has access to. |
| Filters | Retrieves all filters for an account. |
| Goals | Retrieves goals that the user has access to. |
| Profile Filter Links | Retrieves all profile filter links for a profile. |
| Profile User Links | Retrieves profile-user links for a given view (profile). |
| Profiles | Retrieves views (profiles) that the user has access to. |
| Remarketing Audiences | Retrieves re-marketing audiences that the user has access to. |
| Segments | Retrieves segments that the user has access to. |
| Uploads | Retrieves uploads that the user has access to. |
| Web Properties | Retrieves properties that the user has access to. |
| Web Property User Links | Retrieves web property user links for a given web property. |

 |
| Accounts | Select the accounts to query data from. |
| Web Properties | Select the web properties to query data from. |
| Profiles | Select the profiles to query data from. |
| Web Property Selection Type | Selecting **All Web Properties** will retrieve data for all the web properties that the user has access to. Selecting **Specific Web Properties** will retrieve data for the selected web properties. |
| Custom Data Sources | Select the custom data sources to query data from. |
| Account Selection Type | Selecting **All Accounts** will retrieve data for all accounts to which the user has access. Selecting **S****pecific Accounts** will retrieve data for the selected accounts. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

