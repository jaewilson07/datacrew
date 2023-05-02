

Intro
-------

Adaptive Insights, formerly Adaptive Planning, provides online software that allows users to replace multiple spreadsheets with an integrated system for consolidating data. To learn more about the Adaptive Insights API, log into Adaptive Insights and go to
 **Product Documents > Integration Guide**
 .


 You connect to your Adaptive Insights account in the Data Center. This topic discusses the fields and menus that are specific to the Adaptive Insights connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 This connector helps you answer these questions:
 * What are my current financial forecasts?
* How have these tracked to actuals?
 |
|
**Primary Metrics**
 | * Forecasted financials
* Actual financials (budgets, income, various P&L line items)
 |
|
**Primary Company Roles**
 | * FP&A analyst
* Financial analysis
* Director of finance
* CPO
* VP of finance
 |
|
**Average Implementation Time**
 |
 Could be 40 hours or more, due to the complexity of Adaptive Insights' financial system
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 8
  |

Best Practices
----------------

If you need to unpivot data, you can do so using Magic's "Collapse Columns" action. For more information, see

ETL Actions: Edit Columns - Collapse Columns

.


 Prerequisites
---------------

To connect to your Adaptive Insights account and create a DataSet, you must have the following:

 Your Adaptive Insights username and password.
* Your Adaptive Insights instance code. You can find this by logging into Adaptive Insights and navigating to
 **Admin > System > General Setup**
 . You can then find the code under
 **Setup Information**
 .

Connecting to Your Adaptive Insights Account
----------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Adaptive Insights Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Adaptive Insights account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your Adaptive Insights username.
  |
|
 Password
  |
 Enter your Adaptive Insights password.
  |
|
 Instance
  |
 Enter your Adaptive Insights instance code. To learn how to find your code, see "Prerequisites," above.
  |


 Once you have entered valid Adaptive Insights credentials, you can use the same account any time you go to create a new Adaptive Insights DataSet. You can manage connector accounts in the
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
 Select the Adaptive Insights report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Accounts
  |
 Retrieves metadata for the complete list of all accounts in the system.
  |
|
 Active Currencies
  |
 Retrieves metadata for the complete list of all currencies configured in the system.
  |
|
 Attributes
  |
 Returns the list of attributes.
  |
|
 Export Data
  |
 Retrieves a set of data from the requested version in the requested instance.
  |
|
 Export Data from Modeled and Cube Sheet
  |
 Retrieves data for the accounts, dimensions and levels that correspond to the selected sheet.
  |
|
 Customize data export
  |
 Retrieves data for the accounts, dimensions and levels specified.
  |
|
 Dimensions Structure
  |
 Retrieves metadata about custom dimensions in the system preserving their structure.
  |
|
 Dimensions with Attributes
  |
 Represents a single member value of a custom dimension being returned in the response to an exportDimensions Call with Attributes passed in the request.
  |
|
 Instances
  |
 Retrieves metadata about the instances a user has access to, if the user has access to multiple instances.
  |
|
 Levels
  |
 Retrieves metadata about organization levels in the system.
  |
|
 Roles
  |
 Retrieves metadata about roles in the system.
  |
|
 Versions
  |
 Retrieves metadata about versions in the system.
  |


 Standard sheets are not available directly through the API. You have two options for retrieving standard sheet data:
 * Export data from Custom and Assumption Groups.
* Export data from accounts that can be used to reproduce a standard sheet.


**To reproduce a standard sheet,**
1. Log into your Adaptive Insights account.
2. Go to
 **Model Management > Sheets**
 .
3. Locate the sheet you want to reproduce.
4. Click on
 **Account Groups**
 .
5. In the connector UI in Domo, select the accounts that are showing in Adaptive Insights.
 |
|
 Roll Up Values?
  |
 Select whether you want to retrieve rolled up values.
  |
|
 Date Filtering
  |
 Select whether you want to filter by dates.
  |
|
 Duration
  |
 Select whether you want to pull data for a specific date or a date range.
  |
|
 Report Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |
|
 Select Specific Date
  |
 Select the date for the report.
  |
|
 Days Back
  |
 Enter the number of past days that should appear in the report.
  |
|
 Start Date
  |
 Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in
 **End Date**
 .
  |
|
 End Date
  |
 Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in
 **Start Date**
 .
  |
|
 Select Specific Start Date
  |
 Select the first date in your date range.
  |
|
 Select Specific End Date
  |
 Select the second date in your date range.
  |
|
 Days Back to Start From
  |
 Enter the number of the farthest day back that should be represented in the report. Combine with
 **Days Back to End At**
 to create a range of represented days.


 For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Days Back to End At
  |
 Enter the number of the most recent day back that should be represented in the report. Combine with
 **Days Back to Start From**
 to create a range of represented days.


 For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Data Version
  |
 Select the version of the data you want to retrieve data for.
  |
|
 Currency
  |
 Select whether to retrieve data for US dollars, your local currency, or the currency used by your corporation.
  |
|
 Data Sheet
  |
 Select the sheet you want to retrieve data for.
  |
|
 Accounts
  |
 Select all of the accounts you want to retrieve data for.
  |
|
 Dimension Name
  |
 Select the dimension you want to retrieve data for.
  |

##
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQ
-----


#####
 How often can the data be updated?

As often as needed,

####
 Are there any API limits I should be aware of?

No.


 Troubleshooting for Consulting/Support
----------------------------------------

Confirm that the customer instance is correct.


