

Intro
-------

Mambu is a global Software as a Service (Saas) cloud banking platform built for actual agility for composable banking. It provides a path for both traditional finance as well as Fintech to rapidly launch a digitally native financial services platform without diving into the hassle of the custom, in-house solutions in the highly regulated finance industry. You can create great banking experiences, and solve your market needs and opportunities using Mambu’s platform, teams, and services. Use Domo’s Mambu connector to retrieve your banking data related to deposits, loans, savings, clients, centres, branches, and much more. To learn more about the Mambu API, visit their page

https://support.mambu.com/docs#

.


 You connect to your Mambu account in the Data Center. This topic discusses the fields and menus that are specific to the Mambu connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
| **Primary Use Cases**  |
 This Connector lets you retrieve data about Deposits, Loans, Savings, Finance Centers and Branches.
  |
| **Primary Metrics**  | * Deposit products
* Deposit transactions
* Loan products
* Loan transactions
 |
| **Primary Company Roles**  | * Finance Manager
* Marketing Analyst
* Marketing Directors
* Finance Analyst
 |
| **Average Implementation Time**  |
 <1 hour
  |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)**  |
 3
  |

Prerequisites
---------------


 To connect to your Mambu account and create a DataSet, you must have the following:


* The username and password associated with your Mambu account.
* Your domain name. For example, if the base URL is "

https://domo.mambu.com/ap

i


 ", then your domain value will be "domo".

Connecting to Your

Mambu

Account
----------------------------------------


 This section enumerates the options in the

*Credentials**

and

*Details**

panes in the Mambu Connector page. The components of the other panes in this page,

*Scheduling**

and

*Name & Describe Your DataSet**

, are universal across most connector types and are discussed in greater length in


 Adding a DataSet Using a Data Connector

.

##
 Credentials Pane


 This pane contains fields for entering credentials to connect to your Mambu account. The following table describes what is needed for each field:


|
 Field
  |
 Description
  |
| --- | --- |
|

Username

|

Enter the username associated with your Mambu account.

|
|

Password

|

Enter the password associated with your Mambu account.

|
|
 Domain
  |

Enter the domain name. Example: If the base URL is "


 https://domo.mambu.com/api


 ", then your domain value will be "domo".

|


 Once you have entered valid Mambu credentials, you can use the same account any time you go to create a new Mambu DataSet. You can manage connector accounts in the

*Accounts**

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
 Select the Mambu report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Activities
  |
 Retrieves a list of all activities within the date range.
  |
|
 Branches
  |
 Retrieves a list of branches.
  |
|
 Centres
  |
 Retrieves a list of centers.
  |
|
 Clients
  |
 Retrieves a list of clients.
  |
|
 Deposits
  |
 Retrieves a list of deposit accounts using various query parameters.
  |
|
 Deposit Products
  |
 Retrieves a list of deposit products.
  |
|
 Deposit Transactions
  |
 Retrieves a list of all transactions for a deposit account via encoded key.
  |
|
 Deposit Transactions Search
  |
 Retrieves deposit transactions for deposit accounts by date of creation.
  |
|
 Loans
  |
 Retrieves a list of loan accounts using various query parameters.
  |
|
 Loan Products
  |
 Retrieves a list of all loan products.
  |
|
 Loan Transactions
  |
 Retrieves a list of all transactions for a loan account via id or encoded key.
  |
|
 Users
  |
 Retrieves a list of users.
  |

|
|
 Fields to Expand
  |
 Select the field that you would like to expand in the data. This will cause multiple rows to show each object in the selected field. You will not be able to expand any data, if "None" is selected.
  |
|
 Retrieve Full Details
  |
 Select this checkbox to retrieve full details of the object. Otherwise, the connector will return only the first level elements of the object.
  |
|
 Deposit Account ID
  |
 Select the deposit account Id.
  |
|
 Loan Account ID
  |
 Select the loan account Id.
  |
|
 Report Date (Date Selection)
  |
 Select the date format for your data.
  |
|
 Single Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |
|
 Specific Date
  |
 Select the specific date using the date selector.
  |
|
 Relative Date
  |
 Enter the number of days back that you would like to get data for in the
 ****Days Back****
 field. Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past.
  |
|
 Date Range
  |
 Select the specific or relative date range.
  |
|
 Start Date - Specific
  |
 Select the first date in your date range using the date selector.
  |
|
 End Date - Specific
  |
 Select the last date in your date range using the date selector.
  |
|
 Start Date - Relative
  |
 Enter the number of days back that you would like to get data from (start day). Combine with
 ****************End Date****************
 to create a range of represented days.


 For example, if you entered 10 for
 ****************Start Date****************
 and 5 for
 ****************End Date****************
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 End Date - Relative
  |
 Enter the number of days back that you would like to get data to (end day). Combine with
 ****************Start Date****************
 to create a range of represented days.


 For example, if you entered 10 for
 ****************Start Date****************
 and 5 for
 ****************End Date****************
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Time Period
  |
 Specify the time period that you would like to receive data for.
  |
|
 Starting Day of the Week
  |
 Select the day you would like your week to start with.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 What endpoint is the base URL for this connector?

The base URL for the Mambu connector is

https://{

tenant\_name}.

mambu.com/api/


####
 Which endpoint(s) does each report call in this Connector?


|
 Report Name
  |
 Endpoint URL(s)
  |
| --- | --- |
|
 Activities
  |
 /v1.0/activities
  |
|
 Branches
  |
 /v2.0

/branches
  |
|
 Centres
  |
 /v2.0

/centres
  |
|
 Clients
  |
 /v2.0

/clients
  |
|
 Deposits
  |
 /v2.0

/deposits
  |
|
 Deposit Products
  |
 /v2.0

/depositproducts
  |
|
 Deposit Transactions
  |
 /v2.0/deposits/{depositAccountId}/transactions
  |
|
 Deposit Transactions Search
  |
 /v2.0

/deposits/transactions:search
  |
|
 Loans
  |
 /v2.0

/loans
  |
|
 Loan Products
  |
 /v2.0

/loanproducts
  |
|
 Loan Transactions
  |
 /v2.0

/loans/{loanAccountId}/transactions
  |
|
 Users
  |
 /v2.0

/users
  |


####
 What kind of credentials do I need to power up this Connector?


 You need the username and password associated with your Mambu account, and your domain name.


####
 Are there any API limits I should be aware of?


 No

Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


