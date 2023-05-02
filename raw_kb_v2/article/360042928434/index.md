

Intro
-------

Square, Inc. is a financial services, merchant services aggregator, and mobile payments company. You can use Domo's Square connector to retrieve financial data such as settlements, payments, refunds, and so on. To learn more about the Square API, go to

https://developer.squareup.com/docs/

.


 The Square connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 This topic discusses the fields and menus that are specific to the Square connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 Use this connector to retrieve data about inventory, sales, payments, refunds, and bank deposits.
  |
|
**Primary Metrics**
 | * Items in inventory
* Payment and sales information
* Refunded amounts
* Cashflow going to bank account
* Locations payments are being made
* Amounts generated per location
 |
|
**Primary Company Roles**
 | * CFO
* Accounting
* Sales
* Warehouse
 |
|
**Average Implementation Time**
 |
 A few minutes
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 2
  |

Prerequisites
---------------

To connect to your Square account and create a DataSet, you must have the following:

 The email address you use to log into your Square account
* The password for your Square account

Connecting to Square
----------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Square connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Square connector uses OAuth to connect. Click

*Add account**

to open the Square OAuth screen where you can enter the email address associated with your Square account and your password. An authenticated user session in Square in another browser tab should complete OAuth for the user with the active browser session. After you have entered valid credentials, you can use the same account in Domo any time you create a Square DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

In this pane you choose your report type as well as any required parameters.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select a Square report. The following reports are available:


|  |  |
| --- | --- |
|
 Cash Drawer Shifts
  |

Returns details for all cash drawer shifts during a date range.

|
|
 Items
  |
 Returns summary information for all of the merchant's items.
  |
|
 Locations
  |
 Returns details on all locations in which transactions have been made.
  |
|
 Merchant
  |
 Returns the merchant's account information, such as business name and email address.
  |
|
 Payments
  |
 Returns summary information for all payments taken by the merchant or any of the merchant's mobile staff.
  |
|
 Payment Itemization
  |

Returns information for all payments taken by the merchant or any of the merchant's mobile staff, broken down into itemized payment information, including discounts, modifiers and taxes.

|
|
 Refunds
  |
 Returns details for all refunds initiated by the merchant or any of the merchant's mobile staff.
  |
|
 Settlements
  |
 Returns summary information for all deposits and withdrawals initiated by Square to the merchant's bank account.
  |

|
|
 Date From
  |
 Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in
 **Date To**
 .
  |
|
 Select Specific Date From
  |
 Select the first date in your date range.


**Note:**
 The connector will throw an error if a date range greater than 1 year is selected.


 |
|
 Date To
  |
 Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in
 **Date From**
 .
  |
|
 Select Specific Date To
  |
 Select the last date in your date range.


**Note:**
 The connector will throw an error if a date range greater than 1 year is selected.


 |
|
 Date From Offset
  |
 Enter the number of the farthest day back that should be represented in the report. Combine with
 **Date To Offset**
 to create a range of represented days.


 For example, if you entered

10

for
 **Date From Offset**
 and

5

for
 **Date To Offset**
 , the report would contain data for

10

days ago up until

5

days ago.
  |
|
 Date To Offset
  |
 Enter the number of the most recent day that should be represented in the report. Combine with
 **Date From Offset**
 to create a range of represented days.


 For example, if you entered

10

for
 **Date From Offset**
 and

5

for
 **Date To Offset**
 , the report would contain data for

10

days ago up until

5

days ago.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


* Ensure your credentials are valid.
* Make sure you have reasonable date ranges. The connector will throw an error if a date range greater than 1 year is selected.

FAQs
------


####
 How do I know my credentials are secure?

The login process uses OAuth, so your login credentials are never seen or stored by Domo. You can revoke Domo's access to your Square account at any time.

###
 How often can the data be updated?

DataSets can be updated as often as once an hour. Update frequency should be decreased if rate limit errors are encountered.

###
 Are there any API limits I should be aware of?

Square does not document rate limits in its API.

###
 What is the difference between the Square and Square V2 connectors?

The

Square V2 connector

supports Catalog, Customers, Locations, Refunds, and Transactions reports. The Square connector supports Items, Locations, Merchant, Payments, Payment Itemization, Refunds, and Settlements reports

