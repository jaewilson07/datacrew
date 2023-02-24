---
    title: Salesforce Pardot Connector
    url: https://domo-support.domo.com/s/article/360042927214
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/2128460](https://domo-support.domo.com/s/article/2128460)', '[https://domo-support.domo.com/s/article/360042927214](https://domo-support.domo.com/s/article/360042927214)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003721
    views: 2,222
    created_date: 2022-10-24 21:14:00
    last updated: 2022-10-24 22:40:00
    ---



Intro
-----


 




 


**Important:** Beginning on **February 15, 2021**, Pardot’s user authentication system will be discontinued and all users will be required to use Salesforce Single Sign-On (SSO). The users who are not enabled with Salesforce SSO by **February 15, 2021** will lose the ability to log into Pardot until they are connected to a Salesforce user. 


* Beginning on **February 15, 2021**, you will need to use Domo’s Salesforce Pardot Connector with Single Sign-On Support (com.domo.Connector.pardot.oauth) to create new DataSets for Pardot.
* Current DataSets using Domo’s Salesforce Pardot Connector (com.domo.Connector.pardot) will need to be migrated to the Single Sign-On version by **February 15, 2021** to prevent disruptions of service.


For more information, see [Salesforce Pardot to Salesforce Pardot SSO Connector Migration](https://domohelp.domo.com/Connect/Connecting_to_Data_with_Connectors/Configuring_Each_Connector/Connectors_for_Marketing/Salesforce_Pardot_to_Salesforce_Pardot_SSO_Connector_Migration "Salesforce Pardot to Salesforce Pardot SSO Connector migration").






Salesforce Pardot is a marketing automation SaaS company that develops automated marketing and demand generation software and services for business-to-business marketers. To learn more about the Salesforce Pardot API, visit their page (<http://developer.pardot.com/>). Both versions 3 and 4 are implemented in this connector.


The Salesforce Pardot connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.


You connect to your Salesforce Pardot account in the Data Center. This topic discusses the fields and menus that are specific to the Salesforce Pardot connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").




|  |  |
| --- | --- |
| **Primary Use Cases** | * Results of email marketing activities
* Lead generation success
* Response to specific campaigns
 |
| **Primary Metrics** | * Response rate to email marketing
* Number of leads generated
* Response rate
* Conversion rate
* Open rate
* Click rate
 |
| **Primary Company Roles** | * Email marketing analyst
* CMO
* Creative director
 |
| **Average Implementation Time** | Less than 1 hour |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 3 |


Best Practices
--------------


* Use Append to pull only the data modified or created since the last run to limit the number of calls.
* When pulling deleted prospects, use the **Updated date** filter since this is the date that is modified when a prospect is deleted in Pardot.


Prerequisites
-------------


To connect to your Salesforce Pardot account and create a DataSet, you must have the following:


* Your Salesforce Pardot username and password.
* Your Salesforce Pardot user key.


For information about obtaining these credentials, visit <http://developer.pardot.com.>  


Connecting to Your Salesforce Pardot Account
--------------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Salesforce Pardot Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Salesforce Pardot account. The following table describes what is needed for each field: 




| Field | Description |
| --- | --- |
| Edition | Select the edition. |
| Concurrency Limit | Enter the maximum amount of concurrent connections to SalesForce Pardot. If you are unsure of how many concurrent connections to Pardot you are allowed, please contact your SalesForce administrator. |
| Username | Enter the username you use to log into your Salesforce Pardot account. |
| Password | Enter the password you use to log into your Salesforce Pardot account. |
| User Key  | Enter your Salesforce Pardot user key.  |


Once you have entered valid Salesforce Pardot credentials, you can use the same account any time you go to create a new Salesforce Pardot DataSet. You can manage connector accounts in the Accounts tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Report**menu, along with two fields that allow you to set a date range for your data.




| Menu | Description |
| --- | --- |
| Report | Select the Salesforce Pardot report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Campaign | Returns information about campaigns, including id, list id, name and cost etc. |
| Custom Fields | Returns information about custom fields defined in Salesforce Pardot. |
| Custom Redirect | Returns information about custom redirects defined in Salesforce Pardot. |
| Email Clicks | Returns information about email clicks including prospect id and url clicked. |
| Email Statistics | Returns information about all email lists sent during the selected time period. This report returns information such as total clicks, bounces, opens, click through rate, etc. |
| Forms | Returns information about Forms. |
| Lifecycle History | Returns information about lifecycle history, including Pardot id, prospect id, previous stage id etc. |
| Lifecycle Stage | Returns information about lifecycle stage, including lifecycle stage id, name, position etc. |
| List | Returns all lists matching the specified criteria, including list name, title, description, etc. |
| Membership List | Returns information about membership, including id, list id, prospect id, opted out etc. |
| Opportunity | Returns all opportunities matching the specified criteria, including name, opportunity stage and status, campaign name, etc. |
| Prospect | Returns information about prospects matching the specified criteria. |
| Prospect Bulk | Returns information about prospects matching the specified criteria. Returns data more efficiently than regular prospect report, without custom fields. |
| Prospect Accounts | Returns information about prospect accounts, including id, name, created\_at etc. |
| Prospect Email Activities | Returns information about email activities by prospects |
| Prospect Email Activities (Historical data) | Returns information about email activities by prospects (use this report to retrieve large amount of historical data. Will only run in Append mode. |
| Prospect Email Activities via bulk export | Returns information about email activities by prospects |
| Tag | Returns information about Tag, including id, name, created\_at etc. |
| Tag Object | Returns information about tag object, including id, tag id, type, object id, created\_at. |
| User | Returns information about the authenticated user, including first and last name, email, role, account number, etc. |
| Visit | Returns information about all page visits matching the specified criteria. |
| Visitor | Returns information about page visitors, including page view count, IP address, host name, etc. |
| Visitor With Details | Returns information about page visitors, including referrer, identified company and activities. This report uses 1 API call per visitor. |
| Visitor Activity | Returns information about visitor activity, including number of page views, campaign name, visit type, etc. |
| Visitor Page Views | Returns information about visitor page views, including page title, URL, and time the page view occured. |

  |
| Date Filter | Select whether to filter by created date or updated date. |
| Deleted Prospects | Select whether to include deleted prospects or only retrieve current prospects. |
| Standard fields to exclude from prospects reports | Select the standard fields you want to exclude from the report. |
| Custom fields to exclude from prospects reports | Enter a comma separated list of the custom fields you want to exclude from the Prospect report. |
| Include Custom Fields? | Select whether to include custom fields in this dataset. |
| Skip data for failed prospects | Select this checkbox to skip the failed prospects calls. Email activities will be returned without prospect details in case of failure of the prospect call. |
| Prospect Fields | Select the prospect fields to include in the data. |
| Activity Fields | Select the activity fields to include in the data. |
| Custom Fields | Select the custom fields to include in the data. |
| Identified Visitors | Select whether to include all visitors or only visitors flagged as 'identified'. |
| Append Data Type | Select how to retrieve data when using Append method. |
| Duration | Select the duration for your report. |
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


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Troubleshooting
---------------


* Some Pardot accounts may have IP security enabled. In that case, Pardot returns "Client IP address/location must be activated before accessing API." If that happens, Domo IP addresses must be whitelisted. For more information, see [http://help.pardot.com/customer/port...ion-activation](/s/article/2128460 "Whitelisting IP Addresses for Connectors").
* Pardot requires a very specific "dictionary" to decipher its results. The connector returns codes specific to every implementation. The mapping of codes to definitions requires significant maintenance.
