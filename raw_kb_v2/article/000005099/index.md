


**Important:**
 Intacct limits the number of concurrent connections using one company id. The default limit is 2 connections at a time but may vary based on your level of service and contractual terms with Intacct. If you have a service level agreement that allows for a greater number of concurrent connections, you will need to go into your Domo account in the account center (https://[yourinstance].

domo.com/datacenter/accounts

) and update the value in your Intacct account. Otherwise, Domo will simply default your account to the normal limit of 2 concurrent requests imposed by Intacct.


 This change will improve performance and help increase the stability of the Intacct Advance connector. Overall, this should have very little impact on your DataSets, however, the downside of this change is that you may see an increase in the amount of time it takes to retrieve your data into Domo if you do not update your account to reflect the appropriate limit.


 Additional steps can be taken to mitigate any potential slowdown by scheduling your Intacct Advance connector DataSets in such a way that they do not overlap each other.

Intro
-------


 Intacct helps you manage financials on your own terms with cloud-based accounting software. With Domo, stakeholders can visualize Intacct data together with data from any other system in a real-time dashboard. That means fewer reports for finance and better insights all around. The Intacct Advanced connector also allows you to filter the data based on the creation date or modification date.


 Once your data is in Domo, connect easily to your data and create powerful, dynamic visualizations. Get the updated information you need to make smart decisions on cashflow, ledgers, accounts receivable, accounts payable, journals, P&L, and more. Get real-time alerts through email and text when Intacct metrics hit your predefined levels.

Use Domo's Intacct connector to retrieve data relating to customers, accounts, invoices, payments, expenses, and the like. To learn more about the Intacct API, visit their page (

https://developer.intacct.com/

).


 You connect to your Intacct account in the Data Center. This topic discusses the fields and menus that are specific to the Intacct connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.


**Note:**

In your Intacct account, you can create custom reports, set them to run on a schedule and have them delivered in a CSV format to a cloud storage service. Intacct supports Dropbox, Box, Google Drive, and Amazon S3.Once delivered there customers can use the relevant Domo connector to import the custom report from the cloud storage service into Domo.


|  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 This connector is appropriate for pulling financial reporting and accounting, sales, and inventory data.
  |
|
**Primary Metrics**
 | * Cashflow
* Ledgers
* Accounts receivable
* Accounts payable
* Journals
* Profits and loss
 |
|
**Primary Company Roles**
 | * CFO
* Accountant
* Sales
* Inventory
 |
|
**Average Implementation Time**
 |
 Connector runtimes vary based on data, but generally it should take between 2 and 8 hours.
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 7
  |

Best Practices
----------------

The best practice is to have one account connection to Domo coordinated by an Intacct administrator, and then grant the access to the account to users needing the datasets. Please spread out scheduled runs of all datasets throughout the 24 hours, and limit unnecessary or duplicate datasets.


 Keep date ranges reasonable. If you only need the last quarter, do the last quarter; if you need the last three years, do all three years.

For Custom report, this Connector only supports 'current month' and 'current year' as the reporting period values.

There might be a possibility of having other/additional supported values for Reporting Period. Contact Sage Intacct for other possible Reporting Duration values for filtering the data.


 Prerequisites
---------------

To connect to your Intacct account and create a DataSet, you must have the following:

 The user ID for your Intacct account. This is the same user ID you use to sign into the Intacct cloud ERP software.
* The password for your Intacct account. This is the same password you use to sign into the Intacct cloud ERP software.
* Your Intacct company ID. This ID is usually different for sandbox and production accounts. To locate the Company ID in Intacct, hover over
 **Company**
 and click
 **Company Info**
 .
 **Company ID**
 is found in the
 **ID**
 field.
* (Optional) You can also provide a Location ID. This may help narrow your data request to a specific location. To locate the location ID in Intacct, hover over
 **Company**
 and click
 **Locations**
 . Select a
 **Location ID**
 from the report.
* (Optional) Max Concurrent Connections.

This is a number value for the maximum number of concurrent connections that Intacct allows for your account. If you have increased your API rate limits with Intacct, you can provide how many concurrent connections you are allowed here.
* Additionally, the Customer may need to add "Domo" as an
 **authorized sender ID**
 in their company configurations Security tab.

To obtain Intacct Web Services credentials, contact your Intacct account representative.


 Connecting to your Intacct Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Intacct Advance Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Intacct account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 User ID
  |
 Enter your Intacct user ID. See "Prerequisites" for more details.
  |
|
 Password
  |
 Enter your Intacct password. See "Prerequisites" for more details.
  |
|
 Company ID
  |
 Enter your Intacct company ID. This ID is usually different for sandbox and production accounts.
  |
