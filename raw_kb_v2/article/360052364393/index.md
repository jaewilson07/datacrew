

*Important:**
 This Connector has been deprecated.


 Intro
-------

Microsoft Dynamics Great Plains (often abbreviated as Microsoft Dynamics GP) is a mid-market business accounting software or ERP Software package that helps businesses gain greater control over their financials, better manage their inventory and operations, and make informed decisions that help drive business success. Use Domo's Microsoft Dynamics GP connector to retrieve various HR- and finance-related reports. To learn more about the Microsoft Dynamics GP API, visit their page (

https://msdn.microsoft.com/en-us/library/cc534132.aspx

).


**Note:**
 The user interface for building this connector is not yet available in our Connectors listing in the Data Center, meaning you will not be able to configure the connector on your own. However, we at Domo are more than happy to configure the connector for you so you can begin using it to pull your data into Domo. Please don't hesitate to reach out to your CSM or Domo Support. For contact information, see


 Getting Help


 .


 You connect to your Microsoft Dynamics GP account in the Data Center. This topic discusses the fields and menus that are specific to the Microsoft Dynamics GP connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Microsoft Dynamics GP account and create a DataSet, you must have the following:

 The domain of your GP server
* The username and password you use to log into GP
* The host name/IP address of your GP sever
* The port number of your GP server

Connecting to Your Microsoft Dynamics GP Account
--------------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Microsoft Dynamics GP Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Microsoft Dynamics GP account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Domain
  |
 Enter the domain of your GP server.
  |
|
 Username
  |
 Enter the username you use to log into GP.
  |
|
 Password
  |
 Enter the password you use to log into GP.
  |
|
 Host
  |
 Enter the host name or IP address of your GP server.
  |
|
 Port
  |
 Enter the port number of your GP server.
  |


 Once you have entered valid Microsoft Dynamics GP credentials, you can use the same account any time you go to create a new Microsoft Dynamics GP DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains two menus/fields, one from which you select a report and the other in which you enter the company key you want to retrieve information for.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Microsoft Dynamics GP report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Applicant
  |
 Returns a list of applicants.
  |
|
 Applicant Application
  |
 Returns a list of applications from job applicants.
  |
|
 Applicant Education
  |
 Returns education information for job applicants.
  |
|
 Applicant Interview
  |
 Returns a list of applicant interviews.
  |
|
 Applicant Reference
  |
 Returns a list of applicant references.
  |
|
 Applicant Skill
  |
 Returns a list of applicant skills.
  |
|
 Applicant Test
  |
 Returns applicant test information.
  |
|
 Applicant Work History
  |
 Returns applicant work history information.
  |
|
 BackOffice Role
  |
 Returns a list of BackOffice roles.
  |
|
 BackOffice Role Assignment
  |
 Returns a list of BackOffice role assignments.
  |
|
 Bank
  |
 Returns a list of banks.
  |
|
 Business Office User Assignment
  |
 Returns a list of business office user assignments.
  |
|
 Cash Receipt
  |
 Returns a list of cash receipts.
  |
|
 Changed Currency Key
  |
 Returns a list of changed currency keys.
  |
|
 Changed Internet Address Key
  |
 Returns a list of changed internet address keys.
  |
|
 Changed Item Key
  |
 Returns a list of changed item keys.
  |
|
 Changed Price Level Key
  |
 Returns a list of changed price level keys.
  |
|
 Changed Pricing Key
  |
 Returns a list of changed pricing keys.
  |
|
 Changed Sales Invoice Key
  |
 Returns a list of changed sales invoice keys.
  |
|
 Changed Sales Order Key
  |
 Returns a list of changed sales order keys.
  |
|
 Changed Salesperson Key
  |
 Returns a list of changed salesperson keys.
  |
|
 Changed Shipping Method Key
  |
 Returns a list of changed shipping method keys.
  |
|
 Changed Tax Detail Key
  |
 Returns a list of changed tax detail keys.
  |
|
 Changed Tax Schedule Detail Key
  |
 Returns a list of changed tax schedule detail keys.
  |
|
 Changed UOFM Schedule Key
  |
 Returns a list of changed UOFM schedule keys.
  |
|
 Company
  |
 Returns a list of companies.
  |
|
 Company Address
  |
 Returns a list of company addresses.
  |
|
 Country Region Code
  |
 Returns a list of country region codes.
  |
|
 Currency
  |
 Returns a currency list.
  |
|
 Currency Access
  |
 Returns currency access information.
  |
|
 Currency Posting Account
  |
 Returns currency posting account information.
  |
|
 Customer Address
  |
 Returns a list of customer addresses.
  |
|
 Customer
  |
 Returns a list of customers.
  |
|
 Customer Receivables Summary
  |
 Returns a summary of customer receivables.
  |
|
 Dynamics Online Configuration
  |
 Returns online configuration data for GP.
  |
|
 Employee Address
  |
 Returns a list of employee addresses.
  |
|
 Employee
  |
 Returns an employee list.
  |
|
 Employee Pay Code
  |
 Returns a list of employee pay codes.
  |
|
 Fee
  |
 Returns a list of fees.
  |
|
 GL Account Category
  |
 Returns a list of GL account categories.
  |
|
 GL Account Format
  |
 Returns GL account format information.
  |
|
 GL Account
  |
 Returns a list of GL accounts.
  |
|
 GL Fixed Allocation Account
  |
 Returns a list of GL fixed allocation accounts.
  |
|
 GL Posting Account
  |
 Returns a list of GL posting accounts.
  |
|
 GL Transaction
  |
 Returns a list of GL transactions.
  |
|
 GL Unit Account
  |
 Returns a list of GL unit accounts.
  |
