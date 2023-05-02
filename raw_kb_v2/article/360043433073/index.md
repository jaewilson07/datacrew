

Intro
-------

Xero is a cloud-based online accounting software platform for small and medium-sized businesses. It manages invoicing, bank reconciliation, bookkeeping & more. Xero enables you to automate everyday business tasks, get up-to-date financials, and run your business - from wherever you are. Use Domo's Xero - Payroll connector to get employee details, timesheets, pay items, pay runs, and more. To learn more about the Xero API, visit

https://developer.xero.com/documentation/api/api-overview

.


 You connect to your Xero account in the Data Center. This topic discusses the fields and menus that are specific to the Xero Payroll connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Xero account and create a DataSet:

 First, you need to select the API you'd like to connect to
* Then, you need the email address and password you use to log into your Xero account

Connecting to Your Xero Account
---------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Xero Payroll

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane

The Domo Xero Payroll connector uses OAuth to connect, so there is no need to enter credentials within Domo. After selecting the Scope, click
 ****Connect****
 (or select
 ****Add Account****
 if you have existing Xero accounts in Domo) to open the Xero OAuth screen where you can enter your Xero credentials. Once you have entered valid Xero credentials, you can use the same account any time you go to create a new Xero Payroll DataSet. You can manage connector accounts in the
 ****Accounts****
 tab in the Data Center.

Field

|

Description

|
| --- | --- |
|
 Scope
  |
 Select the API you would like to connect to.
  |


 Once you have entered valid Xero credentials, you can use the same account any time you go to create a new Xero Payroll DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


**Note:**

You can only have one Xero account authenticated at a time with a given set of credentials. If you try to use OAuth with Xero anywhere else, it will invalidate your Xero account in Domo.

If you are already logged into Xero when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Xero.


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
 Select the Xero Payroll report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Employees
  |
 Returns a list of employees in the Xero organization.
  |
|
 Leave Applications
  |
 Returns a list of leave applications in the Xero organization.
  |
|
 Pay Items
  |
 Returns a list of payroll items in the Xero organization.
  |
|
 Pay Runs
  |
 Returns a list of pay runs in the Xero organization.
  |
|
 Payroll Calendars
  |
 Returns a list of payroll calendars in the Xero organization.
  |
|
 Payslip
  |
 Returns the pay-slip information for a particular person in the Xero organization.
  |
|
 Timesheets
  |
 Returns a list of the payroll timesheet in the Xero organization.
  |

|
|
 Modified Date Filter
  |
 The modified date filter returns the data created or modified after the selected date. Select the modified date using relative or specific dates.
  |
|
 Select Specific Modified  Date
  |
 Select the modified date using the date selector.
  |
|
 Day Back To Start From
  |
 Enter the number of days back that you would like to get data for.
  |
|
 Pay Run Duration
  |
 Select the pay run duration to fetch the pay slip ID.
  |
|
 Owner Name
  |
 Select the pay-slip owner name to fetch the pay-slip data.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

