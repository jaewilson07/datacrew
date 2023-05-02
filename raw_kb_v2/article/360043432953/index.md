

Intro
-------

QuickBooks Online is the most commonly used small business accounting and financial management software. It allows users to track sales and customer information and provide reports for managing the business and serving their customers. You can use Domo's QuickBooks Online Reports connector to retrieve data about all financial aspects of your business. To learn more about the QuickBooks Online Reports API, go to

https://developer.intuit.com/docs/0050\_quickbooks\_api

.


 The QuickBooks Online Reports connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 To use the QuickBooks Online Reports connector, create a DataSet in the

Data Center

and select the QuickBooks Online Reports connector.


 This topic discusses the fields and menus that are specific to the QuickBooks Online Reports connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see

Adding a DataSet Using a Data Connector

.


 You can also pull on-premise QuickBooks Online data using Workbench, a secure, client-side solution for uploading your data in Domo. In addition to QuickBooks, you can use Workbench to upload data from other systems using CSV, JIRA, JSON, Microsoft Excel, ODBC, OLAP, and XML. For more information, see

Connecting to QuickBooks Data in Workbench 5


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
 Report runtime will depend on how large the reports in QuickBooks are. Smaller date ranges will take less.
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 3
  |

Best Practices
----------------

The connector should run on
 **Replace**
 at any reasonable schedule.
 **Append**
 will cause duplicates.


 Prerequisites
---------------

To connect to a QuickBooks Online account and create a DataSet, you must have the following:

 The email address or user ID you use to connect to QuickBooks Online.
* The password you use to connect to QuickBooks Online.

Connecting to Your QuickBooks Online Reports Account
------------------------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the QuickBooks Online Reports Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo QuickBooks Online Reports connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing QuickBooks Online accounts in Domo) to open the QuickBooks Online OAuth screen where you can enter your login credentials. After you log in using your credentials, you are requested to authorize Domo to access your QuickBooks Online data. Once you enter credentials and authorize Domo, you can use the same account any time you go to create a new QuickBooks Online Reports DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Creating and Managing User Groups

.

*Note:**
 If you are already logged into QuickBooks Online when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of QuickBooks Online.


###
 Details Pane

This pane contains a primary menu from which you select a report, along with various other menus that may or may not appear depending on the selected report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select a QuickBooks Online report. The following reports are available:


|
 Report
  |
 Description
  |
| --- | --- |
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
 Customer Balance Detail
  |
 Shows a detailed list of customer balances.
  |
|
 Customer Balance Summary
  |
 Shows a summary of customer balances.
  |
|
 Expenses by Vendor
  |
 Shows expenses by vendor.
  |
|
 General Ledger
  |
 Shows all transactions that have occurred in each account, with the beginning balance and total for each account.
  |
|
 Income by Customer Summary
  |
 Shows income by customer.
  |
|
 Inventory Valuation Summary
  |
 Shows the monetary value of items that make up the inventory.
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
 Sales by Class Summary
  |
 Shows sales by class.
  |
|
 Sales by Customer Summary
  |
 Shows sales by customer.
  |
|
 Sales by Department Summary
  |
 Shows sales by department.
  |
|
 Sales by Product/Service Summary
  |
 Shows sales by product or service.
  |
|
 Statement of Cash Flows
  |
 Returns a cash flow statement.
  |
|
 Trial Balance
  |
 Returns credit and debit information for all accounts.
  |
|
 Vendor Balance Detail
  |
 Shows detailed information about vendor balances.
  |
|
 Vendor Balance Summary
  |
 Lists vendor balances.
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

Select the created date duration for the report (a Single Date, or a Date Range).

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

Select report date using relative or specific dates. Relative meaning number of days from today or a specific date using the date selector

|
|
 Specific Date
  |

Select the report date using the date picker, this option is only available when Report Date is set to 'Specific'

|
|
 Date Offset
  |

This adjusts the current date the given number of days into the past. Example: 0 for today, 1 for yesterday.

|
|
 Aging Method
  |

Select aging method.

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

Select the due date duration for the report (a Single Date, or a Date Range).

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
 Select how you want your report data to be broken down. For example, if you select
 **Month**
 , your report data is broken down by month.
  |
|
 Account Receivable Paid Status
  |

Select account receivable paid status.

|
|
 Select Columns
  |

Check this to be given an option, otherwise a default selection will be given. Schema will always be maintained, even if selections are changed. Note - this is for advanced users as QuickBooks may return errors based on column selection.

|
|
 Enable Pivot Parsing
  |
 Select whether you want to pivot your report data by the selected
 **Summarize Column By**
 value.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------

Issues with this connector are minimal. However, the connector retrieves the reports from Quickbooks exactly as they appear. If you change a report for an ad-hoc analysis inside Quickbooks, that change is reflected in the report. A good solution to this problem is to use a system user that has standard reports in Quickbooks.


 A few users have reported having their Quickbooks Online accounts become unauthorized. If this happens, manually disconnect Domo in the Quickbooks website then reconnect to QuickBooks through Domo by adding the account again.

