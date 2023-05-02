

Intro
-------

Coupa is a cloud-based spend management platform that unifies business processes across your entire organization. To learn more about the Coupa API, visit their page (

https://coupadocs.atlassian.net/wiki...4478/Coupa+API

).


 You connect to your Coupa account in the Data Center. This topic discusses the fields and menus that are specific to the Coupa connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Coupa account and create a DataSet, you must have the following:

 A Coupa API key. You can create an API key within the
 **API Keys**
 section of the
 **Adminstration**
 tab in Coupa. You must be an admin user to be able to do this.
* Your Coupa instance. This is the portion of your Coupa URL immediately following

https://

. For example if your instance URL was


 https://domo.coupahost.com


 , you would enter

domo

as your instance.

Connecting to Your Coupa Account
----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Coupa Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Coupa account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your Coupa API key.
  |
|
 Instance
  |
 Enter your Coupa instance name.
  |

For more information about obtaining these credentials, see "Prerequisites," above.

Once you have entered valid Coupa credentials, you can use the same account any time you go to create a new Coupa DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


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
 Report
  |
 Select the Coupa report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Invoices
  |
 Returns Coupa invoices.
  |
|
 Invoice Lines
  |
 Returns invoice lines for each applicable Coupa invoice. Relates to Invoices by invoice id.
  |
|
 Invoice Payments
  |
 Returns invoice payments for each applicable Coupa invoice. Relates to Invoices by invoice id.
  |
|
 Invoice Tax Lines
  |
 Returns invoice tax lines for each applicable Coupa invoice. Relates to Invoices by invoice id.
  |
|
 Invoice Approvals
  |
 Returns invoice approvals for each applicable Coupa invoice. Relates to Invoices by invoice id.
  |
|
 Purchase Order Changes
  |
 Returns purchase orders with change orders.
  |
|
 Purchase Order Changes Approvals
  |
 Returns approvals for purchase orders with change orders.
  |
|
 Purchase Order Changes Order Lines
  |
 Returns order lines for purchase orders with change orders.
  |
|
 Purchase Orders
  |
 Returns Coupa purchase orders.
  |
|
 Purchase Order Lines
  |
 Returns order lines for each applicable purchase order. Relates to Purchase Orders by purchase order id.
  |
|
 Requisitions
  |
 Returns Coupa requisitions.
  |
|
 Requisition Approvals
  |
 Returns Coupa requisition approvals.
  |
|
 Requisition Lines
  |
 Returns requisition lines for each applicable requisition. Relates to Requisitions by requisition id.
  |
|
 Accounts
  |
 Returns a list of Coupa accounts.
  |
|
 Addresses
  |
 Returns a list of Coupa addresses.
  |
|
 Content Groups
  |
 Returns a list of Coupa content groups.
  |
|
 Currencies
  |
 Returns a list of Coupa currencies.
  |
|
 Contracts
  |
 Returns a list of Coupa contracts.
  |
|
 Departments
  |
 Returns a list of Coupa departments.
  |
|
 Exchange Rates
  |
 Returns a list of Exchange Rates.
  |
|
 Suppliers
  |
 Returns a list of Coupa suppliers.
  |
|
 Users
  |
 Returns a list of Coupa users.
  |

|
|
 Duration
  |
 Select whether you want to pull data for a specific date or a date range.
  |
|
 Report Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |
|
 Select Specific Date
  |
 Select the date for the report.
  |
|
 Days Back
  |
 Enter the number of past days that should appear in the report.
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
 Select the first date in your date range.
  |
|
 Select Specific End Date
  |
 Select the second date in your date range.
  |
|
 Days Back to Start From
  |
 Enter the number of the farthest day back that should be represented in the report. Combine with
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
 Enter the number of the most recent day back that should be represented in the report. Combine with
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
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Days to Retrieve
  |
 Enter the number of days back to retrieve data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.


 FAQ
-----


#####
 How often can the data be updated?

DataSets can be updated as often as once per hour.

####
 Are there any API limits that I need to be aware of?

Coupa does not document any limits in their API.

####


