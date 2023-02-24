---
title: BambooHR Connector
url: https://domo-support.domo.com/s/article/360042928114
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042928114](https://domo-support.domo.com/s/article/360042928114)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003654
views: 2,139
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:39:00
---



Intro
-----


BambooHR consolidates all of your employee information from all of your locations into a single view. You can then access, control, sort, analyze, and take action on the data instantly-from your office, the road or home. The connector enables all those reports to be easily imported into Domo. For more information about the BambooHR API, visit their website. (<http://www.bamboohr.com/api/documentation/>)


The BambooHR connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.   


You connect to your BambooHR account in the Data Center. This topic discusses the fields and menus that are specific to the BambooHR connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").




|  |  |
| --- | --- |
| **Primary Use Cases** | This connector is appropriate for returning head count, payroll, and recurring reporting. |
| **Primary Metrics** | * Employee demographics
* Salary information
* Custom reports
 |
| **Primary Company Roles** | * VP
* HR director
 |
| **Average Implementation Time** | 10 hours |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 3 |


 


Best Practices
--------------


Make sure to include all applicable custom fields in your report.


Prerequisites
-------------


To connect to your BambooHR account and create a DataSet, you must have the following:


* Your company domain name or the URL of your company BambooHR instance. This is the same URL you use to log in to the BambooHR web interface. For example: `[https://companydomainname.bamboohr.com](https://companydomainname.bamboohr.com "https://companydomainname.bamboohr.com")`
* Your BambooHR API key. To generate an API key for a given user, log in to BambooHR and click your name in the upper right hand corner of any page to access the user context menu. Then click **API Keys** to open a page in which you can generate an API key. For more information about API keys, see <http://www.bamboohr.com/api/documentation/login.php>.


Connecting to Your BambooHR Account
-----------------------------------


This section enumerates the options in the  **Credentials**  and  **Details**  panes in the BambooHR Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


**Credentials Pane**


This pane contains fields for entering credentials to connect to your BambooHR account. The following table describes what is needed for each field:  




| **Field** | **Description** |
| --- | --- |
| Company Domain | Enter your company domain name or the URL of your company BambooHR instance (such as [companydomainname.bamboohr.com](http://companydomainname.bamboohr.com)). |
| API Key | Enter your BambooHR API key. |


Once you have entered valid BambooHR credentials, you can use the same account any time you go to create a new BambooHR DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Report** menu in which you select a report type.




| **Menu** | **Description** |
| --- | --- |
| Report | Select a BambooHR report. The following reports are available:

|  |  |
| --- | --- |
| Company Report | Returns data of all the reports of the particular company. |
| Complete Employee Data | Returns complete data for all the current employees. |
| Employee Bulk Data | Returns data of all the employees in a single report. |
| Employee Data | Returns data about employees, such as name, address, email, birthday, gender, ethnicity, department, supervisor, etc.  |
| User Data | Returns data about users of this account, including first and last name, email, status, etc. |

  |
| Custom Fields  | Select all fields you want to appear in your report.  |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Troubleshooting
---------------


* Verify the Company Domain Name and API are correct.
* Validate the results by running the report in BambooHR.


FAQ
---


##### What version of the BambooHR API does this connector use?


This connector uses version 1 of the BambooHR API


 <https://api.bamboohr.com/api/gateway.php/{>subdomain}/v1/).


##### Which endpoint(s) does each report call in this connector?




| Report Name | Endpoint URL |
| --- | --- |
| Company Report | /reports/{reportid} |
| Employee Data | /employee/{employeeid}/?fields=(customfields) |
| Employee Bulk Data | /reports/customs |
| User Data | /meta/users |


##### What kind of credentials do I need to power up this connector?


You need your company domain name and API key.


##### Where can I find my API Key?


To generate an API key To generate an API key, log into BambooHR and click your name in the upper right corner of any page to access the user context menu. Then click API Keys to open a page in which you can generate an API key.


##### Do I need a certain kind of account with the data service to set up the connector?


Any BambooHR account will work.


##### What else do I need to do to power up my connector?


An individual user must be issued an API key that you then supply to Domo while creating an account. The user must have the necessary permissions set up inside of BambooHR to receive the requested data.


##### Can I use the same account multiple times to create datasets?


Yes


##### How do I know if my query is right?


Verify the returned data within the BambooHR system.


##### What's the difference between this connector and the BambooHR connector?


BambooHR Advanced connector supports the company report and company report id as well.

