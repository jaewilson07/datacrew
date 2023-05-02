


 QuickBooks is an accounting software used to help small businesses accept payments, pay bills, and complete payroll. Use the Domo QuickBooks connector to bring QuickBooks data into Domo, including bills, bill payments, deposits, invoices, journal entries, purchase orders, and more. Using Domo and QuickBooks together gives you customizable dashboards that you can create by integrating your QuickBooks data with essential marketing, sales, or operational data.


 Once your data is in Domo, you can give managers and stakeholders financial transparency with powerful and flexible charts, visualizing things like balance sheets, cash flow, vendor balances, and more. And you can access all your data in real time, from any device.


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

To connect to your [insert Connector name here] account and create a DataSet, you must have the following:

 Your QuickBooks Connector username.
* Your QuickBooks Connector password.

Connecting to Your

QuickBooks Connector

Account
-------------------------------------------------------

This section enumerates the options in the Credentials and Details panes in the [insert Connector name here] Connector page. The components of the other panes on this page,


**Scheduling,**


 and


**Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo

QuickBooks Connector

Connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click


**Connect**


 (or select


**Add Account**


 if you have existing

QuickBooks Connector

accounts in Domo) to open the

QuickBooks Connector

OAuth screen where you can enter your

QuickBooks Connector

username and password. Once you have entered valid

QuickBooks Connector

credentials, you can use the same account any time you go to create a new

QuickBooks Connector

DataSet. You can manage connector accounts in the


**Accounts**


 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**


 If you are already logged into

QuickBooks Connector

when you connect in Domo, you are authenticated automatically when you click


**Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of QuickBooks Connector.


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
 Select the

QuickBooks Connector

report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Accounts
  |

Retrieve a list of accounts

.
  |
|
 Bill
  |

Retrieve a list of bills that represent a request-for-payment from a third party for goods/services rendered, received, or both.

|
|
 Bill Payment
  |

Retrieve a list of data representing payment transactions for a bill.

|
|
 Credit Memo
  |

Retrieves a list of credit memos representing a refund or credit of payment.

|
|
 Deposit
  |
 Retrieves a list of transactions representing deposits.
  |
|
 Estimate
  |
 Retrieves a list of estimates that represent a proposal for a financial transaction from a business to a customer for goods or services.
  |
|
 Invoice
  |
 Retrieves a list of invoices representing a sales form the customer uses to pay for a product or service.
  |
|
 Journal Entry
  |
 Retrieves a list of journal entries.
  |
|
 Payment
  |
 Retrieves a list of payments.
  |
|
 Purchase
  |


 Retrieves a list of purchases such as a purchase made from a vendor.


 |
|
 Purchase Order
  |


 Retrieves a list of purchase orders that represent a request to purchase goods.


 |
|
 Refund Receipt
  |


 Retrieves a list of refund receipts representing refunds to the customer.


 |
|
 Sales Receipt
  |


 Retrieves a list of sales receipts that represent the sales receipt given to a customer.


 |
|
 Time Activity
  |


 Retrieves a list of time activities representing a record of time worked by a vendor or employee.


 |
|
 Transfer
  |


 Retrieves a list of transfers representing a transfer of funds between two accounts.


 |
|
 Vendor Credit
  |


 Retrieves a list of vendor credits that represent a refund or credit of payment.


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

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 What version of the


 API does this Connector use?

This connector uses version 3 of the Quickbooks API (

https://quickbooks.api.intuit.com/v3/company/

).

###
 Which endpoint(s) does each report call in this Connector?


|
 Report Name
  |
 Endpoint URL(s)
  |
| --- | --- |
|
 Accounts
  |
 /account
  |
|
 Bill
  |
 /bill
  |
|
 Bill Payment
  |
 /billpayment
  |
|
 Credit Memo
  |
 /creditmemo
  |
|
 Deposit
  |
 /deposit
  |
|
 Estimate
  |
 /estimate
  |
|
 Invoice
  |
 /i

nvoice
  |
|
 Journal Entry
  |
 /journalentry
  |
|
 Payment
  |
 /payment
  |
|
 Purchase
  |
 /purchase
  |
|
 Purchase Order
  |
 /purchaseorder
  |
|
 Refund Receipt
  |
 /refundreceipt
  |
|
 Sales Receipt
  |
 /salesreceipt
  |
|
 Time Activity
  |
 /timeactivity
  |
|
 Transfer
  |
 /transfer
  |
|
 Vendor Credit
  |
 /vendorcredit
  |


####
 What kind of credentials do I need to power up this connector?

You need the email address or user ID, and the password of your Intuit account, or your Google account credentials.

###
 How do I know my login credentials are secure?

The login process uses the OAuth process so your credentials are never seen or stored by Domo. This keeps your login secure. You can revoke Domo's access to your account at any time.

###
 Do I need a certain kind of account with the data service to set up the connector?

An Intuit account can be used to set up the connector.

###
 How frequently will my data update?

Most information about the summary is updated every 24 hours. It is recommended to configure the datasets to run every 24 hours.

###
 Can this connector pull custom fields?

No. Reports and columns are predefined by QuickBooks.


 Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


