---
title: Adobe Target Connector
url: https://domo-support.domo.com/s/article/360042926354
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042926354](https://domo-support.domo.com/s/article/360042926354)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003806
views: 2,129
created_date: 2022-10-24 21:15:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


Adobe Target allows you to create A/B tests and embed personalized experiences into your apps. With Domo's Adobe Target Connector you'll see data about campaigns, content and performance. That'll give you confidence in your initiatives as you learn how to package them for your target market. To learn more about the Adobe Target API, visit their page ([https://developers.adobetarget.com/](https://developers.adobetarget.com/ "https://developer.omniture.com")).


You connect to your Adobe Target account in the Data Center. This topic discusses the fields and menus that are specific to the Adobe Target connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Adobe Target account and create a DataSet, you must have the following:


* Client ID (API Key)
* Client Secret
* Technical Account ID
* Organization ID
* Tenant
* Private Key




#### 
To obtain your Client ID:


* Create a new integration in [Adobe I/O Console](https://console.adobe.io/integrations "https://console.adobe.io/integrations"), by following the [Adobe's instructions](https://www.adobe.io/authentication/auth-methods.html#!AdobeDocs/adobeio-auth/master/AuthenticationOverview/ServiceAccountIntegration.md "https://www.adobe.io/authentication/auth-methods.html#!AdobeDocs/adobeio-auth/master/AuthenticationOverview/ServiceAccountIntegration.md").
* You will need to create a public/private key pair, upload the public key to Adobe, and provide the private key to Domo.
* From the **Adobe Integration Overview** page, you can find your **API Key (Client ID), Technical Account ID, Organization ID** and **Client Secret**.
* Domo will use your credentials to create a JSON web token, sign in with your private key, and exchange that JWT token for an access token to access the Adobe Analytics API.
* For more information see [Adobe's instructions](https://www.adobe.io/authentication/auth-methods.html#!AdobeDocs/adobeio-auth/master/AuthenticationOverview/ServiceAccountIntegration.md "https://www.adobe.io/authentication/auth-methods.html#!AdobeDocs/adobeio-auth/master/AuthenticationOverview/ServiceAccountIntegration.md").





#### 
To obtain your Client Secret, Technical Account ID, and Organization ID:


Your Client Secret, Technical Account ID, and Organization ID will appear in the **Adobe Integration Overview** page as you create a new integration in [Adobe I/O Console](https://console.adobe.io/integrations "https://console.adobe.io/integrations"), by following the [Adobe's instructions](https://www.adobe.io/authentication/auth-methods.html#!AdobeDocs/adobeio-auth/master/AuthenticationOverview/ServiceAccountIntegration.md "https://www.adobe.io/authentication/auth-methods.html#!AdobeDocs/adobeio-auth/master/AuthenticationOverview/ServiceAccountIntegration.md").



Connecting to Your Adobe Target Account
---------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Adobe Target Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Adobe Target account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Client ID (API Key) | Enter your client ID. See Prerequisites for more details. |
| Client Secret | Enter your client secret. See Prerequisites for more details. |
| Technical Account ID | Enter your technical account ID. See Prerequisites for more details. |
| Organization ID | Enter your organization ID. See Prerequisites for more details. |
| Tenant | Enter your Adobe tenant name. It is the first part of the URL when you log into Adobe Experience Cloud. Example: <https://tenant-name.marketing.adobe.com> |
| Private Key | Paste the private key for your Adobe integration here, in PEM format. |


Once you have entered valid Adobe Target credentials, you can use the same account any time you go to create a new Adobe Target DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Adobe Target report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Activities Report | Get a list of activities created in your Target account. |
| AP Performance Report | Retrieve the performance report data for the Automated Personalization activity referenced by the provided id. |
| Audiences Report | Returns all available audiences. |
| Audit Report | Retrieve the orders/audit report data for an AB, XT or Autotmated Personalization Activity. |
| Environments Report | List all available environments. |
| Mboxes Report | List all available mboxes for a specific client. |
| New AB Performance Report | Retrieve the performance report data for the AB activity referenced by the provided id, parsed to join the experience name with the report data. |
| New XT Performance Report | Retrieve the performance report data for the Experience activity referenced by the provided id, parsed to join the experience name with the report data. |
| Offers Report | Retrieve the list of previously-created content offers. |
| Properties Report | Retrieve list of all properties. |

 |
| Activity ID | Select the activity ID(s) you want to run the report for. |
| Sublists to Flatten | Select the fields you would like to be expanded in data. This will cause multiple rows to show each object in the field selected. Fields that are not expanded will display \"List\" instead of data. Flattening all sub lists leads to an out of memory error. |
| Report Dates | Select the date format for your data. |
| Single Date | Select whether the report data is for a specific date or for a relative number of days back from today. |
| Specific Date | Select the specific date using the date selector. |
| Relative Date | Enter the number of days back that you would like to get data for in the ****Days Back**** field. Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past. |
| Date Range | Select the specific or relative date range. |
| Start Date - Specific | Select the first date in your date range using the date selector. |
| End Date - Specific | Select the last date in your date range using the date selector. |
| Start Date - Relative | Enter the number of days back that you would like to get data from (start day). Combine with ****************End Date**************** to create a range of represented days.
For example, if you entered 10 for ****************Start Date**************** and 5 for ****************End Date****************, the report would contain data for 10 days ago up until 5 days ago. |
| End Date - Relative | Enter the number of days back that you would like to get data to (end day). Combine with ****************Start Date****************to create a range of represented days.
For example, if you entered 10 for ****************Start Date**************** and 5 for ****************End Date****************, the report would contain data for 10 days ago up until 5 days ago. |
| Time Period | Specify the time period that you would like to receive data for. |
| Starting Day of the Week | Select the day you would like your week to start with. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