|
 Location ID (Optional)
  |
 Enter your Intacct location ID. This may help you narrow your data request to a specific location.
  |
|
 Max Concurrent Connections (Optional)
  |
 Enter the number value for the maximum number of concurrent connections that Intacct allows for your account. If you have increased your API rate limits with Intacct, specify how many concurrent connections you are allowed here.
  |


 After you have entered valid Intacct credentials, you can use the same account any time you to create a new Intacct DataSet. You can manage connector accounts in the
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
 Select the Sage Intacct Advance report you want to run. The following reports are available:


* Company
* General Ledger
* Accounts Payable
* Accounts Receivable
* Employee Expense
* Order Entry
* Inventory Control
* Purchasing
* Project and Resource Management
* Customization Services
* Legacy Reports


|  |  |
| --- | --- |
|
 Account Group
  |
 Receives data about Intacct Account Group accounting reports.
  |
|
 AP Account Label
  |
 Receives data about Intacct Accounts Payable Account Label accounting reports.
  |
|
 AP Adjustment
  |
 Receives data about Intacct Accounts Payable Adjustment accounting reports.


**Date Filter**


 is required for this report.
  |
|
 AP Bill
  |
 Receives data about Intacct Accounts Payable Bill accounting reports.


**Date Filter**


 is required for this report.
  |
|
 AP Bill Detail
  |
 Receives data about Intacct Accounts Payable Bill Detail accounting reports.
  |
|
 AP Payment
  |
 Receives data about Intacct Accounts Payable Payment accounting reports.


**Date Filter**


 is required for this report.
  |
|
 AP Payment Request
  |
 Receives data about Intacct Accounts Payable Payment Request accounting reports.


**Date Filter**


 is required for this report.
  |
|
 AP Term
  |
 Receives data about Intacct Accounts Payable Term accounting reports.
  |
|
 AR Account Label
  |
 Receives data about Intacct Accounts Receivable Account Label accounting reports.
  |
|
 AR Adjustment
  |
 Receives data about Intacct Accounts Receivable Adjustment accounting reports.


**Date Filter**


 is required for this report.
  |
|
 AR Invoice
  |
 Receives data about Intacct Accounts Receivable Invoice accounting reports.


**Date Filter**


 is required for this report.
  |
|
 AR Invoice Detail
  |
 Receives data about Intacct Accounts Receivable Invoice Detail accounting reports.
  |
|
 AR Payment
  |
 Receives data about Intacct Accounts Receivable Payment accounting reports.


**Date Filter**


 is required for this report.
  |
|
 AR Payment Summary
  |
 Receives data about Intacct Accounts Receivable Payment Summary accounting reports.


**Date Filter**


 is required for this report.
  |
|
 AR Term
  |
 Receives data about Intacct Accounts Receivable Term accounting reports.
  |
|
 AR Transaction Definition
  |
 Receives data about Intacct Accounts Receivable Transaction Definition accounting reports.
  |
|
 Bank Account
  |
 Receives data about Intacct Bank Account accounting reports.
  |
|
 Bill
  |
 Receives data about Intacct Bill accounting reports.


**Date Filter**


 is required for this report.
  |
|
 Class
  |
 Receives data about Intacct Class accounting reports.
  |
|
 Company Information
  |
 Receives data about Intacct Company Information accounting reports.
  |
|
 Contact
  |
 Receives data about Intacct Contact accounting reports.
  |
|
 Contact Tax Group
  |
 Receives data about Intacct Contact Tax Group accounting reports.
  |
|
 CSN History
  |
 Receives data about Intacct CSN History accounting reports.
  |
|
 Cust GL Group
  |
 Receives data about Intacct Cust General Group accounting reports.
  |
|
 Customer
  |
 Receives data about Intacct Customer accounting reports.
  |
|
 Customer Ach Info
  |
 Receives data about Intacct Customer Ach Info accounting reports.
  |
|
 Customer Bank Account
  |
 Receives data about Intacct Customer Bank Account accounting reports.
  |
|
 Customer Charge Card
  |
 Receives data about Intacct Customer Charge Card accounting reports.
  |
|
 Customer P Package
  |
 Receives data about Intacct Customer P Package accounting reports.
  |
|
 Custom Reports
  |
 Receives data about Intacct Custom accounting reports.
  |
|
 Department
  |
 Receives data about Intacct Department accounting reports.
  |
|
 Employee
  |
 Receives data about Intacct Employee accounting reports.
  |
|
 Expense Report
  |
 Receives data about Intacct Expense Report accounting reports.
  |
|
 Expense Report Summary
  |
 Receives data about Intacct Expense Report Summary accounting reports.
  |
