

Intro
-------

DoubleClick Ad Exchange partners with the Google Display Network to provide a real-time marketplace for buying and selling advertising. Import seller reports and metrics to make the best of every impression with Domo's DoubleClick Ad Exchange Connector. To learn more about the DoubleClick Ad Exchange for Sellers API, visit their page (

https://developers.google.com/ad-exchange/seller-rest/getting-started

).


 You connect to your DoubleClick Ad Exchange for Sellers account in the Data Center. This topic discusses the fields and menus that are specific to the DoubleClick Ad Exchange for Sellers connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your DoubleClick Ad Exchange for Sellers account and create a DataSet, you must have a Google username and password.


 Connecting to Your DoubleClick Ad Exchange for Sellers Account
----------------------------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the DoubleClick Ad Exchange for Sellers Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###
 Credentials Pane

The Domo DoubleClick Ad Exchange for Sellers connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing DoubleClick Ad Exchange for Sellers accounts in Domo) to open the Google OAuth screen where you can enter your Google username and password. Once you have entered valid Google credentials, you can use the same account any time you go to create a new DoubleClick Ad Exchange for Sellers DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Google when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Google.


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
 Select the DoubleClick Ad Exchange for Sellers report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Get Account Information
  |
 Retrieves information about the selected Ad Exchange account.
  |
|
 Get Account Reports
  |
 Generates an Ad Exchange report for the selected account, based on the selected metrics.
  |
|
 Get Custom Channel
  |
 Returns data about a custom channel from the specified ad client product.
  |
|
 List Accounts
  |
 Lists all accounts available to this Ad Exchange account.
  |
|
 List Ad Clients
  |
 Lists all ad clients in this Ad Exchange account.
  |
|
 List Alerts
  |
 Lists all alerts for this Ad Exchange account.
  |
|
 List Custom Channels
  |
 Lists all custom channels in the specified ad client for this Ad Exchange account.
  |
|
 List URL Channels
  |
 Lists all URL channels in the specified ad client for this Ad Exchange account.
  |

|
|
 Account
  |
 Select the Ad Exchange account you want to retrieve data for.
  |
|
 Metrics
  |
 Select all metrics you want to retrieve data for.
  |
|
 Dimensions
  |
 Select all dimensions you want to retrieve data for.
  |
|
 Ad Client Product
  |
 Select the ad client product you want to retrieve data for.
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


