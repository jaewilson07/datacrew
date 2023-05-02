

Intro
-------

Yahoo! JAPAN Corporation is a Japanese internet company originally formed as a joint venture between the American internet company Yahoo! (now Altaba) and the Japanese company SoftBank. Use Domo's Yahoo! JAPAN Display Ad Network (YDN) connector to pull data from your Yahoo! JAPAN Display Ad Network (YDN) system into Domo. To learn more about the Yahoo! JAPAN Marketing Solutions API, visit their page (

https://biz.marketing.yahoo.co.jp/developercenter-en/program/

).


 You connect to your Yahoo! JAPAN account in the Data Center. This topic discusses the fields and menus that are specific to the Yahoo! JAPAN Display Ad Network (YDN) connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Yahoo! JAPAN account and create a DataSet, you must have your Yahoo! JAPAN Business ID and password associated with your Yahoo! JAPAN account.


 Connecting to Your Yahoo! JAPAN Account
-----------------------------------------

This section enumerates the options in the
 ****Credentials****
 and
 ****Details****
 panes in the Yahoo! JAPAN Display Ad Network (YDN) Connector page. The components of the other panes in this page,
 ****Scheduling****
 and
 ****Name & Describe Your DataSet****
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Yahoo! JAPAN Display Ad Network (YDN) connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Yahoo! JAPAN accounts in Domo) to open the Yahoo! JAPAN OAuth screen where you can enter your Yahoo! JAPAN credentials. Once you have entered valid Yahoo! JAPAN credentials, you can use the same account any time you go to create a new DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Yahoo! JAPAN when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of the Yahoo! JAPAN account that you are logged in.


####
 Establishing a new connection:

1. To connect to your Yahoo! JAPAN account through the Yahoo! JAPAN Display Ad Network (YDN) connector, click the
 **Connect**
 button in the connector UI.

2. A Yahoo! JAPAN login window will appear where you need to enter your
 **Yahoo! JAPAN Business ID**
 and
 **Password**
 .

3. Enter your credentials and click
 **Login**
 .


 4. Here, you will be asked if you want to approve the access to Yahoo! JAPAN Ads from Domo. Click
 **Approve**
 .

5. Your account will be added successfully. Now, you can click
 **Next**
 and proceed to use the connector to pull data from your Yahoo! JAPAN Display Ad Network (YDN) system into Domo.


###
 Details Pane

This pane contains a primary
 ****Reports****
 menu, along with various other menus for configuring your report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Yahoo! JAPAN Display Ad Network (YDN) report you want to run.


|  |  |
| --- | --- |
|
 Impossible Field Combinations
  |
 Retrieves impossible field combinations data for the selected report type.
  |
|
 Report Service
  |
 Retrieves data from Yahoo! JAPAN Display Ads based on the Account ID and Report Type selected.
  |

|
|
 Account ID
  |
 Select the account id to report on.
  |
|
 Report Type
  |
 Select the desired report type.


|  |  |
| --- | --- |
|
 Ad
  |
 Returns Ad data.
  |
|
 Audience Category
  |
 Returns Audience Category data.
  |
|
 Conversion Path
  |
 Returns conversion path data.
  |
|
 Cross Campaign Reaches
  |
 Returns Cross Campaigns reaches data
  |
|
 Label
  |
 Returns Label data.
  |
|
 Placement Targets
  |
 Returns Placement Targets data
  |
|
 Reach
  |
 Returns Reach data.
  |
|
 Search Targets
  |
 Returns Search Target data
  |
|
 Site Category
  |
 Returns Site Category data.
  |
|
 URL
  |
 Returns URL data.
  |

|
|
 Report Fields
  |
 Select the columns you want to appear in your report. Certain Report Field combinations are not allowed by Yahoo! JAPAN Ads, so do not just "Select All". To determine what report field combinations are not allowed, try running the "Impossible Field Combinations" report.
  |
|
 Frequency Range
  |
 Select the frequency range for your report.
  |
|
 Language
  |
 Select the language you want to filter your results by (the default is English).
  |
|
 Sort Type
  |
 Select whether you want to sort your data in ascending order, descending order, or not at all.
  |
|
 Select Sort By Fields
  |
 Select the fields to sort the data by.
  |
|
 Filter
  |
 Select Yes if you want to set a filter flag on your report.
  |
|
 Operator 1...6
  |
 Select an operator for your report.
  |
|
 Filter Value 1...6
  |
 Select a value for your report filter.
  |
|
 Date Range
  |
 Select whether you want to pull data for a specific date range or a custom date range.
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
 ****End Date****
 .
  |
|
 End Date
  |
 Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in
 ****Start Date****
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
 ****Days Back to End At****
 to create a range of represented days.


 For example, if you entered 10 for
 ****Days Back to Start From****
 and 5 for
 ****Days Back to End At****
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Days Back to End At
  |
 Enter the number of the most recent day back that should be represented in the report. Combine with
 ****Days Back to Start From****
 to create a range of represented days.


 For example, if you entered 10 for
 ****Days Back to Start From****
 and 5 for
 ****Days Back to End At****
 , the report would contain data for 10 days ago up until 5 days ago.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

