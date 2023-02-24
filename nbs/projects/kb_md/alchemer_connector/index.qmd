---
title: Alchemer Connector
url: https://domo-support.domo.com/s/article/360043435293
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043435293](https://domo-support.domo.com/s/article/360043435293)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003394
views: 2,164
created_date: 2022-10-24 21:12:00
last updated: 2022-10-24 22:41:00
---



Intro
-----


Alchemer (formerly known as SurveyGizmo) is a customer-experience solution that helps you transform to a truly customer-centric organization. It's not always easy to see how the customer feedback opinions correlate with your business decisions. To get at the story behind the surveys, you need context. Domo's cloud-based platform brings all your data sources together in one survey dashboard. See survey results side-by-side with data from marketing, operations, finance, or anywhere else to learn what drove those responses. Use Domo's Alchemer connector to pull data about survey campaigns, statistics, respondents, and responses for all surveys in your account or for a single survey. Get reports on your surveys made to your exact specifications—what you want to see, how you want to see it. To learn more about the Alchemer API, go to [https://apihelp.surveygizmo.com](https://apihelp.surveygizmo.com "https://apihelp.surveygizmo.com").


The Alchemer connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.


This topic discusses the fields and menus that are specific to the Alchemer connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").




|  |  |
| --- | --- |
| **Primary Use Cases** | This connector enables you visualize the responses from a survey quickly, instead of having to read through each response. Most users who use this connector pull the "Survey Response" report. |
| **Primary Company Roles** | * Marketing roles
* HR roles
 |
| **Average Implementation Time** | 10 minutes |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 2 |


Best Practices
--------------


Set your report to "Append" instead of "Replace" so that each new run of the DataSet will add onto the data from the previous run.


Prerequisites
-------------


To connect to your Alchemer account and create a DataSet, you must have the Alchemer API key and API secret. You can find these credentials for your account by following these instructions: [https://apihelp.surveygizmo.com/help/authentication](https://apihelp.surveygizmo.com/help/authentication "https://apihelp.surveygizmo.com/help/authentication")


Connecting to Your Alchemer Account
-----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Alchemer Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Alchemer account. The following table describes what is needed for each field: 




| Field | Description |
| --- | --- |
| API Key | Enter the API key for your Alchemer account. |
| API Secret  | Enter the API secret for your Alchemer account.  |
| Domain | Select the Domain for your Alchemer account. |


After you have entered valid credentials, you can use the same account in Domo any time you create a Alchemer DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Report** menu, along with a **Survey ID** menu that appears depending on the selected report.




| Menu | Description |
| --- | --- |
| Report | Select an Alchemer report. The following reports are available:

|  |  |
| --- | --- |
| Account | Returns a list of all teams in the account. |
| Contact List  | Returns all contact lists for the account. |
| Surveys | Returns a list of all surveys for the account. |
| Survey Campaign  | Returns a list of all campaigns and links for the specified survey.  |
| Survey Response  | Returns all responses for the specified survey. |
| Survey Statistic | Returns a list of all statistics for the specified survey. |

  |
| Survey ID | Select the survey you want to retrieve information for. |


 


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Rate Limits


License-based accounts (accounts created on or after 01/17/2017) - 120 calls per minute  
Legacy Basic accounts - 30 calls per minute  
Legacy Professional - 60 calls per minute  
Legacy Team & Enterprise - 120 calls per minute


### FAQs


#### What version of the Alchemer API does this connector use?


This connector uses version 5 of the Alchemer API.


* US: <https://api.alchemer.com/v5>
* CA: <https://api.alchemer-ca.com/v5>
* EU: <https://api.alchemer.eu/v5>


#### What kind of credentials do I need to power up the Alchemer connector?


You need the Alchemer API key and API secret to connect to your Alchemer account. You can find these credentials for your account by following these instructions at Alchemer Authentication help.


#### How frequently will my data update?


The time between the response submission and the data availability via API can be more than 5 minutes.


#### Is there any API limit that I need to be aware of?


No


#### Why do I get an error- ‘SOMETHING WENT WRONG GETTING DATA!’ in the SURVEY field? How do I fix that?


This error appears when your account is no longer valid. Please create a new account with your valid credentials and try again.

