

Intro
-------


 Selling Partner API is a REST-based API that helps Amazon sellers programmatically access their data on listings, orders, payments, reports, and more. Applications using Selling Partner API can increase selling efficiency, reduce labor requirements, and improve response time to customers, helping sellers grow their businesses. Selling Partner API builds on the functionality of Amazon Marketplace Web Service (Amazon MWS), but provides features to improve usability and security for developers and the sellers they work with. This guide documents the Amazon Selling Partner connector.


 You connect to your Amazon Selling Partner account in the Data Center. This topic discusses the fields and menus that are specific to the Amazon Selling Partner connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in


 a DataSet Using a Data Connector


 .

Best Practices
----------------


* For most reports, be conservative on date ranges. Only pull the data you need.
* Be prepared for some reports to take hours to complete; this is a limitation of the Amazon API.
* Be advised that years-old data takes much longer to retrieve.

Prerequisites
---------------

To connect to your Amazon Selling Partner account and create a DataSet, you must have the following:

  |  |
| --- | --- |
| **Parameter Name**  | **Where to find it**  |
|
 Username
  |
 Credentials used to log into Seller Central
  |
|
 Password
  |
 Credentials used to log into Seller Central
  |
|
 Country Code
  |
 Select a Country code only for UK-EU Marketplace for others it will be NA
  |
|
 Marketplace
  |
 Select desired marketplace
  |

Connecting to Your

Amazon Selling Partner

Account
-----------------------------------------------------------

This section enumerates the options in the Credentials and Details panes on the Amazon Selling Partner Connector page. The components of the other panes on this page,


**Scheduling**


 and


**Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo

Amazon Selling Partner

Connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click


**Connect**


 (or select


**Add Account**


 if you have existing Amazon Selling Partner accounts in Domo) to open the Amazon Selling Partner OAuth screen where you can enter your Amazon Selling Partner username and password. Once you have entered valid Amazon Selling Partner credentials, you can use the same account any time you go to create a new

Amazon Selling Partner

DataSet. You can manage connector accounts in the


**Accounts**


 tab in the Data Center. For more information about the accounts tab, see

Managing User Accounts for Connectors

.

*Note:**


 If you are already logged into

Amazon Selling Partner

when you connect in Domo, you are authenticated automatically when you click


**Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of amazon Selling Partner.


###
 Details Pane

This pane contains a primary


**Report**


 menu, along with various other fields which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the

Amazon Selling Partner

report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Fulfillment Inventory - List Inventory Supply
  |
 Returns a list of inventory summaries that have had changes after the date specified.
  |
|
 Products - My Price for SKU
  |
 Returns pricing information for your own offer listings, based on SellerSKU.
  |
|
 Products - Competitive Prices By SKU
  |
 Returns the current competitive price of a product, based on SellerSKU.
  |
|
 Products - Product Categories for SKU
  |
 Returns the parent product categories that a product belongs to, based on SellerSKU.
  |
|
 Products - List Matching Products
  |
 Returns a list of products and their attributes, based on a search query.
  |
|
 Fulfillment Inbound Shipment - Inbound Shipment Items
  |
 Returns a list of items in a specified inbound shipment, or a list of items that were updated within a specified time frame.
  |
|
 Fulfillment Inbound Shipment - List Inbound Shipments
  |
 Returns a list of inbound shipments based on criteria that you specify.
  |
|
 Fulfillment Outbound Shipment - Fulfillment Orders
  |
 Returns a list of outbound shipments fulfilled by Amazon/Seller. This date is used to select fulfillment orders that were last updated after (or at) the specified day. An update is defined as any change in fulfillment order status, including the creation of a new fulfillment order.
  |
|
 Marketplace Participations
  |
 Returns a list of marketplaces that the seller submitting the request can sell in and information about the seller's participation in those marketplaces.
  |
|
 Order Details
  |
 Returns orders created or updated during a time frame that you specify. The update mode will be set to append by the connector.
  |
|
 Order Items
  |
 Returns line-item-level data for orders between the dates you specify. The update mode will be set to append by the connector.
  |
|
 Orders - List Orders - Upsert
  |
 Returns orders updated since the date you specify. The connector will automatically get the latest data up to 15 minutes ago. The update mode will be set to merge by the connector.
  |
|
 Orders - List Order Items By Input Dataset
  |
 Returns line item level data for orders you specify through an input dataset. The input dataset should be the dataset created for either
 **Order Details**
 or
 **Orders - List Orders - Upsert**
 report. The update mode will be set to merge by the connector.
  |
|
 Orders - List Order Items Upsert
  |
 Returns line item level data for orders created since the date you specify. The connector will automatically get the latest data up to 15 minutes ago. The update mode will be set to merge by the connector.
  |
|
 Create and Download Report
  |
 Allows you to request a number of pre-built reports from Amazon that can help selling partners manage their businesses.

The following describes the different waiting periods for different ReportTypes:
 * Report-Creation Time (when they select a report)
* Report-Import Time (when they run or re-run a report)
* Frustration Time (when they are unable to understand as to why their report is failing)
 |

|
|

Report Detail Filter

|

Select the desired report detail filter.

|
|

CSV Report Quote Character

|


 Select the quote character to use to delineate columns in the CSV file version of your report. Double Quote is the default character. If your report data contains double quotes, try selecting the
 **Null Character**
 option.


 |
