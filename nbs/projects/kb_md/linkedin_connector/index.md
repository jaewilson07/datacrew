---
    title: LinkedIn Connector
    url: https://domo-support.domo.com/s/article/360043434493
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043434493](https://domo-support.domo.com/s/article/360043434493)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003468
    views: 2,220
    created_date: 2022-10-24 21:13:00
    last updated: 2022-10-24 22:42:00
    ---



Intro
-----


The Domo LinkedIn Connector integrates Domo with LinkedIn to extract data from the LinkedIn API. The connector provides access to company profiles and updates and follower information. To learn more about the LinkedIn API, visit their site ([https://developer.linkedin.com](https://developer.linkedin.com "https://developer.linkedin.com")).


The LinkedIn connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.




 

**Important:** Certain connectors require an API usage fee charged to you by the company, not Domo, depending on the customers' accounts with that company. Use of this connector may require an API usage fee.





 

**Important:** LinkedIn has announced that they are disabling version 1 of their API on May 1, 2019. This is the API used by the LinkedIn and LinkedIn Enterprise connectors. LinkedIn has released a new version of the API, which has been implemented in Domo as the connector LinkedIn V2. Due to the two versions being considerably different, there is no way to automatically migrate existing LinkedIn DataSets to the new LinkedIn V2 connector. You will need to create new DataSets using the LinkedIn V2 connector. If there are metrics or features that are not available in the new connector, please contact Domo Support as soon as possible so those features can be added to the new connector.   
   
 These changes do not apply to DataSets using the LinkedIn Ads connector as it is already on the new API version. 



  
 You connect to your LinkedIn account in the Data Center. This topic discusses the fields and menus that are specific to the LinkedIn connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").




|  |  |
| --- | --- |
| **Primary Use Cases** | This connector is useful for measuring engagement from company updates and posts. |
| **Primary Metrics** | * Company follow statistics
* Post likes
* Post comments
* Share statistics
 |
| **Primary Company Roles** | Marketing roles, especially those involving social engagement |
| **Average Implementation Time** | Less than 10 minutes |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 2 |


Prerequisites
-------------


To connect to your LinkedIn account and create a DataSet, you must have the following:


* The email address you use to log in to LinkedIn
* The password you use to log in to LinkedIn


Connecting to Your LinkedIn Account
-----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the LinkedIn Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


The Domo LinkedIn connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click **Connect**(or select **Add Account** if you have existing LinkedIn accounts in Domo) to open the LinkedIn OAuth screen where you can enter the email address and password you use to log in to LinkedIn. Once you have entered valid credentials, you can use the same account any time you go to create a new LinkedIn DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the LinkedIn report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Company Follow Statistics - Breakdown | Returns statistics about a given company’s  total followers, which can be broken down by various metrics such as industry, seniority, company size, month, etc. |
| Company Follow Statistics - Historical | Returns a daily breakdown of company follower statistics for a specific date or date range. |
| Company Follow Statistics - Overview | Returns an overview of followers for a given company. |
| Company Search | Returns data for one or more given companies. You can use this data to compare employee count, followers, etc. |
| Company Update Statistics | Returns share statistics (clicks, shares, and likes) for a given company, broken down by month.  |
| Company Update Statistics - Historical | Returns share statistics (clicks, shares, and likes) for a given company for a specific date or date range. |
| Company Update Posts | Returns information about the latest update posts for a given company.   |
| Company Update Post Comments  | Returns all comments for the latest update posts for a given company.  |
| Company Update Post Likes  | Returns all likes for the latest update posts for a given company.  |

  |
| Break Down By | Select how you want data in your report to be presented. For example, if you select **Industry**, the report data will be broken down by industry type. |
| Company Name | Enter the name of the company you want to retrieve data for. |
| Company ID | Select the company you want to retrieve data for. |
| Duration | Specify whether the data in this report is for a single date or a range of dates. |
| Report Date  | Specify whether the data is for a specific or relative date. Choose **Relative** if you always want the report to retrieve data for a given number of days back (which you specify in **Date Offset**) from the current date. For example, if you enter 5 for **Date Offset** and set the DataSet to update daily, each new day the report will update to show information for the date 5 days in the past.    |
| Date Offset  | Enter the number of days back from the current date that will be presented in the report.    |
| Date From  | Specify whether the first date in your date range is a specific or relative date. Choose **Relative** if you always want the report to retrieve data for a given number of days back (which you specify in **Date From Offset**) from the current date. If you choose **Relative here**, you should also choose **Relative** for **Date To** and specify a value for **Date To Offset**. 
For example, if you enter 10 for **Date From Offset** and 5 for **Date To Offset** and you set the DataSet to update daily, each new day the report will update to show information for 5 to 10 days in the past.    |
| Date To  | Specify whether the end date in your date range is a specific or relative date. Choose **Relative** if you always want the report to retrieve data for a given number of days back (which you specify in **Date To Offset**) from the current date. If you choose Relative here, you should also choose **Relative** for **Date From** and specify a value for **Date From Offset**. 
For example, if you enter 10 for **Date From Offset** and 5 for **Date To Offset** and you set the DataSet to update daily, each new day the report will update to show information for 5 to 10 days in the past.  |
| Select Specific Date From  | Select the first date in your date range.   |
| Select Specific Date To  | Select the last date in your date range.   |
| Select Specific Date  | Select the date you want to retrieve data for.   |
| Company IDs  | Enter the IDs of companies you want to compare in your report, separated by commas. Find the ID of a company by entering the name in the **Company Name** field. The number in parentheses that follows the name in the **Company ID** dropdown menu is the ID. |
| Post Type  | Select the post type for the report. When **Status Update** is selected, only the 50 most recent posts are returned. For other post types, the report retrieves all posts within the last 20 days or 250 total posts, whichever comes first.   |
| Update Key  | Enter the update key. You can find the update key for a specific post in the **Company Update Posts** report. If you leave this blank, the report retrieves likes or comments for all company update posts.    |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Troubleshooting
---------------


* The LinkedIn user account used to create the DataSet *must* have access to a Company page. Otherwise the connector will not be able to pull any data.
* LinkedIn access tokens stay valid until the number of seconds returned in the expires\_in field in the API response. Currently, all access tokens are issued with a 60-day lifespan.
