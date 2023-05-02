

Intro
-------

Xero develops cloud-based accounting software for small- and medium-sized businesses. You can use this connector to retrieve data about bank accounts, transactions, expense claims, contacts, and the like. To establish the connection between Domo and Xero, a user must first authenticate to Xero and then grant Domo permission to access his or her data. To learn more about the Xero API, visit their page (

http://developer.xero.com/documentat.../api-overview/

).


 You connect to your Xero account in the Data Center. This topic discusses the fields and menus that are specific to the Xero connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Xero account and create a DataSet, you must have the email address and password you use to log into your Xero account.


 Connecting to Your Xero Account
---------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Xero Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Xero connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Xero accounts in Domo) to open the Xero OAuth screen where you can enter your Xero credentials. Once you have entered valid Xero credentials, you can use the same account any time you go to create a new Xero DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.


**Note:**
 You can only have one Xero account authenticated at a time with a given set of credentials. If you try to use OAuth with Xero anywhere else, it will invalidate your Xero account in Domo.

--


**Note:**
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
 Select the Xero report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Accounts
  |
 Returns account information, including ID, name, description, status, type, etc.
  |
|
 Aged Payables by Contact
  |
 Returns aged payables for a specified contact.
  |
|
 Aged Receivables by Contact
  |
 Returns aged receivables for a specified contact.
  |
|
 Balance Sheet
  |
 Returns balance sheet information for the current month.
  |
|
 Bank Statement
  |
 Returns statement lines for a specified bank account.
  |
|
 Bank Summary
  |
 Returns balances and cash movements for all bank accounts.
  |
|
 Bank Transactions
  |
 Returns all spend and receive money transactions.
  |
|
 Bank Transfers
  |
 Returns information about bank transfers.
  |
|
 Branding Themes
  |
 Returns a list of defined branding themes.
  |
|
 Budget Summary
  |
 Returns a monthly budget summary.
  |
|
 Contacts
  |
 Returns information on your contacts, including ID, first and last name, email address, physical address, etc.
  |
|
 Credit Notes
  |
 Returns information about credit notes, including issue date, type, status, etc.
  |
|
 Currencies
  |
 Returns information about currencies used in your account.
  |
|
 Employees
  |
 Returns information about payroll employees, including first and last name, job title, contact information, salary information, etc.
  |
|
 Executive Summary
  |
 Returns a summary that includes monthly totals and common business ratios.
  |
|
 Expense Claims
  |
 Returns submitted expense claims with their status.
  |
|
 Invoices
  |
 Returns invoices, including contact name and ID, invoice date, status, totals and subtotals, amount paid, etc.
  |
|
 Items
  |
 Returns items, including purchase and sales details.
  |
|
 Journals
  |
 Returns journals, including ID, date, journal number, source type, etc.
  |
|
 Manual Journals
  |
 Returns manual journals, including date, status, URL, etc.
  |
|
 Organizations
  |
 Returns information about organizations, including name, address, business type, tax status, etc.
  |
|
 Payments
  |
 Returns information about payments for invoices and credit notes.
  |
|
 Profit and Loss
  |
 Returns profit and loss information for the current months.
  |
|
 Purchase Orders
  |
 Returns a list of purchase orders.
  |
|
 Receipts
  |
 Returns draft expense claim receipt information, including user, date, totals, tax, etc.
  |
|
 Repeating Invoices
  |
 Returns repeating invoice templates.
  |
|
 Tax Rates
  |
 Returns tax rates, including tax type, status, tax and effective rates, etc.
  |
|
 Tracking Categories
  |
 Returns tracking categories and options.
  |
|
 Trial Balance
  |
 Returns trial balance information, including provider name, report name and date, debit and credit amounts, etc.
  |
|
 Users
  |
 Returns account user information, including ID, first and last name, email address, etc.
  |

|
|
 Past Days
  |
 Enter the number of past days that represents the start date of the report. You can use any of the following formats:

x

,

x day

, or

x days

, where

x

is a number between 1 and 365.
  |
|
 Contact
  |
 Select the contact for which you want to retrieve data.
  |
|
 Bank Account
  |
 Select the bank account for which you want to retrieve data.
  |
|
 To Days
  |
 Enter the number of past days that represents the end date of the report. You can use any of the following formats:

x

,

x day

, or

x days

, where

x

is a number between 1 and 365.
  |
|
 Offset
  |
 Enter a journal number. The report will retrieve only journals with a number higher than this number.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.

Troubleshooting for Consulting/Support
----------------------------------------


###
 Dates in Column Names

Some Xero reports return data in which the run date is used as a column name. For example, if you were to run the "Profit & Loss" report on Feburary 17th, 2017, an amount column called "Row\_\_17\_Feb\_17" would appear. This prevents these columns from being used in a DataFlow or card, as the name of the column changes with each scheduled DataSet update.


 To resolve this issue, we recommend replacing dates in column names with generic column names. You can use a Domo SQL query to replace the faulty column with a generically named column, which can then be referred to in a Magic DataFlow.


 In the following example, we replace the column name "Row\_\_16\_Feb\_17" with the name "ProfitLossAmount."

select NULL AS Row_Id, NULL AS Row_ProviderName, NULL AS Row_DateTimeUTC, NULL AS Row_ReportName, NULL AS Row_ReportDate, NULL ​AS Row_UpdatedDateUTC, NULL AS Row_ReportTitle, NULL AS Row_column_0, NULL AS ProfitLossAmount, NULL AS _BATCH_ID_, NULL AS _BATCH_LAST_RUN_ from xero_profit_and_loss_report


 where 1 = 0 --this row returns nothing but allows setting the column names for the query`


`union all`


`select * from xero_profit_and_loss_report`

##
 Unwanted Pivot Tables

Often, data with the column naming issue described above is represented as a pivot table. You cannot use the Collapse Columns action IN ETL to unpivot this data because the column names change for each scheduled run. An example of this is the "Budget" report.


 To resolve this issue, unpivot columns that have been named with dates, but retain date values as rows so the output DataSet has one date row per column.


 In the following example, we first use a Domo SQL query to rename the columns to generic names. Then we use a Magic ETL DataFlow to perform a
 **Collapse Columns**
 action and then convert the generic column name (which is now row data) back into a date.

. Create a Domo SQL query as follows:


 Input: Xero DataSet created using the report "Budget"

Transform: Replace the column names "Row\_\_Feb-17," "Row\_\_Mar-17," etc. with "Month1," "Month2," etc. using the method described above.


 Output Format: Renamed columns
2. In a Domo Magic DataFlow, unpivot the output data defined above and replace the Month1, Month2 etc. values with dates based on the

\_BATCH\_LAST\_RUN

date.

1. Perform a
	 **Collapse Columns**
	 action in which you unpivot the 12 date columns.
	2. Perform a
	 **Value Mapper**
	 action in which you create a new field that contains the number of months to add to the

 BATCH\_LAST\_RUN\_

 date to get the correct date field for the row.
	3. Perform a
	 **Set Column Type**
	 action in which you change the data type of the number of months column to a numeric type.
	4. Perform a
	 **Date Operations**
	 action in which you use the
	 **Add Months to Date**
	 operation to add the number of months to the

 \_BATCH\_LAST\_RUN\_

 date to determine the date for the row.

Your output format should be as follows: one row per month instead of one column per month