|

Select Statuses

|

Select the status you want to retrieve data for. You can select up to 10 statuses.

|
|

SKU Selection Method

|

Select the method to enter SKUs. Selecting
 **All**
 will return all available SKUs from your Inventory Supply. We will dynamically show SKUs based on the query date selected. To enter a list of SKUs yourself, use the
 **Advanced**
 option.

|
|

Enter Seller SKUs

|

Enter the list of SKUs you want to retrieve data for, separated by commas.

|
|
 Pull report data by
  |
 Select the type to pull report data. Report data can be pulled by Date or by ASIN.
  |
|

Duration

|


 Select the duration for the report (a Single Date, or a Date Range).


 |
|

Days Back

|

Enter the number of past days that should appear in the report. Specify either

today

(or

0

),

yesterday

(or

1

), or

today-7

(or

7

) to get data for 7 days into the past.

|
|
 Date From
  |
 Select report start date using relative or specific dates. Relative meaning number of days from today or a specific date using the date selector.
  |
|

Start Date

|
 Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in
 **End Date**
 .
  |
|

End Date

|

Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in
 **Start Date**
 .

|
|

Select Specific Start Date

|

Select the first date in your date range.

|
|

Select Specific End Date

|

Select the second date in your date range.

|
|

Days Back to Start From

|
 Enter the number of the farthest day back that should be represented in the report. Specify either

today

(or

0

),

yesterday

(or

1

), or

today-7

(or

7

) to get data for 7 days into the past. Combine with
 **Days Back to End At**
 to create a range of represented days.


 For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|

Days Back to End At

|
 Enter the number of the most recent day back that should be represented in the report. Specify either

today

(or

0

),

yesterday

(or

1

), or

today-7

(or

7

) to get data for 7 days into the past. Combine with
 **Days Back to Start From**
 to create a range of represented days.


 For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|

Query Date Type

|

Select the date type for the query.
 **Created**
 returns data based on the creation date.
 **Last Updated**
 will return data based on the date of the last update.

|
|

Continue on Invalid SKU Error

|


 Amazon Selling Partner may return an error for invalid SKUs, causing the Domo dataset to stop import with an error. Selecting '
 **Skip Invalid SKUs**
 ' will continue the dataset import if an invalid SKU error is encountered. Selecting '
 **Warn About Invalid SKUs**
 ' will stop dataset import with an error if an invalid SKU error is encountered.


 |
|

Query

|

A comma-delimited list of words to search the Amazon catalog for.

|
|

Basic Scheduling

|

Choose a predefined update schedule (every day between 9 AM and 10 AM)

 Specify a daily window of activity for 15-minute, 30-minute, and hour intervals

With a
 **Manual schedule**
 , you can opt-in to receive a reminder when the data needs to be updated

|
|

Advanced Scheduling

|

Define a fine-grained schedule with a specific time or update frequency

 Limit the schedule to run on specific days and months
* Start scheduled updates on a future date with
 **Delay Start**


**Note:**
 Schedules are set from the current time in UTC
  |
|

Update Mode

|

When Domo retrieves your data from the source, you can determine how that new data is imported into the current DataSet. For this connector, we offer to Append and Replace.

|
|

Append Mode

|

This method will take your new data and add it to your current DataSet. Using this may create duplicate data entries.

|
|

Replace Mode

|

This method will take your current DataSet and replace it with new data. Using this may result in some data loss.

|


###
 Other Panes

A hybrid Selling Partner API application is an application that can make calls to both Selling Partner API and Amazon Marketplace Web Service (Amazon MWS). Use a hybrid application when your solution requires functionality from both services. When a seller authorizes your hybrid Selling Partner API application, they are (1) authorizing your Amazon MWS developer ID to make calls to Amazon MWS on their behalf, and (2) authorizing the application to make calls to Selling Partner API on their behalf.

##
 FAQ


#####
 What API version does Amazon Selling partner use?

Amazon Selling partner uses version 0 of the API.

####
 My Amazon store sells in multiple marketplaces across the world. How do I get all of my orders, inventory and other important Amazon Seller Partner data?

You will need to create an account for each marketplace. We recommend naming the accounts with the marketplace location: for example, 'United States' or 'Japan'. Once you have created the needed accounts, create connector datasets using each account to receive the data that matters to you. If you would like to join the data, use Domo's Magic ETL or Dataflow tools to bring the different marketplaces together.

####
 How should I configure the Orders details or Order Items report?

The connector can be set up with Append mode and Replace mode.


**Append Mode**
 : Once you select the append mode you can select the desired start date for your historic backfill, and use a relative end date with a value of 'yesterday' or '1'. Set the connector to only run once per day. The connector will get the most current day's data, then start getting backfill data from the most recent data to older, one day at a time. The connector will run for up to 24 hours and then will remember where it left off in the historical backfill. The next day, when the connector runs again, it will get the most current day's data appended to it first, then pick up where it left off with the historical backfill. This pattern will continue until the connector has received all data for the historical backfill. Once all the backfill is completed, it will continue to append the most current days data, one day at a time. If the connector doesn't run or is unsuccessful during a run, it is designed to receive the data it missed in both the current and historical backfill.


**Replace Mode**
 : Once you select the replace mode, it will replace the existing data with new data for the selected date range

####
 How frequently should I run the connector schedule?

The connector should only run once per day.


 Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


