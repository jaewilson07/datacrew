---
    title: Cloudability Connector
    url: https://domo-support.domo.com/s/article/360043433193
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043433193](https://domo-support.domo.com/s/article/360043433193)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003597
    views: 1,091
    created_date: 2022-10-24 21:13:00
    last updated: 2022-10-24 22:40:00
    ---



Intro
-----


Cloudability (Cloud Cost Management Tool) lets you monitor, optimize and govern your cloud costs. To learn more about the Cloudability API, visit their page (<http://developers.cloudability.com/>).


You connect to your Cloudability account in the Data Center. This topic discusses the fields and menus that are specific to the Cloudability connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in  [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Cloudability account and create a DataSet, you must have a Cloudability API key. To find your API key, do the following:


1. Log into your Cloudability account.
2. Navigate to **Account > Preferences**.
3. Click **Enable Access** at the bottom of the page.


You should then be able to find your API key on this page.


Connecting to Your Cloudability Account
---------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Cloudability Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Cloudability account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| API Key | Enter your Cloudability API key. For information about finding your API key, see "Prerequisites," above. |


Once you have entered valid Cloudability credentials, you can use the same account any time you go to create a new Cloudability DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Cloudability report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Account Groups | Returns a list of account groups. |
| Account Group Entries | Returns a list of account group entries. |
| Cost Reports | Returns a report of cost data. |
| Credentials | Returns a list of all your credentials. |
| Organizations | Returns information about your organization. |
| Organization Invitations | Returns a list of all invitations to your organization. |
| Organization Roles | Returns a list of roles in your organization. |
| Reserved Instance Count Histograms | Returns instance counts for a particular configuration. |
| Reserved Instance Recommendations | Returns information about your Amazon reserved instance recommendations. |
| Usage Report | Returns usage data. |
| Users | Returns a list of users in your organization. |

 |
| Cost Report Dimensions | Select all cost report dimensions you want to retrieve data for. |
| Cost Report Metrics | Select all cost report metrics you want to retrieve data for. |
| Usage Report Dimensions | Select all usage report dimensions you want to retrieve data for. |
| Usage Report Metrics | Select all usage report metrics you want to retrieve data for. |
| What Type of Data Range Would You Like to Use | Select whether you want your report to contain data for a specific date or for a given number of days back (relative). |
| Start Date | Select the start date for the date range you want to retrieve data for. |
| End Date | Select the end date for the date range you want to retrieve data for. |
| Date Offset | Enter the number of days back that you would like to get data for. For Example, you would enter 7 to see all records created in the last 7 days. |
| Availability Zone | Enter the availability zone you want to retrieve data for.
For example:  us-east-1c |
| Platform | Enter the operating system of the instance you want to retrieve data for.
For example: linux |
| Instance Size | Enter an instance size to filter on.
For example: m2.large |
| Reservation Length | Enter the reservation length to filter on. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").

