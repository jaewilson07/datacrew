---
title: Infusionsoft/Infusionsoft Enterprise Connector
url: https://domo-support.domo.com/s/article/360043432213
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043432213](https://domo-support.domo.com/s/article/360043432213)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003685
views: 1,095
created_date: 2022-10-24 21:14:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


Infusionsoft offers an e-mail marketing and sales platform for small businesses, including products to streamline the customer lifecycle, customer relationship management, marketing automation, lead capture, and e-commerce. To learn more about the Infusionsoft API, visit their page ([https://developer.infusionsoft.com/](https://developer.infusionsoft.com/ "https://developer.infusionsoft.com/")).  


The Infusionsoft and Infusionsoft Enterprise connectors are exactly the same, except that the Enterprise version asks you for a client ID and a client secret in addition to the usual email address and password. This provides an extra layer of security. 


You connect to your Infusionsoft account in the Data Center. This topic discusses the fields and menus that are specific to the Infusionsoft connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Infusionsoft account and create a DataSet, you must have the following:


* The email address you used to register with Infusionsoft
* Your Infusionsoft password
* An Infusionsoft client ID and client secret (Enterprise version only)


Refer to [this article](https://developer.infusionsoft.com/getting-started-oauth-keys/ "https://developer.infusionsoft.com/getting-started-oauth-keys/") to learn how to find your client ID and client secret. 


Connecting to Your Infusionsoft Account
---------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Infusionsoft Connector page. The components of the other panes in this page, **Scheduling**and **Name & Describe Your DataSet,** are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


Both versions of the Infusionsoft connector (standard as well as Enterprise) use OAuth to connect. In the Enterprise version of the connector, you are also asked to enter your client ID and client secret. (These fields do not appear in the standard version of the connector.) For information about finding these credentials, go here: [https://developer.infusionsoft.com/g...ed-oauth-keys/](https://developer.infusionsoft.com/getting-started-oauth-keys/ "https://developer.infusionsoft.com/getting-started-oauth-keys/")


Once you have entered your client ID and client secret (Enterprise version only), click **Connect** (or select **Add Account** if you have existing Infusionsoft accounts in Domo) to open the Infusionsoft OAuth screen where you can enter your Infusionsoft email address and password. Once you have entered valid Infusionsoft credentials, you can use the same account any time you go to create a new Infusionsoft DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




 


**Note:** If you are already logged into Infusionsoft when you connect in Domo, you are authenticated automatically when you click **Add account**. If you want to connect to an account that is different from the one you are logged into, you must first log out of Infusionsoft.



### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Infusionsoft report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Affiliate - Clawbacks | Retrieves all clawed back commissions for a particular affiliate. |
| Affiliate - Commissions | Retrieves all commissions for a specific affiliate within a date range. |
| Affiliate - Payments | Retrieves all payments for a specific affiliate within a date range. |
| Affiliate - Redirect Links | Retrieves a list of the redirect links for the specified Affiliate. |
| Affiliate Summary | Retrieves a summary of statistics for a list of affiliates. |
| Affiliate - Running Totals | Retrieves the current balances for Amount Earned, Clawbacks, and Running Balance. |
| Affiliate Program - All Programs | Retrieves a list of all Affiliate Programs in the application. |
| Affiliate Program - Affiliate's Programs | Retrieves a list of all of the Affiliate Programs for the specified affiliate. |
| Affiliate Program - Program's Affiliates | Retrieves a list of all of the affiliates with their contact data for the specified program. This includes all of the custom fields defined for the contact and affiliate records that are retrieved. |
| Affiliate Program - Resources | Retrieves a list of resources that associated with the specified Affiliate Program. |
| Contacts - By Email Address | Retrieves all contacts with the given email address. Searches the "Email," "Email 2," and "Email 3" fields. |
| Contacts - By ID | Retrieves all contacts with the given ID. |
| Contacts - By Tags | Retrieves all contacts with the given tag. |
| Data - Record by ID | Retrieves the requested fields from a specified record. |
| Data - Query a Data Table | Performs a query across the given table based on the provided query data. |
| Discount - Category | Returns the options and values of the specified category discount ID. |
| Discount - Category Assignments | Retrieves the options and values of the category assignment for category discount passed. |
| Discount - Order's Discount | Retrieves an order's total discount. |
| Discount - Product Total | Retrieves a product's total discount. |
| Discount - Shipping  | Retrieves a shipping discount.  |
| Discount - Subscription's Free Trial | Retrieves a subscription's free trial information. |
| Get File | Retrieves the file data for the specified file ID. |
| Invoice - Amount Due | Retrieves the outstanding amount for an invoice. |
| Invoice - Available Payment Options | Retrieves all payment types available within the requested Infusionsoft account. |
| Invoice - Payments | Retrieves invoice payments. |
| Invoice - Available Shipping Options | Retrieves all shipping options available in the specified Infusionsoft account. |
| Product - Inventory | Retrieves the inventory data for a specified product. |
| Search - Available Fields | Retrieves a report's available fields. |
| Search - Saved Search | Retrieves a complete report from a saved search. |
| Search - Saved Search New | Retrieves a partial report from a saved search. |
| Shipping - Available Shipping Options | Retrieves available shipping options. |
| Shipping - Flate Rate Shipping Options | Retrieves flat rate shipping options. |
| Shipping - Order Quantity Shipping Options | Retrieves order quantity shipping options. |
| Shipping - Order Shipping Options | Retrieves order shipping options. |
| Shipping - Order Shipping Ranges | Retrieves range information for order shipping. |
| Shipping - Product Shipping Options | Retrieves product shipping options. |
| Shipping - UPS Shipping Options | Retrieves UPS shipping options. |
| Shipping - Weight-Based Shipping Options | Retrieves weight-based shipping options. |
| Webform IDs | Retrieves a list of webforms created within Infusionsoft. |

 |
| Affiliate ID(s) | Select the affiliate program(s) you want to retrieve information for. |
| Program ID | Select the program you want to retrieve information for. |
| Email | Enter the email address you want to retrieve information for. |
| Selected Fields | Select all fields you want returned in your report.   |
| Contact ID | Enter the ID of the contact you want to retrieve information for. |
| Tags | Select all tags you want to retrieve data for. |
| Table | Select the table you want to retrieve data for. |
| Record ID | Enter the record ID you want to retrieve data for. |
| Fields | Enter fields you want returned in your report. |
| Query | Enter a search query. This should be a comma-separated list of key-value pairs. (For example, 'GroupId':'12,30','City':'Ogden' would query for the groupId in 12 or 30 AND a city of Ogden). The key is the field to search on, and the value is the data to look for. % is the wild card operator. All searches are case-insensitive. If you would like to query for an empty (null) field, use ~null~ in your query parameter, e.g. 'FirstName':'~null~'. 
You can also query on date fields. Here are some examples:* 'LastUpdated':'2016-01-20%' would find data updated on a day.
* 'LastUpdated':'2016%' would find data updated on year.
* 'LastUpdated':'~>=~2015-12-15' would find data updated on greater than date "2015-12-15."
* 'LastUpdated':'~>=~2015-12-15 08:15:00' would find data updated on greater than the provided date and time.
* 'LastUpdated':'~>=~LastSuccessfulRun' can be used for finding all data updated after last successful run.
 |
| Category Discount ID | Enter the ID of the category discount you want to retrieve information for. |
| Discount ID | Enter the ID of the discount you want to retrieve information for. |
| Product Discount ID | Enter the ID of the product discount you want to retrieve information for. |
| Shipping Discount ID | Enter the ID of the shipping discount you want to retrieve information for. |
| Trial ID | Enter the ID of the trial you want to retrieve information for. |
| Filter Saved Searches | Enter the name of the saved search you want to retrieve. Enter \* to retrieve all saved searches. |
| Saved Search | Select the saved search you want to retrieve. |
| Option ID | Enter the ID of the option you want to retrieve information for. |
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


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


FAQs
----


##### How do I know my Infusionsoft account credentials are secure?


Both versions of the Infusionsoft connector use Oauth, which authenticates the account without Domo ever having access to your Infusionsoft account credentials.


##### How often can the data be updated?


As often as needed.


##### Are there any API limits I should be aware of?


No.


##### Can I use the same Infusionsoft account for multiple DataSets?


Yes.


##### When I click **Add Account**, why am I getting automatically validated without having to enter credentials?


If you are already logged into Infusionsoft when you connect to Domo, you are authenticated automatically when you click **Add account**. If you want to connect to an account that is different from the one you are logged into, you must first log out of Infusionsoft.


##### My DataSet is taking a long time to run. What's going on?


The Infusionsoft API often returns particular errors. Domo's Infusionsoft connector waits for a certain amount of time then retries if it receives one of these errors.


* If the Infusionsoft API returns "[DatabaseError] Query took too long and was cancelled," we will retry with a rolling backoff 5 times starting with 5 seconds, then 10 seconds, 30 seconds, 1 minute, up until 5 minutes. By then it will usually fail with "This saved search is blocked temporarily."
* If Infusionsoft API returns "[DatabaseError] Too many consecutive failures. This saved search is blocked temporarily," we will retry every 20 minutes up to 10 times.


##### What can I do if my DataSets are running slowly?


Infusionsoft allows only a certain number of requests per day. To avoid rate limit errors, the DataSets are throttled to not exceed that number. If you want your DataSets to run more quickly, use the Infusionsoft Enterprise connector to avoid being in the same throttling pool as other Domo customers.


##### What values should I use when registering an application (Enterprise version only)?


All of the fields are optional except for the name of your application, for which you can choose whatever name you feel is appropriate. For extra security, you may want to enter the Register Callback URL: [https://oauth.domo.com/api/data/v1/o...prise/exchange](https://oauth.domo.com/api/data/v1/oauth/providers/infusionsoft-enterprise/exchange "https://oauth.domo.com/api/data/v1/oauth/providers/infusionsoft-enterprise/exchange").


 

