---
    title: SendGrid Connector
    url: https://domo-support.domo.com/s/article/360042927254
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042927254](https://domo-support.domo.com/s/article/360042927254)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003724
    views: 1,137
    created_date: 2022-10-24 21:14:00
    last updated: 2022-10-24 22:40:00
    ---



Intro
-----


SendGrid is a cloud-based SMTP provider that allows users to send email without having to maintain email servers. Use Domo's SendGrid connector to retrieve data about your SendGrid account, such as statistics, bounces, spam reports, unsubscribes, and other information. To learn more about the SendGrid API, visit their page ([https://sendgrid.com/docs/API\_Reference/index.html](https://sendgrid.com/docs/API_Reference/index.html "https://sendgrid.com/docs/API_Reference/index.html")).


You connect to your SendGrid account in the Data Center. This topic discusses the fields and menus that are specific to the SendGrid connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in  [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your SendGrid account and create a DataSet, you must have a SendGrid username and password.


Connecting to Your SendGrid Account
-----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the SendGrid Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your SendGrid account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Username | Enter your SendGrid username.  |
| Password | Enter your SendGrid password. |


Once you have entered valid SendGrid credentials, you can use the same account any time you go to create a new SendGrid DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the SendGrid report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Addresses on Account | Retrieves all the email addresses from the account. |
| All IPs | Retrieves a list of assigned and unassigned IPs. Includes warm-up status, pools, assigned subusers, and whitelabel info. |
| Advanced Statistics | Provides data about browsers and devices being used to open emails. Also provides statistics based on the geographic location or ISP. |
| Available Apps | Retrieves a list of available apps. |
| Blocks | Retrieves a list of blocks with addresses and response codes. |
| Blocks Count | Retrieves a count of blocks. |
| Bounces | Retrieves a list of bounces with addresses and response codes. |
| Bounces Count | Retrieves a count of bounces. |
| Current Time Zone | Returns the user's current time zone. |
| Existing Marketing Emails | Retrieves a list of existing marketing emails. |
| Email Addresses and Associated Fields for a Recipient List | Retrieves email addresses and associated fields for a recipient list. |
| Entries on a List | Retrieves the number of entries on a list. |
| General Statistics | Retrieves general statistics. |
| Get Warm-up Status for a Particular IP  | Retrieves the warm-up status for a given IP. |
| Global Suppression Group Email Exist | Retrieves a global suppression group check. |
| IANA Time Zones | Retrieves a list of IANA time zones. |
| Invalid Emails | Retrieves a list of invalid emails with addresses and response codes. |
| Invalid Emails Count | Retrieves a count of invalid emails.  |
| IP Addresses Belong to Which Pools | Shows which IP addresses belong to which pools. |
| IP Pools | Retrieves a list of IP pools. |
| IPs in a Specified Pool | Retrieves a list of IP addresses in a given pool. |
| IPs That Are Currently Warming Up | Retrieves all IPs that are currently warming up. |
| Information Associated with a Particular Address | Retrieves information associated with a particular IP address. |
| Lists Assigned to a Particular Marketing Email | Retrieves all lists assigned to a given marketing email. |
| Marketing Category List | Retrieves a list of marketing categories. |
| Recipient Lists | Retrieves a list of recipients. |
| Settings of an App | Retrieves settings for a given app. |
| Spam Details | Retrieves a list of spam reports. |
| Spam Counts | Retrieves a count of spam reports. |
| Suppression Groups | Retrieves all suppression groups associated with the user. |
| Single Suppression Groups | Retrieves all single suppression groups associated with the user. |
| Suppressed Addresses | Retrieves suppressed addresses for a given group. |
| Suppression Groups Associated with a Given Recipient Address | Returns suppression groups associated with a given recipient address. |
| Single Template | Retrieves single template details. |
| Scheduled Delivery Time for a Marketing Email | Retrieves the delivery time for a given marketing email. |
| Templates | Retrieves a list of templates. |
| Unsubscribes | Retrieves a list of unsubscribes with addresses. |

 |
| Data Type | Select the data type you want to retrieve information for. |
| Aggregated By | Select how you want the data in your report to be aggregated. For example, if you select **Day**, the data will be broken down by day. |
| Start Date | Enter the start date for the data in your report. This should be paired with **End Date**. |
| End Date | Enter the end date for the data in your report. This should be paired with **Start Date**. |
| Month | Select the month you want to retrieve data for. |
| Week | Select the week you want to retrieve data for. |
| Year | Select the year you want to retrieve data for. |
| Metric | Select the metric you want to retrieve data for. |
| Country | Select the country you want to retrieve data for. |
| Days | Enter the number of past days you want to retrieve data for (including today). If you leave this blank, only today's information is returned.  |
| Type | Select the type of blocks or bounces to count. |
| Recipient List Name | Enter the name of the list you want to retrieve data for. For example: pixlr news |
| Email Address | Enter the email address you want to retrieve data for. |
| Unsubscribed | Select **True** to retrieve a list of unsubscribed email addresses. |
| Aggregate | Select **True**if you want your report to show all-time totals. |
| Category Name | Enter the name of the category you want to retrieve detailed statistics for. |
| IP Address | Enter the IP address you want to retrieve information for. For example: 167.89.7.100 |
| Pool Name | Enter the name of the pool you want to retrieve data for. For example: Bunderson Aquatic Center |
| Address Identity | Enter the address identity you want to retrieve data for. For example: Test Natalie |
| Marketing Email Address | Enter the marketing email address you want to retrieve data for. |
| App Name | Enter the app name you want to retrieve data for. For example: clicktrack |
| Group Name | Select the group you want to retrieve data for. |
| Template Name | Select the template you want to retrieve data for. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").

