---
title: Eloqua Connector
url: https://domo-support.domo.com/s/article/360043431153
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360043428113](https://domo-support.domo.com/s/article/360043428113)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043431153](https://domo-support.domo.com/s/article/360043431153)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003767
views: 2,239
created_date: 2022-10-24 21:15:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


Eloqua Corp. is a marketing automation SaaS company which develops automated marketing and demand generation software and services for business-to-business marketers. You can use Domo’s Eloqua connector to compile reports on marketing statistics such as contacts, emails opened, website visits, subscribes and unsubscribes, and so on. To learn more about the Eloqua API, visit their page (<https://community.oracle.com/community/topliners/code-it>).


The Eloqua connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.


You connect to your Eloqua account in the Data Center. This topic discusses the fields and menus that are specific to the Eloqua connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").




|  |  |
| --- | --- |
| **Primary Use Cases** | This connector is appropriate for web analytics and digital marketing use cases. |
| **Primary Metrics** | * Sends
* Opens
* Clicks
* Impressions
* Form fills
* Web visits
* Landing page visits
* Unsubscribes
* Subscribes
* Contacts
 |
| **Primary Company Roles** | * Digital marketers
* Marketing directors
* Marketing analysts
* CMOs
 |
| **Average Implementation Time** | 50+ hours |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 6 |


Best Practices
--------------


* Set your "Contacts" report to **Replace**, not **Append** (as "Contacts" may change over time).
* You may need to make recursive DataFlow if you need a historical record of your contacts. For more information, see [Creating a Recursive/Snapshot Magic ETL DataFlow](/s/article/360043428113 "Creating a Recursive/Snapshot Magic ETL DataFlow").
* For the "Activities" report, set your connector to pull a full history, then reconfigure to do a daily Append (this will let you keep your historical data and move forward and diminish runtime).
* If you need to join "Activities" to "Contacts" reports ("Form Submits," "Email Sends," "Email Click-throughs," and "Email Opens"), join on the "CONTACT ID" and to the "ID" fields.
* For subscribes, unsubscribes, and bouncebacks, join on "EMAIL ADDRESS."


Prerequisites
-------------


To connect to your Eloqua account and create a DataSet, you must have the following:


* The username for your Eloqua account
* The password for your Eloqua account
* The company name associated with your Eloqua account


Connecting to Your Eloqua Account


This section enumerates the options in the  **Credentials**  and  **Details**  panes in the Eloqua Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Eloqua account. The following table describes what is needed for each field:  




| **Field** | **Description** |
| --- | --- |
| Company | Enter the company name associated with your Eloqua account. |
| Username | Enter the username you use to log into your Eloqua account. |
| Password | Enter the password you use to log into your Eloqua account. |


Once you have entered valid Eloqua credentials, you can use the same account any time you go to create a new Eloqua DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Report** menu, along with various other menus which may or may not appear depending on the report type you select.




 

**Important:** Pulling back excessively large amounts of data may result in Eloqua disabling the user's API connection. Re-enabling the API connection could take up to a few days. Avoid this by limiting the data calls to about 15 million rows per day.





| **Menu** | **Description** |
| --- | --- |
| Eloqua Report | Select the Eloqua report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Accounts | Returns information on all accounts associated with your company for the given number of days. |
| Bouncebacks | Returns information on all bouncebacks for the given number of days. |
| Campaigns | Returns information on all campaigns for the given number of days. |
| Contacts | Returns information on all selected contacts.  |
| Custom Object | Returns information on a selected Custom Data Object. |
| Custom URL from “Data Export” | Returns information on a Data Export URL that is ready to download. You enter the URL in the **Custom Export Report URL** field. |
| Email Click-Throughs | Returns information on the number of users who clicked links in emails sent by your company for the given number of days. |
| Email Opens | Returns information on the number of users who opened emails sent by your company for the given number of days. |
| Emails | Returns information on company emails for the given number of days, such as subject line, current status, sender name, creation time, etc. |
| Email Sends | Returns information on emails sent by your company for the given number of days. |
| Form Submits | Returns information on the number of users who have submitted forms (either complete or incomplete) on your website for the given number of days. |
| Form Submits (All Fields) | Returns information on the number of users who have submitted completed forms on your website for the given number of days. |
| Landing Pages | Returns statistics for landing pages for your website. |
| Microsites | Returns information on the number of visits to your company’s microsites for the given number of days.  |
| Page Views | Returns information on the number of visits to specific pages in your website for the given number of days. |
| Subscribes | Returns information on the number of users who have subscribed for the given number of days. |
| Subscriptions | Returns information on user subscriptions for the given number of days. |
| Unsubscribes | Returns information on the number of users who have unsubscribed for the given number of days. |
| Users | Returns information on users of your company’s Eloqua instance. |
| Web Visits | Returns information on the number of visits to your website for the given number of days. |



 

**Note:** Data for Eloqua is scattered across numerous reports. With the QuickStart offering, users will not be able to connect data between two individual reports.  


 |
| Days | Enter the number of days back that should be represented in the report. For example, if you entered 60, the report would contain data for the last 60 days.  |
| Data to be Retrieved | Specify whether the report contains all data or just new data since the last successful run. If there has not been a successful run, the **All data** option should be used. |
| Contact Fields | Select up to 95 contact fields. If you do not select any contact fields, the report pulls information for all contacts. Click **Clear All** to clear all selected contacts.    |
| Custom Object | Select a Custom Data Object from the list. |
| Custom Export Report URL | Enter the URL for a Data Export that is ready to download. For example:           `<https://secure.p01.eloqua.com/ExportedFiles/customerName/dbb7134f-0305-4e3d-f445-c96971493894>`  |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


FAQ
---


#### Can I use the same Eloqua account for multiple DataSets?


Yes.


#### How frequently will my data update?


As often as needed.


#### Are there any API limits I should be aware of?


No.


Suggested Reports
-----------------


Get up and running quickly with Eloqua data for metrics regarding emails, contacts, landing pages, forms and more by following these suggestions.


Load 180 days of data for the following DataSets to get started. 


**Email Data**


Suggested DataSets to use:


* Email Sends
* Email Opens
* Email Click-Throughs
* Unsubscribes
* Bouncebacks
* Campaigns
* Emails


**Landing Page Data**


* Page Views
* Web Visits
* Landing Pages


**Form Submits Data**


* Form Submits


**People Data**


* Contacts
* Users
* Accounts


**Custom Data**


* Custom Object
