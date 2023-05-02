

Intro
-------

Square, Inc. is a financial services, merchant services aggregator, and mobile payments company. Domo's cloud-based solution takes all your Square data and makes it visible and consumable from your phone or computer. Easily see all your Square accounts in one dashboard, with real-time updates, so you can make better decisions for your business.


 Quickly analyze your key metrics and gain insights into what action to take next. You can filter by date, location, sales category, and sales type (card or cash). See sales analytics by day or over a custom date range. You can also compare the values from a specified hour today to the same hour on a different day. To learn more about the Square API, go to

https://docs.connect.squareup.com/

.


 This topic discusses the fields and menus that are specific to the Square Multi Account connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------


 No credentials required. You can add multiple Square accounts that you want to fetch the reports for in the Details section.


###
 Details Pane

This pane contains a primary
 **Reports**
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Select the accounts to run
  |
 Select the accounts you wish to run
  |
|
 Skip Errors
  |
 If an account fails, it will be skipped. Otherwise, the connector will stop.
  |
|
 Report
  |
 Select the report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Catalog
  |
 Returns information about product inventory & catalog.
  |
|
 Customers
  |
 Returns summary information for all of the merchant's customers.
  |
|
 Labor Break Types
  |
 Returns possible break types.
  |
|
 Labor Shifts
  |
 Returns shift data
  |
|
 Labor Wages
  |
 Returns wages for team.
  |
|
 Locations
  |
 Returns the merchant's locations information.
  |
|
 Orders
  |
 Returns the information about orders.
  |
|
 Payments
  |
 Returns payment information
  |
|
 Refunds
  |
 Returns details for all refunds initiated by the merchant or any of the merchant's mobile staff.
  |
|
 Team Members
  |
 Returns summary information on about the Team.
  |
|
 v1 - Cash Drawer Shifts - Deprecated
  |
 Deprecation 2020-02-26 - use v2 Cash Drawer Shift
  |
|  |  |
|
 v1 - Merchant
  |
 Returns the merchant's account information, such as business name and email address.
  |
|
 v1 - Payments
  |
 Returns information for all payments taken by the merchant or any of the merchant's mobile staff.
  |
|
 v1 - Payment Itemization
  |
 Returns information for all payments taken by the merchant or any of the merchant's mobile staff, broken down into itemized payment information, including discounts, modifiers and taxes.
  |
|
 v1 - Refunds
  |
 Returns details for all refunds initiated by the merchant or any of the merchant's mobile staff.
  |
|
 v1 - Settlements Entries
  |
 Returns information about all transactions in a settlement.
  |
|
 v1 - Settlements
  |
 Returns summary information for all deposits and withdrawals initiated by Square to the merchant's bank account.
  |

|
|
 Location Selection
  |
 Select whether you want to select all locations or from input datasets.
  |
|
 Ignore Accounts
  |
 Check to ignore account selection and pull data based as listed in the InputDataSet
  |
|
 Domo DataSet Id
  |
 Enter your Domo dataset ID(GUID) located in the dataset url. example:

https://customer.domo.com/datasources/

*aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee**
 /details/settings
  |
|
 Account Column
  |
 Input the column exactly as found in your DataSet that has the Account Names
  |
|
 Location Column
  |
 Input the column exactly as found in your DataSet that has the location IDs
  |
|
 Entry Type
  |
 SearchOrders will return OrderEntry objects instead of Order objects. OrderEntry objects are lightweight descriptions of orders that include order\_ids.
  |
|
 Settlement Status
  |
 Select the status of the settlement you'd like to filter by. Note that Square does not know when a settlement that's been sent for processing completes, only whether it's failed.
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


 Note:


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


 Note:


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

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------

###

What kind of credentials do I need to power up this connector?

No credentials required. You can add multiple Square accounts that you want to fetch the reports for in the Details section.

###

How often can the data be updated?

Datasets can be updated as often as once an hour. Update frequency should be decreased if rate limit errors are encountered.

###

Are there any API limits that I need to be aware of?

No


