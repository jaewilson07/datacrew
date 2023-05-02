

Intro
-------

CCC One provides leading automative claim, repair, and telematics solutions. Use Domo's CCC ONE connector to retrieve data about your CCC ONE accounts, orders, customers, employee timecards, and more. To learn more about the CCC ONE API, visit their page (

https://www.cccsecureshare.com/Developers

).


 You connect to your CCC ONE account in the Data Center. This topic discusses the fields and menus that are specific to the CCC ONE connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your CCC ONE account and create a DataSet, you must have the following:

 A CCC ONE username and password
* A CCC ONE API key

To obtain an API key, you will need to register as a CCC ONE app developer. You can do this here:

https://www.cccsecureshare.com/Developers

Connecting to Your CCC ONE Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the CCC ONE Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your CCC ONE account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your CCC ONE username.
  |
|
 Password
  |
 Enter your CCC ONE password.
  |
|
 API Key
  |
 Enter your CCC ONE API key.
  |


 Once you have entered valid CCC ONE credentials, you can use the same account any time you go to create a new CCC ONE DataSet. You can manage connector accounts in the
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
 Select the CCC ONE report you want to run. The following reports are available:


* Accounts Receivable
* Accounts Receivable Summary
* Accounts Receivable Work in Process Detail
* Canceled RO Job Cost
* Captured Jobs by Age Range
* Captured Jobs by Gender
* Captured Jobs by Insurance Company
* Captured Jobs by Primary Referral
* Captured Jobs by Secondary Referral
* Captured Jobs by Service Writer
* Captured Jobs Detail
* Carwise.com

Activity
* Central Review Activity
* Central Review Time Cycle
* Checklist Detailed Report
* Closed Workfile Detail
* Contact Center Capture Rate by Dispatcher
* Contact Center Capture Rate by Estimator
* Contact Center Capture Rate by Insurance Company
* Contact Center Cycle Time
* Credit Memos by Vendor
* CSI Customer List
* CSI Post Delivery Feedback
* CSI Service Recovery
* CSI Summary for Insurance
* CSI Summary for Shop
* CSI Summary Overall
* CSI Survey Detail
* Customer Replies
* Cycle Time RO Completion
* Gross Profit/Job Cost by Estimator
* Gross Profit/Job Cost by Insurance Company
* Gross Profit/Job Cost by Repair Order
* Gross Profit/Job Cost Summary
* Gross Profit/Job Cost Summary by Location
* Labor Hours by Technician
* Labor Hours for Flat Rate or Commission Teams
* Part Status
* Production Schedule
* Promise Date Accuracy
* Purchases
* Receipt
* Repair Order Closed
* Repair Orders Created
* Repair Orders Delivery Not Closed
* Repair Orders Due
* Repair Phase Cycle Time
* Repair vs Replace
* Sales Forecast
* Sales Journal
* Sales Journal Canceled Repair Orders
* Sales Profit Summary
* Sales Tax Detail
* Sales Tax Summary
* Sales Tax Tier Detail
* Sales Warranty Internal Job Cost
* Shop Labor
* Supplements
* Time Card History by Employee
* Vehicles Delivered
* Vehicles Schedule In
* Vehicles Schedule Out
* Work in Process Actual by Repair Order
* Work in Process Actual by Sales Account
* Work in Process by Repair Order
* Work in Process by Sales Account
* Workfile Activity
 |
|
 Location
  |
 Enter the location you want to retrieve data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.


 FAQ
-----


#####
 Are there any API limits that I need to be aware of?

No.

####
 How often can the data be updated?

DataSets can be updated as often as once per hour.