|
 GL Variable Allocation Account
  |
 Returns a list of GL variable allocation accounts.
  |
|
 HR Requisition
  |
 Returns a list of open requisitions.
  |
|
 Inventoried Item
  |
 Returns a list of items in inventory.
  |
|
 Inventory Adjustment
  |
 Returns a list of inventory adjustments.
  |
|
 Inventory Transfer
  |
 Returns an inventory transfer list.
  |
|
 Inventory Variance
  |
 Returns an inventory variance list.
  |
|
 Item Class
  |
 Returns a list of item classes.
  |
|
 Item Currency
  |
 Returns item currency data.
  |
|
 Item Vendor
  |
 Returns a list of item vendors.
  |
|
 Item Warehouse
  |
 Returns a list of warehouses.
  |
|
 Manufacturing Order
  |
 Returns a manufacturing order list.
  |
|
 Multicurrency Setup
  |
 Returns multicurrency setup information.
  |
|
 Payables Credit Memo
  |
 Returns a list of payables credit memos.
  |
|
 Payables Document
  |
 Returns a list of payables documents.
  |
|
 Payables Finance Charge
  |
 Returns a list of payables finance charges.
  |
|
 Payables Invoice
  |
 Returns a list of payables invoices.
  |
|
 Payables Miscellaneous Charge
  |
 Returns a list of miscellaneous payables charges.
  |
|
 Payables Return
  |
 Returns a list of payables returns.
  |
|
 Payment Card Type
  |
 Returns a list of payment card types.
  |
|
 Payment Terms
  |
 Returns a list of payment terms.
  |
|
 Planned Order
  |
 Returns a list of planned orders.
  |
|
 Policy
  |
 Returns a list of policies.
  |
|
 Posted Payables Vendor Payments
  |
 Returns a list of posted payables vendor payments.
  |
|
 Price Level
  |
 Returns price level information.
  |
|
 Pricing
  |
 Returns pricing information.
  |
|
 Project Budget
  |
 Returns project budget information.
  |
|
 Project Change Order
  |
 Returns a list of project change orders.
  |
|
 Project Contract
  |
 Returns a list of project contracts.
  |
|
 Project Employee Expense
  |
 Returns a list of project employee expenses.
  |
|
 Project
  |
 Returns a list of projects.
  |
|
 Project Miscellaneous Log
  |
 Returns a list of miscellaneous project logs.
  |
|
 Project Timesheet
  |
 Returns a list of project timesheets.
  |
|
 Purchase Invoice
  |
 Returns a list of purchase invoices.
  |
|
 Purchase Order
  |
 Returns a list of purchase orders.
  |
|
 Purchase Receipt
  |
 Returns a list of purchase receipts.
  |
|
 Receivables Credit Memo
  |
 Returns a list of receivables credit memos.
  |
|
 Receivables Debit Memos
  |
 Returns a list of receivables debit memos.
  |
|
 Receivables Document
  |
 Returns a list of receivables documents.
  |
|
 Receivables Finance Charge
  |
 Returns a list of receivables finance charges.
  |
|
 Receivables Invoice
  |
 Returns a list of receivables invoices.
  |
|
 Receivables Return
  |
 Returns a list of receivables returns.
  |
|
 Receivables Service Repair
  |
 Returns receivables service repair information.
  |
|
 Receivables Warranty
  |
 Returns a list of receivables warranties.
  |
|
 Return Material Authorization
  |
 Returns return material authorization information.
  |
|
 Sales Back Order
  |
 Returns a list of sales back orders.
  |
|
 Sales Document
  |
 Returns a list of sales documents.
  |
|
 Sales Fulfillment Order
  |
 Returns a list of sales fulfillment orders.
  |
|
 Sales Invoice
  |
 Returns a list of sales invoices.
  |
|
 Sales Order
  |
 Returns a list of sales orders.
  |
|
 Salesperson Commission
  |
 Returns a list of salesperson commissions.
  |
|
 Salesperson
  |
 Returns a list of salespeople.
  |
|
 Sales Process Hold Setup
  |
 Returns sales process hold information.
  |
|
 Sales Quote
  |
 Returns a list of sales quotes.
  |
|
 Sales Return
  |
 Returns a list of sales returns.
  |
|
 Sales Territory
  |
 Returns a list of sales territories.
  |
|
 Service Call
  |
 Returns a list of service calls.
  |
|
 Service Equipment
  |
 Returns a list of service equipment.
  |
|
 Service
  |
 Returns a list of services.
  |
|
 Service Quote
  |
 Returns a list of service quotes.
  |
|
 Shipping Method
  |
 Returns a list of shipping methods.
  |
|
 Skill
  |
 Returns a list of skills.
  |
|
 Skill Set
  |
 Returns a list of skill sets.
  |
|
 Tax Detail
  |
 Returns tax detail information.
  |
|
 Tax Schedule Detail
  |
 Returns tax schedule detail information.
  |
|
 Tax Schedule
  |
 Returns tax schedule information.
  |
|
 UofM Schedule
  |
 Returns UoFM schedule information.
  |
|
 User Assignable Business Object
  |
 Returns a list of user assignable business objects.
  |
|
 Vendor Address
  |
 Returns a list of vendor addresses.
  |
|
 Vendor
  |
 Returns a list of vendors.
  |
|
 Warehouse
  |
 Returns a warehouse list.
  |
|
 WS Enabled Company for User
  |
 Returns a list of WS-enabled companies for the authenticated user.
  |
|
 WS Enabled Company
  |
 Returns a list of WS-enabled companies.
  |

|
|
 Company Key
  |
 Enter the key of the company you want to retrieve data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

