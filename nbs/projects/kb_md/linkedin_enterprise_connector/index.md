---
title: LinkedIn Enterprise Connector
url: https://domo-support.domo.com/s/article/360042929814
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042929814](https://domo-support.domo.com/s/article/360042929814)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003472
views: 2,125
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


LinkedIn is a business and employment-oriented service used for professional networking. To learn more about the LinkedIn API, visit their page ([https://developer.linkedin.com/](https://developer.linkedin.com/ "https://developer.linkedin.com/")).


You connect to your LinkedIn Enterprise account in the Data Center. This topic discusses the fields and menus that are specific to the LinkedIn Enterprise connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).




 

**Important:** LinkedIn has announced that they are disabling version 1 of their API on May 1, 2019. This is the API used by the LinkedIn and LinkedIn Enterprise connectors. LinkedIn has released a new version of the API, which has been implemented in Domo as the connector LinkedIn V2. Due to the two versions being considerably different, there is no way to automatically migrate existing LinkedIn DataSets to the new LinkedIn V2 connector. You will need to create new DataSets using the LinkedIn V2 connector. If there are metrics or features that are not available in the new connector, please contact Domo Support as soon as possible so those features can be added to the new connector.   
   
 These changes do not apply to DataSets using the LinkedIn Ads connector as it is already on the new API version. 



Prerequisites
-------------


To connect to LinkedIn Enterprise, you will need the following:


* The Client ID and Client Secret from your LinkedIn app. The steps for obtaining these credentials are provided below.
* The username and password for the LinkedIn account you want to connect through. The account owner *must*be an administrator of your company's LinkedIn page.


To obtain the client ID and client secret, you must first create an app via LinkedIn's Developer Portal. You can then retrieve the Client ID and Client Secret.  


**To create an app in the Developer Portal,**


1. Using your LinkedIn account, log into the Developer Portal at [https://developer.linkedin.com/.](https://developer.linkedin.com/)
2. Click on **My Apps** then select **Create Application**.
3. Give the app a descriptive name such as "Linkedin Connection."
4. Enter your own website URL.
5. Fill in the remaining required fields.
6. Click **Submit**.   
 Now that the app is created, it must be configured.
7. Click **Authentication** in the left side menu.
8. Under the OAuth 2.0 section, add the following Authorized Redirect URLs:


	* [https://oauth.dev.domo.com/api/data/...prise/exchange](https://oauth.dev.domo.com/api/data/v1/oauth/providers/linkedin-enterprise/exchange "https://oauth.dev.domo.com/api/data/v1/oauth/providers/linkedin-enterprise/exchange")
	* [https://oauth.domo.com/api/data/v1/o...prise/exchange](https://oauth.domo.com/api/data/v1/oauth/providers/linkedin-enterprise/exchange "https://oauth.domo.com/api/data/v1/oauth/providers/linkedin-enterprise/exchange")
9. Click **Update**.
10. Copy the Client ID and Client Secret at the top of the page.


Connecting to Your LinkedIn Enterprise Account
----------------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the LinkedIn Enterprise Connector page. The components of the other panes in this page, **Scheduling**and **Name & Describe Your DataSet,** are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


In the **Credentials** pane, you are first asked to enter the client ID and client secret for your LinkedIn Enterprise account. After you click **Connect**, you are prompted to open the LinkedIn OAuth screen where you can enter your LinkedIn Enterprise credentials. Once you have entered valid LinkedIn Enterprise credentials, you can use the same account any time you go to create a new LinkedIn Enterprise DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




 


**Note:**  If you are currently logged into your personal LinkedIn account, you will need to sign out of LinkedIn before authorizing the Domo LinkedIn Connector for your company's LinkedIn account. If you do not sign out of your personal LinkedIn account, you will see an authorization window appear and disappear without prompting you to authenticate the LinkedIn account you wish to use.



### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the LinkedIn Enterprise report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Company Comparison | Returns data for one or more given companies. You can use this data to compare employee count, followers, etc. |
| Company Follower Statistics - Breakdown | Returns statistics about a given company's total followers, which can be broken down by various metrics such as industry, seniority, company size, month, etc. |
| Company Follow Statistics - Historical | Returns a daily breakdown of company follower statistics for a specific date or date range. |
| Company Follow Statistics - Overview | Returns an overview of followers for a given company. |
| Company Update Statistics | Returns share statistics (clicks, shares, and likes) for a given company, broken down by month. |
| Company Update Statistics - Historical | Returns share statistics (clicks, shares, and likes) for a given company for a specific date or date range. |
| Company Update Posts | Returns information about the latest update posts for a given company. |
| Company Update Post Comments | Returns all comments for the latest update posts for a given company. |

 |
| Follow Stats Breakdown | Select whether you want your report to be broken down by company size, country, function, industry, monthly count, region, or seniority. |
| Company ID | Select the ID of the company you want to retrieve information for. |
| Company IDs | Enter a comma-separated list of the IDs for all companies you want to compare for the "Company Comparison" report. |
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
| Update Key (Optional) | Enter the update key for your report. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


FAQs
----


##### How often can the data be updated?


DataSets should be set to update once a day.


##### Are there any API limits I should be aware of?


LinkedIn limits how many calls can be made per day by each user and by Domo as a whole. The exact number of calls is different for each report in the connector. It is recommended that you not run your DataSets more often than you need to. Generally speaking, once per day will get you the data you need and will not take available calls away from other users.


##### Do I need a certain kind of account to use this connector?


Yes. The owner of the LinkedIn account must be an administrator on your company's page.


##### Can I get details about company pages as well as personal pages through this connector?


This connector can only return details about company pages. The authenticated user must be an administrator for the company page he/she is trying to query.

