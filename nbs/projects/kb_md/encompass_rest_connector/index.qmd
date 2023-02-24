---
title: Encompass REST Connector
url: https://domo-support.domo.com/s/article/360043432813
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043432813](https://domo-support.domo.com/s/article/360043432813)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003623
views: 1,107
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:41:00
---



Intro
-----


Encompass  is one of the largest personal property and casualty insurance brands sold exclusively through a network. To learn more about the Encompass API, visit their page ([https://www.elliemae.com/developers/...eloper-connect](https://www.elliemae.com/developers/encompass-developer-connect "https://www.elliemae.com/developers/encompass-developer-connect")).


You connect to your Encompass account in the Data Center. This topic discusses the fields and menus that are specific to the Encompass REST connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in  [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to Encompass and create a DataSet, you must have the following:


* The username and password of your Encompass account
* Your Encompass instance ID
* The client ID for your Encompass OAuth app
* The client secret for your Encompass OAuth app


You can find your client ID inside Encompass by selecting **About Encompass** in the **Help**menu and then About Encompass. You can also find it in the footer of any  
Encompass email. For information about the other required credentials, reach out to your Encompass account representative.


Connecting to Your Encompass Account
------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Encompass REST Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Encompass account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Username | Enter the username for your Encompass account. |
| Password | Enter the password for your Encompass account. |
| Instance ID | Enter your Encompass instance ID. |
| Client ID | Enter the client ID for your Encompass OAuth app. |
| Client Secret  | Enter the client secret for your Encompass OAuth app. |


Once you have entered valid Encompass credentials, you can use the same account any time you go to create a new Encompass DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Encompass report you want to run. The following reports are available:

|  |  |
| --- | --- |
| All Borrower Pairs | Returns all borrower pairs for a specified loan. |
| All Contact Groups | Returns all contact groups for a given contact type and group type, e.g. borrower, public business ,or private business contact groups. |
| All Contacts in Contact Group | Returns all contacts associated with a specified group ID. |
| All Custom Fields | Returns the schema for all loan custom fields on the Encompass instance.  |
| All Milestone-Free Roles | Returns all milestone-free logs for the specified loan. |
| All Milestones | Returns all milestones for the specified loan. |
| All Post-Closing Conditions | Returns all post-closing conditions for the specified loan. |
| All Preliminary Conditions | Returns all preliminary conditions for the specified loan. |
| All Underwriting Conditions | Returns all underwriting conditions for the specified loan. |
| Borrower Canonical Names | Returns a list of canonical field names for borrower contact fields. |
| Borrower Contact List | Returns borrower contacts. |
| Business Canonical Names | Returns a list of canonical field names for business contact fields. |
| Business Contact List | Returns a list of business contacts. |
| List of Associates | Returns a list of loan associates involved with the specified loan.  |
| List of Attachments | Returns a list of files attached to a specified loan. |
| List of Documents | Returns all eFolder documents for a specified loan file. |
| List of Resource Locks | Returns a list of locked resources and metadata from Encompass.  |
| Loan | Returns the entire loan or specific entities of a loan. |
| Loan Canonical Names | Returns a list of descriptive field definitions for all canonical field names represented in the Encompass Pipeline. |

 |
| Loan ID Selection Type | Select how you want to choose your desired loan. The following options are available:

|  |  |
| --- | --- |
| All | Returns all loans that have been modified in the specified time range. |
| Discovery | Choose from a list of loans that have been modified in the last 90 days.  |
| Manual | Manually enter the IDs of the loans you are interested in. |

 |
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
| Field to Flatten | Select the column in your report you want to flatten. |
| Loan ID (when your **Loan ID Selection Type** is set to **Discovery**) | Select the loan you want to retrieve data for. |
| Loan ID (when your **Loan ID Selection Type**is set to **Manual**) | Enter a comma-separated list of loan IDs you want to return data for. |
| Entities | Select the entities you want to retrieve data for. |
| Contact Type | Select the contact type you want to filter your data by. |
| Group Type | Select the group type you want to filter your data by. |
| Group ID | Select the group you want to retrieve data for. |
| Partial Data Checkbox | Check this box if you would like your report to return partial data in the event that Encompass fails to return data for certain loans. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").

