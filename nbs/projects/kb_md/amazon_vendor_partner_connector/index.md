---
    title: Amazon Vendor Partner Connector
    url: https://domo-support.domo.com/s/article/8677917495959
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/8677917495959](https://domo-support.domo.com/s/article/8677917495959)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003174
    views: 1,122
    created_date: 2022-10-24 21:11:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


Amazon Vendor Partner Connector programmatically access the data on listings, orders, payments, reports, and more. Applications using Selling Partner API can increase selling efficiency, reduce labor requirements, and improve response time to customers, helping sellers grow their businesses. Vendor Partner API builds on the functionality of Amazon Vendor Partner Connector but provides features to improve usability and security for developers and the sellers they work with. This guide documents the Amazon Vendor Partner Connector.


You connect to your Amazon Vendor Partner account in the Data Center. This topic discusses the fields and menus that are specific to the Amazon Selling Partner connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Best Practices
--------------


* For most reports, be conservative on date ranges. Only pull the data you need.
* Be prepared for some reports to take hours to complete; this is a limitation of the Amazon API.
* Be advised that years-old data takes much longer to retrieve.


Prerequisites
-------------


To connect to your Amazon Vendor Partner account and create a DataSet, you must have the following:




|  |  |
| --- | --- |
| **Parameter Name** | **Where to find it** |
| Username | Credentials used to log into Seller Central |
| Password | Credentials used to log into Seller Central |


Connecting to Your Amazon Vendor Partner Account
------------------------------------------------


This section enumerates the options in the Credentials and Details panes on the Amazon Selling Partner Connector page. The components of the other panes on this page, **Scheduling,** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


The DomoAmazon Selling PartnerConnector uses OAuth to connect, so there is no need to enter credentials within Domo. Click **Connect**(or select **Add Account** if you have existing Amazon Vendor Partner accounts in Domo) to open the Amazon Vendor Partner OAuth screen where you can enter your Amazon Vendor Partner username and password. Once you have entered valid Amazon Vendor Partner credentials, you can use the same account any time you go to create a new Amazon Selling PartnerDataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about the accounts tab, see [Managing User Accounts for Connectors](/s/article/360042926054).







**Note:** If you are already logged into Amazon Vendor Partner when you connect in Domo, you are authenticated automatically when you click **Add account**. If you want to connect to an account that is different from the one you are logged into, you must first log out of amazon Vendor Partner.



### Details Pane


This pane contains a primary**Report**menu, along with various other fields which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select theAmazon Selling Partnerreport you want to run. The following reports are available:

|  |  |
| --- | --- |
| Get Catalog Items | Retrieves details for an item in the Amazon catalog. |
| Search Catalog Items | Search for and return a list of Amazon catalog items and associated information. |
| Create and Download Report | Create an Amazon Report that is retrieved when Amazon has finished aggregating the information |
| Get Report | Retrieve the most recent version of the selected report |
| List Reports | Retrieve a list and status of reports in the queue. |

 |
| Country Code | Select a Country code only for UK-EU Marketplace for others it will be NA |
| Market Place | Select the desired Marketplace. |
| CSV Report Quote Character | 
Select the quote character to use to delineate columns in the CSV file version of your report. Double Quote is the default character. If your report data contains double quotes, try selecting the **Null Character**option.
 |
| Select Statuses | Select the status you want to retrieve data for. You can select up to 10 statuses. |
| SKU Selection Method | Select the method to enter SKUs. Selecting **All** will return all available SKUs from your Inventory Supply. We will dynamically show SKUs based on the query date selected. To enter a list of SKUs yourself, use the **Advanced** option. |
| Enter Seller SKUs | Enter the list of SKUs you want to retrieve data for, separated by commas.  |
| Duration | 
Select the duration for the report (a Single Date, or a Date Range).
 |
| Days Back | Enter the number of past days that should appear in the report. Specify either today (or 0), yesterday (or 1), or today-7 (or 7) to get data for 7 days into the past.   |
| Date From | Select report start date using relative or specific dates. Relative means the number of days from today or a specific date using the date selector. |
| Start Date | Specify whether the first date in your date range is specific or relative. You select the last date in your range in **End Date**.  |
| End Date | Specify whether the second date in your date range is specific or relative. You select the first date in your range in **Start Date**.  |
| Select Specific Start Date | Select the first date in your date range. |
| Select Specific End Date | Select the second date in your date range. |
| Days Back to Start From | Enter the number of the farthest day back that should be represented in the report. Specify either today(or0),yesterday(or1), or today-7(or7) to get data for 7 days into the past. Combine with **Days Back to End At** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data from 10 days ago up until 5 days ago. |
| Days Back to End At | Enter the number of the most recent day back that should be represented in the report. Specify either today(or0),yesterday(or1), or today-7(or7) to get data for 7 days into the past. Combine with **Days Back to Start From** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data from 10 days ago up until 5 days ago. |
| Query Date Type | Select the date type for the query. **Created** returns data based on the creation date. **Last Updated** will return data based on the date of the last update. |
| Continue on Invalid SKU Error | 

Amazon Selling Partner may return an error for invalid SKUs, causing the Domo dataset to stop importing with an error. Selecting '**Skip Invalid SKUs**' will continue the dataset import if an invalid SKU error is encountered. Selecting '**Warn About Invalid SKUs**' will stop dataset import with an error if an invalid SKU error is encountered.

 |
| Query | A comma-delimited list of words to search the Amazon catalog for. |


### Other Panes


A hybrid Selling Partner API application is an application that can make calls to both Selling Partner API and Amazon Marketplace Web Service (Amazon MWS). Use a hybrid application when your solution requires functionality from both services. When a seller authorizes your hybrid Selling Partner API application, they are (1) authorizing your Amazon MWS developer ID to make calls to Amazon MWS on their behalf, and (2) authorizing the application to make calls to Selling Partner API on their behalf.


FAQ
---


 


##### My Amazon store sells in multiple marketplaces across the world. How do I get all of my orders, inventory and other important Amazon MWS data?


You will need to create an account for each marketplace. We recommend naming the accounts with the marketplace location: for example, 'United States' or 'Italy'. Once you have created the needed accounts, create connector datasets using each account to receive the data that matters to you. If you would like to join the data, use Domo's Magic ETL or Dataflow tools to bring the different marketplaces together.


##### How should I configure the Orders or Order Items report?


Due to API limitations, the connector can only be set up with Append mode. Select the desired start date for your historic backfill, and use a relative end date with a value of 'yesterday' or '1'. Set the connector to only run once per day. The connector will get the most current day's data, then start getting backfill data from the most recent data to older, one day at a time. The connector will run up to 24 hours, and then will remember where it left off in the historical backfill. The next day, when the connector runs again, it will get the most current day's data appended to it first, then pick up where it left off with the historical backfill. This pattern will continue until the connector has received all data for the historical backfill. Once all the backfill is completed, it will continue to append the most current days data, one day at a time. If the connector doesn't run or is unsuccessful during a run, it is designed to receive the data it missed in both the current and historical backfill.


##### Can Domo schedule Amazon Vendor Reports on my behalf?


No. The connector is not able to schedule Amazon MWS Reports on your behalf in the Amazon Vendor API. The connector will deliver all reports in the discovery dropdown for your convenience, but you may receive a "Report not generated" error if the report is not generated. The error message will contain the name of the report in the Amazon Vendor account that needs to be generated before the connector can run successfully. Generate the report and add it to the report scheduler in your Amazon Vendor dashboard and try again. The connector report 'Reports - Schedule List' lists all scheduled reports.


##### How frequently should I run the connector schedule?


The connector should only run once per day.


Troubleshooting
---------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.
