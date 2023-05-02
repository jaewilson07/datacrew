

Intro
-------

MYOB is a bookkeeping, tax, and accounting software company that offers a range of products ideal for a variety of businesses, large and small. It provides a reliable and efficient way to scale your financial transactions.


 Use the MYOB Connector to get your financial transactions and budget details in no time, and manage your future plans accordingly. This Connector provides a secure visibility into your organization's accounts and payments details. By combining your MYOB data with Domo, you’ll develop a comprehensive understanding of your financial activities to fully optimize your budget and monetary transactions. To learn more about the MYOB API, visit their page (

https://developer.myob.com/

).


 The MYOB Connector is a "Cloud App" Connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the Connector page for this and other Cloud App Connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your MYOB account in the Data Center. This topic discusses the fields and menus that are specific to the MYOB Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your MYOB account and create a DataSet, you must have the the client ID and client secret associated with your MYOB account.


 Your client ID and client secret is registered at

https://my.myob.com.au/au/bd/DevAppList.aspx

.


 Connecting to Your MYOB Account
---------------------------------

This section enumerates the options in the Credentials and Details panes in the MYOB Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your MYOB account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Client ID
  |
 Enter your MYOB client ID, registered at

https://my.myob.com.au/au/bd/DevAppList.aspx

.
  |
|
 Client Secret
  |
 Enter your MYOB client secret registered at

https://my.myob.com.au/au/bd/DevAppList.aspx

..
  |

Once you have entered valid MYOB credentials, you can use the same account any time you go to create a new MYOB DataSet. You can manage Connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
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
 Select the MYOB report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Account Budget
  |
 Return general ledger account budgets
  |
|
 Accounts
  |
 Return accounts for an AccountRight company file
  |
|
 Customer Payment
  |
 Return customer payments for an AccountRight company file
  |
|
 Customers
  |
 Return customer contacts for an AccountRight company file
  |
|
 Employee Payment Details
  |
 Return employee payment details on employee contact cards for an AccountRight company file
  |
|
 Employee Payroll Details
  |
 Return employee payroll details on employee contact cards for an AccountRight company file
  |
|
 Employees
  |
 Return employees contact for an AccountRight company file
  |
|
 Payroll Superannuation
  |
 Return payroll categories of type superannuation for an AccountRight company file
  |
|
 Payroll Superannuation Fund
  |
 Returns a list of superannuation fund details for an AccountRight company file
  |
|
 Receive Money Transactions
  |
 Return receive money transactions for an AccountRight company file
  |
|
 Sale Invoice
  |
 Return all sale invoice types for an AccountRight company file
  |
|
 Sale Invoice Item
  |
 Return item type sale invoices for an AccountRight company file
  |
|
 Spend Money Transactions
  |
 Return spend money transactions for an AccountRight company file
  |
|
 Transfer Money Transactions
  |
 Return transfer money transactions for an AccountRight company file
  |

|
|
 Company File
  |
 Select the company file that you want to fetch data for.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 Which endpoint(s) does each report call in this Connector?


|
 Report Name
  |
 Endpoint URL
  |
| --- | --- |
|
 Account Budget
  |
 /GeneralLedger/AccountBudget
  |
|
 Accounts
  |
 /GeneralLedger/Account
  |
|
 Customer Payment
  |
 /Sale/CustomerPayment
  |
|
 Customers
  |
 /Contact/Customer
  |
|
 Employee Payment Details
  |
 /Contact/EmployeePaymentDetails
  |
|
 Employee Payroll Details
  |
 /Contact/EmployeePayrollDetails
  |
|
 Employees
  |
 /Contact/Employee
  |
|
 Payroll Superannuation
  |
 /Payroll/PayrollCategory/Superannuation
  |
|
 Payroll Superannuation Fund
  |
 /Payroll/SuperannuationFund
  |
|
 Receive Money Transactions
  |
 /Banking/ReceiveMoneyTxn
  |
|
 Sale Invoice
  |
 /Sale/Invoice
  |
|
 Sale Invoice Item
  |
 /Sale/Invoice/Item
  |
|
 Spend Money Transactions
  |
 /Banking/SpendMoneyTxn
  |
|
 Transfer Money Transactions
  |
 /Banking/TransferMoneyTxn
  |


####

What kind of credentials do I need to power up this Connector?

You need the client ID and client secret associated with your MYOB account (registered at

https://my.myob.com.au/au/bd/DevAppList.aspx

.)

###
 How frequently will my data update?

As often as needed.

###
 Are there any API limits that I need to be aware of?

No

###
 Can I use the same account to create multiple datasets?

Yes


 Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


