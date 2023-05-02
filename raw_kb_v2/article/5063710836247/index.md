

Intro
-------

QuickBooks is an accounting software used to help small businesses accept payments, pay bills, and complete payroll. With Domo you can combine multiple QuickBooks accounts through a one-click authentication process, providing you with consolidated reporting across multiple metrics. Using Domo and QuickBooks together gives you customizable dashboards that you can create by integrating your QuickBooks data with essential marketing, sales, or operational data.


 Once your data is in Domo, you can give stakeholders financial transparency with powerful and flexible charts, visualizing things like balance sheets, profit and loss, vendor balances, and more. And you can access all your data in real time, from any device. Easily see all your QuickBooks accounts in one dashboard, with real-time updates, so you can make better decisions for your business.

To learn more about the QuickBooks API, go to


 https://developer.intuit.com/docs/0050\_quickbooks\_api


 .

This topic discusses the fields and menus that are specific to the

QuickBooks

Multi Account connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------


 No credentials required. You can add multiple QuickBooks accounts that you want to fetch the reports for in the Details section.


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
 Account Selection
  |
 Select how would you like to choose your accounts.
  |
|
 Accounts Discovery
  |
 Select the Accounts.

|
|
 Report
  |
 Select the report you want to run. The following reports are available:


|
 Report
  |
 Description
  |
| --- | --- |
|
 Accounts
  |
 Retrieves a list of accounts.
  |
|
 Account List
  |
 Shows the name, type, and balance for each account.
  |
|
 Accounts Payable Aging Detail
  |
 Shows detailed information about unpaid bills in accounts payable.
  |
|
 Accounts Payable Aging Summary
  |
 Summarizes the status of unpaid bills in accounts payable.
  |
|
 Accounts Receivable Aging Detail
  |
 Shows detailed information about outstanding amounts in accounts receivable.
  |
|
 Accounts Receivable Aging Summary
  |
 Shows accounts receivable, along with the amount of time the amounts have been outstanding.
  |
|
 Balance Sheet
  |
 Summarizes assets, liabilities, and shareholders' equities
  |
|
 Budget
  |
 Retrieves a list of budgets.
  |
|
 Expenses by Vendor
  |
 Shows expenses by vendor.
  |
|
 Profit and Loss Summary
  |
 Summarizes income and expenses.
  |
|
 Profit and Loss Detail
  |
 Shows detailed information about income and expenses.
  |

|
|
 Date Filter By
  |
 Select the date filter method.
  |
|
 Created Date Duration
  |
 Select the created date duration for the report.
  |
|
 Account Status
  |
 Select account status.
  |
|
 Transaction Date
  |
 Select the start date for the report.
  |
|
 Report Date
  |
 Select whether the data in the report is for a specific date or for a relative number of days.


 Relative meaning the relative number of days back that you would like to get data from.


 To get the data starting from a specific date, select the date using the date selector.
  |
|
 Date Offset
  |
 Enter the number of days back that will be used to offset your relative date. This adjusts the current date with the given number of days into the past. Example: 0 for today, 1 for yesterday.
  |
|
 Select Specific Date
  |
 Select the report date using the date picker, this option is only available when Report Date is set to 'Specific'.
  |
|
 Aging Method
  |
 Select the aging method.
  |
|
 Days Per Aging Period
  |
 Enter the number of days per aging period.
  |
|
 Number of Periods
  |
 Enter the number of aging periods to be shown in the report.
  |
|
 Due Date Duration
  |
 Select the due date duration for the report.
  |
|
 Transaction Date Duration
  |
 Select the transaction date range for the report.
  |
|
 Accounting Method
  |
 Select the desired accounting method.
  |
|
 Summarize Column By
  |
 Select how you want your report data to be broken down.
  |
|
 Select Columns (Checkbox)
  |

Check this to be given an option, otherwise a default selection will be given. Schema will always be maintained, even if selections are changed.


**Note**
 - This is for advanced users as QuickBooks may return errors based on column selection.

|
|
 Select Columns
  |
 Select the columns desired. A single selection may result in multiple columns.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------

###
 What version of the Quickbooks API does this connector use?

This connector uses version 3 of the Quickbooks API (

https://quickbooks.api.intuit.com/v3/company/

).

###
 What kind of credentials do I need to power up this connector?

No credentials required. You can add multiple QuickBooks accounts that you want to fetch the reports for in the Details section.

###
 How frequently will my data update?

Most information about the summary is updated every 24 hours. It is recommended to configure the datasets to run every 24 hours.

###
 Can this connector pull custom fields?

No. Reports and columns are predefined by QuickBooks.

###
 Are there any API limits that I need to know?

No