|
 Expense Types
  |
 Receives data about Intacct Expense Types accounting reports.
  |
|
 GL Account
  |
 Receives data about Intacct General Account accounting reports.
  |
|
 GL Account Balance
  |
 Receives data about Intacct General Account Balance accounting reports.
  |
|
 GL Account Group
  |
 Receives data about Intacct General Account Group accounting reports.
  |
|
 GL Account Group Member
  |
 Receives data about Intacct General Account Group Member accounting reports.
  |
|
 GL Batch
  |
 Receives data about Intacct General Batch accounting reports.


**Date Filter**


 is required for this report.
  |
|
 GL Budget
  |
 Receives data about Intacct General Budget accounting reports.
  |
|
 GL Budget Item
  |
 Receives data about Intacct General Budget Item accounting reports.
  |
|
 GL Account Category
  |
 Receives data about Intacct General Account Category accounting reports.
  |
|
 GL Entry
  |
 Receives data about Intacct General Entry accounting reports.


**Date Filter**


 is required for this report.
  |
|
 GL Transaction
  |
 Receives data about Intacct General Transaction accounting reports.


**Date Filter**


 is required for this report.
  |
|
 IC Item
  |
 Receives data about Intacct Inventory Control Item accounting reports.
  |
|
 IC Transaction
  |
 Receives data about Intacct Inventory Control Transaction accounting reports.


**Date Filter**


 is required for this report.
  |
|
 IC Transaction Definition
  |
 Receives data about Intacct Inventory Control Transaction Definition accounting reports.
  |
|
 Invoice
  |
 Receives data about Intacct Invoice accounting reports.


**Date Filter**


 is required for this report.
  |
|
 Item GL Group
  |
 Receives data about Intacct Item General Group accounting reports.
  |
|
 Item Tax Group
  |
 Receives data about Intacct Item Tax Group accounting reports.
  |
|
 Journal
  |
 Receives data about Intacct Journal accounting reports.
  |
|
 Location
  |
 Receives data about Intacct Location accounting reports.
  |
|
 Location Entity
  |
 Receives data about Intacct Location Entity accounting reports.
  |
|
 Location Group
  |
 Receives data about Intacct Location Group accounting reports.
  |
|
 PO Price List
  |
 Receives data about Intacct Purchase Order Price List accounting reports.
  |
|
 PO Transaction
  |
 Receives data about Intacct Purchase Order Transaction accounting reports.


**Date Filter**


 is required for this report.
  |
|
 PO Transaction Definition
  |
 Receives data about Intacct Purchase Order Transaction Definition accounting reports.
  |
|
 Pricelist Item
  |
 Receives data about Intacct Pricelist Item accounting reports.
  |
|
 Product Line
  |
 Receives data about Intacct Product Line accounting reports.
  |
|
 Project
  |
 Receives data about Intacct Project accounting reports.
  |
|
 Renewal Macro
  |
 Receives data about Intacct Renewal Macro accounting reports.
  |
|
 Reporting Period
  |
 Receives data about Intacct Reporting Period accounting reports.
  |
|
 Revenue Recognition Schedule
  |
 Receives data about Intacct Revenue Recognition Schedule accounting reports.
  |
|
 Revenue Recognition Schedule Entry
  |
 Receives data about Intacct Revenue Recognition Schedule Entry accounting reports.
  |
|
 Revenue Recognition Template
  |
 Receives data about Intacct Revenue Recognition Schedule Template accounting reports.
  |
|
 Sales Document
  |
 Receives data about Intacct Sales Document reports.
  |
|
 Sales Document Detail
  |
 Receives data about Intacct Sales Document Detail reports.
  |
|
 Sales Document Subtotals
  |
 Receives data about Intacct Sales Document Subtotal reports.
  |
|
 Smart Event Log
  |
 Receives data about Intacct Smart Event Log reports.


**Date Filter**


 is required for this report.
  |
|
 SO Price List
  |
 Receives data about Intacct Sales Order Price List accounting reports.
  |
|
 SO Transaction
  |
 Receives data about Intacct Sales Order Transaction accounting reports.


**Date Filter**


 is required for this report.
  |
|
 SO Transaction Definition
  |
 Receives data about Intacct Sales Order Transaction Definition accounting reports.
  |
|
 SO Transaction Detail
  |
 Receives data about Intacct Sales Order Transaction Detail accounting reports.
  |
|
 Stat GL Account
  |
 Receives data about Intacct Stat General Ledger Account accounting reports.
  |
|
 Statistical Journal
  |
 Receives data about Intacct Statistical Journal accounting reports.
  |
|
 ST Kit Transaction
  |
 Receives data about Intacct Kit Transaction accounting reports.


**Date Filter**


 is required for this report.
  |
