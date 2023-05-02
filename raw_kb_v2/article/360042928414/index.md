

Intro
-------

QuickBooks Online is the most commonly used small business accounting and financial management software. It allows users to track sales and customer information and provide reports for managing the business and serving their customers. Use Domo's QuickBooks Online Reports connector to retrieve data about all financial aspects of your business. To learn more about the QuickBooks Online Reports API, visit their page (

https://developer.intuit.com/app/developer/qbo/docs/api/accounting/most-commonly-used/account

).


**Note:**
 The user interface for building this connector is not yet available in our Connectors listing in the Data Center, meaning you will not be able to configure the connector on your own. However, we at Domo are more than happy to configure the connector for you so you can begin using it to pull your data into Domo. Please don't hesitate to reach out to your CSM or Domo Support. For contact information, see


 Getting Help


 .


 You connect to your QuickBooks Online account in the Data Center. This topic discusses the fields and menus that are specific to the QuickBooks Online Advanced connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 You can also pull on-premise QuickBooks Online data using Workbench, a secure, client-side solution for uploading your data in Domo. In addition to QuickBooks, you can use Workbench to upload data from other systems using CSV, JIRA, JSON, Microsoft Excel, ODBC, OLAP, and XML. For more information, see

Connecting to Quickbooks Data in Workbench 5


|  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 Pulling financial accounting reports.
  |
| **Primary Metrics**  | * Revenue
* Costs
* P&L line items
* Balance sheet items
 |
|
**Primary Company Roles**
 | * Accountants
* Purchasers
* CFOs
* Controllers
 |
|
**Average Implementation Time**
 |
 The advanced version of the QuickBooks Online connector usually runs longer due to broader date controls. Longer date ranges will make the connector run longer.
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 7
  |

Best Practices
----------------

The advanced QuickBooks Online connector has many additional configuration controls over the standard version. Limit the requested date limits to reasonable amounts. For example, if the customer only needs data for the last quarter, don't request the entire year.


 Prerequisites
---------------

To connect to a QuickBooks Online account and create a DataSet, you must have the following:

 The email address or user ID you use to connect to QuickBooks Online.
* The password you use to connect to QuickBooks Online.

Prerequisites
---------------

To connect to your QuickBooks Online account and create a DataSet, you must have the following:

 The email address or user ID you use to connect to QuickBooks Online
* Your QuickBooks Online password

Connecting to Your QuickBooks Online Account
----------------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the QuickBooks Online Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo QuickBooks Online connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing QuickBooks Online accounts in Domo) to open the QuickBooks Online OAuth screen where you can enter your QuickBooks Online credentials. Once you have entered valid QuickBooks Online credentials, you can use the same account any time you go to create a new QuickBooks Online DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into QuickBooks Online when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of QuickBooks Online.


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
 Select the QuickBooks Online report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Account List
  |
 Shows the name, type, and balance for each account for the specified company.
  |
|
 A/P Aging Detail
  |
 Provides a detailed report for unpaid bills in accounts payable for the specified company.
  |
|
 A/P Aging Summary
  |
 Summarizes the status of unpaid bills in accounts payable for the specified company.
  |
|
 A/R Aging Detail
  |
 Provides a detailed report for unpaid bills in accounts receivable for the specified company.
  |
|
 A/R Aging Summary
  |
 Shows accounts receivable for the specified company, along with the amount of time the amounts have been outstanding.
  |
|
 Balance Sheet
  |
 Summarizes a specified company's assets, liabilities, and shareholders' equities.
  |
|
 Customer Balance Detail
  |
 Shows a detailed report for customer balances for the specified company.
  |
|
 Customer Balance Summary
  |
 Shows a summary of customer balances for the specified company.
  |
|
 Expenses by Vendor
  |
 Shows expenses by vendor for the specified company.
  |
|
 General Ledger
  |
 Shows all transactions that have occurred in each account for the specified company, with the beginning balance and total for each account.
  |
|
 Income by Customer Summary
  |
 Shows income by customer for the specified company.
  |
|
 Inventory Valuation Summary
  |
 Shows the monetary value of items that make up the inventory for the specified company.
  |
|
 Profit and Loss
  |
 Summarizes income and expenses for the specified company.
  |
|
 Profit and Loss Detail
  |
 Provides a detailed profit and loss report for the specified company.
  |
|
 Sales by Class Summary
  |
 Shows sales by class for the specified company.
  |
|
 Sales by Customer Summary
  |
 Shows sales by customer for the specified company.
  |
|
 Sales by Department Summary
  |
 Shows sales by department for the specified company.
  |
|
 Sales by Product/Service Summary
  |
 Shows sales by product or service for the specified company.
  |
|
 Statement of Cash Flows
  |
 Returns a cash flow statement for the specified company.
  |
|
 Tax Summary
  |
 Provides a tax summary for the specified agency.
  |
|
 Trial Balance
  |
 Returns credit and debit information for all accounts for the specified company.
  |
|
 Vendor Balance Detail
  |
 Lists vendor balances for the specified company.
  |
|
 Vendor Balance Summary
  |
 Shows a summary of vendor balances for the specified company.
  |

|
|
 Company ID
  |
 Enter the numerical ID of the company you want to retrieve data for.
  |
|
 Accounting Method
  |
 Select the accounting method for your data, either cash or accrual.
  |
|
 Aging Period
  |
 Enter the number of days in the aging period.
  |
|
 Class
  |
 Enter a comma-separated list of class IDs to retrieve data for.
  |
|
 Customer
  |
 Enter a comma-separated list of customers to retrieve data for.
  |
|
 Department
  |
 Enter a comma-separated list of departments to retrieve data for.
  |
|
 Item
  |
 Enter a comma-separated list of items to retrieve data for.
  |
|
 Number of Periods
  |
 Enter the number of periods to be shown in the report.
  |
|
 Past Days
  |
 Enter the number of past days that should be represented in the report. For example, if you entered

30

, the report would contain data for the last 30 days.
  |
|
 Query
  |
 Enter a query to filter your data.
  |
|
 Breakdown
  |
 Select how you want the data in the report to be broken down. For example, if you selected
 **Week**
 , data in your report would be broken down by week.
  |
|
 Vendor
  |
 Enter a comma-separated list of vendors to retrieve data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------

The QuickBooks Online connector retrieves reports from Quickbooks exactly as they appear. If you change a report for an ad-hoc analysis inside Quickbooks, that change will be reflected in the report. Using a system user that has standard reports in Quickbooks is a good alternative to this problem.

