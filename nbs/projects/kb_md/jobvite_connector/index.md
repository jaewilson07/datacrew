---
    title: Jobvite Connector
    url: https://domo-support.domo.com/s/article/360043432653
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043432653](https://domo-support.domo.com/s/article/360043432653)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003638
    views: 2,131
    created_date: 2022-10-24 21:13:00
    last updated: 2022-10-24 22:42:00
    ---



Intro
-----


Jobvite's analytics-driven recruiting software accelerates hiring with an applicant tracking system, social recruiting, and mobile solution. To learn more about the Jobvite API, contact your Jobvite support representative or visit [http://careers.jobvite.com/careersit...ebServices.pdf](http://careers.jobvite.com/careersites/JobviteWebServices.pdf "http://careers.jobvite.com/careersites/JobviteWebServices.pdf").  


You connect to your Jobvite account in the Data Center. This topic discusses the fields and menus that are specific to the Jobvite connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in  [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").




|  |  |
| --- | --- |
| **Primary Use Cases** | Use this connector to improve your hiring system by measuring and managing job candidates. |
| **Primary Metrics** | Job seeker information |
| **Primary Company Roles** | Recruiting |
| **Average Implementation Time** | If you wanted to create an individual DataSet for each job status, the connector could take up to 3 hours to fully implement. In general, though, expect about 5 minutes. |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 3 |


Best Practices
--------------


This connector works best when "Replace" is used to update data instead of "Append."


Prerequisites
-------------


To connect to your Jobvite account and create a DataSet, you must have the following:


* A Jobvite secret key
* A Jobvite company ID
* A Jobvite API key


All of these credentials are provided upon account creation.


Connecting to Your Jobvite Account
----------------------------------


This section enumerates the options in the  **Credentials**  and  **Details**  panes in the Jobvite Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Jobvite account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Secret Key | Enter the secret key issued to you by your Jobvite support representative. |
| Company ID | Enter the company ID issued to you by your Jobvite support representative. |
| API Key | Enter the API key issued to you by your Jobvite support representative. |


Once you have entered valid Jobvite credentials, you can use the same account any time you go to create a new Jobvite DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Jobvite report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Candidates | Returns job seeker information and requsition level data for jobs the job seeker applied for. |
| Job Feed | Returns information on all requisitions for a given company. |

 |
| Workflow State (Optional) | Enter a workflow state to filter by. Examples include New, Offer Accepted, etc. |
| Duration  | Select whether you want to pull data for a specific date or a date range.  |
| Report Date  | Select whether the report data is for a specific date or for a relative number of days back from today.  |
| Specific Date  | Select the date for the report.  |
| Days Back | Enter the number of past days that should appear in the report.   |
| Start Date | Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in **End Date**.  |
| End Date | Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in **Start Date**.   |
| Specific Start Date | Select the first date in your date range.  |
| Specific End Date | Select the second date in your date range.  |
| Days Back to Start From | Enter the number of the farthest day back that should be represented in the report. Combine with **Days Back to End At** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |
| Days Back to End At | Enter the number of the most recent day back that should be represented in the report. Combine with **Days Back to Start From** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |
| Job Status | Select the job status(es) you want to filter on. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Troubleshooting
---------------


Check error messages, authentication, and configuration.