|
 Subscription
  |
 Receives data about Intacct Subscription accounting reports.
  |
|
 Tax Detail
  |
 Receives data about Intacct Tax Detail accounting reports.
  |
|
 Tax Schedule
  |
 Receives data about Intacct Tax Schedule accounting reports.
  |
|
 Tax Schedule Detail
  |
 Receives data about Intacct Tax Schedule Detail accounting reports.
  |
|
 Tax Schedule Map
  |
 Receives data about Intacct Tax Schedule Map accounting reports.
  |
|
 Territory
  |
 Receives data about Intacct Territory accounting reports.
  |
|
 Transaction Currency
  |
 Receives data about Intacct Transaction Currency accounting reports.


**Date Filter**


 is required for this report.
  |
|
 Unit of Measure
  |
 Receives data about Intacct Unit of Measure accounting reports.
  |
|
 Vendor GL Group
  |
 Receives data about Intacct Vendor General Group accounting reports.
  |
|
 Vendor
  |
 Receives data about Intacct Vendor accounting reports.


**Date Filter**


 is required for this report.
  |
|
 VSOE Item Pricelist
  |
 Receives data about Intacct Vendor-Specific Objective Evidence Item Pricelist accounting reports.
  |
|
 VSOE Pricelist
  |
 Receives data about Intacct Vendor-Specific Objective Evidence Pricelist accounting reports.
  |
|
 Warehouse
  |
 Receives data about Intacct Warehouse accounting reports.
  |


 |
|
 Fixed or Relative Date Range
  |
 Select a fixed or relative date range. For a fixed date range, you enter a specific start date and end date, and your report always pulls data for that range. For a relative date range, you enter a number of days back for your report. Each time the report is run, data is pulled for that number of days based on today's date.
  |
|
 Fixed Start Date
  |
 Select the start date for your report.
  |
|
 Fixed End Date
  |
 Select the end date for your report.
  |
|
 Days Back (Incremental Days)
  |
 Enter the number of days back from today's date that should appear in your report. For example, if you entered

7

, the report would pull data for the past week each time it was run.


 Enter an initial backfill amount if you are using a daily incremental data pull. The
 **Update Method**
 under
 **Scheduling**
 (below) must be set to
 **Append**
 .
  |
|
 Reporting Period
  |

Enter the reporting duration for filtering the data. This Connector supports 'current month' and 'current year' as the reporting period values.


 Example: 'Current Year' or 'Current Month'


**Note**
 :There might be a possibility of having other/additional supported values for Reporting Period. Contact Sage Intacct for other possible Reporting Duration values for filtering the data.

|
|
 Date Filter
  |
 Select whether you want to filter results by the date of creation or the date when they were last modified.
  |
|
 Page Size
  |
 Select the page size. It must be between 10 and 250. The page size number limits how much data is consumed from the API at once. If you are receiving an error, try decreasing the page size.
  |
|
 Custom Report Name
  |
 Enter the custom report name.
  |
|
 Filter Data
  |
 Select this checkbox if you'd like to filter your custom report by date. If your report supports date filtering, you'll be able to select options to set the date range.
  |
|
 Filter Arguments
  |
 Filter Arguments give you options to filter the custom report by a specific or relative date range, or by a reporting period such as 'Current Month' or 'Current Year'. If your custom report does not support date filters, this drop down will be empty.
  |
|
 Module Key
  |
 Select a module key.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


* The biggest pitfall with this connector is credentials. Often, the username or password is wrong and the connector will fail. See

Prerequisites

to get the right information.


###
 FAQs


####
 What endpoint is the base URL for this connector?

The base URL for Intacct Advanced is

https://api.intacct.com/ia/xml/xmlgw.phtml

.

###
 What kind of credentials do I need to power up this connector?

You need the user id, password, company id, and location id.

###
 Are there any API limits that I need to be aware of?

Intacct limits the number of concurrent connections using one company id. The default limit is 2 connections at a time but may vary based on your level of service and contractual terms with Intacct. You need to coordinate the runs of Domo Intacct datasets and other API connections to Intacct outside of Domo, in order to reduce the errors. The best practice is to have one account connection to Domo coordinated by an Intacct administrator, and then grant the access to the account to users needing the datasets. Please spread out scheduled runs of all datasets throughout the 24 hours, and limit unnecessary or duplicate datasets.

###
 How often can the data be updated?

It is recommended to update the data once a day, but can be updated more frequently if best practices are followed.

###
 What's the difference between the Intacct Advanced connector and the Intacct connector?

The Intacct Advanced connector allows you to filter the data depending on its creation date or modification date. The Intacct connector allows you to filter the data for the last 30days/90days/6months/12months.

